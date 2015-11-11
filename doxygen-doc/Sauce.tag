<?xml version='1.0' encoding='ISO-8859-1' standalone='yes' ?>
<tagfile>
  <compound kind="class">
    <name>sauce::AllocateFromClause</name>
    <filename>classsauce_1_1_allocate_from_clause.html</filename>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <base>sauce::internal::Clause</base>
  </compound>
  <compound kind="class">
    <name>sauce::ToClause</name>
    <filename>classsauce_1_1_to_clause.html</filename>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <base>sauce::internal::Clause</base>
    <member kind="function">
      <type>AllocateFromClause&lt; Dependency, Scope, Ctor, Allocator &gt;</type>
      <name>allocatedFrom</name>
      <anchorfile>classsauce_1_1_to_clause.html</anchorfile>
      <anchor>a815933865130b4d57b5f88c4f682298e</anchor>
      <arglist>()</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>sauce::ToProviderClause</name>
    <filename>classsauce_1_1_to_provider_clause.html</filename>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <base>Clause&lt; ProviderDependency &gt;</base>
    <member kind="function">
      <type>AllocateFromClause&lt; ProviderDependency, Scope, ProviderCtor, Allocator &gt;</type>
      <name>allocatedFrom</name>
      <anchorfile>classsauce_1_1_to_provider_clause.html</anchorfile>
      <anchor>a91caabf86c78477c63f8df4140f2cd39</anchor>
      <arglist>()</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>sauce::InClause</name>
    <filename>classsauce_1_1_in_clause.html</filename>
    <templarg></templarg>
    <templarg></templarg>
    <base>sauce::internal::Clause</base>
    <member kind="function">
      <type>ToClause&lt; Dependency, Scope, Ctor &gt;</type>
      <name>to</name>
      <anchorfile>classsauce_1_1_in_clause.html</anchorfile>
      <anchor>af6a3233210dca18067b0a73da7e999a3</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>ToProviderClause&lt; ProviderDependency, Scope, ProviderCtor &gt;</type>
      <name>toProvider</name>
      <anchorfile>classsauce_1_1_in_clause.html</anchorfile>
      <anchor>a45a06d51c604a6f70692adc88ed45c74</anchor>
      <arglist>()</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>sauce::ToMethodClause</name>
    <filename>classsauce_1_1_to_method_clause.html</filename>
    <templarg></templarg>
    <templarg></templarg>
    <base>sauce::internal::Clause</base>
    <member kind="friend" protection="private">
      <type>friend class</type>
      <name>NamedClause&lt; Dependency &gt;</name>
      <anchorfile>classsauce_1_1_to_method_clause.html</anchorfile>
      <anchor>a61ee6cabfdc629088248c5ebb0e5b75f</anchor>
      <arglist></arglist>
    </member>
    <member kind="friend">
      <type>friend class</type>
      <name>BindClause&lt; typename i::Key&lt; Dependency &gt;::Iface &gt;</name>
      <anchorfile>classsauce_1_1_to_method_clause.html</anchorfile>
      <anchor>a3d9857c524fbe4ca8133e93cbd51d002</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>sauce::ToMethodNamingClause</name>
    <filename>classsauce_1_1_to_method_naming_clause.html</filename>
    <templarg>Dependency</templarg>
    <templarg>Signature</templarg>
    <base>sauce::internal::Clause</base>
    <member kind="friend" protection="private">
      <type>friend class</type>
      <name>NamedClause&lt; Dependency &gt;</name>
      <anchorfile>classsauce_1_1_to_method_naming_clause.html</anchorfile>
      <anchor>a61ee6cabfdc629088248c5ebb0e5b75f</anchor>
      <arglist></arglist>
    </member>
    <member kind="friend">
      <type>friend class</type>
      <name>BindClause&lt; typename i::Key&lt; Dependency &gt;::Iface &gt;</name>
      <anchorfile>classsauce_1_1_to_method_naming_clause.html</anchorfile>
      <anchor>a3d9857c524fbe4ca8133e93cbd51d002</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>sauce::ToInstanceClause</name>
    <filename>classsauce_1_1_to_instance_clause.html</filename>
    <templarg></templarg>
    <base>sauce::internal::Clause</base>
    <member kind="function">
      <type></type>
      <name>ToInstanceClause</name>
      <anchorfile>classsauce_1_1_to_instance_clause.html</anchorfile>
      <anchor>a92df97e66b4ba2296ba5c7a6ca62511a</anchor>
      <arglist>(IfacePtr iface)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>sauce::NamedClause</name>
    <filename>classsauce_1_1_named_clause.html</filename>
    <templarg></templarg>
    <base>sauce::internal::Clause</base>
    <member kind="function">
      <type>ToInstanceClause&lt; Dependency &gt;</type>
      <name>toInstance</name>
      <anchorfile>classsauce_1_1_named_clause.html</anchorfile>
      <anchor>a4b40a1540a0f7376b9002858d72b74ea</anchor>
      <arglist>(IfacePtr iface)</arglist>
    </member>
    <member kind="function">
      <type>ToMethodClause&lt; Dependency, Method &gt;</type>
      <name>toMethod</name>
      <anchorfile>classsauce_1_1_named_clause.html</anchorfile>
      <anchor>a6a97c8c7aad30a35969a55e9003f73ff</anchor>
      <arglist>(Method method)</arglist>
    </member>
    <member kind="function">
      <type>ToMethodNamingClause&lt; Dependency, Signature &gt;</type>
      <name>toMethodNaming</name>
      <anchorfile>classsauce_1_1_named_clause.html</anchorfile>
      <anchor>a311521c1ced7fa9b25e0d20d84d468ab</anchor>
      <arglist>(typename ToMethodNamingClause&lt; Dependency, Signature &gt;::Method method)</arglist>
    </member>
    <member kind="function">
      <type>InClause&lt; Dependency, Scope &gt;</type>
      <name>in</name>
      <anchorfile>classsauce_1_1_named_clause.html</anchorfile>
      <anchor>a97c52f58f08d36df99a5a37c0ccaa6b6</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>ToClause&lt; Dependency, NoScope, Ctor &gt;</type>
      <name>to</name>
      <anchorfile>classsauce_1_1_named_clause.html</anchorfile>
      <anchor>ad8093e920d1ddc8e742e85c2cfcc4f8f</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>ToProviderClause&lt; ProviderDependency, NoScope, ProviderCtor &gt;</type>
      <name>toProvider</name>
      <anchorfile>classsauce_1_1_named_clause.html</anchorfile>
      <anchor>a534b20a8726ef96b69249290f56759fd</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="variable">
      <type>ToMethodNamingClause&lt; Dependency, void(Iface::*)(SetDependency)</type>
      <name>setting</name>
      <anchorfile>classsauce_1_1_named_clause.html</anchorfile>
      <anchor>ae211e557383a7b29d94a40726bbf897a</anchor>
      <arglist>)(typename ToMethodNamingClause&lt; Dependency, void(Iface::*)(SetDependency)&gt;::Method method, std::string name=unnamed())</arglist>
    </member>
    <member kind="variable">
      <type>ToMethodNamingClause&lt; Dependency, void(Iface::*)(Named&lt; Iface, Name &gt;)</type>
      <name>setting</name>
      <anchorfile>classsauce_1_1_named_clause.html</anchorfile>
      <anchor>a876efff31e4f80b3fc6c7880bf5ab81e</anchor>
      <arglist>)(typename ToMethodNamingClause&lt; Dependency, void(Iface::*)(Named&lt; Iface, Name &gt;)&gt;::Method method)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>sauce::BindClause</name>
    <filename>classsauce_1_1_bind_clause.html</filename>
    <templarg>Iface</templarg>
    <base>Clause&lt; Named&lt; Iface, Unnamed &gt; &gt;</base>
    <member kind="function">
      <type>NamedClause&lt; Named&lt; Iface, Name &gt; &gt;</type>
      <name>named</name>
      <anchorfile>classsauce_1_1_bind_clause.html</anchorfile>
      <anchor>a4df9cd69fcd9bc0264327848ef056c42</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>NamedClause&lt; Named&lt; Iface, Unnamed &gt; &gt;</type>
      <name>named</name>
      <anchorfile>classsauce_1_1_bind_clause.html</anchorfile>
      <anchor>afcf44385460b5c8801c6b5e5e629137d</anchor>
      <arglist>(std::string const name)</arglist>
    </member>
    <member kind="function">
      <type>ToInstanceClause&lt; Named&lt; Iface, Unnamed &gt; &gt;</type>
      <name>toInstance</name>
      <anchorfile>classsauce_1_1_bind_clause.html</anchorfile>
      <anchor>aefc13bb9ddce9f287d28239baf96c7e9</anchor>
      <arglist>(IfacePtr iface)</arglist>
    </member>
    <member kind="function">
      <type>ToMethodClause&lt; Named&lt; Iface, Unnamed &gt;, Method &gt;</type>
      <name>toMethod</name>
      <anchorfile>classsauce_1_1_bind_clause.html</anchorfile>
      <anchor>a818bb1f06223bd5d26e9d6ec51930613</anchor>
      <arglist>(Method method)</arglist>
    </member>
    <member kind="function">
      <type>ToMethodNamingClause&lt; Named&lt; Iface, Unnamed &gt;, Signature &gt;</type>
      <name>toMethodNaming</name>
      <anchorfile>classsauce_1_1_bind_clause.html</anchorfile>
      <anchor>a38c94667fdd0edeba0832ecdf02da7b4</anchor>
      <arglist>(typename ToMethodNamingClause&lt; Named&lt; Iface, Unnamed &gt;, Signature &gt;::Method method)</arglist>
    </member>
    <member kind="function">
      <type>InClause&lt; Named&lt; Iface, Unnamed &gt;, Scope &gt;</type>
      <name>in</name>
      <anchorfile>classsauce_1_1_bind_clause.html</anchorfile>
      <anchor>af0aac72eb67f705dc7585947e4c562b3</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>ToClause&lt; Named&lt; Iface, Unnamed &gt;, NoScope, Ctor &gt;</type>
      <name>to</name>
      <anchorfile>classsauce_1_1_bind_clause.html</anchorfile>
      <anchor>ad2d01e2a0369be672168053705971f83</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>ToProviderClause&lt; ProviderDependency, NoScope, ProviderCtor &gt;</type>
      <name>toProvider</name>
      <anchorfile>classsauce_1_1_bind_clause.html</anchorfile>
      <anchor>a06611da6fb02fdb9ddd0db14ae11ce48</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="variable">
      <type>ToMethodNamingClause&lt; Named&lt; Iface, Unnamed &gt;, void(Iface::*)(SetDependency)</type>
      <name>setting</name>
      <anchorfile>classsauce_1_1_bind_clause.html</anchorfile>
      <anchor>aeb3eae1af4fa5931742457b598bf90c8</anchor>
      <arglist>)(typename ToMethodNamingClause&lt; Named&lt; Iface, Unnamed &gt;, void(Iface::*)(SetDependency)&gt;::Method method, std::string name=unnamed())</arglist>
    </member>
    <member kind="variable">
      <type>ToMethodNamingClause&lt; Named&lt; Iface, Unnamed &gt;, void(Iface::*)(Named&lt; SetIface, Name &gt;)</type>
      <name>setting</name>
      <anchorfile>classsauce_1_1_bind_clause.html</anchorfile>
      <anchor>a4260aa8df5a444693976572d71a82f01</anchor>
      <arglist>)(typename ToMethodNamingClause&lt; Named&lt; Iface, Unnamed &gt;, void(Iface::*)(Named&lt; SetIface, Name &gt;)&gt;::Method method)</arglist>
    </member>
    <member kind="friend" protection="private">
      <type>friend class</type>
      <name>Binder</name>
      <anchorfile>classsauce_1_1_bind_clause.html</anchorfile>
      <anchor>ac1477f45573f7be56ec13bb35c0041b9</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>sauce::Binder</name>
    <filename>classsauce_1_1_binder.html</filename>
    <base>sauce::internal::PendingThrower</base>
    <member kind="function">
      <type>BindClause&lt; Iface &gt;</type>
      <name>bind</name>
      <anchorfile>classsauce_1_1_binder.html</anchorfile>
      <anchor>a75497db5685b389bea57ca95005158cc</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="friend" protection="private">
      <type>friend class</type>
      <name>Modules</name>
      <anchorfile>classsauce_1_1_binder.html</anchorfile>
      <anchor>a524999a3eaf81bac0af5028449acc8ee</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>sauce::Exception</name>
    <filename>classsauce_1_1_exception.html</filename>
    <member kind="function">
      <type></type>
      <name>Exception</name>
      <anchorfile>classsauce_1_1_exception.html</anchorfile>
      <anchor>a712d07bd39b9df1bf8b4596a0b64c9b7</anchor>
      <arglist>(std::string message)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>sauce::UnboundException</name>
    <filename>classsauce_1_1_unbound_exception.html</filename>
    <base>sauce::Exception</base>
    <member kind="function">
      <type></type>
      <name>UnboundException</name>
      <anchorfile>classsauce_1_1_unbound_exception.html</anchorfile>
      <anchor>a5cd85ac85d9691c3490de766e36975c5</anchor>
      <arglist>(std::string const name)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>sauce::UnboundExceptionFor</name>
    <filename>classsauce_1_1_unbound_exception_for.html</filename>
    <templarg></templarg>
    <base>sauce::UnboundException</base>
    <member kind="function">
      <type></type>
      <name>UnboundExceptionFor</name>
      <anchorfile>classsauce_1_1_unbound_exception_for.html</anchorfile>
      <anchor>a1e1b6233075290507218b7afa9fd9c34</anchor>
      <arglist>(std::string const name)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>sauce::PartialBindingException</name>
    <filename>classsauce_1_1_partial_binding_exception.html</filename>
    <base>sauce::Exception</base>
  </compound>
  <compound kind="class">
    <name>sauce::PartialBindingExceptionFor</name>
    <filename>classsauce_1_1_partial_binding_exception_for.html</filename>
    <templarg></templarg>
    <base>sauce::PartialBindingException</base>
  </compound>
  <compound kind="class">
    <name>sauce::CircularDependencyException</name>
    <filename>classsauce_1_1_circular_dependency_exception.html</filename>
    <base>sauce::Exception</base>
  </compound>
  <compound kind="class">
    <name>sauce::CircularDependencyExceptionFor</name>
    <filename>classsauce_1_1_circular_dependency_exception_for.html</filename>
    <templarg></templarg>
    <base>sauce::CircularDependencyException</base>
  </compound>
  <compound kind="class">
    <name>sauce::OutOfScopeException</name>
    <filename>classsauce_1_1_out_of_scope_exception.html</filename>
    <base>sauce::Exception</base>
  </compound>
  <compound kind="class">
    <name>sauce::OutOfScopeExceptionFor</name>
    <filename>classsauce_1_1_out_of_scope_exception_for.html</filename>
    <templarg></templarg>
    <base>sauce::OutOfScopeException</base>
  </compound>
  <compound kind="class">
    <name>sauce::AlreadyInScopeException</name>
    <filename>classsauce_1_1_already_in_scope_exception.html</filename>
    <base>sauce::Exception</base>
  </compound>
  <compound kind="class">
    <name>sauce::AlreadyInScopeExceptionFor</name>
    <filename>classsauce_1_1_already_in_scope_exception_for.html</filename>
    <templarg></templarg>
    <base>sauce::AlreadyInScopeException</base>
  </compound>
  <compound kind="class">
    <name>sauce::ExitingSingletonScopeException</name>
    <filename>classsauce_1_1_exiting_singleton_scope_exception.html</filename>
    <base>sauce::Exception</base>
  </compound>
  <compound kind="class">
    <name>sauce::Injector</name>
    <filename>classsauce_1_1_injector.html</filename>
    <member kind="function">
      <type>void</type>
      <name>inject</name>
      <anchorfile>classsauce_1_1_injector.html</anchorfile>
      <anchor>aa2f4d685e68bc4081b1884d63a3cf412</anchor>
      <arglist>(typename i::Key&lt; Dependency &gt;::Ptr &amp;injected, std::string const name=unnamed())</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>inject</name>
      <anchorfile>classsauce_1_1_injector.html</anchorfile>
      <anchor>ac045afc073f986bed5a6f85975165e63</anchor>
      <arglist>(typename i::Key&lt; Named&lt; Iface, Name &gt; &gt;::Ptr &amp;injected, std::string const name=unnamed())</arglist>
    </member>
    <member kind="function">
      <type>i::Key&lt; Dependency &gt;::Ptr</type>
      <name>get</name>
      <anchorfile>classsauce_1_1_injector.html</anchorfile>
      <anchor>a6f171aeabde0a74b28d5a5a7f68500fe</anchor>
      <arglist>(std::string const name=unnamed())</arglist>
    </member>
    <member kind="function">
      <type>i::Key&lt; Named&lt; Iface, Name &gt; &gt;::Ptr</type>
      <name>get</name>
      <anchorfile>classsauce_1_1_injector.html</anchorfile>
      <anchor>a7d21198420ae5360bca1e83915193d0d</anchor>
      <arglist>(std::string const name=unnamed())</arglist>
    </member>
    <member kind="function">
      <type>i::InjectorPtr</type>
      <name>enter</name>
      <anchorfile>classsauce_1_1_injector.html</anchorfile>
      <anchor>a205ad24a0348fa5d31c6a6f59e4742d7</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>i::InjectorPtr</type>
      <name>exit</name>
      <anchorfile>classsauce_1_1_injector.html</anchorfile>
      <anchor>aa1878959dac7a3bab3268d59c08e3ca8</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>eagerlyInject</name>
      <anchorfile>classsauce_1_1_injector.html</anchorfile>
      <anchor>a116d1a65f9dfa5d17f8a5e43f62c7a82</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="friend" protection="private">
      <type>friend class</type>
      <name>Modules</name>
      <anchorfile>classsauce_1_1_injector.html</anchorfile>
      <anchor>a524999a3eaf81bac0af5028449acc8ee</anchor>
      <arglist></arglist>
    </member>
    <member kind="friend">
      <type>friend class</type>
      <name>i::InjectorFriend</name>
      <anchorfile>classsauce_1_1_injector.html</anchorfile>
      <anchor>a210883918d485c8f3b4a28d6300f85e8</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>sauce::AbstractModule</name>
    <filename>classsauce_1_1_abstract_module.html</filename>
    <class kind="class">sauce::AbstractModule::BinderGuard</class>
    <member kind="function">
      <type>void</type>
      <name>operator()</name>
      <anchorfile>classsauce_1_1_abstract_module.html</anchorfile>
      <anchor>ac4c02e6cb14a373d06e8f7dab4a3fb34</anchor>
      <arglist>(Binder &amp;binder) const </arglist>
    </member>
    <member kind="function" protection="protected" virtualness="pure">
      <type>virtual void</type>
      <name>configure</name>
      <anchorfile>classsauce_1_1_abstract_module.html</anchorfile>
      <anchor>a18f164ad21374e92b4f588592d1fe72d</anchor>
      <arglist>() const =0</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>BindClause&lt; Iface &gt;</type>
      <name>bind</name>
      <anchorfile>classsauce_1_1_abstract_module.html</anchorfile>
      <anchor>a202150b2ec690146d1300dc00d143fa3</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="friend" protection="private">
      <type>friend class</type>
      <name>BinderGuard</name>
      <anchorfile>classsauce_1_1_abstract_module.html</anchorfile>
      <anchor>a8175398c3e46df63a480c0cc1d029d19</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>sauce::Modules</name>
    <filename>classsauce_1_1_modules.html</filename>
    <member kind="function">
      <type></type>
      <name>Modules</name>
      <anchorfile>classsauce_1_1_modules.html</anchorfile>
      <anchor>a806ee40752457f4ee935dd0cb7782d34</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>Modules &amp;</type>
      <name>add</name>
      <anchorfile>classsauce_1_1_modules.html</anchorfile>
      <anchor>a165e661ea0142a5896a0f0aade0ead5f</anchor>
      <arglist>(void(*module)(Binder &amp;))</arglist>
    </member>
    <member kind="function">
      <type>Modules &amp;</type>
      <name>add</name>
      <anchorfile>classsauce_1_1_modules.html</anchorfile>
      <anchor>ac7ba2a1277dfa04e8f626fe651c36bbb</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>Modules &amp;</type>
      <name>add</name>
      <anchorfile>classsauce_1_1_modules.html</anchorfile>
      <anchor>a1723e61f40f480cae555efb32640d956</anchor>
      <arglist>(Module &amp;module)</arglist>
    </member>
    <member kind="function">
      <type>sauce::shared_ptr&lt; Injector &gt;</type>
      <name>createInjector</name>
      <anchorfile>classsauce_1_1_modules.html</anchorfile>
      <anchor>a260dc95bac47b875b0daefe8892559d3</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>sauce::shared_ptr&lt; Injector &gt;</type>
      <name>createInjector</name>
      <anchorfile>classsauce_1_1_modules.html</anchorfile>
      <anchor>a4f27e08fffc49543c506e51b72477b35</anchor>
      <arglist>(Lockable &amp;lockable) const </arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>sauce::Named</name>
    <filename>classsauce_1_1_named.html</filename>
    <templarg></templarg>
    <templarg></templarg>
  </compound>
  <compound kind="class">
    <name>sauce::Unnamed</name>
    <filename>classsauce_1_1_unnamed.html</filename>
  </compound>
  <compound kind="class">
    <name>sauce::Provider</name>
    <filename>classsauce_1_1_provider.html</filename>
    <templarg></templarg>
    <member kind="typedef">
      <type>i::Key&lt; Dependency &gt;::Iface</type>
      <name>Provides</name>
      <anchorfile>classsauce_1_1_provider.html</anchorfile>
      <anchor>a8dc8f1867171016bf6fdd2497cebb64f</anchor>
      <arglist></arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual i::Key&lt; Dependency &gt;::Ptr</type>
      <name>get</name>
      <anchorfile>classsauce_1_1_provider.html</anchorfile>
      <anchor>a395bc2e4899a51962df01f72a2c8ed77</anchor>
      <arglist>()=0</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>sauce::AbstractProvider</name>
    <filename>classsauce_1_1_abstract_provider.html</filename>
    <templarg></templarg>
    <base>sauce::Provider</base>
    <member kind="typedef">
      <type>Abstract</type>
      <name>RequestsSelfInjection</name>
      <anchorfile>classsauce_1_1_abstract_provider.html</anchorfile>
      <anchor>a7ef1bad2981c0442a86e52dc3af3a998</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setSelf</name>
      <anchorfile>classsauce_1_1_abstract_provider.html</anchorfile>
      <anchor>a338202336a52bee165abc24169c8fafa</anchor>
      <arglist>(sauce::weak_ptr&lt; Abstract &gt; weak)</arglist>
    </member>
    <member kind="function">
      <type>sauce::shared_ptr&lt; Iface &gt;</type>
      <name>get</name>
      <anchorfile>classsauce_1_1_abstract_provider.html</anchorfile>
      <anchor>a3a11110c10e8d92c8e8fc8bf87ae7609</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="friend">
      <type>friend class</type>
      <name>i::DisposalDeleter&lt; Iface, Abstract &gt;</name>
      <anchorfile>classsauce_1_1_abstract_provider.html</anchorfile>
      <anchor>aa32d9a631f5683ca979e303d821f2cc7</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>sauce::NoScope</name>
    <filename>classsauce_1_1_no_scope.html</filename>
  </compound>
  <compound kind="class">
    <name>sauce::SingletonScope</name>
    <filename>classsauce_1_1_singleton_scope.html</filename>
  </compound>
  <compound kind="class">
    <name>sauce::SessionScope</name>
    <filename>classsauce_1_1_session_scope.html</filename>
  </compound>
  <compound kind="class">
    <name>sauce::RequestScope</name>
    <filename>classsauce_1_1_request_scope.html</filename>
  </compound>
  <compound kind="class">
    <name>sauce::internal::InjectorFriend</name>
    <filename>classsauce_1_1internal_1_1_injector_friend.html</filename>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>validateAcyclicHelper</name>
      <anchorfile>classsauce_1_1internal_1_1_injector_friend.html</anchorfile>
      <anchor>a4a2343d76ae48ae8b6bdda2494e9f9a9</anchor>
      <arglist>(InjectorPtr injector, TypeIds &amp;ids, std::string const name) const </arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>injectHelper</name>
      <anchorfile>classsauce_1_1internal_1_1_injector_friend.html</anchorfile>
      <anchor>ad4e574164c05c602f782cfb13f2de721</anchor>
      <arglist>(typename Key&lt; Dependency &gt;::Ptr &amp;injected, InjectorPtr injector, std::string const name) const </arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>cache</name>
      <anchorfile>classsauce_1_1internal_1_1_injector_friend.html</anchorfile>
      <anchor>a0e1e832cfd7315fb4bc004566cf57755</anchor>
      <arglist>(InjectorPtr injector, typename Key&lt; Dependency &gt;::Ptr injected, i::TypeId scope) const </arglist>
    </member>
    <member kind="function" protection="protected">
      <type>bool</type>
      <name>probe</name>
      <anchorfile>classsauce_1_1internal_1_1_injector_friend.html</anchorfile>
      <anchor>ab6020f7d9d9832ff7bc155c95ed89425</anchor>
      <arglist>(InjectorPtr injector, typename Key&lt; Dependency &gt;::Ptr &amp;injected, i::TypeId scope) const </arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>sauce::internal::ApplyConstructor</name>
    <filename>classsauce_1_1internal_1_1_apply_constructor.html</filename>
    <templarg>Parameters</templarg>
    <templarg>Constructed_</templarg>
    <templarg></templarg>
    <member kind="typedef">
      <type>Constructed_</type>
      <name>Constructed</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_constructor.html</anchorfile>
      <anchor>a6e066b15172002e443269c7c8fb638d5</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>Constructed *</type>
      <name>apply</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_constructor.html</anchorfile>
      <anchor>ae250d177e8af1bd2495779e8279ee821</anchor>
      <arglist>(Passed)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>observe</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_constructor.html</anchorfile>
      <anchor>ad6327a62404f26c62de0e15a1d4fdee1</anchor>
      <arglist>(Passed)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static int</type>
      <name>arity</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_constructor.html</anchorfile>
      <anchor>af9099dec715f1025a32906fd415bded0</anchor>
      <arglist>()</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>sauce::internal::ApplyFunction&lt; Parameters, Return_(*)()&gt;</name>
    <filename>classsauce_1_1internal_1_1_apply_function_3_01_parameters_00_01_return___07_5_08_07_08_4.html</filename>
    <templarg></templarg>
    <templarg></templarg>
    <member kind="typedef">
      <type>Return_</type>
      <name>Return</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_function_3_01_parameters_00_01_return___07_5_08_07_08_4.html</anchorfile>
      <anchor>a50c00832d393700f3ae63d4eede2a827</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Return_(*</type>
      <name>Signature</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_function_3_01_parameters_00_01_return___07_5_08_07_08_4.html</anchorfile>
      <anchor>a486f8dbcde81c6de279611d14e4606f0</anchor>
      <arglist>)()</arglist>
    </member>
    <member kind="typedef">
      <type>Return_(*</type>
      <name>Function</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_function_3_01_parameters_00_01_return___07_5_08_07_08_4.html</anchorfile>
      <anchor>a0e2a72e0564e56facc9560fa805e21ef</anchor>
      <arglist>)()</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>ApplyFunction</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_function_3_01_parameters_00_01_return___07_5_08_07_08_4.html</anchorfile>
      <anchor>a18c8a78e1a22a179f12a14896a539339</anchor>
      <arglist>(Function function)</arglist>
    </member>
    <member kind="function">
      <type>Return</type>
      <name>apply</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_function_3_01_parameters_00_01_return___07_5_08_07_08_4.html</anchorfile>
      <anchor>a79e1b4d7b5e5f4855777a2bccc15e5bb</anchor>
      <arglist>(Passed)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>observe</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_function_3_01_parameters_00_01_return___07_5_08_07_08_4.html</anchorfile>
      <anchor>ae08cf4c83b3acc8f8556f038fc1afb00</anchor>
      <arglist>(Passed)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static int</type>
      <name>arity</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_function_3_01_parameters_00_01_return___07_5_08_07_08_4.html</anchorfile>
      <anchor>a840ae8a3162d1294dcca4101906558b9</anchor>
      <arglist>()</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>sauce::internal::ApplyVoidFunction&lt; Parameters, void(*)()&gt;</name>
    <filename>classsauce_1_1internal_1_1_apply_void_function_3_01_parameters_00_01void_07_5_08_07_08_4.html</filename>
    <templarg></templarg>
    <member kind="typedef">
      <type>void(*</type>
      <name>Signature</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_void_function_3_01_parameters_00_01void_07_5_08_07_08_4.html</anchorfile>
      <anchor>a7fcba515d633d9a96f4ccf988ac85e6e</anchor>
      <arglist>)()</arglist>
    </member>
    <member kind="typedef">
      <type>void(*</type>
      <name>Function</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_void_function_3_01_parameters_00_01void_07_5_08_07_08_4.html</anchorfile>
      <anchor>af4d83d66d650689ff34857ea5b73fc18</anchor>
      <arglist>)()</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>ApplyVoidFunction</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_void_function_3_01_parameters_00_01void_07_5_08_07_08_4.html</anchorfile>
      <anchor>a79b3ae5fcbe38067fe5d8f5f4a59b13b</anchor>
      <arglist>(Function function)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>apply</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_void_function_3_01_parameters_00_01void_07_5_08_07_08_4.html</anchorfile>
      <anchor>a3beb799d624e88862768744666eea7e7</anchor>
      <arglist>(Passed)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static int</type>
      <name>arity</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_void_function_3_01_parameters_00_01void_07_5_08_07_08_4.html</anchorfile>
      <anchor>a31d390f92075ad70bb50310f7243f0c1</anchor>
      <arglist>()</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>sauce::internal::ApplyMethod&lt; Parameters, Return_(Receiver_::*)()&gt;</name>
    <filename>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_07_08_4.html</filename>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <member kind="typedef">
      <type>Return_</type>
      <name>Return</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_07_08_4.html</anchorfile>
      <anchor>adb9abd4b7754361ccd69d9f5e0166fd4</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Receiver_</type>
      <name>Receiver</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_07_08_4.html</anchorfile>
      <anchor>aa76b183c863f9fc1464bf187665b74aa</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Return_(Receiver_::*</type>
      <name>Signature</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_07_08_4.html</anchorfile>
      <anchor>a25b420babcc67cfd5ca5ae1be066cd61</anchor>
      <arglist>)()</arglist>
    </member>
    <member kind="typedef">
      <type>Return_(Receiver_::*</type>
      <name>Method</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_07_08_4.html</anchorfile>
      <anchor>a33e3f84a8af8caed48d4ebaa1170f49d</anchor>
      <arglist>)()</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>ApplyMethod</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_07_08_4.html</anchorfile>
      <anchor>a48ef63c9acc753ddb2e39d4a8edfd36e</anchor>
      <arglist>(Method method)</arglist>
    </member>
    <member kind="function">
      <type>Return</type>
      <name>apply</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_07_08_4.html</anchorfile>
      <anchor>adf7e458d9ff3d600b86977e21580a44b</anchor>
      <arglist>(Receiver &amp;receiver, Passed)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>observe</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_07_08_4.html</anchorfile>
      <anchor>a8ab12ffe388e4c3f342ff210b5b8d6b3</anchor>
      <arglist>(Passed)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static int</type>
      <name>arity</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_07_08_4.html</anchorfile>
      <anchor>a2e91f3b01e87aa9bf00fd8f219705093</anchor>
      <arglist>()</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>sauce::internal::ApplyConstructor&lt; Parameters, Constructed_(), Allocator_ &gt;</name>
    <filename>classsauce_1_1internal_1_1_apply_constructor_3_01_parameters_00_01_constructed___07_08_00_01_allocator___01_4.html</filename>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <member kind="typedef">
      <type>Constructed_</type>
      <name>Constructed</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_constructor_3_01_parameters_00_01_constructed___07_08_00_01_allocator___01_4.html</anchorfile>
      <anchor>ad6418554ef5ade093206b57cf7c0112e</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>Constructed *</type>
      <name>apply</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_constructor_3_01_parameters_00_01_constructed___07_08_00_01_allocator___01_4.html</anchorfile>
      <anchor>a48043c5857ffccdec237d9246e242f76</anchor>
      <arglist>(Passed)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>observe</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_constructor_3_01_parameters_00_01_constructed___07_08_00_01_allocator___01_4.html</anchorfile>
      <anchor>af114f637370b7fc827bcb7ea8325c98a</anchor>
      <arglist>(Passed)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static int</type>
      <name>arity</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_constructor_3_01_parameters_00_01_constructed___07_08_00_01_allocator___01_4.html</anchorfile>
      <anchor>a8117986023e8a4b8d40d7a57b42a080b</anchor>
      <arglist>()</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>sauce::internal::ApplyFunction&lt; Parameters, Return_(*)(A0)&gt;</name>
    <filename>classsauce_1_1internal_1_1_apply_function_3_01_parameters_00_01_return___07_5_08_07_a0_08_4.html</filename>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <member kind="typedef">
      <type>Return_</type>
      <name>Return</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_function_3_01_parameters_00_01_return___07_5_08_07_a0_08_4.html</anchorfile>
      <anchor>a007cc0253e2794f88adfb439c115c75d</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A0, 0 &gt;</type>
      <name>P0</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_function_3_01_parameters_00_01_return___07_5_08_07_a0_08_4.html</anchorfile>
      <anchor>ae673a931820f7a720ce12137d0d0c2fb</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Return_(*</type>
      <name>Signature</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_function_3_01_parameters_00_01_return___07_5_08_07_a0_08_4.html</anchorfile>
      <anchor>a1f7054d8512c40575c51ae27f2adbd98</anchor>
      <arglist>)(A0)</arglist>
    </member>
    <member kind="typedef">
      <type>Return_(*</type>
      <name>Function</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_function_3_01_parameters_00_01_return___07_5_08_07_a0_08_4.html</anchorfile>
      <anchor>a024bd1f969404fb396dc5245a69319f2</anchor>
      <arglist>)(typename P0::Type)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>ApplyFunction</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_function_3_01_parameters_00_01_return___07_5_08_07_a0_08_4.html</anchorfile>
      <anchor>a8457088eeb5d227b93648d475d9f3fd2</anchor>
      <arglist>(Function function)</arglist>
    </member>
    <member kind="function">
      <type>Return</type>
      <name>apply</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_function_3_01_parameters_00_01_return___07_5_08_07_a0_08_4.html</anchorfile>
      <anchor>ac4910d9f5fe26859f75a1c2bff0cf06a</anchor>
      <arglist>(Passed passed)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>observe</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_function_3_01_parameters_00_01_return___07_5_08_07_a0_08_4.html</anchorfile>
      <anchor>afb5ab1fc559970d3212e5cf98a884f4f</anchor>
      <arglist>(Passed passed)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static int</type>
      <name>arity</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_function_3_01_parameters_00_01_return___07_5_08_07_a0_08_4.html</anchorfile>
      <anchor>add9b7f231dc88197d3d594fa6154d9a4</anchor>
      <arglist>()</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>sauce::internal::ApplyVoidFunction&lt; Parameters, void(*)(A0)&gt;</name>
    <filename>classsauce_1_1internal_1_1_apply_void_function_3_01_parameters_00_01void_07_5_08_07_a0_08_4.html</filename>
    <templarg></templarg>
    <templarg></templarg>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A0, 0 &gt;</type>
      <name>P0</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_void_function_3_01_parameters_00_01void_07_5_08_07_a0_08_4.html</anchorfile>
      <anchor>a2a0086f7da105c133a186ffe2daa1ec1</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>void(*</type>
      <name>Signature</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_void_function_3_01_parameters_00_01void_07_5_08_07_a0_08_4.html</anchorfile>
      <anchor>ae240638d7ca080304f47ace2df2e6bdd</anchor>
      <arglist>)(A0)</arglist>
    </member>
    <member kind="typedef">
      <type>void(*</type>
      <name>Function</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_void_function_3_01_parameters_00_01void_07_5_08_07_a0_08_4.html</anchorfile>
      <anchor>a7f86945d7fd51a9ae025b783ba3effa1</anchor>
      <arglist>)(typename P0::Type)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>ApplyVoidFunction</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_void_function_3_01_parameters_00_01void_07_5_08_07_a0_08_4.html</anchorfile>
      <anchor>a925284f19128e66c607283d676edee93</anchor>
      <arglist>(Function function)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>apply</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_void_function_3_01_parameters_00_01void_07_5_08_07_a0_08_4.html</anchorfile>
      <anchor>a61411117cf9a3a8d7a9a479ce70ad638</anchor>
      <arglist>(Passed passed)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static int</type>
      <name>arity</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_void_function_3_01_parameters_00_01void_07_5_08_07_a0_08_4.html</anchorfile>
      <anchor>a5345965d9e1384a56d29c2888ad95bf2</anchor>
      <arglist>()</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>sauce::internal::ApplyMethod&lt; Parameters, Return_(Receiver_::*)(A0)&gt;</name>
    <filename>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_07_a0_08_4.html</filename>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <member kind="typedef">
      <type>Return_</type>
      <name>Return</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_07_a0_08_4.html</anchorfile>
      <anchor>a498378c8850aedc5c1db848b8456c946</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Receiver_</type>
      <name>Receiver</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_07_a0_08_4.html</anchorfile>
      <anchor>a09b91e6160ac348128dcbac78ddd7c2e</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A0, 0 &gt;</type>
      <name>P0</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_07_a0_08_4.html</anchorfile>
      <anchor>aa70a40c703e59d698077790005e089d4</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Return_(Receiver_::*</type>
      <name>Signature</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_07_a0_08_4.html</anchorfile>
      <anchor>ad928b1ae9cb242bee6867155d16cc8b1</anchor>
      <arglist>)(A0)</arglist>
    </member>
    <member kind="typedef">
      <type>Return_(Receiver_::*</type>
      <name>Method</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_07_a0_08_4.html</anchorfile>
      <anchor>a3dac928ac917c4f31396a2d22ea2b5a0</anchor>
      <arglist>)(typename P0::Type)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>ApplyMethod</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_07_a0_08_4.html</anchorfile>
      <anchor>abd9402ba89b9f0a63f600991b3623987</anchor>
      <arglist>(Method method)</arglist>
    </member>
    <member kind="function">
      <type>Return</type>
      <name>apply</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_07_a0_08_4.html</anchorfile>
      <anchor>a8c5efb09b84a61d05dada48c5d460f40</anchor>
      <arglist>(Receiver &amp;receiver, Passed passed)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>observe</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_07_a0_08_4.html</anchorfile>
      <anchor>a0d896ba41a25d4099ed18424d66c88fa</anchor>
      <arglist>(Passed passed)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static int</type>
      <name>arity</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_07_a0_08_4.html</anchorfile>
      <anchor>a2b3553eea49d332c2ab69023c3b44239</anchor>
      <arglist>()</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>sauce::internal::ApplyConstructor&lt; Parameters, Constructed_(A0), Allocator_ &gt;</name>
    <filename>classsauce_1_1internal_1_1_apply_constructor_3_01_parameters_00_01_constructed___07_a0_08_00_01_allocator___01_4.html</filename>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <member kind="typedef">
      <type>Constructed_</type>
      <name>Constructed</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_constructor_3_01_parameters_00_01_constructed___07_a0_08_00_01_allocator___01_4.html</anchorfile>
      <anchor>a2fa9142439061607682326982bd3f6a7</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>Constructed *</type>
      <name>apply</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_constructor_3_01_parameters_00_01_constructed___07_a0_08_00_01_allocator___01_4.html</anchorfile>
      <anchor>a08cebe58bb7f847fce33c5b036d52b9a</anchor>
      <arglist>(Passed passed)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>observe</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_constructor_3_01_parameters_00_01_constructed___07_a0_08_00_01_allocator___01_4.html</anchorfile>
      <anchor>aa91b46f0698aa314d4e27e31d0e7b19c</anchor>
      <arglist>(Passed passed)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static int</type>
      <name>arity</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_constructor_3_01_parameters_00_01_constructed___07_a0_08_00_01_allocator___01_4.html</anchorfile>
      <anchor>a642b08526c33527ed1d2a9784d6daf55</anchor>
      <arglist>()</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>sauce::internal::ApplyFunction&lt; Parameters, Return_(*)(A0, A1)&gt;</name>
    <filename>classsauce_1_1internal_1_1_apply_function_3_01_parameters_00_01_return___07_5_08_07_a0_00_01_a1_08_4.html</filename>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <member kind="typedef">
      <type>Return_</type>
      <name>Return</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_function_3_01_parameters_00_01_return___07_5_08_07_a0_00_01_a1_08_4.html</anchorfile>
      <anchor>a7897d5f4b7eec377b9a5a1c3dff7862a</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A0, 0 &gt;</type>
      <name>P0</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_function_3_01_parameters_00_01_return___07_5_08_07_a0_00_01_a1_08_4.html</anchorfile>
      <anchor>abcdde2ad2dce0ee66277308149e061b7</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A1, 1 &gt;</type>
      <name>P1</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_function_3_01_parameters_00_01_return___07_5_08_07_a0_00_01_a1_08_4.html</anchorfile>
      <anchor>a070063aee1eaf17497dfd075298fb865</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Return_(*</type>
      <name>Signature</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_function_3_01_parameters_00_01_return___07_5_08_07_a0_00_01_a1_08_4.html</anchorfile>
      <anchor>a770ac8d5cbafb9aa7951a7484cfc1515</anchor>
      <arglist>)(A0, A1)</arglist>
    </member>
    <member kind="typedef">
      <type>Return_(*</type>
      <name>Function</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_function_3_01_parameters_00_01_return___07_5_08_07_a0_00_01_a1_08_4.html</anchorfile>
      <anchor>a83f8850fca16f075cf42f2b2ad0296cf</anchor>
      <arglist>)(typename P0::Type, typename P1::Type)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>ApplyFunction</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_function_3_01_parameters_00_01_return___07_5_08_07_a0_00_01_a1_08_4.html</anchorfile>
      <anchor>a2e85c4f71cbe418d1b8d1e72c1d70a48</anchor>
      <arglist>(Function function)</arglist>
    </member>
    <member kind="function">
      <type>Return</type>
      <name>apply</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_function_3_01_parameters_00_01_return___07_5_08_07_a0_00_01_a1_08_4.html</anchorfile>
      <anchor>a975978cc7dab09c36d4fe38345be9cc8</anchor>
      <arglist>(Passed passed)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>observe</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_function_3_01_parameters_00_01_return___07_5_08_07_a0_00_01_a1_08_4.html</anchorfile>
      <anchor>a36dc4a5b32349f0d312e342bf97c88a6</anchor>
      <arglist>(Passed passed)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static int</type>
      <name>arity</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_function_3_01_parameters_00_01_return___07_5_08_07_a0_00_01_a1_08_4.html</anchorfile>
      <anchor>a326af7f12c11c0a8dc9904e8f2ef2850</anchor>
      <arglist>()</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>sauce::internal::ApplyVoidFunction&lt; Parameters, void(*)(A0, A1)&gt;</name>
    <filename>classsauce_1_1internal_1_1_apply_void_function_3_01_parameters_00_01void_07_5_08_07_a0_00_01_a1_08_4.html</filename>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A0, 0 &gt;</type>
      <name>P0</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_void_function_3_01_parameters_00_01void_07_5_08_07_a0_00_01_a1_08_4.html</anchorfile>
      <anchor>a6201654dd19c24f6e07afb74cd4837ac</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A1, 1 &gt;</type>
      <name>P1</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_void_function_3_01_parameters_00_01void_07_5_08_07_a0_00_01_a1_08_4.html</anchorfile>
      <anchor>ad1411195de2faf014d261d65f872c2f6</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>void(*</type>
      <name>Signature</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_void_function_3_01_parameters_00_01void_07_5_08_07_a0_00_01_a1_08_4.html</anchorfile>
      <anchor>a37de599a7f7a076bdbe6135e4587d275</anchor>
      <arglist>)(A0, A1)</arglist>
    </member>
    <member kind="typedef">
      <type>void(*</type>
      <name>Function</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_void_function_3_01_parameters_00_01void_07_5_08_07_a0_00_01_a1_08_4.html</anchorfile>
      <anchor>a25b7da4b8711a465c300513881ebab2b</anchor>
      <arglist>)(typename P0::Type, typename P1::Type)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>ApplyVoidFunction</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_void_function_3_01_parameters_00_01void_07_5_08_07_a0_00_01_a1_08_4.html</anchorfile>
      <anchor>a4fa0fc1264ff9560632801108182702c</anchor>
      <arglist>(Function function)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>apply</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_void_function_3_01_parameters_00_01void_07_5_08_07_a0_00_01_a1_08_4.html</anchorfile>
      <anchor>a5c5ec94594c3811784f58d8e9434530e</anchor>
      <arglist>(Passed passed)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static int</type>
      <name>arity</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_void_function_3_01_parameters_00_01void_07_5_08_07_a0_00_01_a1_08_4.html</anchorfile>
      <anchor>a9343f255a7d1140ebcdaa6863b381052</anchor>
      <arglist>()</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>sauce::internal::ApplyMethod&lt; Parameters, Return_(Receiver_::*)(A0, A1)&gt;</name>
    <filename>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_07_a0_00_01_a1_08_4.html</filename>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <member kind="typedef">
      <type>Return_</type>
      <name>Return</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_07_a0_00_01_a1_08_4.html</anchorfile>
      <anchor>a342c9d6c26bcaa9662648a252f2a1a65</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Receiver_</type>
      <name>Receiver</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_07_a0_00_01_a1_08_4.html</anchorfile>
      <anchor>a1999287aa332dd65bd3e8eaaa868a495</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A0, 0 &gt;</type>
      <name>P0</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_07_a0_00_01_a1_08_4.html</anchorfile>
      <anchor>a1cc6f89e1189f793dbf14f5c3367c375</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A1, 1 &gt;</type>
      <name>P1</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_07_a0_00_01_a1_08_4.html</anchorfile>
      <anchor>a79806b1ac1347786d88b4ca63de847b3</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Return_(Receiver_::*</type>
      <name>Signature</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_07_a0_00_01_a1_08_4.html</anchorfile>
      <anchor>a68db1efcb884e02eecdeb58075d75fa7</anchor>
      <arglist>)(A0, A1)</arglist>
    </member>
    <member kind="typedef">
      <type>Return_(Receiver_::*</type>
      <name>Method</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_07_a0_00_01_a1_08_4.html</anchorfile>
      <anchor>a3e66332df458a4029a17815e1f37a76d</anchor>
      <arglist>)(typename P0::Type, typename P1::Type)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>ApplyMethod</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_07_a0_00_01_a1_08_4.html</anchorfile>
      <anchor>a9ce1e1f1175d97b84ba545e149294866</anchor>
      <arglist>(Method method)</arglist>
    </member>
    <member kind="function">
      <type>Return</type>
      <name>apply</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_07_a0_00_01_a1_08_4.html</anchorfile>
      <anchor>ae278e8b15abe65bf46169268e37f276a</anchor>
      <arglist>(Receiver &amp;receiver, Passed passed)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>observe</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_07_a0_00_01_a1_08_4.html</anchorfile>
      <anchor>a6df17f918642f248a1fc5a7f270b9392</anchor>
      <arglist>(Passed passed)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static int</type>
      <name>arity</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_07_a0_00_01_a1_08_4.html</anchorfile>
      <anchor>a0597872afa90e16c72df64e020e19e23</anchor>
      <arglist>()</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>sauce::internal::ApplyConstructor&lt; Parameters, Constructed_(A0, A1), Allocator_ &gt;</name>
    <filename>classsauce_1_1internal_1_1_apply_constructor_3_01_parameters_00_01_constructed___07_a0_00_01_a1_08_00_01_allocator___01_4.html</filename>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <member kind="typedef">
      <type>Constructed_</type>
      <name>Constructed</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_constructor_3_01_parameters_00_01_constructed___07_a0_00_01_a1_08_00_01_allocator___01_4.html</anchorfile>
      <anchor>a0efcdd6d94347660fd55a2b4a3d1fd4f</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>Constructed *</type>
      <name>apply</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_constructor_3_01_parameters_00_01_constructed___07_a0_00_01_a1_08_00_01_allocator___01_4.html</anchorfile>
      <anchor>ac3136f3734003aa478f6edd021d916a6</anchor>
      <arglist>(Passed passed)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>observe</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_constructor_3_01_parameters_00_01_constructed___07_a0_00_01_a1_08_00_01_allocator___01_4.html</anchorfile>
      <anchor>a5aa52c27c898640e13709979e0d1e0fd</anchor>
      <arglist>(Passed passed)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static int</type>
      <name>arity</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_constructor_3_01_parameters_00_01_constructed___07_a0_00_01_a1_08_00_01_allocator___01_4.html</anchorfile>
      <anchor>a94821de5d7e25188331cd83b24462292</anchor>
      <arglist>()</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>sauce::internal::ApplyFunction&lt; Parameters, Return_(*)(A0, A1, A2)&gt;</name>
    <filename>classsauce_1_1internal_1_1_apply_function_3_01_parameters_00_01_return___07_5_08_07_a0_00_01_a1_00_01_a2_08_4.html</filename>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <member kind="typedef">
      <type>Return_</type>
      <name>Return</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_function_3_01_parameters_00_01_return___07_5_08_07_a0_00_01_a1_00_01_a2_08_4.html</anchorfile>
      <anchor>a98c1936c20bcda3e9e87220f089d14f0</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A0, 0 &gt;</type>
      <name>P0</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_function_3_01_parameters_00_01_return___07_5_08_07_a0_00_01_a1_00_01_a2_08_4.html</anchorfile>
      <anchor>a627666e4cd3b679d019642601127e982</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A1, 1 &gt;</type>
      <name>P1</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_function_3_01_parameters_00_01_return___07_5_08_07_a0_00_01_a1_00_01_a2_08_4.html</anchorfile>
      <anchor>a391d26ba37fbf66a9689b761d5c75074</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A2, 2 &gt;</type>
      <name>P2</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_function_3_01_parameters_00_01_return___07_5_08_07_a0_00_01_a1_00_01_a2_08_4.html</anchorfile>
      <anchor>a69fc5a3fa107920b53349f1b7e623c32</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Return_(*</type>
      <name>Signature</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_function_3_01_parameters_00_01_return___07_5_08_07_a0_00_01_a1_00_01_a2_08_4.html</anchorfile>
      <anchor>a2b8c67c4b1977f0a4fa314769420e56a</anchor>
      <arglist>)(A0, A1, A2)</arglist>
    </member>
    <member kind="typedef">
      <type>Return_(*</type>
      <name>Function</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_function_3_01_parameters_00_01_return___07_5_08_07_a0_00_01_a1_00_01_a2_08_4.html</anchorfile>
      <anchor>a40565afa243126ce2640b067fe01ba6d</anchor>
      <arglist>)(typename P0::Type, typename P1::Type, typename P2::Type)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>ApplyFunction</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_function_3_01_parameters_00_01_return___07_5_08_07_a0_00_01_a1_00_01_a2_08_4.html</anchorfile>
      <anchor>a3243c50f318966c5cfc340f4f2e6d5c9</anchor>
      <arglist>(Function function)</arglist>
    </member>
    <member kind="function">
      <type>Return</type>
      <name>apply</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_function_3_01_parameters_00_01_return___07_5_08_07_a0_00_01_a1_00_01_a2_08_4.html</anchorfile>
      <anchor>a6609b6a75d748d55c5724f6ce3941a90</anchor>
      <arglist>(Passed passed)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>observe</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_function_3_01_parameters_00_01_return___07_5_08_07_a0_00_01_a1_00_01_a2_08_4.html</anchorfile>
      <anchor>a1d034a4c23bfb1377ef86e72e61174c2</anchor>
      <arglist>(Passed passed)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static int</type>
      <name>arity</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_function_3_01_parameters_00_01_return___07_5_08_07_a0_00_01_a1_00_01_a2_08_4.html</anchorfile>
      <anchor>ab5275ca1d4469d2e688c085c8589ad47</anchor>
      <arglist>()</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>sauce::internal::ApplyVoidFunction&lt; Parameters, void(*)(A0, A1, A2)&gt;</name>
    <filename>classsauce_1_1internal_1_1_apply_void_function_3_01_parameters_00_01void_07_5_08_07_a0_00_01_a1_00_01_a2_08_4.html</filename>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A0, 0 &gt;</type>
      <name>P0</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_void_function_3_01_parameters_00_01void_07_5_08_07_a0_00_01_a1_00_01_a2_08_4.html</anchorfile>
      <anchor>af7729b9e482f2db3a9bb691311d71024</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A1, 1 &gt;</type>
      <name>P1</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_void_function_3_01_parameters_00_01void_07_5_08_07_a0_00_01_a1_00_01_a2_08_4.html</anchorfile>
      <anchor>a6411a98758e46ab6584d78360b111fc4</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A2, 2 &gt;</type>
      <name>P2</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_void_function_3_01_parameters_00_01void_07_5_08_07_a0_00_01_a1_00_01_a2_08_4.html</anchorfile>
      <anchor>abf127e3a134a330302fb8c3fc9622b0e</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>void(*</type>
      <name>Signature</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_void_function_3_01_parameters_00_01void_07_5_08_07_a0_00_01_a1_00_01_a2_08_4.html</anchorfile>
      <anchor>afe81d314f3cb46e484377b21328c1555</anchor>
      <arglist>)(A0, A1, A2)</arglist>
    </member>
    <member kind="typedef">
      <type>void(*</type>
      <name>Function</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_void_function_3_01_parameters_00_01void_07_5_08_07_a0_00_01_a1_00_01_a2_08_4.html</anchorfile>
      <anchor>af03b7d1d20f12c9827a92b8796f5f1d7</anchor>
      <arglist>)(typename P0::Type, typename P1::Type, typename P2::Type)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>ApplyVoidFunction</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_void_function_3_01_parameters_00_01void_07_5_08_07_a0_00_01_a1_00_01_a2_08_4.html</anchorfile>
      <anchor>a13734cfd3064c3388bb20b72e3831d1d</anchor>
      <arglist>(Function function)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>apply</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_void_function_3_01_parameters_00_01void_07_5_08_07_a0_00_01_a1_00_01_a2_08_4.html</anchorfile>
      <anchor>aadd3f319ca5b0cb89818a4a989c9a10c</anchor>
      <arglist>(Passed passed)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static int</type>
      <name>arity</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_void_function_3_01_parameters_00_01void_07_5_08_07_a0_00_01_a1_00_01_a2_08_4.html</anchorfile>
      <anchor>a10208bcbc4b9a284f54baaea76a7fad3</anchor>
      <arglist>()</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>sauce::internal::ApplyMethod&lt; Parameters, Return_(Receiver_::*)(A0, A1, A2)&gt;</name>
    <filename>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_07_a0_00_01_a1_00_01_a2_08_4.html</filename>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <member kind="typedef">
      <type>Return_</type>
      <name>Return</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_07_a0_00_01_a1_00_01_a2_08_4.html</anchorfile>
      <anchor>a3ccf447a861c5cc3850a5a18c64010dc</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Receiver_</type>
      <name>Receiver</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_07_a0_00_01_a1_00_01_a2_08_4.html</anchorfile>
      <anchor>a6aa527bc759580d679aa9055e3e3d816</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A0, 0 &gt;</type>
      <name>P0</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_07_a0_00_01_a1_00_01_a2_08_4.html</anchorfile>
      <anchor>a754fff2e414be216b692c1a767ddd26b</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A1, 1 &gt;</type>
      <name>P1</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_07_a0_00_01_a1_00_01_a2_08_4.html</anchorfile>
      <anchor>a68a65da229b2670d2476029f5f7e3a79</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A2, 2 &gt;</type>
      <name>P2</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_07_a0_00_01_a1_00_01_a2_08_4.html</anchorfile>
      <anchor>a8f5d66c71befd5d3ee0d8bb7dcb80a7b</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Return_(Receiver_::*</type>
      <name>Signature</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_07_a0_00_01_a1_00_01_a2_08_4.html</anchorfile>
      <anchor>afe9f4c0d57a8e3d7ecdb8de5106ab2b6</anchor>
      <arglist>)(A0, A1, A2)</arglist>
    </member>
    <member kind="typedef">
      <type>Return_(Receiver_::*</type>
      <name>Method</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_07_a0_00_01_a1_00_01_a2_08_4.html</anchorfile>
      <anchor>a0c685d034755aebaef8b829f9df1d6cd</anchor>
      <arglist>)(typename P0::Type, typename P1::Type, typename P2::Type)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>ApplyMethod</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_07_a0_00_01_a1_00_01_a2_08_4.html</anchorfile>
      <anchor>a5bcbe0d52ad6ece92e7d7555ce8f3238</anchor>
      <arglist>(Method method)</arglist>
    </member>
    <member kind="function">
      <type>Return</type>
      <name>apply</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_07_a0_00_01_a1_00_01_a2_08_4.html</anchorfile>
      <anchor>a50d3712f56947885290b0ca7fdeb3983</anchor>
      <arglist>(Receiver &amp;receiver, Passed passed)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>observe</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_07_a0_00_01_a1_00_01_a2_08_4.html</anchorfile>
      <anchor>a9e0a994eacdd233ea9a9aa7084f642eb</anchor>
      <arglist>(Passed passed)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static int</type>
      <name>arity</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_07_a0_00_01_a1_00_01_a2_08_4.html</anchorfile>
      <anchor>a56a40ce1813f63c8a6b44807e4c8e28a</anchor>
      <arglist>()</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>sauce::internal::ApplyConstructor&lt; Parameters, Constructed_(A0, A1, A2), Allocator_ &gt;</name>
    <filename>classsauce_1_1internal_1_1_apply_constructor_3_01_parameters_00_01_constructed___07_a0_00_01_a1_33d04812c39602e38d4b71c685f63435.html</filename>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <member kind="typedef">
      <type>Constructed_</type>
      <name>Constructed</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_constructor_3_01_parameters_00_01_constructed___07_a0_00_01_a1_33d04812c39602e38d4b71c685f63435.html</anchorfile>
      <anchor>a385091a3bb74d2046515e182e2ccf34b</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>Constructed *</type>
      <name>apply</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_constructor_3_01_parameters_00_01_constructed___07_a0_00_01_a1_33d04812c39602e38d4b71c685f63435.html</anchorfile>
      <anchor>a4bd018918e21d1cc924c3c0d247f1428</anchor>
      <arglist>(Passed passed)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>observe</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_constructor_3_01_parameters_00_01_constructed___07_a0_00_01_a1_33d04812c39602e38d4b71c685f63435.html</anchorfile>
      <anchor>a60d2ab6df38b864e71dcf425a49147b3</anchor>
      <arglist>(Passed passed)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static int</type>
      <name>arity</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_constructor_3_01_parameters_00_01_constructed___07_a0_00_01_a1_33d04812c39602e38d4b71c685f63435.html</anchorfile>
      <anchor>af1b531ba128d5e17e5ff1c16f2042774</anchor>
      <arglist>()</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>sauce::internal::ApplyFunction&lt; Parameters, Return_(*)(A0, A1, A2, A3)&gt;</name>
    <filename>classsauce_1_1internal_1_1_apply_function_3_01_parameters_00_01_return___07_5_08_07_a0_00_01_a1_00_01_a2_00_01_a3_08_4.html</filename>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <member kind="typedef">
      <type>Return_</type>
      <name>Return</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_function_3_01_parameters_00_01_return___07_5_08_07_a0_00_01_a1_00_01_a2_00_01_a3_08_4.html</anchorfile>
      <anchor>a3b7003f66d38bda0fc27e7e349cb3781</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A0, 0 &gt;</type>
      <name>P0</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_function_3_01_parameters_00_01_return___07_5_08_07_a0_00_01_a1_00_01_a2_00_01_a3_08_4.html</anchorfile>
      <anchor>a867941796d465e3e631eabbf77c82793</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A1, 1 &gt;</type>
      <name>P1</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_function_3_01_parameters_00_01_return___07_5_08_07_a0_00_01_a1_00_01_a2_00_01_a3_08_4.html</anchorfile>
      <anchor>a049a31949dbfc529befde15941d8a7d4</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A2, 2 &gt;</type>
      <name>P2</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_function_3_01_parameters_00_01_return___07_5_08_07_a0_00_01_a1_00_01_a2_00_01_a3_08_4.html</anchorfile>
      <anchor>a9118c944ca74f3798e9e55d8d2f605a6</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A3, 3 &gt;</type>
      <name>P3</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_function_3_01_parameters_00_01_return___07_5_08_07_a0_00_01_a1_00_01_a2_00_01_a3_08_4.html</anchorfile>
      <anchor>aadfe5a3c238dba22b921cbe8c7bb618b</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Return_(*</type>
      <name>Signature</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_function_3_01_parameters_00_01_return___07_5_08_07_a0_00_01_a1_00_01_a2_00_01_a3_08_4.html</anchorfile>
      <anchor>aa50cf2b7b58d22352572eca5aac93c16</anchor>
      <arglist>)(A0, A1, A2, A3)</arglist>
    </member>
    <member kind="typedef">
      <type>Return_(*</type>
      <name>Function</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_function_3_01_parameters_00_01_return___07_5_08_07_a0_00_01_a1_00_01_a2_00_01_a3_08_4.html</anchorfile>
      <anchor>a98d3f3e646275e31a1afa3cdcfbd3e28</anchor>
      <arglist>)(typename P0::Type, typename P1::Type, typename P2::Type, typename P3::Type)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>ApplyFunction</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_function_3_01_parameters_00_01_return___07_5_08_07_a0_00_01_a1_00_01_a2_00_01_a3_08_4.html</anchorfile>
      <anchor>a713d42a4056789fb2b61d60fd977ee47</anchor>
      <arglist>(Function function)</arglist>
    </member>
    <member kind="function">
      <type>Return</type>
      <name>apply</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_function_3_01_parameters_00_01_return___07_5_08_07_a0_00_01_a1_00_01_a2_00_01_a3_08_4.html</anchorfile>
      <anchor>adfed848ebac6ad6fb67035fe79f2277e</anchor>
      <arglist>(Passed passed)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>observe</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_function_3_01_parameters_00_01_return___07_5_08_07_a0_00_01_a1_00_01_a2_00_01_a3_08_4.html</anchorfile>
      <anchor>a51cf491cb30ac79a1b5ceecc8de218ef</anchor>
      <arglist>(Passed passed)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static int</type>
      <name>arity</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_function_3_01_parameters_00_01_return___07_5_08_07_a0_00_01_a1_00_01_a2_00_01_a3_08_4.html</anchorfile>
      <anchor>a88907df671e59d3c093bf6e963b1fe91</anchor>
      <arglist>()</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>sauce::internal::ApplyVoidFunction&lt; Parameters, void(*)(A0, A1, A2, A3)&gt;</name>
    <filename>classsauce_1_1internal_1_1_apply_void_function_3_01_parameters_00_01void_07_5_08_07_a0_00_01_a1_00_01_a2_00_01_a3_08_4.html</filename>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A0, 0 &gt;</type>
      <name>P0</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_void_function_3_01_parameters_00_01void_07_5_08_07_a0_00_01_a1_00_01_a2_00_01_a3_08_4.html</anchorfile>
      <anchor>ab5abc40416f1ef979c358bf2fb8577a8</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A1, 1 &gt;</type>
      <name>P1</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_void_function_3_01_parameters_00_01void_07_5_08_07_a0_00_01_a1_00_01_a2_00_01_a3_08_4.html</anchorfile>
      <anchor>a5ab59abeab01d02c9e0d50ddcfbca7eb</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A2, 2 &gt;</type>
      <name>P2</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_void_function_3_01_parameters_00_01void_07_5_08_07_a0_00_01_a1_00_01_a2_00_01_a3_08_4.html</anchorfile>
      <anchor>add3c9adadb2d4f15e81f3a2769160adc</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A3, 3 &gt;</type>
      <name>P3</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_void_function_3_01_parameters_00_01void_07_5_08_07_a0_00_01_a1_00_01_a2_00_01_a3_08_4.html</anchorfile>
      <anchor>a0b274a69fe845e1af65d83819b46e3b7</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>void(*</type>
      <name>Signature</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_void_function_3_01_parameters_00_01void_07_5_08_07_a0_00_01_a1_00_01_a2_00_01_a3_08_4.html</anchorfile>
      <anchor>a719a23d25ed06d36cdb23ef618c2833d</anchor>
      <arglist>)(A0, A1, A2, A3)</arglist>
    </member>
    <member kind="typedef">
      <type>void(*</type>
      <name>Function</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_void_function_3_01_parameters_00_01void_07_5_08_07_a0_00_01_a1_00_01_a2_00_01_a3_08_4.html</anchorfile>
      <anchor>a67347e8654f1514d265e6c883d5bbd81</anchor>
      <arglist>)(typename P0::Type, typename P1::Type, typename P2::Type, typename P3::Type)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>ApplyVoidFunction</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_void_function_3_01_parameters_00_01void_07_5_08_07_a0_00_01_a1_00_01_a2_00_01_a3_08_4.html</anchorfile>
      <anchor>a05f2ecd35c34fc74ba333758aaf453f8</anchor>
      <arglist>(Function function)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>apply</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_void_function_3_01_parameters_00_01void_07_5_08_07_a0_00_01_a1_00_01_a2_00_01_a3_08_4.html</anchorfile>
      <anchor>a09a99e85c7e4942fc2bab8a5ab4b570d</anchor>
      <arglist>(Passed passed)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static int</type>
      <name>arity</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_void_function_3_01_parameters_00_01void_07_5_08_07_a0_00_01_a1_00_01_a2_00_01_a3_08_4.html</anchorfile>
      <anchor>aa808ebf85f27fcc9ee978ee96ab5a4bf</anchor>
      <arglist>()</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>sauce::internal::ApplyMethod&lt; Parameters, Return_(Receiver_::*)(A0, A1, A2, A3)&gt;</name>
    <filename>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_07db496c441711b62bbe49eaaf5617d981.html</filename>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <member kind="typedef">
      <type>Return_</type>
      <name>Return</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_07db496c441711b62bbe49eaaf5617d981.html</anchorfile>
      <anchor>ae24765fe02e8f9a6ee8e7a20fd22fafc</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Receiver_</type>
      <name>Receiver</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_07db496c441711b62bbe49eaaf5617d981.html</anchorfile>
      <anchor>adffc561fef773f6096cf1dfac1b206c4</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A0, 0 &gt;</type>
      <name>P0</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_07db496c441711b62bbe49eaaf5617d981.html</anchorfile>
      <anchor>a41a5a01561e6efe60b5b7e10e570be05</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A1, 1 &gt;</type>
      <name>P1</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_07db496c441711b62bbe49eaaf5617d981.html</anchorfile>
      <anchor>aa5aea287007c14b6d6ea532dfec1b7c7</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A2, 2 &gt;</type>
      <name>P2</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_07db496c441711b62bbe49eaaf5617d981.html</anchorfile>
      <anchor>a6806a44353c3e243f517c80cc17a46db</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A3, 3 &gt;</type>
      <name>P3</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_07db496c441711b62bbe49eaaf5617d981.html</anchorfile>
      <anchor>ada46697592bda251eefc95d9be252c8b</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Return_(Receiver_::*</type>
      <name>Signature</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_07db496c441711b62bbe49eaaf5617d981.html</anchorfile>
      <anchor>ae9da9b2e75436811a7ab80da43a92106</anchor>
      <arglist>)(A0, A1, A2, A3)</arglist>
    </member>
    <member kind="typedef">
      <type>Return_(Receiver_::*</type>
      <name>Method</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_07db496c441711b62bbe49eaaf5617d981.html</anchorfile>
      <anchor>adf77a8eadb547ff4a75965eeb2f17d4f</anchor>
      <arglist>)(typename P0::Type, typename P1::Type, typename P2::Type, typename P3::Type)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>ApplyMethod</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_07db496c441711b62bbe49eaaf5617d981.html</anchorfile>
      <anchor>a7971c1595e77bcb78549ed6d03197d0b</anchor>
      <arglist>(Method method)</arglist>
    </member>
    <member kind="function">
      <type>Return</type>
      <name>apply</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_07db496c441711b62bbe49eaaf5617d981.html</anchorfile>
      <anchor>a06c2a35630c20acc5d02a5f976ca5a5b</anchor>
      <arglist>(Receiver &amp;receiver, Passed passed)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>observe</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_07db496c441711b62bbe49eaaf5617d981.html</anchorfile>
      <anchor>ae878d035e5679826767584ea05ac88a3</anchor>
      <arglist>(Passed passed)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static int</type>
      <name>arity</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_07db496c441711b62bbe49eaaf5617d981.html</anchorfile>
      <anchor>ae43a24ff55f2a21cd0e084490d44eb83</anchor>
      <arglist>()</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>sauce::internal::ApplyConstructor&lt; Parameters, Constructed_(A0, A1, A2, A3), Allocator_ &gt;</name>
    <filename>classsauce_1_1internal_1_1_apply_constructor_3_01_parameters_00_01_constructed___07_a0_00_01_a1_00003bce0a7d61f6d0a9908981d66d77.html</filename>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <member kind="typedef">
      <type>Constructed_</type>
      <name>Constructed</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_constructor_3_01_parameters_00_01_constructed___07_a0_00_01_a1_00003bce0a7d61f6d0a9908981d66d77.html</anchorfile>
      <anchor>a1b32e2d2f11675422a26ef5e5ba41f6a</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>Constructed *</type>
      <name>apply</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_constructor_3_01_parameters_00_01_constructed___07_a0_00_01_a1_00003bce0a7d61f6d0a9908981d66d77.html</anchorfile>
      <anchor>a904b2c47d1824c29233132dd379389c4</anchor>
      <arglist>(Passed passed)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>observe</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_constructor_3_01_parameters_00_01_constructed___07_a0_00_01_a1_00003bce0a7d61f6d0a9908981d66d77.html</anchorfile>
      <anchor>ad2ea4d7ac35e5ecde6721f4b6ba8631e</anchor>
      <arglist>(Passed passed)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static int</type>
      <name>arity</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_constructor_3_01_parameters_00_01_constructed___07_a0_00_01_a1_00003bce0a7d61f6d0a9908981d66d77.html</anchorfile>
      <anchor>a31c09750f54f2d6220f91884ad26d4a2</anchor>
      <arglist>()</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>sauce::internal::ApplyFunction&lt; Parameters, Return_(*)(A0, A1, A2, A3, A4)&gt;</name>
    <filename>classsauce_1_1internal_1_1_apply_function_3_01_parameters_00_01_return___07_5_08_07_a0_00_01_a1_00_01_a2_00_01_a3_00_01_a4_08_4.html</filename>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <member kind="typedef">
      <type>Return_</type>
      <name>Return</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_function_3_01_parameters_00_01_return___07_5_08_07_a0_00_01_a1_00_01_a2_00_01_a3_00_01_a4_08_4.html</anchorfile>
      <anchor>ac4f20aa34eb965cbe032301602f01a56</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A0, 0 &gt;</type>
      <name>P0</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_function_3_01_parameters_00_01_return___07_5_08_07_a0_00_01_a1_00_01_a2_00_01_a3_00_01_a4_08_4.html</anchorfile>
      <anchor>a8a2a40b4f3f914b8fba41fede551e5fe</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A1, 1 &gt;</type>
      <name>P1</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_function_3_01_parameters_00_01_return___07_5_08_07_a0_00_01_a1_00_01_a2_00_01_a3_00_01_a4_08_4.html</anchorfile>
      <anchor>af10919fa6a8b2d0bc9eae63c00983eb4</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A2, 2 &gt;</type>
      <name>P2</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_function_3_01_parameters_00_01_return___07_5_08_07_a0_00_01_a1_00_01_a2_00_01_a3_00_01_a4_08_4.html</anchorfile>
      <anchor>a756adec43f3fc40e8ae0301392b7b2cd</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A3, 3 &gt;</type>
      <name>P3</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_function_3_01_parameters_00_01_return___07_5_08_07_a0_00_01_a1_00_01_a2_00_01_a3_00_01_a4_08_4.html</anchorfile>
      <anchor>a05d0a1a45f7d06bba97ab0a8c08caf28</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A4, 4 &gt;</type>
      <name>P4</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_function_3_01_parameters_00_01_return___07_5_08_07_a0_00_01_a1_00_01_a2_00_01_a3_00_01_a4_08_4.html</anchorfile>
      <anchor>a820a9aadf7b57d857b2ffb99854b1fd8</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Return_(*</type>
      <name>Signature</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_function_3_01_parameters_00_01_return___07_5_08_07_a0_00_01_a1_00_01_a2_00_01_a3_00_01_a4_08_4.html</anchorfile>
      <anchor>a5dc63649cb08eccafe28b549d414e8d0</anchor>
      <arglist>)(A0, A1, A2, A3, A4)</arglist>
    </member>
    <member kind="typedef">
      <type>Return_(*</type>
      <name>Function</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_function_3_01_parameters_00_01_return___07_5_08_07_a0_00_01_a1_00_01_a2_00_01_a3_00_01_a4_08_4.html</anchorfile>
      <anchor>a69875979cf12ff042c5b5c972f3f4bd0</anchor>
      <arglist>)(typename P0::Type, typename P1::Type, typename P2::Type, typename P3::Type, typename P4::Type)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>ApplyFunction</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_function_3_01_parameters_00_01_return___07_5_08_07_a0_00_01_a1_00_01_a2_00_01_a3_00_01_a4_08_4.html</anchorfile>
      <anchor>a46d9cbe817ec2c0d5a22c431cfda727d</anchor>
      <arglist>(Function function)</arglist>
    </member>
    <member kind="function">
      <type>Return</type>
      <name>apply</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_function_3_01_parameters_00_01_return___07_5_08_07_a0_00_01_a1_00_01_a2_00_01_a3_00_01_a4_08_4.html</anchorfile>
      <anchor>a441702aef3d0bbbf367afe6e820ef7bb</anchor>
      <arglist>(Passed passed)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>observe</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_function_3_01_parameters_00_01_return___07_5_08_07_a0_00_01_a1_00_01_a2_00_01_a3_00_01_a4_08_4.html</anchorfile>
      <anchor>a87f518d122f02d68580d4ca8efb6a548</anchor>
      <arglist>(Passed passed)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static int</type>
      <name>arity</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_function_3_01_parameters_00_01_return___07_5_08_07_a0_00_01_a1_00_01_a2_00_01_a3_00_01_a4_08_4.html</anchorfile>
      <anchor>a9db44e23711ff28b6b7c4f5a7107bc0c</anchor>
      <arglist>()</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>sauce::internal::ApplyVoidFunction&lt; Parameters, void(*)(A0, A1, A2, A3, A4)&gt;</name>
    <filename>classsauce_1_1internal_1_1_apply_void_function_3_01_parameters_00_01void_07_5_08_07_a0_00_01_a1_00_01_a2_00_01_a3_00_01_a4_08_4.html</filename>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A0, 0 &gt;</type>
      <name>P0</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_void_function_3_01_parameters_00_01void_07_5_08_07_a0_00_01_a1_00_01_a2_00_01_a3_00_01_a4_08_4.html</anchorfile>
      <anchor>ad65b0541b66d98011093bd076da65c78</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A1, 1 &gt;</type>
      <name>P1</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_void_function_3_01_parameters_00_01void_07_5_08_07_a0_00_01_a1_00_01_a2_00_01_a3_00_01_a4_08_4.html</anchorfile>
      <anchor>aacaaf991a8a2d1d6593f63efa8b37895</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A2, 2 &gt;</type>
      <name>P2</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_void_function_3_01_parameters_00_01void_07_5_08_07_a0_00_01_a1_00_01_a2_00_01_a3_00_01_a4_08_4.html</anchorfile>
      <anchor>a0f85a3c7705aaa0c0d2fb83edff13bd7</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A3, 3 &gt;</type>
      <name>P3</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_void_function_3_01_parameters_00_01void_07_5_08_07_a0_00_01_a1_00_01_a2_00_01_a3_00_01_a4_08_4.html</anchorfile>
      <anchor>a64edc1d67e9a233a7491a90986fd2542</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A4, 4 &gt;</type>
      <name>P4</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_void_function_3_01_parameters_00_01void_07_5_08_07_a0_00_01_a1_00_01_a2_00_01_a3_00_01_a4_08_4.html</anchorfile>
      <anchor>a43549acecc6948d3545e9c8d6ad82063</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>void(*</type>
      <name>Signature</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_void_function_3_01_parameters_00_01void_07_5_08_07_a0_00_01_a1_00_01_a2_00_01_a3_00_01_a4_08_4.html</anchorfile>
      <anchor>a2af96f3173c1adc14ecb10e9d095ac0f</anchor>
      <arglist>)(A0, A1, A2, A3, A4)</arglist>
    </member>
    <member kind="typedef">
      <type>void(*</type>
      <name>Function</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_void_function_3_01_parameters_00_01void_07_5_08_07_a0_00_01_a1_00_01_a2_00_01_a3_00_01_a4_08_4.html</anchorfile>
      <anchor>a2cf97eb41a4f37b90d8064f0751308b5</anchor>
      <arglist>)(typename P0::Type, typename P1::Type, typename P2::Type, typename P3::Type, typename P4::Type)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>ApplyVoidFunction</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_void_function_3_01_parameters_00_01void_07_5_08_07_a0_00_01_a1_00_01_a2_00_01_a3_00_01_a4_08_4.html</anchorfile>
      <anchor>a3faf1123e7e227bdd6863ac6450ec39d</anchor>
      <arglist>(Function function)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>apply</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_void_function_3_01_parameters_00_01void_07_5_08_07_a0_00_01_a1_00_01_a2_00_01_a3_00_01_a4_08_4.html</anchorfile>
      <anchor>a348673491ec387bd4f2d86e9c7d77b31</anchor>
      <arglist>(Passed passed)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static int</type>
      <name>arity</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_void_function_3_01_parameters_00_01void_07_5_08_07_a0_00_01_a1_00_01_a2_00_01_a3_00_01_a4_08_4.html</anchorfile>
      <anchor>a5917366ea3b2dfc5cc7a4d2f889a6f05</anchor>
      <arglist>()</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>sauce::internal::ApplyMethod&lt; Parameters, Return_(Receiver_::*)(A0, A1, A2, A3, A4)&gt;</name>
    <filename>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_0779cea12dc8b2859539bd629a370446e4.html</filename>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <member kind="typedef">
      <type>Return_</type>
      <name>Return</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_0779cea12dc8b2859539bd629a370446e4.html</anchorfile>
      <anchor>a1c36f68b3691b72aaf9ba2cebb9237f4</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Receiver_</type>
      <name>Receiver</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_0779cea12dc8b2859539bd629a370446e4.html</anchorfile>
      <anchor>a060b7a74dc147cf631874670f9b1d76c</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A0, 0 &gt;</type>
      <name>P0</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_0779cea12dc8b2859539bd629a370446e4.html</anchorfile>
      <anchor>a541ef5523bdac280f5464a22a8661d36</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A1, 1 &gt;</type>
      <name>P1</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_0779cea12dc8b2859539bd629a370446e4.html</anchorfile>
      <anchor>a134237e87ac533c9ec7dd5e43517a6a1</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A2, 2 &gt;</type>
      <name>P2</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_0779cea12dc8b2859539bd629a370446e4.html</anchorfile>
      <anchor>a57f2823e49d7f3a52c391a9f3016b76b</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A3, 3 &gt;</type>
      <name>P3</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_0779cea12dc8b2859539bd629a370446e4.html</anchorfile>
      <anchor>a4f5e0ca35177c868e2f8a451f93c6d12</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A4, 4 &gt;</type>
      <name>P4</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_0779cea12dc8b2859539bd629a370446e4.html</anchorfile>
      <anchor>acd8f62b0dfcf2bca1536feb97834eb30</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Return_(Receiver_::*</type>
      <name>Signature</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_0779cea12dc8b2859539bd629a370446e4.html</anchorfile>
      <anchor>a52355906e0c1820e93383841976e0492</anchor>
      <arglist>)(A0, A1, A2, A3, A4)</arglist>
    </member>
    <member kind="typedef">
      <type>Return_(Receiver_::*</type>
      <name>Method</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_0779cea12dc8b2859539bd629a370446e4.html</anchorfile>
      <anchor>a41293fc84c95132d0b9d515ad1e04a32</anchor>
      <arglist>)(typename P0::Type, typename P1::Type, typename P2::Type, typename P3::Type, typename P4::Type)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>ApplyMethod</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_0779cea12dc8b2859539bd629a370446e4.html</anchorfile>
      <anchor>a37be5d763d6b7f90d51990c3190d3097</anchor>
      <arglist>(Method method)</arglist>
    </member>
    <member kind="function">
      <type>Return</type>
      <name>apply</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_0779cea12dc8b2859539bd629a370446e4.html</anchorfile>
      <anchor>accab28894040b053959d51d0fe31aefb</anchor>
      <arglist>(Receiver &amp;receiver, Passed passed)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>observe</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_0779cea12dc8b2859539bd629a370446e4.html</anchorfile>
      <anchor>a7eb78fa2a47975d6f22338fa3a1dd0db</anchor>
      <arglist>(Passed passed)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static int</type>
      <name>arity</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_0779cea12dc8b2859539bd629a370446e4.html</anchorfile>
      <anchor>a6397005dadfb2b49a39f8dfdc77ba647</anchor>
      <arglist>()</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>sauce::internal::ApplyConstructor&lt; Parameters, Constructed_(A0, A1, A2, A3, A4), Allocator_ &gt;</name>
    <filename>classsauce_1_1internal_1_1_apply_constructor_3_01_parameters_00_01_constructed___07_a0_00_01_a1_6315f3be6749ae1b8be50bfa41a101c0.html</filename>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <member kind="typedef">
      <type>Constructed_</type>
      <name>Constructed</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_constructor_3_01_parameters_00_01_constructed___07_a0_00_01_a1_6315f3be6749ae1b8be50bfa41a101c0.html</anchorfile>
      <anchor>ab68e742900a122a7fc374640a5a98861</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>Constructed *</type>
      <name>apply</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_constructor_3_01_parameters_00_01_constructed___07_a0_00_01_a1_6315f3be6749ae1b8be50bfa41a101c0.html</anchorfile>
      <anchor>aae7be85e0afa1c36d081ef27f20c0ba7</anchor>
      <arglist>(Passed passed)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>observe</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_constructor_3_01_parameters_00_01_constructed___07_a0_00_01_a1_6315f3be6749ae1b8be50bfa41a101c0.html</anchorfile>
      <anchor>a506f885d62c3dbf023ec6a55fa14cf19</anchor>
      <arglist>(Passed passed)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static int</type>
      <name>arity</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_constructor_3_01_parameters_00_01_constructed___07_a0_00_01_a1_6315f3be6749ae1b8be50bfa41a101c0.html</anchorfile>
      <anchor>a47b01ce6afba1c70e8a84b5e6d56eba2</anchor>
      <arglist>()</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>sauce::internal::ApplyFunction&lt; Parameters, Return_(*)(A0, A1, A2, A3, A4, A5)&gt;</name>
    <filename>classsauce_1_1internal_1_1_apply_function_3_01_parameters_00_01_return___07_5_08_07_a0_00_01_a1_f96cfb5adadd4c1d01a9942a557415c8.html</filename>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <member kind="typedef">
      <type>Return_</type>
      <name>Return</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_function_3_01_parameters_00_01_return___07_5_08_07_a0_00_01_a1_f96cfb5adadd4c1d01a9942a557415c8.html</anchorfile>
      <anchor>a607f47a9d9630e589106621cd8f07cf4</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A0, 0 &gt;</type>
      <name>P0</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_function_3_01_parameters_00_01_return___07_5_08_07_a0_00_01_a1_f96cfb5adadd4c1d01a9942a557415c8.html</anchorfile>
      <anchor>a62457ed3712ab4b08f291b7fcfec1258</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A1, 1 &gt;</type>
      <name>P1</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_function_3_01_parameters_00_01_return___07_5_08_07_a0_00_01_a1_f96cfb5adadd4c1d01a9942a557415c8.html</anchorfile>
      <anchor>a5d409f7c3c95bfc67af3a1d55cbc980a</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A2, 2 &gt;</type>
      <name>P2</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_function_3_01_parameters_00_01_return___07_5_08_07_a0_00_01_a1_f96cfb5adadd4c1d01a9942a557415c8.html</anchorfile>
      <anchor>a9beb1d7de23fbc5ab8478a9dfe10dc2e</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A3, 3 &gt;</type>
      <name>P3</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_function_3_01_parameters_00_01_return___07_5_08_07_a0_00_01_a1_f96cfb5adadd4c1d01a9942a557415c8.html</anchorfile>
      <anchor>a8f992160fd3b738fe9f603aef35bc94a</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A4, 4 &gt;</type>
      <name>P4</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_function_3_01_parameters_00_01_return___07_5_08_07_a0_00_01_a1_f96cfb5adadd4c1d01a9942a557415c8.html</anchorfile>
      <anchor>a678bf9b78c6199d238dc21065f263bf2</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A5, 5 &gt;</type>
      <name>P5</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_function_3_01_parameters_00_01_return___07_5_08_07_a0_00_01_a1_f96cfb5adadd4c1d01a9942a557415c8.html</anchorfile>
      <anchor>a49ce01af836ed02bedaca74a2f01047e</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Return_(*</type>
      <name>Signature</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_function_3_01_parameters_00_01_return___07_5_08_07_a0_00_01_a1_f96cfb5adadd4c1d01a9942a557415c8.html</anchorfile>
      <anchor>a340b80a74345979d65cdd00320580040</anchor>
      <arglist>)(A0, A1, A2, A3, A4, A5)</arglist>
    </member>
    <member kind="typedef">
      <type>Return_(*</type>
      <name>Function</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_function_3_01_parameters_00_01_return___07_5_08_07_a0_00_01_a1_f96cfb5adadd4c1d01a9942a557415c8.html</anchorfile>
      <anchor>a976217886a0863f670b67f2e38fc4d1c</anchor>
      <arglist>)(typename P0::Type, typename P1::Type, typename P2::Type, typename P3::Type, typename P4::Type, typename P5::Type)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>ApplyFunction</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_function_3_01_parameters_00_01_return___07_5_08_07_a0_00_01_a1_f96cfb5adadd4c1d01a9942a557415c8.html</anchorfile>
      <anchor>a15f592dd74a9fc86f5cad9adddd8cc67</anchor>
      <arglist>(Function function)</arglist>
    </member>
    <member kind="function">
      <type>Return</type>
      <name>apply</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_function_3_01_parameters_00_01_return___07_5_08_07_a0_00_01_a1_f96cfb5adadd4c1d01a9942a557415c8.html</anchorfile>
      <anchor>ab63809b8a3d25addd307b1371dd443ec</anchor>
      <arglist>(Passed passed)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>observe</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_function_3_01_parameters_00_01_return___07_5_08_07_a0_00_01_a1_f96cfb5adadd4c1d01a9942a557415c8.html</anchorfile>
      <anchor>a9854f8ba19cce60eb4d821062c7200a7</anchor>
      <arglist>(Passed passed)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static int</type>
      <name>arity</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_function_3_01_parameters_00_01_return___07_5_08_07_a0_00_01_a1_f96cfb5adadd4c1d01a9942a557415c8.html</anchorfile>
      <anchor>a953848c17875e37639e58e824549f335</anchor>
      <arglist>()</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>sauce::internal::ApplyVoidFunction&lt; Parameters, void(*)(A0, A1, A2, A3, A4, A5)&gt;</name>
    <filename>classsauce_1_1internal_1_1_apply_void_function_3_01_parameters_00_01void_07_5_08_07_a0_00_01_a1_e2db35fa2fa1ab9afb364a1ec2eb34b3.html</filename>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A0, 0 &gt;</type>
      <name>P0</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_void_function_3_01_parameters_00_01void_07_5_08_07_a0_00_01_a1_e2db35fa2fa1ab9afb364a1ec2eb34b3.html</anchorfile>
      <anchor>a4cdad6655ccd491f74a86226af725ed2</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A1, 1 &gt;</type>
      <name>P1</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_void_function_3_01_parameters_00_01void_07_5_08_07_a0_00_01_a1_e2db35fa2fa1ab9afb364a1ec2eb34b3.html</anchorfile>
      <anchor>ab71a6b4159bc43373b3b4122259123e0</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A2, 2 &gt;</type>
      <name>P2</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_void_function_3_01_parameters_00_01void_07_5_08_07_a0_00_01_a1_e2db35fa2fa1ab9afb364a1ec2eb34b3.html</anchorfile>
      <anchor>a1f6181a4eec40661bd4dbbde779160fc</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A3, 3 &gt;</type>
      <name>P3</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_void_function_3_01_parameters_00_01void_07_5_08_07_a0_00_01_a1_e2db35fa2fa1ab9afb364a1ec2eb34b3.html</anchorfile>
      <anchor>a1a82033ff602769dc15eefe2d37007f4</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A4, 4 &gt;</type>
      <name>P4</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_void_function_3_01_parameters_00_01void_07_5_08_07_a0_00_01_a1_e2db35fa2fa1ab9afb364a1ec2eb34b3.html</anchorfile>
      <anchor>a5f0923c0081816c8e0ec27830b184c6c</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A5, 5 &gt;</type>
      <name>P5</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_void_function_3_01_parameters_00_01void_07_5_08_07_a0_00_01_a1_e2db35fa2fa1ab9afb364a1ec2eb34b3.html</anchorfile>
      <anchor>a30f0d810c74c6ea46fa8397bb6c157f8</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>void(*</type>
      <name>Signature</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_void_function_3_01_parameters_00_01void_07_5_08_07_a0_00_01_a1_e2db35fa2fa1ab9afb364a1ec2eb34b3.html</anchorfile>
      <anchor>a1be283122cc3790efb0a859e88ed339b</anchor>
      <arglist>)(A0, A1, A2, A3, A4, A5)</arglist>
    </member>
    <member kind="typedef">
      <type>void(*</type>
      <name>Function</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_void_function_3_01_parameters_00_01void_07_5_08_07_a0_00_01_a1_e2db35fa2fa1ab9afb364a1ec2eb34b3.html</anchorfile>
      <anchor>ace4e1a4e1fc7325792ca42678b5f7f0c</anchor>
      <arglist>)(typename P0::Type, typename P1::Type, typename P2::Type, typename P3::Type, typename P4::Type, typename P5::Type)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>ApplyVoidFunction</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_void_function_3_01_parameters_00_01void_07_5_08_07_a0_00_01_a1_e2db35fa2fa1ab9afb364a1ec2eb34b3.html</anchorfile>
      <anchor>a9c7d3c8e628ee33a0a867cb4711190e6</anchor>
      <arglist>(Function function)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>apply</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_void_function_3_01_parameters_00_01void_07_5_08_07_a0_00_01_a1_e2db35fa2fa1ab9afb364a1ec2eb34b3.html</anchorfile>
      <anchor>a8bb80da616f3e031888b601e6feac309</anchor>
      <arglist>(Passed passed)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static int</type>
      <name>arity</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_void_function_3_01_parameters_00_01void_07_5_08_07_a0_00_01_a1_e2db35fa2fa1ab9afb364a1ec2eb34b3.html</anchorfile>
      <anchor>af244cac3d998132913997aa0dfc80207</anchor>
      <arglist>()</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>sauce::internal::ApplyMethod&lt; Parameters, Return_(Receiver_::*)(A0, A1, A2, A3, A4, A5)&gt;</name>
    <filename>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_07eb6bbc91d089db55639a996161271d6f.html</filename>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <member kind="typedef">
      <type>Return_</type>
      <name>Return</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_07eb6bbc91d089db55639a996161271d6f.html</anchorfile>
      <anchor>a828bb13a24dde70cf296be1e239e12e4</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Receiver_</type>
      <name>Receiver</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_07eb6bbc91d089db55639a996161271d6f.html</anchorfile>
      <anchor>a3ebc1823cab0d1300c546fae430b1d52</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A0, 0 &gt;</type>
      <name>P0</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_07eb6bbc91d089db55639a996161271d6f.html</anchorfile>
      <anchor>ac7c3060f176d59cd21453f3d3e04bf8a</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A1, 1 &gt;</type>
      <name>P1</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_07eb6bbc91d089db55639a996161271d6f.html</anchorfile>
      <anchor>a6d10da1f177bbcc32c38f4d6e4ef6654</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A2, 2 &gt;</type>
      <name>P2</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_07eb6bbc91d089db55639a996161271d6f.html</anchorfile>
      <anchor>abf0cb6b826d9978ce243f95bfe6d4f72</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A3, 3 &gt;</type>
      <name>P3</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_07eb6bbc91d089db55639a996161271d6f.html</anchorfile>
      <anchor>ade66993dd1d83813c973145c4e09d5d3</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A4, 4 &gt;</type>
      <name>P4</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_07eb6bbc91d089db55639a996161271d6f.html</anchorfile>
      <anchor>ae112d8890abad9d8e2e0dee1ca339ad8</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A5, 5 &gt;</type>
      <name>P5</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_07eb6bbc91d089db55639a996161271d6f.html</anchorfile>
      <anchor>aea629c08b4e440c771f49c62ca672dce</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Return_(Receiver_::*</type>
      <name>Signature</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_07eb6bbc91d089db55639a996161271d6f.html</anchorfile>
      <anchor>a8ced5a811dc411ab48bb18a6b77c2540</anchor>
      <arglist>)(A0, A1, A2, A3, A4, A5)</arglist>
    </member>
    <member kind="typedef">
      <type>Return_(Receiver_::*</type>
      <name>Method</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_07eb6bbc91d089db55639a996161271d6f.html</anchorfile>
      <anchor>a3c87ffdff14f1d09671ae3a36ed37bdc</anchor>
      <arglist>)(typename P0::Type, typename P1::Type, typename P2::Type, typename P3::Type, typename P4::Type, typename P5::Type)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>ApplyMethod</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_07eb6bbc91d089db55639a996161271d6f.html</anchorfile>
      <anchor>a4ba6cd672abde2a1aee494d2cabb6ed7</anchor>
      <arglist>(Method method)</arglist>
    </member>
    <member kind="function">
      <type>Return</type>
      <name>apply</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_07eb6bbc91d089db55639a996161271d6f.html</anchorfile>
      <anchor>a72b13f3961856b348e4f917281002647</anchor>
      <arglist>(Receiver &amp;receiver, Passed passed)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>observe</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_07eb6bbc91d089db55639a996161271d6f.html</anchorfile>
      <anchor>ab67831065870d1aeffab32efc13500d2</anchor>
      <arglist>(Passed passed)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static int</type>
      <name>arity</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_07eb6bbc91d089db55639a996161271d6f.html</anchorfile>
      <anchor>ab3b0e064dd81cd4c5f77574ab4158585</anchor>
      <arglist>()</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>sauce::internal::ApplyConstructor&lt; Parameters, Constructed_(A0, A1, A2, A3, A4, A5), Allocator_ &gt;</name>
    <filename>classsauce_1_1internal_1_1_apply_constructor_3_01_parameters_00_01_constructed___07_a0_00_01_a1_40860a696caae1eecb9b966628237773.html</filename>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <member kind="typedef">
      <type>Constructed_</type>
      <name>Constructed</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_constructor_3_01_parameters_00_01_constructed___07_a0_00_01_a1_40860a696caae1eecb9b966628237773.html</anchorfile>
      <anchor>a647c443d7ec5663307a8f50391e20be4</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>Constructed *</type>
      <name>apply</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_constructor_3_01_parameters_00_01_constructed___07_a0_00_01_a1_40860a696caae1eecb9b966628237773.html</anchorfile>
      <anchor>a7ed61860421e5ac24900f366c89166f2</anchor>
      <arglist>(Passed passed)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>observe</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_constructor_3_01_parameters_00_01_constructed___07_a0_00_01_a1_40860a696caae1eecb9b966628237773.html</anchorfile>
      <anchor>a928ab426de16d83a5f664b02956898ee</anchor>
      <arglist>(Passed passed)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static int</type>
      <name>arity</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_constructor_3_01_parameters_00_01_constructed___07_a0_00_01_a1_40860a696caae1eecb9b966628237773.html</anchorfile>
      <anchor>a4363c1537a8f28e8cb1d77082f73bd41</anchor>
      <arglist>()</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>sauce::internal::ApplyFunction&lt; Parameters, Return_(*)(A0, A1, A2, A3, A4, A5, A6)&gt;</name>
    <filename>classsauce_1_1internal_1_1_apply_function_3_01_parameters_00_01_return___07_5_08_07_a0_00_01_a1_22660f3f670e1e6891b1fcb597224c58.html</filename>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <member kind="typedef">
      <type>Return_</type>
      <name>Return</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_function_3_01_parameters_00_01_return___07_5_08_07_a0_00_01_a1_22660f3f670e1e6891b1fcb597224c58.html</anchorfile>
      <anchor>a8e1a70082e1b2e315d9d6549d1b37dd5</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A0, 0 &gt;</type>
      <name>P0</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_function_3_01_parameters_00_01_return___07_5_08_07_a0_00_01_a1_22660f3f670e1e6891b1fcb597224c58.html</anchorfile>
      <anchor>a035a132335643c69e00b1510d8ecd7f5</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A1, 1 &gt;</type>
      <name>P1</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_function_3_01_parameters_00_01_return___07_5_08_07_a0_00_01_a1_22660f3f670e1e6891b1fcb597224c58.html</anchorfile>
      <anchor>a215964c63bef4bce6b52ff7452513b57</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A2, 2 &gt;</type>
      <name>P2</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_function_3_01_parameters_00_01_return___07_5_08_07_a0_00_01_a1_22660f3f670e1e6891b1fcb597224c58.html</anchorfile>
      <anchor>af1c0ce8728bb466da2217ea5f6f62c84</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A3, 3 &gt;</type>
      <name>P3</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_function_3_01_parameters_00_01_return___07_5_08_07_a0_00_01_a1_22660f3f670e1e6891b1fcb597224c58.html</anchorfile>
      <anchor>a4a99c3d389b6be9d29e0ec344f5b7d63</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A4, 4 &gt;</type>
      <name>P4</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_function_3_01_parameters_00_01_return___07_5_08_07_a0_00_01_a1_22660f3f670e1e6891b1fcb597224c58.html</anchorfile>
      <anchor>a0cd8ebf559d49e76d42afb397875d519</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A5, 5 &gt;</type>
      <name>P5</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_function_3_01_parameters_00_01_return___07_5_08_07_a0_00_01_a1_22660f3f670e1e6891b1fcb597224c58.html</anchorfile>
      <anchor>a68d99350883316ba8851dc8225bc5c32</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A6, 6 &gt;</type>
      <name>P6</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_function_3_01_parameters_00_01_return___07_5_08_07_a0_00_01_a1_22660f3f670e1e6891b1fcb597224c58.html</anchorfile>
      <anchor>a8accaf4ee5be949398a30328ac928313</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Return_(*</type>
      <name>Signature</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_function_3_01_parameters_00_01_return___07_5_08_07_a0_00_01_a1_22660f3f670e1e6891b1fcb597224c58.html</anchorfile>
      <anchor>a90d0a08d52e9e282c0ec02c45e85fc95</anchor>
      <arglist>)(A0, A1, A2, A3, A4, A5, A6)</arglist>
    </member>
    <member kind="typedef">
      <type>Return_(*</type>
      <name>Function</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_function_3_01_parameters_00_01_return___07_5_08_07_a0_00_01_a1_22660f3f670e1e6891b1fcb597224c58.html</anchorfile>
      <anchor>aaa4b7beacfc2bcd78c81379a2f341893</anchor>
      <arglist>)(typename P0::Type, typename P1::Type, typename P2::Type, typename P3::Type, typename P4::Type, typename P5::Type, typename P6::Type)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>ApplyFunction</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_function_3_01_parameters_00_01_return___07_5_08_07_a0_00_01_a1_22660f3f670e1e6891b1fcb597224c58.html</anchorfile>
      <anchor>a435b3473c9d85cc4a30b420117d9533a</anchor>
      <arglist>(Function function)</arglist>
    </member>
    <member kind="function">
      <type>Return</type>
      <name>apply</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_function_3_01_parameters_00_01_return___07_5_08_07_a0_00_01_a1_22660f3f670e1e6891b1fcb597224c58.html</anchorfile>
      <anchor>a6b7d4d9d8aaf3444ec0539c47b6013c7</anchor>
      <arglist>(Passed passed)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>observe</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_function_3_01_parameters_00_01_return___07_5_08_07_a0_00_01_a1_22660f3f670e1e6891b1fcb597224c58.html</anchorfile>
      <anchor>ac4d4ebd210c4f4665fe415e4cfc46dee</anchor>
      <arglist>(Passed passed)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static int</type>
      <name>arity</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_function_3_01_parameters_00_01_return___07_5_08_07_a0_00_01_a1_22660f3f670e1e6891b1fcb597224c58.html</anchorfile>
      <anchor>a6cd92a1788c52998896476d666ba8459</anchor>
      <arglist>()</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>sauce::internal::ApplyVoidFunction&lt; Parameters, void(*)(A0, A1, A2, A3, A4, A5, A6)&gt;</name>
    <filename>classsauce_1_1internal_1_1_apply_void_function_3_01_parameters_00_01void_07_5_08_07_a0_00_01_a1_1dafffeed3f4dc4160cb49673e3cbb3d.html</filename>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A0, 0 &gt;</type>
      <name>P0</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_void_function_3_01_parameters_00_01void_07_5_08_07_a0_00_01_a1_1dafffeed3f4dc4160cb49673e3cbb3d.html</anchorfile>
      <anchor>a67b49826a2fbe70ff1dbf96cd6b82364</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A1, 1 &gt;</type>
      <name>P1</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_void_function_3_01_parameters_00_01void_07_5_08_07_a0_00_01_a1_1dafffeed3f4dc4160cb49673e3cbb3d.html</anchorfile>
      <anchor>a1179a9af532ecd7fb0caa16ac221fcf0</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A2, 2 &gt;</type>
      <name>P2</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_void_function_3_01_parameters_00_01void_07_5_08_07_a0_00_01_a1_1dafffeed3f4dc4160cb49673e3cbb3d.html</anchorfile>
      <anchor>a1b85ecc0ce036dae65e77564cf97fd74</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A3, 3 &gt;</type>
      <name>P3</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_void_function_3_01_parameters_00_01void_07_5_08_07_a0_00_01_a1_1dafffeed3f4dc4160cb49673e3cbb3d.html</anchorfile>
      <anchor>a24347dd5084827a9d2da1c82e8f80c77</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A4, 4 &gt;</type>
      <name>P4</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_void_function_3_01_parameters_00_01void_07_5_08_07_a0_00_01_a1_1dafffeed3f4dc4160cb49673e3cbb3d.html</anchorfile>
      <anchor>a493a2aae8de64504ee04baceb1c06f20</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A5, 5 &gt;</type>
      <name>P5</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_void_function_3_01_parameters_00_01void_07_5_08_07_a0_00_01_a1_1dafffeed3f4dc4160cb49673e3cbb3d.html</anchorfile>
      <anchor>ad5ead3e8630ce6eab3a07f60a5a674de</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A6, 6 &gt;</type>
      <name>P6</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_void_function_3_01_parameters_00_01void_07_5_08_07_a0_00_01_a1_1dafffeed3f4dc4160cb49673e3cbb3d.html</anchorfile>
      <anchor>a23b53fd1839a61394ca93a8c61e30bc2</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>void(*</type>
      <name>Signature</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_void_function_3_01_parameters_00_01void_07_5_08_07_a0_00_01_a1_1dafffeed3f4dc4160cb49673e3cbb3d.html</anchorfile>
      <anchor>a37b8e29347336c22d3ef82ba52a13669</anchor>
      <arglist>)(A0, A1, A2, A3, A4, A5, A6)</arglist>
    </member>
    <member kind="typedef">
      <type>void(*</type>
      <name>Function</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_void_function_3_01_parameters_00_01void_07_5_08_07_a0_00_01_a1_1dafffeed3f4dc4160cb49673e3cbb3d.html</anchorfile>
      <anchor>a210a481864c71b6fc14e5dc984b3f101</anchor>
      <arglist>)(typename P0::Type, typename P1::Type, typename P2::Type, typename P3::Type, typename P4::Type, typename P5::Type, typename P6::Type)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>ApplyVoidFunction</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_void_function_3_01_parameters_00_01void_07_5_08_07_a0_00_01_a1_1dafffeed3f4dc4160cb49673e3cbb3d.html</anchorfile>
      <anchor>ac1d9f543fbc772c68cc1f784b07d8973</anchor>
      <arglist>(Function function)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>apply</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_void_function_3_01_parameters_00_01void_07_5_08_07_a0_00_01_a1_1dafffeed3f4dc4160cb49673e3cbb3d.html</anchorfile>
      <anchor>aebb67055884aeb6cf966b24ff70275ab</anchor>
      <arglist>(Passed passed)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static int</type>
      <name>arity</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_void_function_3_01_parameters_00_01void_07_5_08_07_a0_00_01_a1_1dafffeed3f4dc4160cb49673e3cbb3d.html</anchorfile>
      <anchor>aabc2e708ef7e11c057c50d7fc8b9fc39</anchor>
      <arglist>()</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>sauce::internal::ApplyMethod&lt; Parameters, Return_(Receiver_::*)(A0, A1, A2, A3, A4, A5, A6)&gt;</name>
    <filename>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_070c47d89eac924e1785bbe73a5269e57a.html</filename>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <member kind="typedef">
      <type>Return_</type>
      <name>Return</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_070c47d89eac924e1785bbe73a5269e57a.html</anchorfile>
      <anchor>ac2094c96cb0e086006fc4b18b3ba9ea8</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Receiver_</type>
      <name>Receiver</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_070c47d89eac924e1785bbe73a5269e57a.html</anchorfile>
      <anchor>a7c83bc71451f0f819cc087fb6cdf7882</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A0, 0 &gt;</type>
      <name>P0</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_070c47d89eac924e1785bbe73a5269e57a.html</anchorfile>
      <anchor>a484a7dd43893b84492f140a052e53250</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A1, 1 &gt;</type>
      <name>P1</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_070c47d89eac924e1785bbe73a5269e57a.html</anchorfile>
      <anchor>ab708c8eccd988ad2ca8b1590f93ca255</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A2, 2 &gt;</type>
      <name>P2</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_070c47d89eac924e1785bbe73a5269e57a.html</anchorfile>
      <anchor>a4918a76c1cd0922cde0593311a05e20b</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A3, 3 &gt;</type>
      <name>P3</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_070c47d89eac924e1785bbe73a5269e57a.html</anchorfile>
      <anchor>a76b36cb43b5fb1e891122a6360a301d7</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A4, 4 &gt;</type>
      <name>P4</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_070c47d89eac924e1785bbe73a5269e57a.html</anchorfile>
      <anchor>a9bd2a4f87cc4e9f9bd545115f2157107</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A5, 5 &gt;</type>
      <name>P5</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_070c47d89eac924e1785bbe73a5269e57a.html</anchorfile>
      <anchor>a500d90e373983ae86d0cad13d0d227a2</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A6, 6 &gt;</type>
      <name>P6</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_070c47d89eac924e1785bbe73a5269e57a.html</anchorfile>
      <anchor>af3969d4f4839b9a58a033d1ad5304600</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Return_(Receiver_::*</type>
      <name>Signature</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_070c47d89eac924e1785bbe73a5269e57a.html</anchorfile>
      <anchor>ad259f28cbe9fbff12321c801456856a1</anchor>
      <arglist>)(A0, A1, A2, A3, A4, A5, A6)</arglist>
    </member>
    <member kind="typedef">
      <type>Return_(Receiver_::*</type>
      <name>Method</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_070c47d89eac924e1785bbe73a5269e57a.html</anchorfile>
      <anchor>a15ba3c00bbe4028515ca97dee438918a</anchor>
      <arglist>)(typename P0::Type, typename P1::Type, typename P2::Type, typename P3::Type, typename P4::Type, typename P5::Type, typename P6::Type)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>ApplyMethod</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_070c47d89eac924e1785bbe73a5269e57a.html</anchorfile>
      <anchor>a769152b83a3875a3248cbdc970b5ff91</anchor>
      <arglist>(Method method)</arglist>
    </member>
    <member kind="function">
      <type>Return</type>
      <name>apply</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_070c47d89eac924e1785bbe73a5269e57a.html</anchorfile>
      <anchor>a46a4f08e4b485fcc4b1a1cafc7c2957d</anchor>
      <arglist>(Receiver &amp;receiver, Passed passed)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>observe</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_070c47d89eac924e1785bbe73a5269e57a.html</anchorfile>
      <anchor>aeea84f882010ba2e4e3b02e4ee3855b6</anchor>
      <arglist>(Passed passed)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static int</type>
      <name>arity</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_070c47d89eac924e1785bbe73a5269e57a.html</anchorfile>
      <anchor>ab97ac786bcf6ed45eb3349d90737170f</anchor>
      <arglist>()</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>sauce::internal::ApplyConstructor&lt; Parameters, Constructed_(A0, A1, A2, A3, A4, A5, A6), Allocator_ &gt;</name>
    <filename>classsauce_1_1internal_1_1_apply_constructor_3_01_parameters_00_01_constructed___07_a0_00_01_a1_e948e971723e2d7863f35cd7d4d3f97b.html</filename>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <member kind="typedef">
      <type>Constructed_</type>
      <name>Constructed</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_constructor_3_01_parameters_00_01_constructed___07_a0_00_01_a1_e948e971723e2d7863f35cd7d4d3f97b.html</anchorfile>
      <anchor>afcae99e7a97965db2e420c2e74aa332f</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>Constructed *</type>
      <name>apply</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_constructor_3_01_parameters_00_01_constructed___07_a0_00_01_a1_e948e971723e2d7863f35cd7d4d3f97b.html</anchorfile>
      <anchor>a20cd9971a8f5d7909a7198684cdf3c4d</anchor>
      <arglist>(Passed passed)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>observe</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_constructor_3_01_parameters_00_01_constructed___07_a0_00_01_a1_e948e971723e2d7863f35cd7d4d3f97b.html</anchorfile>
      <anchor>a978bbdbb3b5f59b27849456689388ca9</anchor>
      <arglist>(Passed passed)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static int</type>
      <name>arity</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_constructor_3_01_parameters_00_01_constructed___07_a0_00_01_a1_e948e971723e2d7863f35cd7d4d3f97b.html</anchorfile>
      <anchor>a35fe30acd3becf08c11b23a3cd1da173</anchor>
      <arglist>()</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>sauce::internal::ApplyFunction&lt; Parameters, Return_(*)(A0, A1, A2, A3, A4, A5, A6, A7)&gt;</name>
    <filename>classsauce_1_1internal_1_1_apply_function_3_01_parameters_00_01_return___07_5_08_07_a0_00_01_a1_32f634c6d69a0ded4edd4975302e9447.html</filename>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <member kind="typedef">
      <type>Return_</type>
      <name>Return</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_function_3_01_parameters_00_01_return___07_5_08_07_a0_00_01_a1_32f634c6d69a0ded4edd4975302e9447.html</anchorfile>
      <anchor>a19e93064e384d250811bb0db88a40015</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A0, 0 &gt;</type>
      <name>P0</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_function_3_01_parameters_00_01_return___07_5_08_07_a0_00_01_a1_32f634c6d69a0ded4edd4975302e9447.html</anchorfile>
      <anchor>a12065d40e382dfef5cfc38f62756e4ef</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A1, 1 &gt;</type>
      <name>P1</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_function_3_01_parameters_00_01_return___07_5_08_07_a0_00_01_a1_32f634c6d69a0ded4edd4975302e9447.html</anchorfile>
      <anchor>a3d4970c8f8cfa7fa13f555f3f3a5096c</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A2, 2 &gt;</type>
      <name>P2</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_function_3_01_parameters_00_01_return___07_5_08_07_a0_00_01_a1_32f634c6d69a0ded4edd4975302e9447.html</anchorfile>
      <anchor>aa6dd1d997ec2c4e764ad2dcc72343af6</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A3, 3 &gt;</type>
      <name>P3</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_function_3_01_parameters_00_01_return___07_5_08_07_a0_00_01_a1_32f634c6d69a0ded4edd4975302e9447.html</anchorfile>
      <anchor>af0b544dd1257964d4853db0ed7c95e78</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A4, 4 &gt;</type>
      <name>P4</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_function_3_01_parameters_00_01_return___07_5_08_07_a0_00_01_a1_32f634c6d69a0ded4edd4975302e9447.html</anchorfile>
      <anchor>a252c9b6c1643dbf361745ca954af1ccd</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A5, 5 &gt;</type>
      <name>P5</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_function_3_01_parameters_00_01_return___07_5_08_07_a0_00_01_a1_32f634c6d69a0ded4edd4975302e9447.html</anchorfile>
      <anchor>aa2efec4d8cbffac492fc266018a221ea</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A6, 6 &gt;</type>
      <name>P6</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_function_3_01_parameters_00_01_return___07_5_08_07_a0_00_01_a1_32f634c6d69a0ded4edd4975302e9447.html</anchorfile>
      <anchor>a6ba0bece100d724d5852c5d82d7b24df</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A7, 7 &gt;</type>
      <name>P7</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_function_3_01_parameters_00_01_return___07_5_08_07_a0_00_01_a1_32f634c6d69a0ded4edd4975302e9447.html</anchorfile>
      <anchor>a9ed6500498a6605479e42213d3348687</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Return_(*</type>
      <name>Signature</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_function_3_01_parameters_00_01_return___07_5_08_07_a0_00_01_a1_32f634c6d69a0ded4edd4975302e9447.html</anchorfile>
      <anchor>a58c5dec364eb9588ebcd9b719c3e3374</anchor>
      <arglist>)(A0, A1, A2, A3, A4, A5, A6, A7)</arglist>
    </member>
    <member kind="typedef">
      <type>Return_(*</type>
      <name>Function</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_function_3_01_parameters_00_01_return___07_5_08_07_a0_00_01_a1_32f634c6d69a0ded4edd4975302e9447.html</anchorfile>
      <anchor>a1a34fb221beda7498c2e1e1a660c5df0</anchor>
      <arglist>)(typename P0::Type, typename P1::Type, typename P2::Type, typename P3::Type, typename P4::Type, typename P5::Type, typename P6::Type, typename P7::Type)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>ApplyFunction</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_function_3_01_parameters_00_01_return___07_5_08_07_a0_00_01_a1_32f634c6d69a0ded4edd4975302e9447.html</anchorfile>
      <anchor>a061f43b315dd8ecdccabef75c39d667e</anchor>
      <arglist>(Function function)</arglist>
    </member>
    <member kind="function">
      <type>Return</type>
      <name>apply</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_function_3_01_parameters_00_01_return___07_5_08_07_a0_00_01_a1_32f634c6d69a0ded4edd4975302e9447.html</anchorfile>
      <anchor>a28673dfe2c228459d442aad32af788f7</anchor>
      <arglist>(Passed passed)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>observe</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_function_3_01_parameters_00_01_return___07_5_08_07_a0_00_01_a1_32f634c6d69a0ded4edd4975302e9447.html</anchorfile>
      <anchor>ad112317ae75781ba30e0f3b026147b9b</anchor>
      <arglist>(Passed passed)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static int</type>
      <name>arity</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_function_3_01_parameters_00_01_return___07_5_08_07_a0_00_01_a1_32f634c6d69a0ded4edd4975302e9447.html</anchorfile>
      <anchor>a2e0adef545285cc674ea24b8021aff66</anchor>
      <arglist>()</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>sauce::internal::ApplyVoidFunction&lt; Parameters, void(*)(A0, A1, A2, A3, A4, A5, A6, A7)&gt;</name>
    <filename>classsauce_1_1internal_1_1_apply_void_function_3_01_parameters_00_01void_07_5_08_07_a0_00_01_a1_7ff9269079a9963e6716f31a3862891b.html</filename>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A0, 0 &gt;</type>
      <name>P0</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_void_function_3_01_parameters_00_01void_07_5_08_07_a0_00_01_a1_7ff9269079a9963e6716f31a3862891b.html</anchorfile>
      <anchor>a6c65f6e6de15b5891438ace701c78fa5</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A1, 1 &gt;</type>
      <name>P1</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_void_function_3_01_parameters_00_01void_07_5_08_07_a0_00_01_a1_7ff9269079a9963e6716f31a3862891b.html</anchorfile>
      <anchor>a1c7c3ba4bd8aa22e2515467a3f4f330d</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A2, 2 &gt;</type>
      <name>P2</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_void_function_3_01_parameters_00_01void_07_5_08_07_a0_00_01_a1_7ff9269079a9963e6716f31a3862891b.html</anchorfile>
      <anchor>ab61f56d26ed5a37db5df671846737a59</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A3, 3 &gt;</type>
      <name>P3</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_void_function_3_01_parameters_00_01void_07_5_08_07_a0_00_01_a1_7ff9269079a9963e6716f31a3862891b.html</anchorfile>
      <anchor>a7e803d332d48b0a9e023b93666237b3f</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A4, 4 &gt;</type>
      <name>P4</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_void_function_3_01_parameters_00_01void_07_5_08_07_a0_00_01_a1_7ff9269079a9963e6716f31a3862891b.html</anchorfile>
      <anchor>a85f7bf4525226f4aeb59134f6e1b52cb</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A5, 5 &gt;</type>
      <name>P5</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_void_function_3_01_parameters_00_01void_07_5_08_07_a0_00_01_a1_7ff9269079a9963e6716f31a3862891b.html</anchorfile>
      <anchor>ab0a5da5b4809472eab59564dffb1d163</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A6, 6 &gt;</type>
      <name>P6</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_void_function_3_01_parameters_00_01void_07_5_08_07_a0_00_01_a1_7ff9269079a9963e6716f31a3862891b.html</anchorfile>
      <anchor>a849b7369b268d8d184a73991340b52f7</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A7, 7 &gt;</type>
      <name>P7</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_void_function_3_01_parameters_00_01void_07_5_08_07_a0_00_01_a1_7ff9269079a9963e6716f31a3862891b.html</anchorfile>
      <anchor>a2710bfab47e1addc3f5104205cd922ef</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>void(*</type>
      <name>Signature</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_void_function_3_01_parameters_00_01void_07_5_08_07_a0_00_01_a1_7ff9269079a9963e6716f31a3862891b.html</anchorfile>
      <anchor>aef247fe0f4084090ec7d1f1887b698ed</anchor>
      <arglist>)(A0, A1, A2, A3, A4, A5, A6, A7)</arglist>
    </member>
    <member kind="typedef">
      <type>void(*</type>
      <name>Function</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_void_function_3_01_parameters_00_01void_07_5_08_07_a0_00_01_a1_7ff9269079a9963e6716f31a3862891b.html</anchorfile>
      <anchor>af19848b1198c7674fffa934675339641</anchor>
      <arglist>)(typename P0::Type, typename P1::Type, typename P2::Type, typename P3::Type, typename P4::Type, typename P5::Type, typename P6::Type, typename P7::Type)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>ApplyVoidFunction</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_void_function_3_01_parameters_00_01void_07_5_08_07_a0_00_01_a1_7ff9269079a9963e6716f31a3862891b.html</anchorfile>
      <anchor>aab263a1e331fbed417c9475f70893708</anchor>
      <arglist>(Function function)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>apply</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_void_function_3_01_parameters_00_01void_07_5_08_07_a0_00_01_a1_7ff9269079a9963e6716f31a3862891b.html</anchorfile>
      <anchor>ad92f4c555a74587257be78b9235ceae2</anchor>
      <arglist>(Passed passed)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static int</type>
      <name>arity</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_void_function_3_01_parameters_00_01void_07_5_08_07_a0_00_01_a1_7ff9269079a9963e6716f31a3862891b.html</anchorfile>
      <anchor>a83982dc680b4fb1a2da06bd27ef7210e</anchor>
      <arglist>()</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>sauce::internal::ApplyMethod&lt; Parameters, Return_(Receiver_::*)(A0, A1, A2, A3, A4, A5, A6, A7)&gt;</name>
    <filename>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_07949352f572ce29ee47f6ac2462dde9c5.html</filename>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <member kind="typedef">
      <type>Return_</type>
      <name>Return</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_07949352f572ce29ee47f6ac2462dde9c5.html</anchorfile>
      <anchor>a0dc304b03912a2018bd36b7b670d40a7</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Receiver_</type>
      <name>Receiver</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_07949352f572ce29ee47f6ac2462dde9c5.html</anchorfile>
      <anchor>a2f55dfc2d498c658cdf68445d5629902</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A0, 0 &gt;</type>
      <name>P0</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_07949352f572ce29ee47f6ac2462dde9c5.html</anchorfile>
      <anchor>aa74343e61b74b3f809b4c43fec71a84c</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A1, 1 &gt;</type>
      <name>P1</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_07949352f572ce29ee47f6ac2462dde9c5.html</anchorfile>
      <anchor>a7c4b0d14d020c1fa0c6807ad12024720</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A2, 2 &gt;</type>
      <name>P2</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_07949352f572ce29ee47f6ac2462dde9c5.html</anchorfile>
      <anchor>ae44154e0e4db0ca5ff00bcac926fae7c</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A3, 3 &gt;</type>
      <name>P3</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_07949352f572ce29ee47f6ac2462dde9c5.html</anchorfile>
      <anchor>ad588d7e070a7446a02a0d430f95cc490</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A4, 4 &gt;</type>
      <name>P4</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_07949352f572ce29ee47f6ac2462dde9c5.html</anchorfile>
      <anchor>a6317cee265aac41786d790e37a20474d</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A5, 5 &gt;</type>
      <name>P5</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_07949352f572ce29ee47f6ac2462dde9c5.html</anchorfile>
      <anchor>a7c0c562cefac5fb8e91d9872a333c580</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A6, 6 &gt;</type>
      <name>P6</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_07949352f572ce29ee47f6ac2462dde9c5.html</anchorfile>
      <anchor>a384c088a7968cda0d95baac2eab6b5d0</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A7, 7 &gt;</type>
      <name>P7</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_07949352f572ce29ee47f6ac2462dde9c5.html</anchorfile>
      <anchor>aadc018f2f53c5b16ba5f445cb18aa263</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Return_(Receiver_::*</type>
      <name>Signature</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_07949352f572ce29ee47f6ac2462dde9c5.html</anchorfile>
      <anchor>a9def7e2369fa2d8c602fa63684a686b2</anchor>
      <arglist>)(A0, A1, A2, A3, A4, A5, A6, A7)</arglist>
    </member>
    <member kind="typedef">
      <type>Return_(Receiver_::*</type>
      <name>Method</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_07949352f572ce29ee47f6ac2462dde9c5.html</anchorfile>
      <anchor>ad69e85591ab29dfb075ba37ca18a56ec</anchor>
      <arglist>)(typename P0::Type, typename P1::Type, typename P2::Type, typename P3::Type, typename P4::Type, typename P5::Type, typename P6::Type, typename P7::Type)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>ApplyMethod</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_07949352f572ce29ee47f6ac2462dde9c5.html</anchorfile>
      <anchor>aab57686e0dd84eb9b29657b187cd28ba</anchor>
      <arglist>(Method method)</arglist>
    </member>
    <member kind="function">
      <type>Return</type>
      <name>apply</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_07949352f572ce29ee47f6ac2462dde9c5.html</anchorfile>
      <anchor>a9be164c22eed71c77fc08f7c9d04bbc1</anchor>
      <arglist>(Receiver &amp;receiver, Passed passed)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>observe</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_07949352f572ce29ee47f6ac2462dde9c5.html</anchorfile>
      <anchor>abf9dbc56e593258885847ca5d6ff7a69</anchor>
      <arglist>(Passed passed)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static int</type>
      <name>arity</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_07949352f572ce29ee47f6ac2462dde9c5.html</anchorfile>
      <anchor>a6ba3665d03764a241bb2506fe24c218f</anchor>
      <arglist>()</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>sauce::internal::ApplyConstructor&lt; Parameters, Constructed_(A0, A1, A2, A3, A4, A5, A6, A7), Allocator_ &gt;</name>
    <filename>classsauce_1_1internal_1_1_apply_constructor_3_01_parameters_00_01_constructed___07_a0_00_01_a1_b627494552e72229d9b8e53df4de39f9.html</filename>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <member kind="typedef">
      <type>Constructed_</type>
      <name>Constructed</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_constructor_3_01_parameters_00_01_constructed___07_a0_00_01_a1_b627494552e72229d9b8e53df4de39f9.html</anchorfile>
      <anchor>a77160a9339893fc514c0a306e6afe21f</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>Constructed *</type>
      <name>apply</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_constructor_3_01_parameters_00_01_constructed___07_a0_00_01_a1_b627494552e72229d9b8e53df4de39f9.html</anchorfile>
      <anchor>ade8ea8d4287a2de62d7a000016314bfc</anchor>
      <arglist>(Passed passed)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>observe</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_constructor_3_01_parameters_00_01_constructed___07_a0_00_01_a1_b627494552e72229d9b8e53df4de39f9.html</anchorfile>
      <anchor>a828532f57a5fd806b5fb10cf9bbfc376</anchor>
      <arglist>(Passed passed)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static int</type>
      <name>arity</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_constructor_3_01_parameters_00_01_constructed___07_a0_00_01_a1_b627494552e72229d9b8e53df4de39f9.html</anchorfile>
      <anchor>a76f04213d32f73e9148872d0277c58fb</anchor>
      <arglist>()</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>sauce::internal::ApplyFunction&lt; Parameters, Return_(*)(A0, A1, A2, A3, A4, A5, A6, A7, A8)&gt;</name>
    <filename>classsauce_1_1internal_1_1_apply_function_3_01_parameters_00_01_return___07_5_08_07_a0_00_01_a1_faa0873a9915d46f3121b9435dbffcf0.html</filename>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <member kind="typedef">
      <type>Return_</type>
      <name>Return</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_function_3_01_parameters_00_01_return___07_5_08_07_a0_00_01_a1_faa0873a9915d46f3121b9435dbffcf0.html</anchorfile>
      <anchor>a19cf938b28ad677b1a7020175c74f227</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A0, 0 &gt;</type>
      <name>P0</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_function_3_01_parameters_00_01_return___07_5_08_07_a0_00_01_a1_faa0873a9915d46f3121b9435dbffcf0.html</anchorfile>
      <anchor>a90a86221c3ecdd3e6fa317dbaba44e7d</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A1, 1 &gt;</type>
      <name>P1</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_function_3_01_parameters_00_01_return___07_5_08_07_a0_00_01_a1_faa0873a9915d46f3121b9435dbffcf0.html</anchorfile>
      <anchor>a8117e95c306c68da15a950f2418cfc56</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A2, 2 &gt;</type>
      <name>P2</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_function_3_01_parameters_00_01_return___07_5_08_07_a0_00_01_a1_faa0873a9915d46f3121b9435dbffcf0.html</anchorfile>
      <anchor>ae98601400bc31340b6af69270f0a1a87</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A3, 3 &gt;</type>
      <name>P3</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_function_3_01_parameters_00_01_return___07_5_08_07_a0_00_01_a1_faa0873a9915d46f3121b9435dbffcf0.html</anchorfile>
      <anchor>a64a779b38982c5b619963de2d88f71ce</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A4, 4 &gt;</type>
      <name>P4</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_function_3_01_parameters_00_01_return___07_5_08_07_a0_00_01_a1_faa0873a9915d46f3121b9435dbffcf0.html</anchorfile>
      <anchor>a834d1fb22b35809f6760339e0e02f561</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A5, 5 &gt;</type>
      <name>P5</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_function_3_01_parameters_00_01_return___07_5_08_07_a0_00_01_a1_faa0873a9915d46f3121b9435dbffcf0.html</anchorfile>
      <anchor>a83df4468944d5115ff23cef9e9859c72</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A6, 6 &gt;</type>
      <name>P6</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_function_3_01_parameters_00_01_return___07_5_08_07_a0_00_01_a1_faa0873a9915d46f3121b9435dbffcf0.html</anchorfile>
      <anchor>a7b5cc5af0b8d5d9378c7eeefb6c9843d</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A7, 7 &gt;</type>
      <name>P7</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_function_3_01_parameters_00_01_return___07_5_08_07_a0_00_01_a1_faa0873a9915d46f3121b9435dbffcf0.html</anchorfile>
      <anchor>a438264aab473f99049df09b1027c5fd6</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A8, 8 &gt;</type>
      <name>P8</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_function_3_01_parameters_00_01_return___07_5_08_07_a0_00_01_a1_faa0873a9915d46f3121b9435dbffcf0.html</anchorfile>
      <anchor>a9c4788e9278de28a97632bb25d16ca51</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Return_(*</type>
      <name>Signature</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_function_3_01_parameters_00_01_return___07_5_08_07_a0_00_01_a1_faa0873a9915d46f3121b9435dbffcf0.html</anchorfile>
      <anchor>a554445583979c8871b8f0dd966750fba</anchor>
      <arglist>)(A0, A1, A2, A3, A4, A5, A6, A7, A8)</arglist>
    </member>
    <member kind="typedef">
      <type>Return_(*</type>
      <name>Function</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_function_3_01_parameters_00_01_return___07_5_08_07_a0_00_01_a1_faa0873a9915d46f3121b9435dbffcf0.html</anchorfile>
      <anchor>a69d96fccc37d05c8b2fbb045691114da</anchor>
      <arglist>)(typename P0::Type, typename P1::Type, typename P2::Type, typename P3::Type, typename P4::Type, typename P5::Type, typename P6::Type, typename P7::Type, typename P8::Type)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>ApplyFunction</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_function_3_01_parameters_00_01_return___07_5_08_07_a0_00_01_a1_faa0873a9915d46f3121b9435dbffcf0.html</anchorfile>
      <anchor>af092ae0d6338f86cca34d6204dbd55a3</anchor>
      <arglist>(Function function)</arglist>
    </member>
    <member kind="function">
      <type>Return</type>
      <name>apply</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_function_3_01_parameters_00_01_return___07_5_08_07_a0_00_01_a1_faa0873a9915d46f3121b9435dbffcf0.html</anchorfile>
      <anchor>ae3dc569400dd776946e6131eca6edbb1</anchor>
      <arglist>(Passed passed)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>observe</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_function_3_01_parameters_00_01_return___07_5_08_07_a0_00_01_a1_faa0873a9915d46f3121b9435dbffcf0.html</anchorfile>
      <anchor>a68f7ee80a182aaad63a0811824a949d9</anchor>
      <arglist>(Passed passed)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static int</type>
      <name>arity</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_function_3_01_parameters_00_01_return___07_5_08_07_a0_00_01_a1_faa0873a9915d46f3121b9435dbffcf0.html</anchorfile>
      <anchor>a9bc0a3db8ebffd1dadc2b43ac7727562</anchor>
      <arglist>()</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>sauce::internal::ApplyVoidFunction&lt; Parameters, void(*)(A0, A1, A2, A3, A4, A5, A6, A7, A8)&gt;</name>
    <filename>classsauce_1_1internal_1_1_apply_void_function_3_01_parameters_00_01void_07_5_08_07_a0_00_01_a1_ef17d523b67647b9cf0be9c97938aa9d.html</filename>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A0, 0 &gt;</type>
      <name>P0</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_void_function_3_01_parameters_00_01void_07_5_08_07_a0_00_01_a1_ef17d523b67647b9cf0be9c97938aa9d.html</anchorfile>
      <anchor>a05490734bc6bd3fe5e8563e2cc18e520</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A1, 1 &gt;</type>
      <name>P1</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_void_function_3_01_parameters_00_01void_07_5_08_07_a0_00_01_a1_ef17d523b67647b9cf0be9c97938aa9d.html</anchorfile>
      <anchor>a3f0710976cf436f90ddbf8600901726d</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A2, 2 &gt;</type>
      <name>P2</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_void_function_3_01_parameters_00_01void_07_5_08_07_a0_00_01_a1_ef17d523b67647b9cf0be9c97938aa9d.html</anchorfile>
      <anchor>a652ea4fd03d4e84e5402917264edf879</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A3, 3 &gt;</type>
      <name>P3</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_void_function_3_01_parameters_00_01void_07_5_08_07_a0_00_01_a1_ef17d523b67647b9cf0be9c97938aa9d.html</anchorfile>
      <anchor>a803998eb00dbd4211055e1790d29fab2</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A4, 4 &gt;</type>
      <name>P4</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_void_function_3_01_parameters_00_01void_07_5_08_07_a0_00_01_a1_ef17d523b67647b9cf0be9c97938aa9d.html</anchorfile>
      <anchor>a800f9239fed4ae4b8808d5288d3bca45</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A5, 5 &gt;</type>
      <name>P5</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_void_function_3_01_parameters_00_01void_07_5_08_07_a0_00_01_a1_ef17d523b67647b9cf0be9c97938aa9d.html</anchorfile>
      <anchor>a94821c1ad367fcd4808465b2b7d4cb43</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A6, 6 &gt;</type>
      <name>P6</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_void_function_3_01_parameters_00_01void_07_5_08_07_a0_00_01_a1_ef17d523b67647b9cf0be9c97938aa9d.html</anchorfile>
      <anchor>a4859655188ccc48e078a613cbf222709</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A7, 7 &gt;</type>
      <name>P7</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_void_function_3_01_parameters_00_01void_07_5_08_07_a0_00_01_a1_ef17d523b67647b9cf0be9c97938aa9d.html</anchorfile>
      <anchor>ad931215abfde1c5d8991b625f5f5b8ed</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A8, 8 &gt;</type>
      <name>P8</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_void_function_3_01_parameters_00_01void_07_5_08_07_a0_00_01_a1_ef17d523b67647b9cf0be9c97938aa9d.html</anchorfile>
      <anchor>a7be73232ca3347df8c54a6888b998556</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>void(*</type>
      <name>Signature</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_void_function_3_01_parameters_00_01void_07_5_08_07_a0_00_01_a1_ef17d523b67647b9cf0be9c97938aa9d.html</anchorfile>
      <anchor>adedb8435003acc2106623bf4818e6c12</anchor>
      <arglist>)(A0, A1, A2, A3, A4, A5, A6, A7, A8)</arglist>
    </member>
    <member kind="typedef">
      <type>void(*</type>
      <name>Function</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_void_function_3_01_parameters_00_01void_07_5_08_07_a0_00_01_a1_ef17d523b67647b9cf0be9c97938aa9d.html</anchorfile>
      <anchor>accd2fa05cebc478f15533a40eb4ce36d</anchor>
      <arglist>)(typename P0::Type, typename P1::Type, typename P2::Type, typename P3::Type, typename P4::Type, typename P5::Type, typename P6::Type, typename P7::Type, typename P8::Type)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>ApplyVoidFunction</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_void_function_3_01_parameters_00_01void_07_5_08_07_a0_00_01_a1_ef17d523b67647b9cf0be9c97938aa9d.html</anchorfile>
      <anchor>ae0117043b81d673e4f3cc8aafb8edd6a</anchor>
      <arglist>(Function function)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>apply</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_void_function_3_01_parameters_00_01void_07_5_08_07_a0_00_01_a1_ef17d523b67647b9cf0be9c97938aa9d.html</anchorfile>
      <anchor>ab1bdd8f199fb42d933778972c4623a52</anchor>
      <arglist>(Passed passed)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static int</type>
      <name>arity</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_void_function_3_01_parameters_00_01void_07_5_08_07_a0_00_01_a1_ef17d523b67647b9cf0be9c97938aa9d.html</anchorfile>
      <anchor>a79ee6f0b6f5ada4729a988ea352bdfa3</anchor>
      <arglist>()</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>sauce::internal::ApplyMethod&lt; Parameters, Return_(Receiver_::*)(A0, A1, A2, A3, A4, A5, A6, A7, A8)&gt;</name>
    <filename>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_0779c19a20f7b36e4dee1b3239eec3aec6.html</filename>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <member kind="typedef">
      <type>Return_</type>
      <name>Return</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_0779c19a20f7b36e4dee1b3239eec3aec6.html</anchorfile>
      <anchor>a5a896519738bf72601dc060fdb8e0199</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Receiver_</type>
      <name>Receiver</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_0779c19a20f7b36e4dee1b3239eec3aec6.html</anchorfile>
      <anchor>abd0718000061e465eb6e10be9b5d843d</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A0, 0 &gt;</type>
      <name>P0</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_0779c19a20f7b36e4dee1b3239eec3aec6.html</anchorfile>
      <anchor>ad24e5d4214cf903e98b2ef4f6db74930</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A1, 1 &gt;</type>
      <name>P1</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_0779c19a20f7b36e4dee1b3239eec3aec6.html</anchorfile>
      <anchor>a323726c0b4497a72e2bd9596f9993a46</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A2, 2 &gt;</type>
      <name>P2</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_0779c19a20f7b36e4dee1b3239eec3aec6.html</anchorfile>
      <anchor>a0dac0827aca4126eb9250b691b6abb25</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A3, 3 &gt;</type>
      <name>P3</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_0779c19a20f7b36e4dee1b3239eec3aec6.html</anchorfile>
      <anchor>a320e9cf4aad8dc39cece7c00e2351d38</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A4, 4 &gt;</type>
      <name>P4</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_0779c19a20f7b36e4dee1b3239eec3aec6.html</anchorfile>
      <anchor>ab2a324b33ad74f39b20fb1e4b619ff36</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A5, 5 &gt;</type>
      <name>P5</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_0779c19a20f7b36e4dee1b3239eec3aec6.html</anchorfile>
      <anchor>a297c66a7614fb725e15bc62b34038985</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A6, 6 &gt;</type>
      <name>P6</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_0779c19a20f7b36e4dee1b3239eec3aec6.html</anchorfile>
      <anchor>af3e4d404e5bd580fa20ba8c9a204b1bf</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A7, 7 &gt;</type>
      <name>P7</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_0779c19a20f7b36e4dee1b3239eec3aec6.html</anchorfile>
      <anchor>a9bd0167551e191840d38b17953a6bf33</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A8, 8 &gt;</type>
      <name>P8</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_0779c19a20f7b36e4dee1b3239eec3aec6.html</anchorfile>
      <anchor>acec9a827ad4e18a685ec3a6b3715abcc</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Return_(Receiver_::*</type>
      <name>Signature</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_0779c19a20f7b36e4dee1b3239eec3aec6.html</anchorfile>
      <anchor>aad919e9c5c6c34c09bdaa9758951419a</anchor>
      <arglist>)(A0, A1, A2, A3, A4, A5, A6, A7, A8)</arglist>
    </member>
    <member kind="typedef">
      <type>Return_(Receiver_::*</type>
      <name>Method</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_0779c19a20f7b36e4dee1b3239eec3aec6.html</anchorfile>
      <anchor>a0554888d328dad25fe1cd41d34077366</anchor>
      <arglist>)(typename P0::Type, typename P1::Type, typename P2::Type, typename P3::Type, typename P4::Type, typename P5::Type, typename P6::Type, typename P7::Type, typename P8::Type)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>ApplyMethod</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_0779c19a20f7b36e4dee1b3239eec3aec6.html</anchorfile>
      <anchor>a32dbc0a37082c6e80595ae6b8809bfa0</anchor>
      <arglist>(Method method)</arglist>
    </member>
    <member kind="function">
      <type>Return</type>
      <name>apply</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_0779c19a20f7b36e4dee1b3239eec3aec6.html</anchorfile>
      <anchor>ab6005b04d807f6ba7e4a3bb0fbf0bd35</anchor>
      <arglist>(Receiver &amp;receiver, Passed passed)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>observe</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_0779c19a20f7b36e4dee1b3239eec3aec6.html</anchorfile>
      <anchor>a06cfb8838f6a229d9b1a937a3b86327b</anchor>
      <arglist>(Passed passed)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static int</type>
      <name>arity</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_0779c19a20f7b36e4dee1b3239eec3aec6.html</anchorfile>
      <anchor>a3ec55af1a7dfebea075f67bba5d9ad35</anchor>
      <arglist>()</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>sauce::internal::ApplyConstructor&lt; Parameters, Constructed_(A0, A1, A2, A3, A4, A5, A6, A7, A8), Allocator_ &gt;</name>
    <filename>classsauce_1_1internal_1_1_apply_constructor_3_01_parameters_00_01_constructed___07_a0_00_01_a1_46f458d01b16c61e3dc8161302b86f43.html</filename>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <member kind="typedef">
      <type>Constructed_</type>
      <name>Constructed</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_constructor_3_01_parameters_00_01_constructed___07_a0_00_01_a1_46f458d01b16c61e3dc8161302b86f43.html</anchorfile>
      <anchor>a251115e67ae865aab3b8468ff819cd6f</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>Constructed *</type>
      <name>apply</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_constructor_3_01_parameters_00_01_constructed___07_a0_00_01_a1_46f458d01b16c61e3dc8161302b86f43.html</anchorfile>
      <anchor>a06e131a34ea81ec78b2bee53028197da</anchor>
      <arglist>(Passed passed)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>observe</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_constructor_3_01_parameters_00_01_constructed___07_a0_00_01_a1_46f458d01b16c61e3dc8161302b86f43.html</anchorfile>
      <anchor>a90aee2d4bd17b2c8c94c4ef18c2d33f5</anchor>
      <arglist>(Passed passed)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static int</type>
      <name>arity</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_constructor_3_01_parameters_00_01_constructed___07_a0_00_01_a1_46f458d01b16c61e3dc8161302b86f43.html</anchorfile>
      <anchor>abd356415a150e0c8e3e6de07b7665728</anchor>
      <arglist>()</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>sauce::internal::ApplyFunction&lt; Parameters, Return_(*)(A0, A1, A2, A3, A4, A5, A6, A7, A8, A9)&gt;</name>
    <filename>classsauce_1_1internal_1_1_apply_function_3_01_parameters_00_01_return___07_5_08_07_a0_00_01_a1_349974af23a9d0be3f8f2992c351032f.html</filename>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <member kind="typedef">
      <type>Return_</type>
      <name>Return</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_function_3_01_parameters_00_01_return___07_5_08_07_a0_00_01_a1_349974af23a9d0be3f8f2992c351032f.html</anchorfile>
      <anchor>a450c771d8f42c2c26540178f406763a0</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A0, 0 &gt;</type>
      <name>P0</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_function_3_01_parameters_00_01_return___07_5_08_07_a0_00_01_a1_349974af23a9d0be3f8f2992c351032f.html</anchorfile>
      <anchor>a04cf64eb07e989e5b0934eca65326a8e</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A1, 1 &gt;</type>
      <name>P1</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_function_3_01_parameters_00_01_return___07_5_08_07_a0_00_01_a1_349974af23a9d0be3f8f2992c351032f.html</anchorfile>
      <anchor>a21fcd092ca7ec47f0f4d7dd2940c8332</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A2, 2 &gt;</type>
      <name>P2</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_function_3_01_parameters_00_01_return___07_5_08_07_a0_00_01_a1_349974af23a9d0be3f8f2992c351032f.html</anchorfile>
      <anchor>a87e6c175d1227415a61262aca64d864f</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A3, 3 &gt;</type>
      <name>P3</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_function_3_01_parameters_00_01_return___07_5_08_07_a0_00_01_a1_349974af23a9d0be3f8f2992c351032f.html</anchorfile>
      <anchor>a06640aeab1d73b3c235f56c78302bf39</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A4, 4 &gt;</type>
      <name>P4</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_function_3_01_parameters_00_01_return___07_5_08_07_a0_00_01_a1_349974af23a9d0be3f8f2992c351032f.html</anchorfile>
      <anchor>ade0ecdf83a2e6414628f0a0c0440643c</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A5, 5 &gt;</type>
      <name>P5</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_function_3_01_parameters_00_01_return___07_5_08_07_a0_00_01_a1_349974af23a9d0be3f8f2992c351032f.html</anchorfile>
      <anchor>a8cb893c1003fa2e2df3f03121d8b7e14</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A6, 6 &gt;</type>
      <name>P6</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_function_3_01_parameters_00_01_return___07_5_08_07_a0_00_01_a1_349974af23a9d0be3f8f2992c351032f.html</anchorfile>
      <anchor>a7327a404dfb25a0e325472065672b68a</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A7, 7 &gt;</type>
      <name>P7</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_function_3_01_parameters_00_01_return___07_5_08_07_a0_00_01_a1_349974af23a9d0be3f8f2992c351032f.html</anchorfile>
      <anchor>a88e425dc35473463447bbb6560482eec</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A8, 8 &gt;</type>
      <name>P8</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_function_3_01_parameters_00_01_return___07_5_08_07_a0_00_01_a1_349974af23a9d0be3f8f2992c351032f.html</anchorfile>
      <anchor>ab36465658a66d46f19af1177e4e3ae31</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A9, 9 &gt;</type>
      <name>P9</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_function_3_01_parameters_00_01_return___07_5_08_07_a0_00_01_a1_349974af23a9d0be3f8f2992c351032f.html</anchorfile>
      <anchor>a480830b7dc261b85886858fc4ed3a16b</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Return_(*</type>
      <name>Signature</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_function_3_01_parameters_00_01_return___07_5_08_07_a0_00_01_a1_349974af23a9d0be3f8f2992c351032f.html</anchorfile>
      <anchor>af617ae647c5a693872ddeea427362903</anchor>
      <arglist>)(A0, A1, A2, A3, A4, A5, A6, A7, A8, A9)</arglist>
    </member>
    <member kind="typedef">
      <type>Return_(*</type>
      <name>Function</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_function_3_01_parameters_00_01_return___07_5_08_07_a0_00_01_a1_349974af23a9d0be3f8f2992c351032f.html</anchorfile>
      <anchor>a25164f164e95fc7c4093d9600eed2bcc</anchor>
      <arglist>)(typename P0::Type, typename P1::Type, typename P2::Type, typename P3::Type, typename P4::Type, typename P5::Type, typename P6::Type, typename P7::Type, typename P8::Type, typename P9::Type)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>ApplyFunction</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_function_3_01_parameters_00_01_return___07_5_08_07_a0_00_01_a1_349974af23a9d0be3f8f2992c351032f.html</anchorfile>
      <anchor>a2e45e43de0ce8ed780d4ee572fc0e0bf</anchor>
      <arglist>(Function function)</arglist>
    </member>
    <member kind="function">
      <type>Return</type>
      <name>apply</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_function_3_01_parameters_00_01_return___07_5_08_07_a0_00_01_a1_349974af23a9d0be3f8f2992c351032f.html</anchorfile>
      <anchor>a6a537802133ba846e6a858ef340b4eb6</anchor>
      <arglist>(Passed passed)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>observe</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_function_3_01_parameters_00_01_return___07_5_08_07_a0_00_01_a1_349974af23a9d0be3f8f2992c351032f.html</anchorfile>
      <anchor>a60bc1035ab2ee99be3114414b6f344f0</anchor>
      <arglist>(Passed passed)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static int</type>
      <name>arity</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_function_3_01_parameters_00_01_return___07_5_08_07_a0_00_01_a1_349974af23a9d0be3f8f2992c351032f.html</anchorfile>
      <anchor>ad11c0b57c287e9825053ed77b022f86c</anchor>
      <arglist>()</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>sauce::internal::ApplyVoidFunction&lt; Parameters, void(*)(A0, A1, A2, A3, A4, A5, A6, A7, A8, A9)&gt;</name>
    <filename>classsauce_1_1internal_1_1_apply_void_function_3_01_parameters_00_01void_07_5_08_07_a0_00_01_a1_3a72a2eeea4ef10e95e466ccf76ace1a.html</filename>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A0, 0 &gt;</type>
      <name>P0</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_void_function_3_01_parameters_00_01void_07_5_08_07_a0_00_01_a1_3a72a2eeea4ef10e95e466ccf76ace1a.html</anchorfile>
      <anchor>a9dd242339d098cb6d38002274b1d6ffc</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A1, 1 &gt;</type>
      <name>P1</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_void_function_3_01_parameters_00_01void_07_5_08_07_a0_00_01_a1_3a72a2eeea4ef10e95e466ccf76ace1a.html</anchorfile>
      <anchor>ae574f2c3e6e8fb7d24664e44b2e52877</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A2, 2 &gt;</type>
      <name>P2</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_void_function_3_01_parameters_00_01void_07_5_08_07_a0_00_01_a1_3a72a2eeea4ef10e95e466ccf76ace1a.html</anchorfile>
      <anchor>aac2358a520601d39d8cebb66b00c3dce</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A3, 3 &gt;</type>
      <name>P3</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_void_function_3_01_parameters_00_01void_07_5_08_07_a0_00_01_a1_3a72a2eeea4ef10e95e466ccf76ace1a.html</anchorfile>
      <anchor>a73ec3f844fe19e2d94e5731869db25a4</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A4, 4 &gt;</type>
      <name>P4</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_void_function_3_01_parameters_00_01void_07_5_08_07_a0_00_01_a1_3a72a2eeea4ef10e95e466ccf76ace1a.html</anchorfile>
      <anchor>aa2e9b13c66dfe3785198e161ce9b20ab</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A5, 5 &gt;</type>
      <name>P5</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_void_function_3_01_parameters_00_01void_07_5_08_07_a0_00_01_a1_3a72a2eeea4ef10e95e466ccf76ace1a.html</anchorfile>
      <anchor>a2f1904d575b43705b671d048c3f8952a</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A6, 6 &gt;</type>
      <name>P6</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_void_function_3_01_parameters_00_01void_07_5_08_07_a0_00_01_a1_3a72a2eeea4ef10e95e466ccf76ace1a.html</anchorfile>
      <anchor>a0efa1e62e9b7a0c8dcabfd258ea9829f</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A7, 7 &gt;</type>
      <name>P7</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_void_function_3_01_parameters_00_01void_07_5_08_07_a0_00_01_a1_3a72a2eeea4ef10e95e466ccf76ace1a.html</anchorfile>
      <anchor>a64a1cdc06d4678405689a89f1f3d9aa1</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A8, 8 &gt;</type>
      <name>P8</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_void_function_3_01_parameters_00_01void_07_5_08_07_a0_00_01_a1_3a72a2eeea4ef10e95e466ccf76ace1a.html</anchorfile>
      <anchor>ad4cb173a07a6b8aab420932a427e1b14</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A9, 9 &gt;</type>
      <name>P9</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_void_function_3_01_parameters_00_01void_07_5_08_07_a0_00_01_a1_3a72a2eeea4ef10e95e466ccf76ace1a.html</anchorfile>
      <anchor>a66113e10aaf276671512d84d933c1fe0</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>void(*</type>
      <name>Signature</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_void_function_3_01_parameters_00_01void_07_5_08_07_a0_00_01_a1_3a72a2eeea4ef10e95e466ccf76ace1a.html</anchorfile>
      <anchor>a6b261e2e21468ea78b43905c0b03d1ab</anchor>
      <arglist>)(A0, A1, A2, A3, A4, A5, A6, A7, A8, A9)</arglist>
    </member>
    <member kind="typedef">
      <type>void(*</type>
      <name>Function</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_void_function_3_01_parameters_00_01void_07_5_08_07_a0_00_01_a1_3a72a2eeea4ef10e95e466ccf76ace1a.html</anchorfile>
      <anchor>af044ac377e496ee95ecae1d974d575ba</anchor>
      <arglist>)(typename P0::Type, typename P1::Type, typename P2::Type, typename P3::Type, typename P4::Type, typename P5::Type, typename P6::Type, typename P7::Type, typename P8::Type, typename P9::Type)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>ApplyVoidFunction</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_void_function_3_01_parameters_00_01void_07_5_08_07_a0_00_01_a1_3a72a2eeea4ef10e95e466ccf76ace1a.html</anchorfile>
      <anchor>a63394077fff02d1e7f330711142538f4</anchor>
      <arglist>(Function function)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>apply</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_void_function_3_01_parameters_00_01void_07_5_08_07_a0_00_01_a1_3a72a2eeea4ef10e95e466ccf76ace1a.html</anchorfile>
      <anchor>a9897fd06f107a277b382c43629cb769d</anchor>
      <arglist>(Passed passed)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static int</type>
      <name>arity</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_void_function_3_01_parameters_00_01void_07_5_08_07_a0_00_01_a1_3a72a2eeea4ef10e95e466ccf76ace1a.html</anchorfile>
      <anchor>a17b07a084405caa4c86e250a97d48471</anchor>
      <arglist>()</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>sauce::internal::ApplyMethod&lt; Parameters, Return_(Receiver_::*)(A0, A1, A2, A3, A4, A5, A6, A7, A8, A9)&gt;</name>
    <filename>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_07e7c2d3048b4a04bdbbb5c06aa0285288.html</filename>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <member kind="typedef">
      <type>Return_</type>
      <name>Return</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_07e7c2d3048b4a04bdbbb5c06aa0285288.html</anchorfile>
      <anchor>acf66b07cbd4dc16c399c852e0236fa29</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Receiver_</type>
      <name>Receiver</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_07e7c2d3048b4a04bdbbb5c06aa0285288.html</anchorfile>
      <anchor>a570ece1a527408b65e6138d37fab8875</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A0, 0 &gt;</type>
      <name>P0</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_07e7c2d3048b4a04bdbbb5c06aa0285288.html</anchorfile>
      <anchor>af8848a6278e767e0ec63971d0fd05bfd</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A1, 1 &gt;</type>
      <name>P1</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_07e7c2d3048b4a04bdbbb5c06aa0285288.html</anchorfile>
      <anchor>a316f7fdc6ec3699c7c9ac60091016436</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A2, 2 &gt;</type>
      <name>P2</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_07e7c2d3048b4a04bdbbb5c06aa0285288.html</anchorfile>
      <anchor>a3c18e33df2d06a83b31c940a4f1b26d4</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A3, 3 &gt;</type>
      <name>P3</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_07e7c2d3048b4a04bdbbb5c06aa0285288.html</anchorfile>
      <anchor>a04d8761b7ff51501a713df95009872d8</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A4, 4 &gt;</type>
      <name>P4</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_07e7c2d3048b4a04bdbbb5c06aa0285288.html</anchorfile>
      <anchor>ab3a35a5c84067853ec23c0f9c5277bea</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A5, 5 &gt;</type>
      <name>P5</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_07e7c2d3048b4a04bdbbb5c06aa0285288.html</anchorfile>
      <anchor>a95f446644e11c1f9f752db216a0ace2d</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A6, 6 &gt;</type>
      <name>P6</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_07e7c2d3048b4a04bdbbb5c06aa0285288.html</anchorfile>
      <anchor>a63f2296ed18fbaf9424af31797966a8a</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A7, 7 &gt;</type>
      <name>P7</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_07e7c2d3048b4a04bdbbb5c06aa0285288.html</anchorfile>
      <anchor>aff126621b32f9a4f56a80a6319ebac92</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A8, 8 &gt;</type>
      <name>P8</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_07e7c2d3048b4a04bdbbb5c06aa0285288.html</anchorfile>
      <anchor>ad7b5638eef329f3f98057e06c554b41a</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Parameters::template Parameter&lt; A9, 9 &gt;</type>
      <name>P9</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_07e7c2d3048b4a04bdbbb5c06aa0285288.html</anchorfile>
      <anchor>ab6809001c4b878a1cb0aa2c67e0081da</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Return_(Receiver_::*</type>
      <name>Signature</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_07e7c2d3048b4a04bdbbb5c06aa0285288.html</anchorfile>
      <anchor>a83cad7f759cc302506218344019c2e38</anchor>
      <arglist>)(A0, A1, A2, A3, A4, A5, A6, A7, A8, A9)</arglist>
    </member>
    <member kind="typedef">
      <type>Return_(Receiver_::*</type>
      <name>Method</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_07e7c2d3048b4a04bdbbb5c06aa0285288.html</anchorfile>
      <anchor>a597ea09d2ad7184945bee4efd9292bab</anchor>
      <arglist>)(typename P0::Type, typename P1::Type, typename P2::Type, typename P3::Type, typename P4::Type, typename P5::Type, typename P6::Type, typename P7::Type, typename P8::Type, typename P9::Type)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>ApplyMethod</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_07e7c2d3048b4a04bdbbb5c06aa0285288.html</anchorfile>
      <anchor>ace02c2755184a8b79830d22fe6a87b9a</anchor>
      <arglist>(Method method)</arglist>
    </member>
    <member kind="function">
      <type>Return</type>
      <name>apply</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_07e7c2d3048b4a04bdbbb5c06aa0285288.html</anchorfile>
      <anchor>a4d14ff5440263f3f00856c1a161f3784</anchor>
      <arglist>(Receiver &amp;receiver, Passed passed)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>observe</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_07e7c2d3048b4a04bdbbb5c06aa0285288.html</anchorfile>
      <anchor>ab8fa82c7d3632355f32d83b15f923d1d</anchor>
      <arglist>(Passed passed)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static int</type>
      <name>arity</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_07e7c2d3048b4a04bdbbb5c06aa0285288.html</anchorfile>
      <anchor>a3db9aa789c369bd5ee59a92d9f6d951a</anchor>
      <arglist>()</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>sauce::internal::ApplyConstructor&lt; Parameters, Constructed_(A0, A1, A2, A3, A4, A5, A6, A7, A8, A9), Allocator_ &gt;</name>
    <filename>classsauce_1_1internal_1_1_apply_constructor_3_01_parameters_00_01_constructed___07_a0_00_01_a1_9dacf697a17a2c301bccae583c976a9e.html</filename>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <member kind="typedef">
      <type>Constructed_</type>
      <name>Constructed</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_constructor_3_01_parameters_00_01_constructed___07_a0_00_01_a1_9dacf697a17a2c301bccae583c976a9e.html</anchorfile>
      <anchor>a1ff53594bce885efaecccba03e71976b</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>Constructed *</type>
      <name>apply</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_constructor_3_01_parameters_00_01_constructed___07_a0_00_01_a1_9dacf697a17a2c301bccae583c976a9e.html</anchorfile>
      <anchor>aab79dfc13a478382cdfb3a62334945b3</anchor>
      <arglist>(Passed passed)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>observe</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_constructor_3_01_parameters_00_01_constructed___07_a0_00_01_a1_9dacf697a17a2c301bccae583c976a9e.html</anchorfile>
      <anchor>aa27b3631075320a234ec3bb31ff025d7</anchor>
      <arglist>(Passed passed)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static int</type>
      <name>arity</name>
      <anchorfile>classsauce_1_1internal_1_1_apply_constructor_3_01_parameters_00_01_constructed___07_a0_00_01_a1_9dacf697a17a2c301bccae583c976a9e.html</anchorfile>
      <anchor>ac35ff577dce0d1b539d2e922fcbd49a1</anchor>
      <arglist>()</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>sauce::internal::CircularDependencyGuard</name>
    <filename>classsauce_1_1internal_1_1_circular_dependency_guard.html</filename>
    <templarg>ImplicitBindings</templarg>
    <templarg>Dependency</templarg>
    <member kind="friend" protection="private">
      <type>friend class</type>
      <name>BaseInjector&lt; ImplicitBindings &gt;</name>
      <anchorfile>classsauce_1_1internal_1_1_circular_dependency_guard.html</anchorfile>
      <anchor>ac62d4188f75bca4e9df07c2f1785ede2</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>sauce::internal::BaseInjector</name>
    <filename>classsauce_1_1internal_1_1_base_injector.html</filename>
    <templarg></templarg>
    <member kind="function">
      <type>void</type>
      <name>validateAcyclic</name>
      <anchorfile>classsauce_1_1internal_1_1_base_injector.html</anchorfile>
      <anchor>aec899045c5320aed5a84a41c2775d97e</anchor>
      <arglist>(bool validateProviding, InjectorPtr injector, TypeIds &amp;ids, std::string const name) const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>inject</name>
      <anchorfile>classsauce_1_1internal_1_1_base_injector.html</anchorfile>
      <anchor>aab609d51db6ee61af6abe1bd17645616</anchor>
      <arglist>(typename Key&lt; Dependency &gt;::Ptr &amp;injected, InjectorPtr injector, std::string const name) const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>eagerlyInject</name>
      <anchorfile>classsauce_1_1internal_1_1_base_injector.html</anchorfile>
      <anchor>a98bf181dd46348e766352438c81181bb</anchor>
      <arglist>(InjectorPtr injector) const </arglist>
    </member>
    <member kind="function">
      <type>sauce::auto_ptr&lt; Lock &gt;</type>
      <name>acquireLock</name>
      <anchorfile>classsauce_1_1internal_1_1_base_injector.html</anchorfile>
      <anchor>a10391f6b6167d89af6c27c64f87a58f8</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="friend">
      <type>friend class</type>
      <name>::sauce::Modules</name>
      <anchorfile>classsauce_1_1internal_1_1_base_injector.html</anchorfile>
      <anchor>ad0a72a959e66cd03afc38ecf2f2b1491</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>sauce::internal::Binding</name>
    <filename>classsauce_1_1internal_1_1_binding.html</filename>
    <templarg>Dependency_</templarg>
    <templarg>Scope</templarg>
    <base>ResolvedBinding&lt; Dependency_ &gt;</base>
    <base>sauce::internal::InjectorFriend</base>
    <member kind="typedef">
      <type>Key&lt; Dependency_ &gt;::Normalized</type>
      <name>Dependency</name>
      <anchorfile>classsauce_1_1internal_1_1_binding.html</anchorfile>
      <anchor>ac8e6ca9c0a0ee029f1cef2f3dc701d3f</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Key&lt; Dependency &gt;::Ptr</type>
      <name>IfacePtr</name>
      <anchorfile>classsauce_1_1internal_1_1_binding.html</anchorfile>
      <anchor>a56cb8368cf105084b69ef4e490d8a93b</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>ResolvedBinding&lt; Dependency &gt;::BindingPtr</type>
      <name>BindingPtr</name>
      <anchorfile>classsauce_1_1internal_1_1_binding.html</anchorfile>
      <anchor>a6f9598e25939f6925c61ce354b33db9a</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>std::string</type>
      <name>getName</name>
      <anchorfile>classsauce_1_1internal_1_1_binding.html</anchorfile>
      <anchor>ae7bf0f08a99b2346aca54988a13bad99</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setName</name>
      <anchorfile>classsauce_1_1internal_1_1_binding.html</anchorfile>
      <anchor>a195b6fc17905a087a72fb6c515736254</anchor>
      <arglist>(std::string const name)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>sauce::internal::Bindings</name>
    <filename>classsauce_1_1internal_1_1_bindings.html</filename>
    <templarg>ImplicitBindings</templarg>
    <member kind="function">
      <type>void</type>
      <name>put</name>
      <anchorfile>classsauce_1_1internal_1_1_bindings.html</anchorfile>
      <anchor>aa0ca489e85131a5f772f02752e4af4e5</anchor>
      <arglist>(OpaqueBindingPtr binding)</arglist>
    </member>
    <member kind="function">
      <type>sauce::shared_ptr&lt; ResolvedBinding&lt; Dependency &gt; &gt;</type>
      <name>getProvidingBinding</name>
      <anchorfile>classsauce_1_1internal_1_1_bindings.html</anchorfile>
      <anchor>a153d4d9966627dd936f5815e0f86dd9c</anchor>
      <arglist>(std::string const name) const </arglist>
    </member>
    <member kind="function">
      <type>std::vector&lt; sauce::shared_ptr&lt; ResolvedBinding&lt; Dependency &gt; &gt; &gt;</type>
      <name>getModifierBindings</name>
      <anchorfile>classsauce_1_1internal_1_1_bindings.html</anchorfile>
      <anchor>ae1419026db2e02cd53bc05f5dd723dd4</anchor>
      <arglist>(std::string const name) const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>validateAcyclic</name>
      <anchorfile>classsauce_1_1internal_1_1_bindings.html</anchorfile>
      <anchor>acd96358e7adb1fa2e544cddc74e89703</anchor>
      <arglist>(bool validateProviding, InjectorPtr injector, TypeIds &amp;ids, std::string const name) const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>get</name>
      <anchorfile>classsauce_1_1internal_1_1_bindings.html</anchorfile>
      <anchor>a687faca79d1ff2cc0562527732a833d3</anchor>
      <arglist>(typename Key&lt; Dependency &gt;::Ptr &amp;injected, InjectorPtr injector, std::string const name) const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>eagerlyInject</name>
      <anchorfile>classsauce_1_1internal_1_1_bindings.html</anchorfile>
      <anchor>acf5babc50930470bbdc05174c4aedd6a</anchor>
      <arglist>(InjectorPtr injector) const </arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>sauce::internal::ClauseState</name>
    <filename>classsauce_1_1internal_1_1_clause_state.html</filename>
    <member kind="function">
      <type></type>
      <name>ClauseState</name>
      <anchorfile>classsauce_1_1internal_1_1_clause_state.html</anchorfile>
      <anchor>a41f8761ad8a1a566bbb15d6613747269</anchor>
      <arglist>(Bindings&lt; ImplicitBindings &gt; &amp;bindings, PendingThrower &amp;pendingThrower)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>bind</name>
      <anchorfile>classsauce_1_1internal_1_1_clause_state.html</anchorfile>
      <anchor>a43727998da0a57531a0e20622a2f57b0</anchor>
      <arglist>(OpaqueBindingPtr pendingBinding)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>bindProvider</name>
      <anchorfile>classsauce_1_1internal_1_1_clause_state.html</anchorfile>
      <anchor>ae85de232a58e0289f424d799426cfede</anchor>
      <arglist>(OpaqueBindingPtr providerBinding)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setDynamicName</name>
      <anchorfile>classsauce_1_1internal_1_1_clause_state.html</anchorfile>
      <anchor>a14cd7d53772b0cf4136a87ba4bf185ec</anchor>
      <arglist>(std::string const name)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>bindDynamicDependencyName</name>
      <anchorfile>classsauce_1_1internal_1_1_clause_state.html</anchorfile>
      <anchor>abf3517647a0d8a4c0f21d3d59659c5e9</anchor>
      <arglist>(unsigned int position, std::string const name)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>throwLater</name>
      <anchorfile>classsauce_1_1internal_1_1_clause_state.html</anchorfile>
      <anchor>aa35078820b19e5020ac0e23b99274625</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>clearException</name>
      <anchorfile>classsauce_1_1internal_1_1_clause_state.html</anchorfile>
      <anchor>a6c1f3dba3753d8306c470c8a9bd8b7d2</anchor>
      <arglist>()</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>sauce::internal::Clause</name>
    <filename>classsauce_1_1internal_1_1_clause.html</filename>
    <templarg>Dependency</templarg>
    <member kind="function">
      <type>Clause&lt; Dependency &gt; &amp;</type>
      <name>naming</name>
      <anchorfile>classsauce_1_1internal_1_1_clause.html</anchorfile>
      <anchor>a008f6c517e3fb4b47c9efaf902e156d0</anchor>
      <arglist>(unsigned int position, std::string const name)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setState</name>
      <anchorfile>classsauce_1_1internal_1_1_clause.html</anchorfile>
      <anchor>a48e91466cca5294f269bcd37468c270f</anchor>
      <arglist>(ClauseStatePtr state)</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual void</type>
      <name>onComplete</name>
      <anchorfile>classsauce_1_1internal_1_1_clause.html</anchorfile>
      <anchor>aaaf09d64116f7c157c8ab9d0b4f83343</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" protection="protected">
      <type></type>
      <name>Clause</name>
      <anchorfile>classsauce_1_1internal_1_1_clause.html</anchorfile>
      <anchor>a1ad3cd5536bba32ed880e820a0ea1a73</anchor>
      <arglist>(ClauseStatePtr state)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>ClauseStatePtr</type>
      <name>getState</name>
      <anchorfile>classsauce_1_1internal_1_1_clause.html</anchorfile>
      <anchor>abf6a18181417095ceb1bf5769a8400a7</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>Next</type>
      <name>pass</name>
      <anchorfile>classsauce_1_1internal_1_1_clause.html</anchorfile>
      <anchor>ac0cd451ebf596ae435942687631f7774</anchor>
      <arglist>(Next next)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>setDynamicName</name>
      <anchorfile>classsauce_1_1internal_1_1_clause.html</anchorfile>
      <anchor>a144740cf6b3d8c6bc7c20e2a010ee48c</anchor>
      <arglist>(std::string const name)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>throwLater</name>
      <anchorfile>classsauce_1_1internal_1_1_clause.html</anchorfile>
      <anchor>ad3543b2df08023b7e362f4dc8ca5d9d4</anchor>
      <arglist>(Exception)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>bindDynamicDependencyName</name>
      <anchorfile>classsauce_1_1internal_1_1_clause.html</anchorfile>
      <anchor>ae4ca0b8450f8d4bd43bb009f9230a4ed</anchor>
      <arglist>(unsigned int position, std::string const name)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>sauce::internal::DisposalDeleter</name>
    <filename>classsauce_1_1internal_1_1_disposal_deleter.html</filename>
    <templarg></templarg>
    <templarg></templarg>
    <member kind="function">
      <type></type>
      <name>DisposalDeleter</name>
      <anchorfile>classsauce_1_1internal_1_1_disposal_deleter.html</anchorfile>
      <anchor>ac6e7fecb75fb628cadc1fb5522bd10da</anchor>
      <arglist>(DisposalPtr disposal)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>operator()</name>
      <anchorfile>classsauce_1_1internal_1_1_disposal_deleter.html</anchorfile>
      <anchor>a9a15536b36f30280649bb5e6bed8efb5</anchor>
      <arglist>(Iface *iface) const </arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>sauce::internal::ImplicitBindingTraits</name>
    <filename>classsauce_1_1internal_1_1_implicit_binding_traits.html</filename>
    <templarg>ImplicitInjection_</templarg>
    <member kind="typedef">
      <type>ImplicitInjection_</type>
      <name>ImplicitInjection</name>
      <anchorfile>classsauce_1_1internal_1_1_implicit_binding_traits.html</anchorfile>
      <anchor>aed02dc891ebd9164751032501f4b6ff0</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>ImplicitInjection::Dependency</type>
      <name>Dependency</name>
      <anchorfile>classsauce_1_1internal_1_1_implicit_binding_traits.html</anchorfile>
      <anchor>a2a1463671b4ce4f2a2e44b6e7df4a74b</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>ResolvedBinding&lt; Dependency &gt;::BindingPtr</type>
      <name>BindingPtr</name>
      <anchorfile>classsauce_1_1internal_1_1_implicit_binding_traits.html</anchorfile>
      <anchor>a81be35b04ca4f7a304cf5bc9935f247f</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>sauce::internal::ImplicitBinding</name>
    <filename>classsauce_1_1internal_1_1_implicit_binding.html</filename>
    <templarg></templarg>
    <member kind="typedef">
      <type>sauce::shared_ptr&lt; ResolvedBinding&lt; Dependency &gt; &gt;</type>
      <name>BindingPtr</name>
      <anchorfile>classsauce_1_1internal_1_1_implicit_binding.html</anchorfile>
      <anchor>ad1ff71134ebebf9146bcbb3182f7357f</anchor>
      <arglist></arglist>
    </member>
    <member kind="function" static="yes">
      <type>static BindingPtr</type>
      <name>get</name>
      <anchorfile>classsauce_1_1internal_1_1_implicit_binding.html</anchorfile>
      <anchor>a9b6799845f4b1fdc24d6ee79beb4af8d</anchor>
      <arglist>(Concrete const &amp;, std::string const name)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>sauce::internal::ImplicitBindings</name>
    <filename>classsauce_1_1internal_1_1_implicit_bindings.html</filename>
    <member kind="function">
      <type>sauce::shared_ptr&lt; ResolvedBinding&lt; Dependency &gt; &gt;</type>
      <name>getProviding</name>
      <anchorfile>classsauce_1_1internal_1_1_implicit_bindings.html</anchorfile>
      <anchor>a46e55cd798c49996bde784099fd5ced2</anchor>
      <arglist>(Concrete const &amp;bindings, std::string const name) const </arglist>
    </member>
    <member kind="function">
      <type>std::vector&lt; sauce::shared_ptr&lt; ResolvedBinding&lt; Dependency &gt; &gt; &gt;</type>
      <name>getModifyings</name>
      <anchorfile>classsauce_1_1internal_1_1_implicit_bindings.html</anchorfile>
      <anchor>ae5616ce33c58192b087bc9ed0742832c</anchor>
      <arglist>(Concrete const &amp;, std::string const) const </arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>sauce::internal::ImplicitBinding&lt; Named&lt; Injector, Unnamed &gt; &gt;</name>
    <filename>classsauce_1_1internal_1_1_implicit_binding_3_01_named_3_01_injector_00_01_unnamed_01_4_01_4.html</filename>
    <base protection="private">ImplicitBindingTraits&lt; i::InjectorBinding &gt;</base>
    <member kind="function" static="yes">
      <type>static BindingPtr</type>
      <name>get</name>
      <anchorfile>classsauce_1_1internal_1_1_implicit_binding_3_01_named_3_01_injector_00_01_unnamed_01_4_01_4.html</anchorfile>
      <anchor>a4ab7f2cc08d5f094350eb35e6a260b72</anchor>
      <arglist>(Concrete const &amp;, std::string const name)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>sauce::internal::ImplicitBinding&lt; Named&lt; Provider&lt; ProvidedDependency &gt;, Name &gt; &gt;</name>
    <filename>classsauce_1_1internal_1_1_implicit_binding_3_01_named_3_01_provider_3_01_provided_dependency_01_4_00_01_name_01_4_01_4.html</filename>
    <templarg></templarg>
    <templarg></templarg>
    <member kind="typedef">
      <type>ImplicitBindingTraits&lt; i::ImplicitProviderBinding&lt; ProvidedDependency, Name &gt; &gt;</type>
      <name>Traits</name>
      <anchorfile>classsauce_1_1internal_1_1_implicit_binding_3_01_named_3_01_provider_3_01_provided_dependency_01_4_00_01_name_01_4_01_4.html</anchorfile>
      <anchor>a6cfc0a0c4e02b8f114e5fdede75bd3bd</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Traits::ImplicitInjection</type>
      <name>ImplicitInjection</name>
      <anchorfile>classsauce_1_1internal_1_1_implicit_binding_3_01_named_3_01_provider_3_01_provided_dependency_01_4_00_01_name_01_4_01_4.html</anchorfile>
      <anchor>aa8f3f49d13402d853ccce7328acf4888</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Traits::Dependency</type>
      <name>Dependency</name>
      <anchorfile>classsauce_1_1internal_1_1_implicit_binding_3_01_named_3_01_provider_3_01_provided_dependency_01_4_00_01_name_01_4_01_4.html</anchorfile>
      <anchor>a8119e12d8b92e16b014f48aa02fac1e6</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Traits::BindingPtr</type>
      <name>BindingPtr</name>
      <anchorfile>classsauce_1_1internal_1_1_implicit_binding_3_01_named_3_01_provider_3_01_provided_dependency_01_4_00_01_name_01_4_01_4.html</anchorfile>
      <anchor>a0758d68a50215cd9868e67eebc822569</anchor>
      <arglist></arglist>
    </member>
    <member kind="function" static="yes">
      <type>static BindingPtr</type>
      <name>get</name>
      <anchorfile>classsauce_1_1internal_1_1_implicit_binding_3_01_named_3_01_provider_3_01_provided_dependency_01_4_00_01_name_01_4_01_4.html</anchorfile>
      <anchor>ac17887882424b98cf10cab0223aaac0a</anchor>
      <arglist>(Concrete const &amp;bindings, std::string const name)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>sauce::internal::ImplicitProvider</name>
    <filename>classsauce_1_1internal_1_1_implicit_provider.html</filename>
    <templarg></templarg>
    <templarg></templarg>
    <base>sauce::Provider</base>
    <member kind="function">
      <type>Key&lt; Dependency &gt;::Ptr</type>
      <name>get</name>
      <anchorfile>classsauce_1_1internal_1_1_implicit_provider.html</anchorfile>
      <anchor>af5a3f7e0ce487716bd095897bf86e508</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="friend" protection="private">
      <type>friend class</type>
      <name>ImplicitProviderBinding&lt; Dependency, Name &gt;</name>
      <anchorfile>classsauce_1_1internal_1_1_implicit_provider.html</anchorfile>
      <anchor>a598fd8c084703ff47ed8b81f5b90b0b3</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>sauce::internal::ImplicitProviderBinding</name>
    <filename>classsauce_1_1internal_1_1_implicit_provider_binding.html</filename>
    <templarg></templarg>
    <templarg></templarg>
    <base>Binding&lt; Named&lt; Provider&lt; BoundDependency &gt;, Name &gt;, NoScope &gt;</base>
    <member kind="typedef">
      <type>ResolvedBinding&lt; ProviderDependency &gt;::BindingPtr</type>
      <name>BindingPtr</name>
      <anchorfile>classsauce_1_1internal_1_1_implicit_provider_binding.html</anchorfile>
      <anchor>ae44887cc2d98acf8fc89bc8d64709ee1</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>ImplicitProviderBinding</name>
      <anchorfile>classsauce_1_1internal_1_1_implicit_provider_binding.html</anchorfile>
      <anchor>a26bd9eb1b9ee3569dbdb797d7a4c1aef</anchor>
      <arglist>(ProvidedBindingPtr providedBinding)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>inject</name>
      <anchorfile>classsauce_1_1internal_1_1_implicit_provider_binding.html</anchorfile>
      <anchor>a9e55dbfb341500027671cf4d43a95314</anchor>
      <arglist>(ProviderPtr &amp;injected, BindingPtr, InjectorPtr injector) const </arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>sauce::internal::InjectorBinding</name>
    <filename>classsauce_1_1internal_1_1_injector_binding.html</filename>
    <base>Binding&lt; Key&lt; Injector &gt;::Normalized, NoScope &gt;</base>
    <member kind="function">
      <type>void</type>
      <name>inject</name>
      <anchorfile>classsauce_1_1internal_1_1_injector_binding.html</anchorfile>
      <anchor>a900a81ab61f00d432badc1e249e1ab32</anchor>
      <arglist>(InjectorPtr &amp;injected, BindingPtr, InjectorPtr injector) const </arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>sauce::internal::InstanceBinding</name>
    <filename>classsauce_1_1internal_1_1_instance_binding.html</filename>
    <templarg></templarg>
    <base>Binding&lt; Dependency, NoScope &gt;</base>
    <member kind="typedef">
      <type>ResolvedBinding&lt; Dependency &gt;::BindingPtr</type>
      <name>BindingPtr</name>
      <anchorfile>classsauce_1_1internal_1_1_instance_binding.html</anchorfile>
      <anchor>a999889a44ec8c0f3dd7f370708fa1414</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>InstanceBinding</name>
      <anchorfile>classsauce_1_1internal_1_1_instance_binding.html</anchorfile>
      <anchor>a6e11cd491616a6ce12c823cbd60c6ecf</anchor>
      <arglist>(IfacePtr iface)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>inject</name>
      <anchorfile>classsauce_1_1internal_1_1_instance_binding.html</anchorfile>
      <anchor>aa12cb8a1f0b19a908464063b023bfa7a</anchor>
      <arglist>(IfacePtr &amp;injected, BindingPtr, InjectorPtr) const </arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>sauce::internal::Key</name>
    <filename>classsauce_1_1internal_1_1_key.html</filename>
    <templarg>Iface_</templarg>
    <member kind="typedef">
      <type>Iface_</type>
      <name>Iface</name>
      <anchorfile>classsauce_1_1internal_1_1_key.html</anchorfile>
      <anchor>a69cee0b09aef233e27af2efdfb5fd9d3</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>sauce::shared_ptr&lt; Iface_ &gt;</type>
      <name>Ptr</name>
      <anchorfile>classsauce_1_1internal_1_1_key.html</anchorfile>
      <anchor>a46da03627c577d9fcceb861ec39cae1c</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Unnamed</type>
      <name>Name</name>
      <anchorfile>classsauce_1_1internal_1_1_key.html</anchorfile>
      <anchor>ab590b178f9448f6b3950d7f7fa261852</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Named&lt; Iface_, Unnamed &gt;</type>
      <name>Normalized</name>
      <anchorfile>classsauce_1_1internal_1_1_key.html</anchorfile>
      <anchor>ae5f752dc2b00b3f6325d55b264674fdc</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>sauce::internal::Key&lt; Iface_ &amp; &gt;</name>
    <filename>classsauce_1_1internal_1_1_key_3_01_iface___01_6_01_4.html</filename>
    <templarg></templarg>
    <member kind="typedef">
      <type>Key&lt; Iface_ &gt;::Iface</type>
      <name>Iface</name>
      <anchorfile>classsauce_1_1internal_1_1_key_3_01_iface___01_6_01_4.html</anchorfile>
      <anchor>aa493d2b55e5d81fe14bdc1eafae59cc6</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Key&lt; Iface_ &gt;::Ptr</type>
      <name>Ptr</name>
      <anchorfile>classsauce_1_1internal_1_1_key_3_01_iface___01_6_01_4.html</anchorfile>
      <anchor>ac611cc5ae2947c56495885dac5bafeec</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Key&lt; Iface_ &gt;::Name</type>
      <name>Name</name>
      <anchorfile>classsauce_1_1internal_1_1_key_3_01_iface___01_6_01_4.html</anchorfile>
      <anchor>a2537e0c3e699bebda9b86b5983b82767</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Key&lt; Iface_ &gt;::Normalized</type>
      <name>Normalized</name>
      <anchorfile>classsauce_1_1internal_1_1_key_3_01_iface___01_6_01_4.html</anchorfile>
      <anchor>a60509d945fa45660ceac946e9c8a2a13</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>sauce::internal::Key&lt; sauce::shared_ptr&lt; Iface_ &gt; &gt;</name>
    <filename>classsauce_1_1internal_1_1_key_3_01sauce_1_1shared__ptr_3_01_iface___01_4_01_4.html</filename>
    <templarg></templarg>
    <member kind="typedef">
      <type>Key&lt; Iface_ &gt;::Iface</type>
      <name>Iface</name>
      <anchorfile>classsauce_1_1internal_1_1_key_3_01sauce_1_1shared__ptr_3_01_iface___01_4_01_4.html</anchorfile>
      <anchor>afa9fd0d46742b12cbfc157c9992b6b60</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Key&lt; Iface_ &gt;::Ptr</type>
      <name>Ptr</name>
      <anchorfile>classsauce_1_1internal_1_1_key_3_01sauce_1_1shared__ptr_3_01_iface___01_4_01_4.html</anchorfile>
      <anchor>ae7296fb3c9bfe1b4ae28fb82dbba3e2e</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Key&lt; Iface_ &gt;::Name</type>
      <name>Name</name>
      <anchorfile>classsauce_1_1internal_1_1_key_3_01sauce_1_1shared__ptr_3_01_iface___01_4_01_4.html</anchorfile>
      <anchor>a00275beec8a294195ebf136cd398b28c</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Key&lt; Iface_ &gt;::Normalized</type>
      <name>Normalized</name>
      <anchorfile>classsauce_1_1internal_1_1_key_3_01sauce_1_1shared__ptr_3_01_iface___01_4_01_4.html</anchorfile>
      <anchor>a8a0f92bdd6f899e80453f3fd67319e08</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>sauce::internal::Key&lt; Named&lt; Iface_, Name_ &gt; &gt;</name>
    <filename>classsauce_1_1internal_1_1_key_3_01_named_3_01_iface___00_01_name___01_4_01_4.html</filename>
    <templarg></templarg>
    <templarg></templarg>
    <member kind="typedef">
      <type>Iface_</type>
      <name>Iface</name>
      <anchorfile>classsauce_1_1internal_1_1_key_3_01_named_3_01_iface___00_01_name___01_4_01_4.html</anchorfile>
      <anchor>a89f4232172c9f2cfad60244d07a98df2</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>sauce::shared_ptr&lt; Iface_ &gt;</type>
      <name>Ptr</name>
      <anchorfile>classsauce_1_1internal_1_1_key_3_01_named_3_01_iface___00_01_name___01_4_01_4.html</anchorfile>
      <anchor>a40d567edaf85745970d3e821008c086b</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Name_</type>
      <name>Name</name>
      <anchorfile>classsauce_1_1internal_1_1_key_3_01_named_3_01_iface___00_01_name___01_4_01_4.html</anchorfile>
      <anchor>a5baf343cfbff4433e6bb1276ffd89cb4</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Named&lt; Iface_, Name_ &gt;</type>
      <name>Normalized</name>
      <anchorfile>classsauce_1_1internal_1_1_key_3_01_named_3_01_iface___00_01_name___01_4_01_4.html</anchorfile>
      <anchor>a2c66548c978fbcf6f890d8f64470e60c</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>sauce::internal::Lock</name>
    <filename>classsauce_1_1internal_1_1_lock.html</filename>
  </compound>
  <compound kind="class">
    <name>sauce::internal::NullLock</name>
    <filename>classsauce_1_1internal_1_1_null_lock.html</filename>
    <base>sauce::internal::Lock</base>
  </compound>
  <compound kind="class">
    <name>sauce::internal::LockerLock</name>
    <filename>classsauce_1_1internal_1_1_locker_lock.html</filename>
    <templarg></templarg>
    <base>sauce::internal::Lock</base>
    <member kind="function">
      <type></type>
      <name>LockerLock</name>
      <anchorfile>classsauce_1_1internal_1_1_locker_lock.html</anchorfile>
      <anchor>a0599a3e73711b11d4f967aae9d8d8d27</anchor>
      <arglist>(sauce::auto_ptr&lt; Locker &gt; locker)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>sauce::internal::LockFactory</name>
    <filename>classsauce_1_1internal_1_1_lock_factory.html</filename>
    <member kind="function" virtualness="pure">
      <type>virtual sauce::auto_ptr&lt; Lock &gt;</type>
      <name>createLock</name>
      <anchorfile>classsauce_1_1internal_1_1_lock_factory.html</anchorfile>
      <anchor>a317f83a2c405fed7a5e958c345f56c76</anchor>
      <arglist>()=0</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>sauce::internal::NullLockFactory</name>
    <filename>classsauce_1_1internal_1_1_null_lock_factory.html</filename>
    <base>sauce::internal::LockFactory</base>
    <member kind="function">
      <type>sauce::auto_ptr&lt; Lock &gt;</type>
      <name>createLock</name>
      <anchorfile>classsauce_1_1internal_1_1_null_lock_factory.html</anchorfile>
      <anchor>acc0c5178c02de7392726b5ce7196ae19</anchor>
      <arglist>()</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>sauce::internal::LockerLockFactory</name>
    <filename>classsauce_1_1internal_1_1_locker_lock_factory.html</filename>
    <templarg></templarg>
    <templarg></templarg>
    <base>sauce::internal::LockFactory</base>
    <member kind="function">
      <type></type>
      <name>LockerLockFactory</name>
      <anchorfile>classsauce_1_1internal_1_1_locker_lock_factory.html</anchorfile>
      <anchor>a1e3ee726771d527cdb09609f3c90f799</anchor>
      <arglist>(Lockable &amp;lockable)</arglist>
    </member>
    <member kind="function">
      <type>sauce::auto_ptr&lt; Lock &gt;</type>
      <name>createLock</name>
      <anchorfile>classsauce_1_1internal_1_1_locker_lock_factory.html</anchorfile>
      <anchor>a40af5a22500a035e1c9519b0f83d83c3</anchor>
      <arglist>()</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>sauce::internal::MethodBinding</name>
    <filename>classsauce_1_1internal_1_1_method_binding.html</filename>
    <templarg></templarg>
    <templarg></templarg>
    <base>Binding&lt; Dependency, NoScope &gt;</base>
    <class kind="struct">sauce::internal::MethodBinding::InjectParameters</class>
    <class kind="struct">sauce::internal::MethodBinding::MethodBindingFriend</class>
    <class kind="struct">sauce::internal::MethodBinding::ValidateAcyclicParameters</class>
    <member kind="typedef">
      <type>Inject::Method</type>
      <name>Method</name>
      <anchorfile>classsauce_1_1internal_1_1_method_binding.html</anchorfile>
      <anchor>aa3d8ebcae8c07303d63ca839a2a46318</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>ResolvedBinding&lt; Dependency &gt;::BindingPtr</type>
      <name>BindingPtr</name>
      <anchorfile>classsauce_1_1internal_1_1_method_binding.html</anchorfile>
      <anchor>a444ef26560ee4b3f0bc4ef7bb91866b1</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>MethodBinding</name>
      <anchorfile>classsauce_1_1internal_1_1_method_binding.html</anchorfile>
      <anchor>a5528d0b54e94e1c0cf710ff8071c44d9</anchor>
      <arglist>(Method method)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>inject</name>
      <anchorfile>classsauce_1_1internal_1_1_method_binding.html</anchorfile>
      <anchor>aae1876b16ce144b5372d4442432712a9</anchor>
      <arglist>(IfacePtr &amp;injected, BindingPtr, InjectorPtr injector) const </arglist>
    </member>
    <member kind="friend" protection="private">
      <type>friend struct</type>
      <name>MethodBindingFriend</name>
      <anchorfile>classsauce_1_1internal_1_1_method_binding.html</anchorfile>
      <anchor>ad3491246be960b870f14bedbe23aa2b6</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>sauce::internal::MethodBinding::InjectParameters::Parameter</name>
    <filename>structsauce_1_1internal_1_1_method_binding_1_1_inject_parameters_1_1_parameter.html</filename>
    <templarg></templarg>
    <templarg>i</templarg>
    <member kind="typedef">
      <type>Key&lt; T &gt;::Ptr</type>
      <name>Type</name>
      <anchorfile>structsauce_1_1internal_1_1_method_binding_1_1_inject_parameters_1_1_parameter.html</anchorfile>
      <anchor>ac71695af4202b4f6df1bf0065e37aa86</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>Type</type>
      <name>yield</name>
      <anchorfile>structsauce_1_1internal_1_1_method_binding_1_1_inject_parameters_1_1_parameter.html</anchorfile>
      <anchor>a93ff80e95d72f61da1612c75f8681fe1</anchor>
      <arglist>(Passed passed)</arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>sauce::internal::MethodBinding::InjectParameters::Passed</name>
    <filename>structsauce_1_1internal_1_1_method_binding_1_1_inject_parameters_1_1_passed.html</filename>
    <member kind="function">
      <type></type>
      <name>Passed</name>
      <anchorfile>structsauce_1_1internal_1_1_method_binding_1_1_inject_parameters_1_1_passed.html</anchorfile>
      <anchor>a9aa8522a6dc82f3e8e1f06eb83d03894</anchor>
      <arglist>(MethodBinding_ const &amp;binding, InjectorPtr &amp;injector)</arglist>
    </member>
    <member kind="variable">
      <type>MethodBinding_ const &amp;</type>
      <name>binding</name>
      <anchorfile>structsauce_1_1internal_1_1_method_binding_1_1_inject_parameters_1_1_passed.html</anchorfile>
      <anchor>a73a95d40f3fe0914ee9286f29b77337e</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>InjectorPtr &amp;</type>
      <name>injector</name>
      <anchorfile>structsauce_1_1internal_1_1_method_binding_1_1_inject_parameters_1_1_passed.html</anchorfile>
      <anchor>add19bda26c92eff75c1017366ac21648</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>sauce::internal::MethodBinding::ValidateAcyclicParameters::Parameter</name>
    <filename>structsauce_1_1internal_1_1_method_binding_1_1_validate_acyclic_parameters_1_1_parameter.html</filename>
    <templarg></templarg>
    <templarg>i</templarg>
    <member kind="typedef">
      <type>Key&lt; T &gt;::Ptr</type>
      <name>Type</name>
      <anchorfile>structsauce_1_1internal_1_1_method_binding_1_1_validate_acyclic_parameters_1_1_parameter.html</anchorfile>
      <anchor>ab3f7e43278b2a49af58f5f73d6166f16</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>observe</name>
      <anchorfile>structsauce_1_1internal_1_1_method_binding_1_1_validate_acyclic_parameters_1_1_parameter.html</anchorfile>
      <anchor>a046d66d24eb71294b6232eba2ab0e17d</anchor>
      <arglist>(Passed passed)</arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>sauce::internal::MethodBinding::ValidateAcyclicParameters::Passed</name>
    <filename>structsauce_1_1internal_1_1_method_binding_1_1_validate_acyclic_parameters_1_1_passed.html</filename>
    <member kind="function">
      <type></type>
      <name>Passed</name>
      <anchorfile>structsauce_1_1internal_1_1_method_binding_1_1_validate_acyclic_parameters_1_1_passed.html</anchorfile>
      <anchor>ad880c52a96d5b4a9580cba094616e926</anchor>
      <arglist>(MethodBinding_ const &amp;binding, InjectorPtr &amp;injector, TypeIds &amp;ids)</arglist>
    </member>
    <member kind="variable">
      <type>MethodBinding_ const &amp;</type>
      <name>binding</name>
      <anchorfile>structsauce_1_1internal_1_1_method_binding_1_1_validate_acyclic_parameters_1_1_passed.html</anchorfile>
      <anchor>a1c743ca65591555c53626706c5d7dd7b</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>InjectorPtr &amp;</type>
      <name>injector</name>
      <anchorfile>structsauce_1_1internal_1_1_method_binding_1_1_validate_acyclic_parameters_1_1_passed.html</anchorfile>
      <anchor>a487d673b0a3a9f085085fc4c0939aa17</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>TypeIds &amp;</type>
      <name>ids</name>
      <anchorfile>structsauce_1_1internal_1_1_method_binding_1_1_validate_acyclic_parameters_1_1_passed.html</anchorfile>
      <anchor>a34507cf52b73efc6a703d8dfe1f0e690</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>sauce::internal::NewBinding</name>
    <filename>classsauce_1_1internal_1_1_new_binding.html</filename>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <base>Binding&lt; Dependency, Scope &gt;</base>
    <class kind="struct">sauce::internal::NewBinding::InjectParameters</class>
    <class kind="struct">sauce::internal::NewBinding::NewBindingFriend</class>
    <class kind="struct">sauce::internal::NewBinding::ValidateAcyclicParameters</class>
    <member kind="typedef">
      <type>ResolvedBinding&lt; Dependency &gt;::BindingPtr</type>
      <name>BindingPtr</name>
      <anchorfile>classsauce_1_1internal_1_1_new_binding.html</anchorfile>
      <anchor>ac16f93615622c6d67d6baff495f72977</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>inject</name>
      <anchorfile>classsauce_1_1internal_1_1_new_binding.html</anchorfile>
      <anchor>a1ef83c10662cb5bfbdaae8f7b472d707</anchor>
      <arglist>(IfacePtr &amp;injected, BindingPtr binding, InjectorPtr injector) const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>dispose</name>
      <anchorfile>classsauce_1_1internal_1_1_new_binding.html</anchorfile>
      <anchor>a35457ebb95ace1de6040de7cf7a97715</anchor>
      <arglist>(Iface *iface) const </arglist>
    </member>
    <member kind="friend" protection="private">
      <type>friend struct</type>
      <name>NewBindingFriend</name>
      <anchorfile>classsauce_1_1internal_1_1_new_binding.html</anchorfile>
      <anchor>ac15f9528f36972c935decc8b1c6fab0f</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>sauce::internal::NewBinding::InjectParameters::Parameter</name>
    <filename>structsauce_1_1internal_1_1_new_binding_1_1_inject_parameters_1_1_parameter.html</filename>
    <templarg></templarg>
    <templarg>i</templarg>
    <member kind="typedef">
      <type>Key&lt; T &gt;::Ptr</type>
      <name>Type</name>
      <anchorfile>structsauce_1_1internal_1_1_new_binding_1_1_inject_parameters_1_1_parameter.html</anchorfile>
      <anchor>af1a5f2320d7c537f665e45aa7ad1e886</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>Type</type>
      <name>yield</name>
      <anchorfile>structsauce_1_1internal_1_1_new_binding_1_1_inject_parameters_1_1_parameter.html</anchorfile>
      <anchor>a7fea163dc832fa0ee41b75dd3dd527db</anchor>
      <arglist>(Passed passed)</arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>sauce::internal::NewBinding::InjectParameters::Passed</name>
    <filename>structsauce_1_1internal_1_1_new_binding_1_1_inject_parameters_1_1_passed.html</filename>
    <member kind="function">
      <type></type>
      <name>Passed</name>
      <anchorfile>structsauce_1_1internal_1_1_new_binding_1_1_inject_parameters_1_1_passed.html</anchorfile>
      <anchor>ae4ec541060ff01160fca64e4f302ab01</anchor>
      <arglist>(NewBinding_ const &amp;binding, InjectorPtr &amp;injector)</arglist>
    </member>
    <member kind="variable">
      <type>NewBinding_ const &amp;</type>
      <name>binding</name>
      <anchorfile>structsauce_1_1internal_1_1_new_binding_1_1_inject_parameters_1_1_passed.html</anchorfile>
      <anchor>a2efd8d0eb1c0e72a014d11fde3e4a07b</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>InjectorPtr &amp;</type>
      <name>injector</name>
      <anchorfile>structsauce_1_1internal_1_1_new_binding_1_1_inject_parameters_1_1_passed.html</anchorfile>
      <anchor>a5bb49642af39a2f25aeee8b636f77516</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>sauce::internal::NewBinding::ValidateAcyclicParameters::Parameter</name>
    <filename>structsauce_1_1internal_1_1_new_binding_1_1_validate_acyclic_parameters_1_1_parameter.html</filename>
    <templarg></templarg>
    <templarg>i</templarg>
    <member kind="function">
      <type>void</type>
      <name>observe</name>
      <anchorfile>structsauce_1_1internal_1_1_new_binding_1_1_validate_acyclic_parameters_1_1_parameter.html</anchorfile>
      <anchor>a753664e2ca46f50c35eb905d448a995b</anchor>
      <arglist>(Passed passed)</arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>sauce::internal::NewBinding::ValidateAcyclicParameters::Passed</name>
    <filename>structsauce_1_1internal_1_1_new_binding_1_1_validate_acyclic_parameters_1_1_passed.html</filename>
    <member kind="function">
      <type></type>
      <name>Passed</name>
      <anchorfile>structsauce_1_1internal_1_1_new_binding_1_1_validate_acyclic_parameters_1_1_passed.html</anchorfile>
      <anchor>aa9b2d7ee27031d349fc00ef28d90b4cd</anchor>
      <arglist>(NewBinding_ const &amp;binding, InjectorPtr &amp;injector, TypeIds &amp;ids)</arglist>
    </member>
    <member kind="variable">
      <type>NewBinding_ const &amp;</type>
      <name>binding</name>
      <anchorfile>structsauce_1_1internal_1_1_new_binding_1_1_validate_acyclic_parameters_1_1_passed.html</anchorfile>
      <anchor>a89327acb650f043b74e50d5b75382466</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>InjectorPtr &amp;</type>
      <name>injector</name>
      <anchorfile>structsauce_1_1internal_1_1_new_binding_1_1_validate_acyclic_parameters_1_1_passed.html</anchorfile>
      <anchor>a311e4ba8958edbb37e8bdd53c16d420a</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>TypeIds &amp;</type>
      <name>ids</name>
      <anchorfile>structsauce_1_1internal_1_1_new_binding_1_1_validate_acyclic_parameters_1_1_passed.html</anchorfile>
      <anchor>aedd09fdcc247330e2177174601dd967c</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>sauce::internal::OpaqueBinding</name>
    <filename>classsauce_1_1internal_1_1_opaque_binding.html</filename>
    <member kind="function" virtualness="pure">
      <type>virtual std::string</type>
      <name>getName</name>
      <anchorfile>classsauce_1_1internal_1_1_opaque_binding.html</anchorfile>
      <anchor>aa22bfd5e4d4459c2e3379ab6802d0285</anchor>
      <arglist>() const =0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual void</type>
      <name>setName</name>
      <anchorfile>classsauce_1_1internal_1_1_opaque_binding.html</anchorfile>
      <anchor>a853659789fb4f22d4b6fff84625c7eda</anchor>
      <arglist>(std::string const)=0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual NamedTypeId</type>
      <name>getKey</name>
      <anchorfile>classsauce_1_1internal_1_1_opaque_binding.html</anchorfile>
      <anchor>a16b36cf388c4edeea73f0b18bb376481</anchor>
      <arglist>() const =0</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>isModifier</name>
      <anchorfile>classsauce_1_1internal_1_1_opaque_binding.html</anchorfile>
      <anchor>a08d286d2d97f34d3c5104b4ed95527bc</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual TypeId</type>
      <name>getScopeKey</name>
      <anchorfile>classsauce_1_1internal_1_1_opaque_binding.html</anchorfile>
      <anchor>afcab860863e3fdec961ff24704c45217</anchor>
      <arglist>() const =0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual void</type>
      <name>eagerlyInject</name>
      <anchorfile>classsauce_1_1internal_1_1_opaque_binding.html</anchorfile>
      <anchor>a7f2819936b99c569cc29e3114d216328</anchor>
      <arglist>(OpaqueBindingPtr, sauce::shared_ptr&lt; Injector &gt;) const =0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual void</type>
      <name>setDynamicDependencyNames</name>
      <anchorfile>classsauce_1_1internal_1_1_opaque_binding.html</anchorfile>
      <anchor>a0d34b0bb5be2e0d0546200d480f3ae30</anchor>
      <arglist>(std::vector&lt; std::string &gt; const &amp;)=0</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>sauce::internal::PendingThrower</name>
    <filename>classsauce_1_1internal_1_1_pending_thrower.html</filename>
    <member kind="function">
      <type>void</type>
      <name>throwLater</name>
      <anchorfile>classsauce_1_1internal_1_1_pending_thrower.html</anchorfile>
      <anchor>a36a29769576b56d90b3789d9f48843e4</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>throwAnyPending</name>
      <anchorfile>classsauce_1_1internal_1_1_pending_thrower.html</anchorfile>
      <anchor>a80772a6475085b37319d9b1902d35cdf</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>PendingThrow</type>
      <name>clear</name>
      <anchorfile>classsauce_1_1internal_1_1_pending_thrower.html</anchorfile>
      <anchor>a6419d1831ceae6ceb70502c4a6c16a8d</anchor>
      <arglist>()</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>sauce::internal::ProviderBinding</name>
    <filename>classsauce_1_1internal_1_1_provider_binding.html</filename>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <base>Binding&lt; Dependency, Scope &gt;</base>
    <member kind="typedef">
      <type>ResolvedBinding&lt; Dependency &gt;::BindingPtr</type>
      <name>BindingPtr</name>
      <anchorfile>classsauce_1_1internal_1_1_provider_binding.html</anchorfile>
      <anchor>a06b54e95ffc09318e754a3a27a4f0811</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>validateAcyclic</name>
      <anchorfile>classsauce_1_1internal_1_1_provider_binding.html</anchorfile>
      <anchor>a53cc384b36418bf8661c2c7041f3fdbd</anchor>
      <arglist>(InjectorPtr injector, TypeIds &amp;ids) const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>inject</name>
      <anchorfile>classsauce_1_1internal_1_1_provider_binding.html</anchorfile>
      <anchor>aef5cae6c7564ac53956085a0a314da86</anchor>
      <arglist>(typename Key&lt; Dependency &gt;::Ptr &amp;injected, BindingPtr binding, InjectorPtr injector) const </arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>sauce::internal::ResolvedBinding</name>
    <filename>classsauce_1_1internal_1_1_resolved_binding.html</filename>
    <templarg>Dependency</templarg>
    <base>sauce::internal::OpaqueBinding</base>
    <member kind="typedef">
      <type>Key&lt; Dependency &gt;::Ptr</type>
      <name>IfacePtr</name>
      <anchorfile>classsauce_1_1internal_1_1_resolved_binding.html</anchorfile>
      <anchor>a2a0f836c59d54bed1a9a61820dc42bd5</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>sauce::shared_ptr&lt; ResolvedBinding&lt; Dependency &gt; &gt;</type>
      <name>BindingPtr</name>
      <anchorfile>classsauce_1_1internal_1_1_resolved_binding.html</anchorfile>
      <anchor>a8da57e5d6d2367e6d9c22603582550f0</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>NamedTypeId</type>
      <name>getKey</name>
      <anchorfile>classsauce_1_1internal_1_1_resolved_binding.html</anchorfile>
      <anchor>a7ff0341fe08ae52a0f03a35ad6dd3c79</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual void</type>
      <name>validateAcyclic</name>
      <anchorfile>classsauce_1_1internal_1_1_resolved_binding.html</anchorfile>
      <anchor>a503de5fe9cb4996db536f6f6d6d486be</anchor>
      <arglist>(sauce::shared_ptr&lt; Injector &gt;, TypeIds &amp;) const =0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual void</type>
      <name>get</name>
      <anchorfile>classsauce_1_1internal_1_1_resolved_binding.html</anchorfile>
      <anchor>a052b701d112012a04c93d7c76ffac334</anchor>
      <arglist>(IfacePtr &amp;, BindingPtr, sauce::shared_ptr&lt; Injector &gt;) const =0</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>sauce::internal::ScopeCacheLineDeleter</name>
    <filename>classsauce_1_1internal_1_1_scope_cache_line_deleter.html</filename>
    <templarg></templarg>
    <member kind="typedef">
      <type>Key&lt; Dependency &gt;::Ptr</type>
      <name>SmartPtr</name>
      <anchorfile>classsauce_1_1internal_1_1_scope_cache_line_deleter.html</anchorfile>
      <anchor>aa49d14ae66c7e516b0256b585fecff86</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>operator()</name>
      <anchorfile>classsauce_1_1internal_1_1_scope_cache_line_deleter.html</anchorfile>
      <anchor>a653d8d2ab04533dc570963fa937954a8</anchor>
      <arglist>(void *smartPtrPtr) const </arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>sauce::internal::ScopeCache</name>
    <filename>classsauce_1_1internal_1_1_scope_cache.html</filename>
    <member kind="function">
      <type>void</type>
      <name>put</name>
      <anchorfile>classsauce_1_1internal_1_1_scope_cache.html</anchorfile>
      <anchor>ae6db090d1bac1460ce8ba5763f26363c</anchor>
      <arglist>(typename Key&lt; Dependency &gt;::Ptr pointer)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>get</name>
      <anchorfile>classsauce_1_1internal_1_1_scope_cache.html</anchorfile>
      <anchor>ab4335c0d0372cdbea5009dbbce256bf3</anchor>
      <arglist>(typename Key&lt; Dependency &gt;::Ptr &amp;out) const </arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>sauce::internal::SelfInjector</name>
    <filename>classsauce_1_1internal_1_1_self_injector.html</filename>
    <templarg>T</templarg>
    <member kind="function">
      <type>void</type>
      <name>setSelf</name>
      <anchorfile>classsauce_1_1internal_1_1_self_injector.html</anchorfile>
      <anchor>afe9644ed14141c33f2cafac1bc784985</anchor>
      <arglist>(Ptr ptr)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>sauce::internal::TypeId</name>
    <filename>classsauce_1_1internal_1_1_type_id.html</filename>
    <member kind="function">
      <type>bool</type>
      <name>operator==</name>
      <anchorfile>classsauce_1_1internal_1_1_type_id.html</anchorfile>
      <anchor>a17766fc2eaeec66300e2ed06c5f2416a</anchor>
      <arglist>(TypeId const &amp;typeId) const </arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>operator!=</name>
      <anchorfile>classsauce_1_1internal_1_1_type_id.html</anchorfile>
      <anchor>ae852b9c3cddacf7fb21eab1223eee8a6</anchor>
      <arglist>(TypeId const &amp;typeId) const </arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>operator&lt;</name>
      <anchorfile>classsauce_1_1internal_1_1_type_id.html</anchorfile>
      <anchor>acd311538d2a1c39c52d5ef045f6a5eda</anchor>
      <arglist>(TypeId const &amp;typeId) const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>throwOutOfScopeException</name>
      <anchorfile>classsauce_1_1internal_1_1_type_id.html</anchorfile>
      <anchor>a56c2171cc2a8de369d51d55a9e141177</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" protection="protected">
      <type></type>
      <name>TypeId</name>
      <anchorfile>classsauce_1_1internal_1_1_type_id.html</anchorfile>
      <anchor>a69a24b644f482ec7724681160cab918d</anchor>
      <arglist>(void const *id)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>sauce::internal::ResolvedTypeId</name>
    <filename>classsauce_1_1internal_1_1_resolved_type_id.html</filename>
    <templarg></templarg>
    <base>sauce::internal::TypeId</base>
    <member kind="function">
      <type>void</type>
      <name>throwOutOfScopeException</name>
      <anchorfile>classsauce_1_1internal_1_1_resolved_type_id.html</anchorfile>
      <anchor>a2c95e5435b3d3b983e87d213bf3c9a0b</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="friend" protection="private">
      <type>friend TypeId</type>
      <name>typeIdOf</name>
      <anchorfile>classsauce_1_1internal_1_1_resolved_type_id.html</anchorfile>
      <anchor>a2158a12246aaa36ebc981948d4e7765b</anchor>
      <arglist>()</arglist>
    </member>
  </compound>
  <compound kind="page">
    <name>index</name>
    <title>API Reference</title>
    <filename>index</filename>
  </compound>
</tagfile>
