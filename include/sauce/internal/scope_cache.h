#ifndef SAUCE_SAUCE_INTERNAL_SCOPE_CACHE_H_
#define SAUCE_SAUCE_INTERNAL_SCOPE_CACHE_H_

#include <sauce/internal/key.h>
#include <sauce/internal/type_id.h>

namespace sauce {
namespace internal {

template<typename Dependency>
struct ScopeCacheLineDeleter {
  typedef typename Key<Dependency>::Ptr SmartPtr;
  void operator()(void * smartPtrPtr) const {
    delete static_cast<SmartPtr *>(smartPtrPtr);
  }
};

struct ScopeCacheTraits {
  typedef SAUCE_SHARED_PTR<void> CachedPtr;
  typedef std::map<TypeId, CachedPtr> Cache;
};

template<typename Dependency_>
class ScopeCacheLine: public ScopeCacheTraits {
  typedef typename Key<Dependency_>::Normalized Dependency;
  typedef typename Key<Dependency>::Ptr SmartPtr;

public:

  static void put(Cache & singleScopeCache, SmartPtr pointer) {
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

    TypeId typeId = typeIdOf<Dependency>();
    singleScopeCache.insert(std::make_pair(typeId, cachedPtr));
  }

  static bool get(Cache & singleScopeCache, SmartPtr & out) {
    TypeId typeId = typeIdOf<Dependency>();
    Cache::iterator cachedPtr = singleScopeCache.find(typeId);
    if (cachedPtr == singleScopeCache.end()) {
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
   * Insert a dependency into the cache.
   */
  template<typename Dependency>
  void put(typename Key<Dependency>::Ptr pointer) {
    ScopeCacheLine<Dependency>::put(cache, pointer);
  }

  /**
   * Probe the cache for a dependency.
   *
   * The return value indicates if a hit was found.  On a hit, the out argument will be
   * overwritten with the discovered value.
   */
  template<typename Dependency>
  bool get(typename Key<Dependency>::Ptr & out) {
    return ScopeCacheLine<Dependency>::get(cache, out);
  }

  /**
   * Clear all cached dependencies.
   */
  void clear() {
    cache.clear();
  }
};

}

namespace i = ::sauce::internal;

}

#endif // SAUCE_SAUCE_INTERNAL_SCOPE_CACHE_H_
