#ifndef SAUCE_SAUCE_INTERNAL_SCOPE_CACHE_H_
#define SAUCE_SAUCE_INTERNAL_SCOPE_CACHE_H_

#include <sauce/internal/type_id.h>

namespace sauce {
namespace internal {

template<typename Dependency>
struct ScopeCacheLineDeleter {
  typedef typename DependencyKey<Dependency>::Ptr SmartPtr;
  void operator()(void * smartPtrPtr) const {
    delete static_cast<SmartPtr *>(smartPtrPtr);
  }
};

struct ScopeCacheTraits {
  typedef SAUCE_SHARED_PTR<void> CachedPtr;
  typedef std::map<TypeId, CachedPtr> SingleScopeCache;
  typedef std::map<TypeId, SingleScopeCache> Cache;
};

template<typename Dependency, typename Scope>
class ScopeCacheLine: public ScopeCacheTraits {
  typedef typename DependencyKey<Dependency>::Dependency NamedDependency;
  typedef typename DependencyKey<Dependency>::Ptr SmartPtr;

public:

  static void put(Cache & cache, SmartPtr pointer) {
    TypeId scopeKey = TypeIdOf<Scope>();
    Cache::iterator singleScopeCache = cache.find(scopeKey);
    if (singleScopeCache == cache.end()) {
      cache.insert(std::make_pair(scopeKey, SingleScopeCache()));
      singleScopeCache = cache.find(scopeKey);
    }

    /*
     * A voice! a voice! It rang deep to the very last. It survived his strength to hide in the
     * magnificent folds of eloquence the barren darkness of his heart. Oh, he struggled! he
     * struggled! The wastes of his weary brain were haunted by shadowy images now – images of
     * wealth and fame revolving obsequiously round his unextinguishable gift of noble and lofty
     * expression. My Intended, my station, my career, my ideas – these were the subjects for the
     * occasional utterances of elevated sentiments.
     */

    CachedPtr cachedPtr(
      static_cast<void *>(new SmartPtr(pointer)),
      ScopeCacheLineDeleter<Dependency>());

    TypeId typeId = TypeIdOf<NamedDependency>();
    singleScopeCache->second.insert(std::make_pair(typeId, cachedPtr));
  }

  static bool get(Cache & cache, SmartPtr & out) {
    TypeId scopeKey = TypeIdOf<Scope>();
    Cache::iterator singleScopeCache = cache.find(scopeKey);
    if (singleScopeCache == cache.end()) {
      return false;
    }

    TypeId typeId = TypeIdOf<NamedDependency>();
    SingleScopeCache::iterator cachedPtr = singleScopeCache->second.find(typeId);
    if (cachedPtr == singleScopeCache->second.end()) {
      return false;
    }

    out = *static_cast<SmartPtr *>(cachedPtr->second.get());
    return true;
  }
};

class ScopeCache: public ScopeCacheTraits {
  Cache cache;

public:

  /**
   * Insert a dependency into the cache under the given Scope.
   */
  template<typename Dependency, typename Scope>
  void put(typename DependencyKey<Dependency>::Ptr pointer) {
    ScopeCacheLine<Dependency, Scope>::put(cache, pointer);
  }

  /**
   * Probe the cache for a dependency in a given Scope.
   *
   * The return value indicates if a hit was found.  On a hit, the out argument will be
   * overwritten with the discovered value.
   */
  template<typename Dependency, typename Scope>
  bool get(typename DependencyKey<Dependency>::Ptr & out) {
    return ScopeCacheLine<Dependency, Scope>::get(cache, out);
  }

  /**
   * Clear all cached dependencies in a given Scope.
   */
  template<typename Scope>
  void clear() {
    TypeId scopeKey = TypeIdOf<Scope>();
    Cache::iterator singleScopeCache = cache.find(scopeKey);
    if (singleScopeCache == cache.end()) {
      return;
    }

    singleScopeCache->second.clear();
  }
};

}

namespace i = ::sauce::internal;

}

#endif // SAUCE_SAUCE_INTERNAL_SCOPE_CACHE_H_