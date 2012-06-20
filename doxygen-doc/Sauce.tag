<?xml version='1.0' encoding='UTF-8' standalone='yes' ?>
<tagfile>
  <compound kind="class">
    <name>sauce::AllocateFromClause</name>
    <filename>classsauce_1_1_allocate_from_clause.html</filename>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <base>sauce::internal::Clause</base>
    <member kind="function">
      <type>void</type>
      <name>setState</name>
      <anchorfile>classsauce_1_1internal_1_1_clause.html</anchorfile>
      <anchor>aef02a802352982d9f9401a44db28386d</anchor>
      <arglist>(ClauseStatePtr state)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>Next</type>
      <name>pass</name>
      <anchorfile>classsauce_1_1internal_1_1_clause.html</anchorfile>
      <anchor>a3f6c15e27eaf5c5f5a764d909afc2d3f</anchor>
      <arglist>(Next next)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>bind</name>
      <anchorfile>classsauce_1_1internal_1_1_clause.html</anchorfile>
      <anchor>a284effb60778468cba7741a8c7e6c79b</anchor>
      <arglist>(BoundInjection)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>bindExtra</name>
      <anchorfile>classsauce_1_1internal_1_1_clause.html</anchorfile>
      <anchor>a75662c22b0c5cc3a69e5e5cc3b61d028</anchor>
      <arglist>(BoundInjection)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>bindDynamicDependencyName</name>
      <anchorfile>classsauce_1_1internal_1_1_clause.html</anchorfile>
      <anchor>a8815ef60816e8f16675846e155ded2cb</anchor>
      <arglist>(unsigned int position, std::string const name)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>throwLater</name>
      <anchorfile>classsauce_1_1internal_1_1_clause.html</anchorfile>
      <anchor>a263b7bff96fdf9f03f87c17355051263</anchor>
      <arglist>(Exception)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>sauce::NamingClause</name>
    <filename>classsauce_1_1_naming_clause.html</filename>
    <templarg>Dependency</templarg>
    <templarg>Scope</templarg>
    <templarg>Ctor</templarg>
    <base>sauce::internal::Clause</base>
    <member kind="function">
      <type>NamingClause&lt; Dependency, Scope, Ctor &gt; &amp;</type>
      <name>naming</name>
      <anchorfile>classsauce_1_1_naming_clause.html</anchorfile>
      <anchor>a831eebd059c01db1207d5f5fe830b456</anchor>
      <arglist>(unsigned int position, std::string const name)</arglist>
    </member>
    <member kind="function">
      <type>AllocateFromClause&lt; Dependency, Scope, Ctor, Allocator &gt;</type>
      <name>allocatedFrom</name>
      <anchorfile>classsauce_1_1_naming_clause.html</anchorfile>
      <anchor>a0d1bb41eff680361eb821e8e2bc9c8e4</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setState</name>
      <anchorfile>classsauce_1_1internal_1_1_clause.html</anchorfile>
      <anchor>aef02a802352982d9f9401a44db28386d</anchor>
      <arglist>(ClauseStatePtr state)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>Next</type>
      <name>pass</name>
      <anchorfile>classsauce_1_1internal_1_1_clause.html</anchorfile>
      <anchor>a3f6c15e27eaf5c5f5a764d909afc2d3f</anchor>
      <arglist>(Next next)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>bind</name>
      <anchorfile>classsauce_1_1internal_1_1_clause.html</anchorfile>
      <anchor>a284effb60778468cba7741a8c7e6c79b</anchor>
      <arglist>(BoundInjection)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>bindExtra</name>
      <anchorfile>classsauce_1_1internal_1_1_clause.html</anchorfile>
      <anchor>a75662c22b0c5cc3a69e5e5cc3b61d028</anchor>
      <arglist>(BoundInjection)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>bindDynamicDependencyName</name>
      <anchorfile>classsauce_1_1internal_1_1_clause.html</anchorfile>
      <anchor>a8815ef60816e8f16675846e155ded2cb</anchor>
      <arglist>(unsigned int position, std::string const name)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>throwLater</name>
      <anchorfile>classsauce_1_1internal_1_1_clause.html</anchorfile>
      <anchor>a263b7bff96fdf9f03f87c17355051263</anchor>
      <arglist>(Exception)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>sauce::ToClause</name>
    <filename>classsauce_1_1_to_clause.html</filename>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <base>sauce::internal::Clause</base>
    <member kind="function">
      <type>NamingClause&lt; Dependency, Scope, Ctor &gt;</type>
      <name>naming</name>
      <anchorfile>classsauce_1_1_to_clause.html</anchorfile>
      <anchor>a9f00b1c1c60f80703dc7b1b1226bf722</anchor>
      <arglist>(unsigned int position, std::string const name)</arglist>
    </member>
    <member kind="function">
      <type>AllocateFromClause&lt; Dependency, Scope, Ctor, Allocator &gt;</type>
      <name>allocatedFrom</name>
      <anchorfile>classsauce_1_1_to_clause.html</anchorfile>
      <anchor>a815933865130b4d57b5f88c4f682298e</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setState</name>
      <anchorfile>classsauce_1_1internal_1_1_clause.html</anchorfile>
      <anchor>aef02a802352982d9f9401a44db28386d</anchor>
      <arglist>(ClauseStatePtr state)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>Next</type>
      <name>pass</name>
      <anchorfile>classsauce_1_1internal_1_1_clause.html</anchorfile>
      <anchor>a3f6c15e27eaf5c5f5a764d909afc2d3f</anchor>
      <arglist>(Next next)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>bind</name>
      <anchorfile>classsauce_1_1internal_1_1_clause.html</anchorfile>
      <anchor>a284effb60778468cba7741a8c7e6c79b</anchor>
      <arglist>(BoundInjection)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>bindExtra</name>
      <anchorfile>classsauce_1_1internal_1_1_clause.html</anchorfile>
      <anchor>a75662c22b0c5cc3a69e5e5cc3b61d028</anchor>
      <arglist>(BoundInjection)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>bindDynamicDependencyName</name>
      <anchorfile>classsauce_1_1internal_1_1_clause.html</anchorfile>
      <anchor>a8815ef60816e8f16675846e155ded2cb</anchor>
      <arglist>(unsigned int position, std::string const name)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>throwLater</name>
      <anchorfile>classsauce_1_1internal_1_1_clause.html</anchorfile>
      <anchor>a263b7bff96fdf9f03f87c17355051263</anchor>
      <arglist>(Exception)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>sauce::ToProviderClause</name>
    <filename>classsauce_1_1_to_provider_clause.html</filename>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <base>sauce::internal::Clause</base>
    <member kind="function">
      <type>NamingClause&lt; ProviderDependency, Scope, ProviderCtor &gt;</type>
      <name>naming</name>
      <anchorfile>classsauce_1_1_to_provider_clause.html</anchorfile>
      <anchor>a388ced10d4285efad4d4f6042d2f2fd1</anchor>
      <arglist>(unsigned int position, std::string const name)</arglist>
    </member>
    <member kind="function">
      <type>AllocateFromClause&lt; ProviderDependency, Scope, ProviderCtor, Allocator &gt;</type>
      <name>allocatedFrom</name>
      <anchorfile>classsauce_1_1_to_provider_clause.html</anchorfile>
      <anchor>a49826d3b80554a3d84b5e04ece50bde1</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setState</name>
      <anchorfile>classsauce_1_1internal_1_1_clause.html</anchorfile>
      <anchor>aef02a802352982d9f9401a44db28386d</anchor>
      <arglist>(ClauseStatePtr state)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>Next</type>
      <name>pass</name>
      <anchorfile>classsauce_1_1internal_1_1_clause.html</anchorfile>
      <anchor>a3f6c15e27eaf5c5f5a764d909afc2d3f</anchor>
      <arglist>(Next next)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>bind</name>
      <anchorfile>classsauce_1_1internal_1_1_clause.html</anchorfile>
      <anchor>a284effb60778468cba7741a8c7e6c79b</anchor>
      <arglist>(BoundInjection)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>bindExtra</name>
      <anchorfile>classsauce_1_1internal_1_1_clause.html</anchorfile>
      <anchor>a75662c22b0c5cc3a69e5e5cc3b61d028</anchor>
      <arglist>(BoundInjection)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>bindDynamicDependencyName</name>
      <anchorfile>classsauce_1_1internal_1_1_clause.html</anchorfile>
      <anchor>a8815ef60816e8f16675846e155ded2cb</anchor>
      <arglist>(unsigned int position, std::string const name)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>throwLater</name>
      <anchorfile>classsauce_1_1internal_1_1_clause.html</anchorfile>
      <anchor>a263b7bff96fdf9f03f87c17355051263</anchor>
      <arglist>(Exception)</arglist>
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
      <type>ToProviderClause&lt; Dependency, Scope, ProviderCtor &gt;</type>
      <name>toProvider</name>
      <anchorfile>classsauce_1_1_in_clause.html</anchorfile>
      <anchor>a41a54b5afa2afa2fd08ceda42904229d</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setState</name>
      <anchorfile>classsauce_1_1internal_1_1_clause.html</anchorfile>
      <anchor>aef02a802352982d9f9401a44db28386d</anchor>
      <arglist>(ClauseStatePtr state)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>Next</type>
      <name>pass</name>
      <anchorfile>classsauce_1_1internal_1_1_clause.html</anchorfile>
      <anchor>a3f6c15e27eaf5c5f5a764d909afc2d3f</anchor>
      <arglist>(Next next)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>bind</name>
      <anchorfile>classsauce_1_1internal_1_1_clause.html</anchorfile>
      <anchor>a284effb60778468cba7741a8c7e6c79b</anchor>
      <arglist>(BoundInjection)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>bindExtra</name>
      <anchorfile>classsauce_1_1internal_1_1_clause.html</anchorfile>
      <anchor>a75662c22b0c5cc3a69e5e5cc3b61d028</anchor>
      <arglist>(BoundInjection)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>bindDynamicDependencyName</name>
      <anchorfile>classsauce_1_1internal_1_1_clause.html</anchorfile>
      <anchor>a8815ef60816e8f16675846e155ded2cb</anchor>
      <arglist>(unsigned int position, std::string const name)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>throwLater</name>
      <anchorfile>classsauce_1_1internal_1_1_clause.html</anchorfile>
      <anchor>a263b7bff96fdf9f03f87c17355051263</anchor>
      <arglist>(Exception)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>sauce::NamedClause</name>
    <filename>classsauce_1_1_named_clause.html</filename>
    <templarg></templarg>
    <base>sauce::internal::Clause</base>
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
      <type>ToProviderClause&lt; Dependency, NoScope, ProviderCtor &gt;</type>
      <name>toProvider</name>
      <anchorfile>classsauce_1_1_named_clause.html</anchorfile>
      <anchor>a29850a8688c8b58855fe9efdb5bbbc55</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setState</name>
      <anchorfile>classsauce_1_1internal_1_1_clause.html</anchorfile>
      <anchor>aef02a802352982d9f9401a44db28386d</anchor>
      <arglist>(ClauseStatePtr state)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>Next</type>
      <name>pass</name>
      <anchorfile>classsauce_1_1internal_1_1_clause.html</anchorfile>
      <anchor>a3f6c15e27eaf5c5f5a764d909afc2d3f</anchor>
      <arglist>(Next next)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>bind</name>
      <anchorfile>classsauce_1_1internal_1_1_clause.html</anchorfile>
      <anchor>a284effb60778468cba7741a8c7e6c79b</anchor>
      <arglist>(BoundInjection)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>bindExtra</name>
      <anchorfile>classsauce_1_1internal_1_1_clause.html</anchorfile>
      <anchor>a75662c22b0c5cc3a69e5e5cc3b61d028</anchor>
      <arglist>(BoundInjection)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>bindDynamicDependencyName</name>
      <anchorfile>classsauce_1_1internal_1_1_clause.html</anchorfile>
      <anchor>a8815ef60816e8f16675846e155ded2cb</anchor>
      <arglist>(unsigned int position, std::string const name)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>throwLater</name>
      <anchorfile>classsauce_1_1internal_1_1_clause.html</anchorfile>
      <anchor>a263b7bff96fdf9f03f87c17355051263</anchor>
      <arglist>(Exception)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>sauce::BindClause</name>
    <filename>classsauce_1_1_bind_clause.html</filename>
    <templarg>Iface</templarg>
    <base>sauce::internal::Clause</base>
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
      <anchor>af381b15bbab2c8d4809ed805033156d2</anchor>
      <arglist>(std::string const )</arglist>
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
      <type>ToProviderClause&lt; Named&lt; Iface, Unnamed &gt;, NoScope, ProviderCtor &gt;</type>
      <name>toProvider</name>
      <anchorfile>classsauce_1_1_bind_clause.html</anchorfile>
      <anchor>a7c06e6dd746a0ec9529ce872975f7210</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setState</name>
      <anchorfile>classsauce_1_1internal_1_1_clause.html</anchorfile>
      <anchor>aef02a802352982d9f9401a44db28386d</anchor>
      <arglist>(ClauseStatePtr state)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>Next</type>
      <name>pass</name>
      <anchorfile>classsauce_1_1internal_1_1_clause.html</anchorfile>
      <anchor>a3f6c15e27eaf5c5f5a764d909afc2d3f</anchor>
      <arglist>(Next next)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>bind</name>
      <anchorfile>classsauce_1_1internal_1_1_clause.html</anchorfile>
      <anchor>a284effb60778468cba7741a8c7e6c79b</anchor>
      <arglist>(BoundInjection)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>bindExtra</name>
      <anchorfile>classsauce_1_1internal_1_1_clause.html</anchorfile>
      <anchor>a75662c22b0c5cc3a69e5e5cc3b61d028</anchor>
      <arglist>(BoundInjection)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>bindDynamicDependencyName</name>
      <anchorfile>classsauce_1_1internal_1_1_clause.html</anchorfile>
      <anchor>a8815ef60816e8f16675846e155ded2cb</anchor>
      <arglist>(unsigned int position, std::string const name)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>throwLater</name>
      <anchorfile>classsauce_1_1internal_1_1_clause.html</anchorfile>
      <anchor>a263b7bff96fdf9f03f87c17355051263</anchor>
      <arglist>(Exception)</arglist>
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
    <member kind="friend" protection="private">
      <type>friend class</type>
      <name>Modules</name>
      <anchorfile>classsauce_1_1_binder.html</anchorfile>
      <anchor>a524999a3eaf81bac0af5028449acc8ee</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>sauce::Exception</name>
    <filename>structsauce_1_1_exception.html</filename>
    <member kind="function">
      <type></type>
      <name>Exception</name>
      <anchorfile>structsauce_1_1_exception.html</anchorfile>
      <anchor>a712d07bd39b9df1bf8b4596a0b64c9b7</anchor>
      <arglist>(std::string message)</arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>sauce::UnboundException</name>
    <filename>structsauce_1_1_unbound_exception.html</filename>
    <base>sauce::Exception</base>
    <member kind="function">
      <type></type>
      <name>Exception</name>
      <anchorfile>structsauce_1_1_exception.html</anchorfile>
      <anchor>a712d07bd39b9df1bf8b4596a0b64c9b7</anchor>
      <arglist>(std::string message)</arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>sauce::UnboundExceptionFor</name>
    <filename>structsauce_1_1_unbound_exception_for.html</filename>
    <templarg></templarg>
    <base>sauce::UnboundException</base>
  </compound>
  <compound kind="struct">
    <name>sauce::PartialBindingException</name>
    <filename>structsauce_1_1_partial_binding_exception.html</filename>
    <base>sauce::Exception</base>
    <member kind="function">
      <type></type>
      <name>Exception</name>
      <anchorfile>structsauce_1_1_exception.html</anchorfile>
      <anchor>a712d07bd39b9df1bf8b4596a0b64c9b7</anchor>
      <arglist>(std::string message)</arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>sauce::PartialBindingExceptionFor</name>
    <filename>structsauce_1_1_partial_binding_exception_for.html</filename>
    <templarg></templarg>
    <base>sauce::PartialBindingException</base>
  </compound>
  <compound kind="struct">
    <name>sauce::CircularDependencyException</name>
    <filename>structsauce_1_1_circular_dependency_exception.html</filename>
    <base>sauce::Exception</base>
    <member kind="function">
      <type></type>
      <name>Exception</name>
      <anchorfile>structsauce_1_1_exception.html</anchorfile>
      <anchor>a712d07bd39b9df1bf8b4596a0b64c9b7</anchor>
      <arglist>(std::string message)</arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>sauce::CircularDependencyExceptionFor</name>
    <filename>structsauce_1_1_circular_dependency_exception_for.html</filename>
    <templarg></templarg>
    <base>sauce::CircularDependencyException</base>
  </compound>
  <compound kind="struct">
    <name>sauce::OutOfScopeException</name>
    <filename>structsauce_1_1_out_of_scope_exception.html</filename>
    <base>sauce::Exception</base>
    <member kind="function">
      <type></type>
      <name>Exception</name>
      <anchorfile>structsauce_1_1_exception.html</anchorfile>
      <anchor>a712d07bd39b9df1bf8b4596a0b64c9b7</anchor>
      <arglist>(std::string message)</arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>sauce::OutOfScopeExceptionFor</name>
    <filename>structsauce_1_1_out_of_scope_exception_for.html</filename>
    <templarg></templarg>
    <base>sauce::OutOfScopeException</base>
  </compound>
  <compound kind="struct">
    <name>sauce::AlreadyInScopeException</name>
    <filename>structsauce_1_1_already_in_scope_exception.html</filename>
    <base>sauce::Exception</base>
    <member kind="function">
      <type></type>
      <name>Exception</name>
      <anchorfile>structsauce_1_1_exception.html</anchorfile>
      <anchor>a712d07bd39b9df1bf8b4596a0b64c9b7</anchor>
      <arglist>(std::string message)</arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>sauce::AlreadyInScopeExceptionFor</name>
    <filename>structsauce_1_1_already_in_scope_exception_for.html</filename>
    <templarg></templarg>
    <base>sauce::AlreadyInScopeException</base>
  </compound>
  <compound kind="struct">
    <name>sauce::ExitingSingletonScopeException</name>
    <filename>structsauce_1_1_exiting_singleton_scope_exception.html</filename>
    <base>sauce::Exception</base>
    <member kind="function">
      <type></type>
      <name>Exception</name>
      <anchorfile>structsauce_1_1_exception.html</anchorfile>
      <anchor>a712d07bd39b9df1bf8b4596a0b64c9b7</anchor>
      <arglist>(std::string message)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>sauce::Injector</name>
    <filename>classsauce_1_1_injector.html</filename>
    <member kind="function">
      <type>i::Key&lt; Dependency &gt;::Ptr</type>
      <name>get</name>
      <anchorfile>classsauce_1_1_injector.html</anchorfile>
      <anchor>a896c23b564d43bc456eee9f4b31d99ab</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>i::Key&lt; Named&lt; Iface, Name &gt; &gt;::Ptr</type>
      <name>get</name>
      <anchorfile>classsauce_1_1_injector.html</anchorfile>
      <anchor>a56862ae04d1c8dd8ac3008c63201f305</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>sauce::shared_ptr&lt; Injector &gt;</type>
      <name>enter</name>
      <anchorfile>classsauce_1_1_injector.html</anchorfile>
      <anchor>a167426cc0c3aa9ec1063baf6eaaf3da5</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>sauce::shared_ptr&lt; Injector &gt;</type>
      <name>exit</name>
      <anchorfile>classsauce_1_1_injector.html</anchorfile>
      <anchor>a9b1a518af5173c7bcf5432827bb6ba34</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>eagerlyProvide</name>
      <anchorfile>classsauce_1_1_injector.html</anchorfile>
      <anchor>a956812dc1a989bec7baa35bb0a73a726</anchor>
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
      <anchor>a5127cdfa9747e9fb69a6151b35ede66a</anchor>
      <arglist>(Binder &amp;binder)</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="pure">
      <type>virtual void</type>
      <name>configure</name>
      <anchorfile>classsauce_1_1_abstract_module.html</anchorfile>
      <anchor>aa5d102d0e040b6a50b680faaaba1bbcc</anchor>
      <arglist>()=0</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>BindClause&lt; Iface &gt;</type>
      <name>bind</name>
      <anchorfile>classsauce_1_1_abstract_module.html</anchorfile>
      <anchor>a63b203944bb26cd2f6b8007d53388d48</anchor>
      <arglist>()</arglist>
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
      <anchor>a3426dc2443556d594ea44bd06687c89b</anchor>
      <arglist>(Module module)</arglist>
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
    <member kind="function" virtualness="pure">
      <type>virtual sauce::shared_ptr&lt; Iface &gt;</type>
      <name>get</name>
      <anchorfile>classsauce_1_1_provider.html</anchorfile>
      <anchor>a11a5255647c2570bf86e15a04dbef82a</anchor>
      <arglist>()=0</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>sauce::shared_ptr&lt; Provider&lt; Dependency &gt; &gt;</type>
      <name>getSelf</name>
      <anchorfile>classsauce_1_1_provider.html</anchorfile>
      <anchor>a9fac62da0c899b2b8ae4a55dc22c5b90</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="friend">
      <type>friend struct</type>
      <name>::sauce::internal::ProviderFriend</name>
      <anchorfile>classsauce_1_1_provider.html</anchorfile>
      <anchor>a3906d3c8cf401f08c6fcfbafaa1d2d99</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>sauce::AbstractProvider</name>
    <filename>classsauce_1_1_abstract_provider.html</filename>
    <templarg></templarg>
    <base>sauce::Provider</base>
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
    <member kind="function" protection="protected">
      <type>sauce::shared_ptr&lt; Provider&lt; Dependency &gt; &gt;</type>
      <name>getSelf</name>
      <anchorfile>classsauce_1_1_provider.html</anchorfile>
      <anchor>a9fac62da0c899b2b8ae4a55dc22c5b90</anchor>
      <arglist>() const </arglist>
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
      <anchor>a8040be092897ad90cffa1c5a69351eaa</anchor>
      <arglist>(InjectorPtr injector, TypeIds &amp;ids) const </arglist>
    </member>
    <member kind="function" protection="protected">
      <type>Key&lt; Dependency &gt;::Ptr</type>
      <name>getHelper</name>
      <anchorfile>classsauce_1_1internal_1_1_injector_friend.html</anchorfile>
      <anchor>a56383b672d8dcb945f33df0f406ef3de</anchor>
      <arglist>(InjectorPtr injector) const </arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>cache</name>
      <anchorfile>classsauce_1_1internal_1_1_injector_friend.html</anchorfile>
      <anchor>ade3dae24aba63755f841cc0a5f414620</anchor>
      <arglist>(InjectorPtr injector, typename Key&lt; Dependency &gt;::Ptr pointer, i::TypeId scope) const </arglist>
    </member>
    <member kind="function" protection="protected">
      <type>bool</type>
      <name>probe</name>
      <anchorfile>classsauce_1_1internal_1_1_injector_friend.html</anchorfile>
      <anchor>a90c25459558bfe86e4bb59e12137718b</anchor>
      <arglist>(InjectorPtr injector, typename Key&lt; Dependency &gt;::Ptr &amp;out, i::TypeId scope) const </arglist>
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
  <compound kind="struct">
    <name>sauce::internal::GetDecorator</name>
    <filename>structsauce_1_1internal_1_1_get_decorator.html</filename>
    <templarg>ImplicitBindings</templarg>
    <templarg>Dependency</templarg>
    <base>sauce::internal::ProviderFriend</base>
    <member kind="typedef">
      <type>Key&lt; Dependency &gt;::Ptr</type>
      <name>Ptr</name>
      <anchorfile>structsauce_1_1internal_1_1_get_decorator.html</anchorfile>
      <anchor>a84cd26e9885cc0fa31642ca5695e13d9</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Key&lt; Dependency &gt;::Normalized</type>
      <name>Normalized</name>
      <anchorfile>structsauce_1_1internal_1_1_get_decorator.html</anchorfile>
      <anchor>ad3ce10f9e4449f9e1464e7a5e2f801ae</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>sauce::shared_ptr&lt; Injector &gt;</type>
      <name>InjectorPtr</name>
      <anchorfile>structsauce_1_1internal_1_1_get_decorator.html</anchorfile>
      <anchor>a7373df69b8226dabd3160df92d726d77</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>Ptr</type>
      <name>get</name>
      <anchorfile>structsauce_1_1internal_1_1_get_decorator.html</anchorfile>
      <anchor>acd6f1347a00c7edd6f90af5b645d36d8</anchor>
      <arglist>(Bindings&lt; ImplicitBindings &gt; const &amp;bindings, InjectorPtr injector)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setSelf</name>
      <anchorfile>structsauce_1_1internal_1_1_provider_friend.html</anchorfile>
      <anchor>a335c721a6d2c83e11d8498dada73d4c6</anchor>
      <arglist>(typename Key&lt; Named&lt; Provider&lt; ProvidedDependency &gt;, Name &gt; &gt;::Ptr ptr) const </arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>sauce::internal::GetDecorator&lt; ImplicitBindings, Named&lt; Provider&lt; ProvidedDependency &gt;, Name &gt; &gt;</name>
    <filename>structsauce_1_1internal_1_1_get_decorator_3_01_implicit_bindings_00_01_named_3_01_provider_3_01_2bd1789f15c1abf4bb77f9fe019a26cd.html</filename>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <base>sauce::internal::ProviderFriend</base>
    <member kind="typedef">
      <type>Named&lt; Provider&lt; ProvidedDependency &gt;, Name &gt;</type>
      <name>Dependency</name>
      <anchorfile>structsauce_1_1internal_1_1_get_decorator_3_01_implicit_bindings_00_01_named_3_01_provider_3_01_2bd1789f15c1abf4bb77f9fe019a26cd.html</anchorfile>
      <anchor>a5ced44ba5e314629d9f3f892d7e5ef00</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Key&lt; Dependency &gt;::Ptr</type>
      <name>Ptr</name>
      <anchorfile>structsauce_1_1internal_1_1_get_decorator_3_01_implicit_bindings_00_01_named_3_01_provider_3_01_2bd1789f15c1abf4bb77f9fe019a26cd.html</anchorfile>
      <anchor>a716da49b4146fb80ea3f57f934b56a61</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Key&lt; Dependency &gt;::Normalized</type>
      <name>Normalized</name>
      <anchorfile>structsauce_1_1internal_1_1_get_decorator_3_01_implicit_bindings_00_01_named_3_01_provider_3_01_2bd1789f15c1abf4bb77f9fe019a26cd.html</anchorfile>
      <anchor>af08342804f15511ba5653a41815d4ab1</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>sauce::shared_ptr&lt; Injector &gt;</type>
      <name>InjectorPtr</name>
      <anchorfile>structsauce_1_1internal_1_1_get_decorator_3_01_implicit_bindings_00_01_named_3_01_provider_3_01_2bd1789f15c1abf4bb77f9fe019a26cd.html</anchorfile>
      <anchor>a5deff862f69c21211fd8916ab843bc59</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>Ptr</type>
      <name>get</name>
      <anchorfile>structsauce_1_1internal_1_1_get_decorator_3_01_implicit_bindings_00_01_named_3_01_provider_3_01_2bd1789f15c1abf4bb77f9fe019a26cd.html</anchorfile>
      <anchor>a1e4794e14ff884cf5ab8572b8dc73b22</anchor>
      <arglist>(Bindings&lt; ImplicitBindings &gt; const &amp;bindings, InjectorPtr injector)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setSelf</name>
      <anchorfile>structsauce_1_1internal_1_1_provider_friend.html</anchorfile>
      <anchor>a335c721a6d2c83e11d8498dada73d4c6</anchor>
      <arglist>(typename Key&lt; Named&lt; Provider&lt; ProvidedDependency &gt;, Name &gt; &gt;::Ptr ptr) const </arglist>
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
      <anchor>a7d1e5d3e6597d23573d467ce74f61c87</anchor>
      <arglist>(sauce::shared_ptr&lt; Injector &gt; injector, TypeIds &amp;ids) const </arglist>
    </member>
    <member kind="function">
      <type>Key&lt; Dependency &gt;::Ptr</type>
      <name>get</name>
      <anchorfile>classsauce_1_1internal_1_1_base_injector.html</anchorfile>
      <anchor>a76bcf7faf76f8ae1eb0617dbb879ec20</anchor>
      <arglist>(sauce::shared_ptr&lt; Injector &gt; injector) const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>eagerlyProvide</name>
      <anchorfile>classsauce_1_1internal_1_1_base_injector.html</anchorfile>
      <anchor>a0511a06def8bf84d8ccc1fcb5e557a92</anchor>
      <arglist>(sauce::shared_ptr&lt; Injector &gt; injector) const </arglist>
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
      <name>getBinding</name>
      <anchorfile>classsauce_1_1internal_1_1_bindings.html</anchorfile>
      <anchor>a7d236bc47d069909b74945af67a4beda</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>validateAcyclic</name>
      <anchorfile>classsauce_1_1internal_1_1_bindings.html</anchorfile>
      <anchor>af8581d35c9c936b636c321537df221bb</anchor>
      <arglist>(sauce::shared_ptr&lt; Injector &gt; injector, TypeIds &amp;ids) const </arglist>
    </member>
    <member kind="function">
      <type>Key&lt; Dependency &gt;::Ptr</type>
      <name>get</name>
      <anchorfile>classsauce_1_1internal_1_1_bindings.html</anchorfile>
      <anchor>a86540802b63a64932dee9e31bb463e99</anchor>
      <arglist>(sauce::shared_ptr&lt; Injector &gt; injector) const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>eagerlyProvide</name>
      <anchorfile>classsauce_1_1internal_1_1_bindings.html</anchorfile>
      <anchor>a274fb076325b3ff14fae36205d2956dd</anchor>
      <arglist>(sauce::shared_ptr&lt; Injector &gt; injector) const </arglist>
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
      <anchor>ab263a0d271954efaf07927db5563eeff</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>bindExtra</name>
      <anchorfile>classsauce_1_1internal_1_1_clause_state.html</anchorfile>
      <anchor>a68fb9e66eaec37c6454087062056b4e0</anchor>
      <arglist>()</arglist>
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
      <name>clear</name>
      <anchorfile>classsauce_1_1internal_1_1_clause_state.html</anchorfile>
      <anchor>a6d58594be04e8c6b769d39acf2bf2161</anchor>
      <arglist>()</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>sauce::internal::Clause</name>
    <filename>classsauce_1_1internal_1_1_clause.html</filename>
    <member kind="function">
      <type>void</type>
      <name>setState</name>
      <anchorfile>classsauce_1_1internal_1_1_clause.html</anchorfile>
      <anchor>aef02a802352982d9f9401a44db28386d</anchor>
      <arglist>(ClauseStatePtr state)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>Next</type>
      <name>pass</name>
      <anchorfile>classsauce_1_1internal_1_1_clause.html</anchorfile>
      <anchor>a3f6c15e27eaf5c5f5a764d909afc2d3f</anchor>
      <arglist>(Next next)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>bind</name>
      <anchorfile>classsauce_1_1internal_1_1_clause.html</anchorfile>
      <anchor>a284effb60778468cba7741a8c7e6c79b</anchor>
      <arglist>(BoundInjection)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>bindExtra</name>
      <anchorfile>classsauce_1_1internal_1_1_clause.html</anchorfile>
      <anchor>a75662c22b0c5cc3a69e5e5cc3b61d028</anchor>
      <arglist>(BoundInjection)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>bindDynamicDependencyName</name>
      <anchorfile>classsauce_1_1internal_1_1_clause.html</anchorfile>
      <anchor>a8815ef60816e8f16675846e155ded2cb</anchor>
      <arglist>(unsigned int position, std::string const name)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>throwLater</name>
      <anchorfile>classsauce_1_1internal_1_1_clause.html</anchorfile>
      <anchor>a263b7bff96fdf9f03f87c17355051263</anchor>
      <arglist>(Exception)</arglist>
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
  <compound kind="struct">
    <name>sauce::internal::ImplicitBindingTraits</name>
    <filename>structsauce_1_1internal_1_1_implicit_binding_traits.html</filename>
    <templarg>ImplicitInjection_</templarg>
    <member kind="typedef">
      <type>ImplicitInjection_</type>
      <name>ImplicitInjection</name>
      <anchorfile>structsauce_1_1internal_1_1_implicit_binding_traits.html</anchorfile>
      <anchor>aed02dc891ebd9164751032501f4b6ff0</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>ImplicitInjection::Dependency</type>
      <name>Dependency</name>
      <anchorfile>structsauce_1_1internal_1_1_implicit_binding_traits.html</anchorfile>
      <anchor>a2a1463671b4ce4f2a2e44b6e7df4a74b</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>ImplicitInjection::InjectionPtr</type>
      <name>InjectionPtr</name>
      <anchorfile>structsauce_1_1internal_1_1_implicit_binding_traits.html</anchorfile>
      <anchor>a9bd12b28b860cc2d6e831aa9e992b2bc</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>ResolvedBinding&lt; Dependency &gt;::BindingPtr</type>
      <name>BindingPtr</name>
      <anchorfile>structsauce_1_1internal_1_1_implicit_binding_traits.html</anchorfile>
      <anchor>a81be35b04ca4f7a304cf5bc9935f247f</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>sauce::internal::ImplicitBinding</name>
    <filename>structsauce_1_1internal_1_1_implicit_binding.html</filename>
    <templarg></templarg>
    <member kind="typedef">
      <type>sauce::shared_ptr&lt; ResolvedBinding&lt; Dependency &gt; &gt;</type>
      <name>BindingPtr</name>
      <anchorfile>structsauce_1_1internal_1_1_implicit_binding.html</anchorfile>
      <anchor>ad1ff71134ebebf9146bcbb3182f7357f</anchor>
      <arglist></arglist>
    </member>
    <member kind="function" static="yes">
      <type>static BindingPtr</type>
      <name>get</name>
      <anchorfile>structsauce_1_1internal_1_1_implicit_binding.html</anchorfile>
      <anchor>aebd3f78ff7d17c2724acd25567a68baf</anchor>
      <arglist>(ConcreteBindings const &amp;)</arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>sauce::internal::ImplicitBindings</name>
    <filename>structsauce_1_1internal_1_1_implicit_bindings.html</filename>
    <member kind="function">
      <type>sauce::shared_ptr&lt; ResolvedBinding&lt; Dependency &gt; &gt;</type>
      <name>get</name>
      <anchorfile>structsauce_1_1internal_1_1_implicit_bindings.html</anchorfile>
      <anchor>aa5c71be6c2c88415d7bec115b453929e</anchor>
      <arglist>(ConcreteBindings const &amp;bindings) const </arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>sauce::internal::ImplicitBinding&lt; Named&lt; Injector, Unnamed &gt; &gt;</name>
    <filename>structsauce_1_1internal_1_1_implicit_binding_3_01_named_3_01_injector_00_01_unnamed_01_4_01_4.html</filename>
    <base>ImplicitBindingTraits&lt; inj::InjectorInjection &gt;</base>
    <member kind="function" static="yes">
      <type>static BindingPtr</type>
      <name>get</name>
      <anchorfile>structsauce_1_1internal_1_1_implicit_binding_3_01_named_3_01_injector_00_01_unnamed_01_4_01_4.html</anchorfile>
      <anchor>ab2340b92ddbcd8acb19e917440dafe36</anchor>
      <arglist>(ConcreteBindings const &amp;)</arglist>
    </member>
    <member kind="typedef">
      <type>inj::InjectorInjection</type>
      <name>ImplicitInjection</name>
      <anchorfile>structsauce_1_1internal_1_1_implicit_binding_traits.html</anchorfile>
      <anchor>aed02dc891ebd9164751032501f4b6ff0</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>ImplicitInjection::Dependency</type>
      <name>Dependency</name>
      <anchorfile>structsauce_1_1internal_1_1_implicit_binding_traits.html</anchorfile>
      <anchor>a2a1463671b4ce4f2a2e44b6e7df4a74b</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>ImplicitInjection::InjectionPtr</type>
      <name>InjectionPtr</name>
      <anchorfile>structsauce_1_1internal_1_1_implicit_binding_traits.html</anchorfile>
      <anchor>a9bd12b28b860cc2d6e831aa9e992b2bc</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>ResolvedBinding&lt; Dependency &gt;::BindingPtr</type>
      <name>BindingPtr</name>
      <anchorfile>structsauce_1_1internal_1_1_implicit_binding_traits.html</anchorfile>
      <anchor>a81be35b04ca4f7a304cf5bc9935f247f</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>sauce::internal::ImplicitBinding&lt; Named&lt; Provider&lt; ProvidedDependency &gt;, Name &gt; &gt;</name>
    <filename>structsauce_1_1internal_1_1_implicit_binding_3_01_named_3_01_provider_3_01_provided_dependency_01_4_00_01_name_01_4_01_4.html</filename>
    <templarg></templarg>
    <templarg></templarg>
    <member kind="typedef">
      <type>ImplicitBindingTraits&lt; inj::ImplicitProviderInjection&lt; ProvidedDependency, Name &gt; &gt;</type>
      <name>Traits</name>
      <anchorfile>structsauce_1_1internal_1_1_implicit_binding_3_01_named_3_01_provider_3_01_provided_dependency_01_4_00_01_name_01_4_01_4.html</anchorfile>
      <anchor>aa633d4fe4bfb029b58a377d99b62901b</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Traits::ImplicitInjection</type>
      <name>ImplicitInjection</name>
      <anchorfile>structsauce_1_1internal_1_1_implicit_binding_3_01_named_3_01_provider_3_01_provided_dependency_01_4_00_01_name_01_4_01_4.html</anchorfile>
      <anchor>aa8f3f49d13402d853ccce7328acf4888</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Traits::Dependency</type>
      <name>Dependency</name>
      <anchorfile>structsauce_1_1internal_1_1_implicit_binding_3_01_named_3_01_provider_3_01_provided_dependency_01_4_00_01_name_01_4_01_4.html</anchorfile>
      <anchor>a8119e12d8b92e16b014f48aa02fac1e6</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Traits::InjectionPtr</type>
      <name>InjectionPtr</name>
      <anchorfile>structsauce_1_1internal_1_1_implicit_binding_3_01_named_3_01_provider_3_01_provided_dependency_01_4_00_01_name_01_4_01_4.html</anchorfile>
      <anchor>aa363aa78fc66082a6c3395e82bf49261</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Traits::BindingPtr</type>
      <name>BindingPtr</name>
      <anchorfile>structsauce_1_1internal_1_1_implicit_binding_3_01_named_3_01_provider_3_01_provided_dependency_01_4_00_01_name_01_4_01_4.html</anchorfile>
      <anchor>a0758d68a50215cd9868e67eebc822569</anchor>
      <arglist></arglist>
    </member>
    <member kind="function" static="yes">
      <type>static BindingPtr</type>
      <name>get</name>
      <anchorfile>structsauce_1_1internal_1_1_implicit_binding_3_01_named_3_01_provider_3_01_provided_dependency_01_4_00_01_name_01_4_01_4.html</anchorfile>
      <anchor>a4668ff762ff0082117d3af7672248be2</anchor>
      <arglist>(ConcreteBindings const &amp;bindings)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>sauce::internal::InjectionBinding</name>
    <filename>classsauce_1_1internal_1_1_injection_binding.html</filename>
    <templarg></templarg>
    <templarg></templarg>
    <base>sauce::internal::ResolvedBinding</base>
    <base>sauce::internal::InjectorFriend</base>
    <member kind="function">
      <type></type>
      <name>InjectionBinding</name>
      <anchorfile>classsauce_1_1internal_1_1_injection_binding.html</anchorfile>
      <anchor>a88915fb3f387c8e4ae19fe68f690fc3d</anchor>
      <arglist>(InjectionPtr injection)</arglist>
    </member>
    <member kind="function">
      <type>TypeId</type>
      <name>getKey</name>
      <anchorfile>structsauce_1_1internal_1_1_resolved_binding.html</anchorfile>
      <anchor>a788b6d884c366c7968b0c0f4fb590fc0</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>validateAcyclic</name>
      <anchorfile>structsauce_1_1internal_1_1_resolved_binding.html</anchorfile>
      <anchor>a5e25c5c19a2a2cec8a0f70a60c1cfeba</anchor>
      <arglist>(sauce::shared_ptr&lt; Injector &gt;, TypeIds &amp;) const </arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual IfacePtr</type>
      <name>get</name>
      <anchorfile>structsauce_1_1internal_1_1_resolved_binding.html</anchorfile>
      <anchor>a06fb04d3ee1d8d42d7f93f20a205ff25</anchor>
      <arglist>(BindingPtr, sauce::shared_ptr&lt; Injector &gt;) const =0</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>eagerlyProvide</name>
      <anchorfile>structsauce_1_1internal_1_1_opaque_binding.html</anchorfile>
      <anchor>a3081d7a8b766e3e6282cb78ea3170e27</anchor>
      <arglist>(OpaqueBindingPtr, sauce::shared_ptr&lt; Injector &gt;) const </arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>validateAcyclicHelper</name>
      <anchorfile>classsauce_1_1internal_1_1_injector_friend.html</anchorfile>
      <anchor>a8040be092897ad90cffa1c5a69351eaa</anchor>
      <arglist>(InjectorPtr injector, TypeIds &amp;ids) const </arglist>
    </member>
    <member kind="function" protection="protected">
      <type>Key&lt; Dependency &gt;::Ptr</type>
      <name>getHelper</name>
      <anchorfile>classsauce_1_1internal_1_1_injector_friend.html</anchorfile>
      <anchor>a56383b672d8dcb945f33df0f406ef3de</anchor>
      <arglist>(InjectorPtr injector) const </arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>cache</name>
      <anchorfile>classsauce_1_1internal_1_1_injector_friend.html</anchorfile>
      <anchor>ade3dae24aba63755f841cc0a5f414620</anchor>
      <arglist>(InjectorPtr injector, typename Key&lt; Dependency &gt;::Ptr pointer, i::TypeId scope) const </arglist>
    </member>
    <member kind="function" protection="protected">
      <type>bool</type>
      <name>probe</name>
      <anchorfile>classsauce_1_1internal_1_1_injector_friend.html</anchorfile>
      <anchor>a90c25459558bfe86e4bb59e12137718b</anchor>
      <arglist>(InjectorPtr injector, typename Key&lt; Dependency &gt;::Ptr &amp;out, i::TypeId scope) const </arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>sauce::internal::Key</name>
    <filename>structsauce_1_1internal_1_1_key.html</filename>
    <templarg>Iface_</templarg>
    <member kind="typedef">
      <type>Iface_</type>
      <name>Iface</name>
      <anchorfile>structsauce_1_1internal_1_1_key.html</anchorfile>
      <anchor>a69cee0b09aef233e27af2efdfb5fd9d3</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>sauce::shared_ptr&lt; Iface &gt;</type>
      <name>Ptr</name>
      <anchorfile>structsauce_1_1internal_1_1_key.html</anchorfile>
      <anchor>a96b8061063b9c74f16f02eabb3578d34</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Unnamed</type>
      <name>Name</name>
      <anchorfile>structsauce_1_1internal_1_1_key.html</anchorfile>
      <anchor>ab590b178f9448f6b3950d7f7fa261852</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Named&lt; Iface, Name &gt;</type>
      <name>Normalized</name>
      <anchorfile>structsauce_1_1internal_1_1_key.html</anchorfile>
      <anchor>a584cfd2a51f7f2e5875ad39502bf72a0</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>sauce::internal::Key&lt; Iface_ &amp; &gt;</name>
    <filename>structsauce_1_1internal_1_1_key_3_01_iface___01_6_01_4.html</filename>
    <templarg></templarg>
    <member kind="typedef">
      <type>Iface_</type>
      <name>Iface</name>
      <anchorfile>structsauce_1_1internal_1_1_key_3_01_iface___01_6_01_4.html</anchorfile>
      <anchor>a4a857c4b0714a9439cad6a6d7597c1ad</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>sauce::shared_ptr&lt; Iface &gt;</type>
      <name>Ptr</name>
      <anchorfile>structsauce_1_1internal_1_1_key_3_01_iface___01_6_01_4.html</anchorfile>
      <anchor>a0bfa3176066dad8f8e258f8456603ee6</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Unnamed</type>
      <name>Name</name>
      <anchorfile>structsauce_1_1internal_1_1_key_3_01_iface___01_6_01_4.html</anchorfile>
      <anchor>ae9edb1888931c2a38b936b5a5b152e8a</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Named&lt; Iface, Name &gt;</type>
      <name>Normalized</name>
      <anchorfile>structsauce_1_1internal_1_1_key_3_01_iface___01_6_01_4.html</anchorfile>
      <anchor>afb0d45819283970b69e8f0b20e632121</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>sauce::internal::Key&lt; Named&lt; Iface_, Name_ &gt; &gt;</name>
    <filename>structsauce_1_1internal_1_1_key_3_01_named_3_01_iface___00_01_name___01_4_01_4.html</filename>
    <templarg></templarg>
    <templarg></templarg>
    <member kind="typedef">
      <type>Iface_</type>
      <name>Iface</name>
      <anchorfile>structsauce_1_1internal_1_1_key_3_01_named_3_01_iface___00_01_name___01_4_01_4.html</anchorfile>
      <anchor>a89f4232172c9f2cfad60244d07a98df2</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>sauce::shared_ptr&lt; Iface &gt;</type>
      <name>Ptr</name>
      <anchorfile>structsauce_1_1internal_1_1_key_3_01_named_3_01_iface___00_01_name___01_4_01_4.html</anchorfile>
      <anchor>a117b62e714e674e7e7269842c834aecf</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Name_</type>
      <name>Name</name>
      <anchorfile>structsauce_1_1internal_1_1_key_3_01_named_3_01_iface___00_01_name___01_4_01_4.html</anchorfile>
      <anchor>a5baf343cfbff4433e6bb1276ffd89cb4</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Named&lt; Iface, Name &gt;</type>
      <name>Normalized</name>
      <anchorfile>structsauce_1_1internal_1_1_key_3_01_named_3_01_iface___00_01_name___01_4_01_4.html</anchorfile>
      <anchor>aca300b37c4d717f42d34d73a9915c8cd</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>sauce::internal::Lock</name>
    <filename>structsauce_1_1internal_1_1_lock.html</filename>
  </compound>
  <compound kind="struct">
    <name>sauce::internal::NullLock</name>
    <filename>structsauce_1_1internal_1_1_null_lock.html</filename>
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
  <compound kind="struct">
    <name>sauce::internal::LockFactory</name>
    <filename>structsauce_1_1internal_1_1_lock_factory.html</filename>
    <member kind="function" virtualness="pure">
      <type>virtual sauce::auto_ptr&lt; Lock &gt;</type>
      <name>createLock</name>
      <anchorfile>structsauce_1_1internal_1_1_lock_factory.html</anchorfile>
      <anchor>a317f83a2c405fed7a5e958c345f56c76</anchor>
      <arglist>()=0</arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>sauce::internal::NullLockFactory</name>
    <filename>structsauce_1_1internal_1_1_null_lock_factory.html</filename>
    <base>sauce::internal::LockFactory</base>
    <member kind="function">
      <type>sauce::auto_ptr&lt; Lock &gt;</type>
      <name>createLock</name>
      <anchorfile>structsauce_1_1internal_1_1_null_lock_factory.html</anchorfile>
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
  <compound kind="struct">
    <name>sauce::internal::OpaqueBinding</name>
    <filename>structsauce_1_1internal_1_1_opaque_binding.html</filename>
    <member kind="function" virtualness="pure">
      <type>virtual TypeId</type>
      <name>getKey</name>
      <anchorfile>structsauce_1_1internal_1_1_opaque_binding.html</anchorfile>
      <anchor>a80f94571c2956b36656c33605267e3e1</anchor>
      <arglist>() const =0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual TypeId</type>
      <name>getScopeKey</name>
      <anchorfile>structsauce_1_1internal_1_1_opaque_binding.html</anchorfile>
      <anchor>afcab860863e3fdec961ff24704c45217</anchor>
      <arglist>() const =0</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>eagerlyProvide</name>
      <anchorfile>structsauce_1_1internal_1_1_opaque_binding.html</anchorfile>
      <anchor>a3081d7a8b766e3e6282cb78ea3170e27</anchor>
      <arglist>(OpaqueBindingPtr, sauce::shared_ptr&lt; Injector &gt;) const </arglist>
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
  <compound kind="struct">
    <name>sauce::internal::ResolvedBinding</name>
    <filename>structsauce_1_1internal_1_1_resolved_binding.html</filename>
    <templarg>Dependency</templarg>
    <base>sauce::internal::OpaqueBinding</base>
    <member kind="typedef">
      <type>Key&lt; Dependency &gt;::Ptr</type>
      <name>IfacePtr</name>
      <anchorfile>structsauce_1_1internal_1_1_resolved_binding.html</anchorfile>
      <anchor>a2a0f836c59d54bed1a9a61820dc42bd5</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>sauce::shared_ptr&lt; ResolvedBinding&lt; Dependency &gt; &gt;</type>
      <name>BindingPtr</name>
      <anchorfile>structsauce_1_1internal_1_1_resolved_binding.html</anchorfile>
      <anchor>a8da57e5d6d2367e6d9c22603582550f0</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>TypeId</type>
      <name>getKey</name>
      <anchorfile>structsauce_1_1internal_1_1_resolved_binding.html</anchorfile>
      <anchor>a788b6d884c366c7968b0c0f4fb590fc0</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>validateAcyclic</name>
      <anchorfile>structsauce_1_1internal_1_1_resolved_binding.html</anchorfile>
      <anchor>a5e25c5c19a2a2cec8a0f70a60c1cfeba</anchor>
      <arglist>(sauce::shared_ptr&lt; Injector &gt;, TypeIds &amp;) const </arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual IfacePtr</type>
      <name>get</name>
      <anchorfile>structsauce_1_1internal_1_1_resolved_binding.html</anchorfile>
      <anchor>a06fb04d3ee1d8d42d7f93f20a205ff25</anchor>
      <arglist>(BindingPtr, sauce::shared_ptr&lt; Injector &gt;) const =0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual TypeId</type>
      <name>getScopeKey</name>
      <anchorfile>structsauce_1_1internal_1_1_opaque_binding.html</anchorfile>
      <anchor>afcab860863e3fdec961ff24704c45217</anchor>
      <arglist>() const =0</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>eagerlyProvide</name>
      <anchorfile>structsauce_1_1internal_1_1_opaque_binding.html</anchorfile>
      <anchor>a3081d7a8b766e3e6282cb78ea3170e27</anchor>
      <arglist>(OpaqueBindingPtr, sauce::shared_ptr&lt; Injector &gt;) const </arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>sauce::internal::ScopeCacheLineDeleter</name>
    <filename>structsauce_1_1internal_1_1_scope_cache_line_deleter.html</filename>
    <templarg></templarg>
    <member kind="typedef">
      <type>Key&lt; Dependency &gt;::Ptr</type>
      <name>SmartPtr</name>
      <anchorfile>structsauce_1_1internal_1_1_scope_cache_line_deleter.html</anchorfile>
      <anchor>aa49d14ae66c7e516b0256b585fecff86</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>operator()</name>
      <anchorfile>structsauce_1_1internal_1_1_scope_cache_line_deleter.html</anchorfile>
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
    <name>sauce::internal::TypeId</name>
    <filename>classsauce_1_1internal_1_1_type_id.html</filename>
    <member kind="function">
      <type>bool</type>
      <name>operator==</name>
      <anchorfile>classsauce_1_1internal_1_1_type_id.html</anchorfile>
      <anchor>ab97b0e085a6af6b025514d136e5bb66c</anchor>
      <arglist>(TypeId const &amp;id) const </arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>operator!=</name>
      <anchorfile>classsauce_1_1internal_1_1_type_id.html</anchorfile>
      <anchor>ab433f306e06aeffe1af0e6d93b924143</anchor>
      <arglist>(TypeId const &amp;id) const </arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>operator&lt;</name>
      <anchorfile>classsauce_1_1internal_1_1_type_id.html</anchorfile>
      <anchor>a7f55d50769c93278e315fdcc35a2c4d5</anchor>
      <arglist>(TypeId const &amp;id) const </arglist>
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
      <anchor>ac372508c3ffd9d8673dd89e69f27f09d</anchor>
      <arglist>(TypeSignature const &amp;signature)</arglist>
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
    <member kind="function">
      <type>bool</type>
      <name>operator==</name>
      <anchorfile>classsauce_1_1internal_1_1_type_id.html</anchorfile>
      <anchor>ab97b0e085a6af6b025514d136e5bb66c</anchor>
      <arglist>(TypeId const &amp;id) const </arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>operator!=</name>
      <anchorfile>classsauce_1_1internal_1_1_type_id.html</anchorfile>
      <anchor>ab433f306e06aeffe1af0e6d93b924143</anchor>
      <arglist>(TypeId const &amp;id) const </arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>operator&lt;</name>
      <anchorfile>classsauce_1_1internal_1_1_type_id.html</anchorfile>
      <anchor>a7f55d50769c93278e315fdcc35a2c4d5</anchor>
      <arglist>(TypeId const &amp;id) const </arglist>
    </member>
    <member kind="friend" protection="private">
      <type>friend TypeId</type>
      <name>typeIdOf</name>
      <anchorfile>classsauce_1_1internal_1_1_resolved_type_id.html</anchorfile>
      <anchor>a2158a12246aaa36ebc981948d4e7765b</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" protection="protected">
      <type></type>
      <name>TypeId</name>
      <anchorfile>classsauce_1_1internal_1_1_type_id.html</anchorfile>
      <anchor>ac372508c3ffd9d8673dd89e69f27f09d</anchor>
      <arglist>(TypeSignature const &amp;signature)</arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>sauce::internal::ProviderFriend</name>
    <filename>structsauce_1_1internal_1_1_provider_friend.html</filename>
    <member kind="function">
      <type>void</type>
      <name>setSelf</name>
      <anchorfile>structsauce_1_1internal_1_1_provider_friend.html</anchorfile>
      <anchor>a335c721a6d2c83e11d8498dada73d4c6</anchor>
      <arglist>(typename Key&lt; Named&lt; Provider&lt; ProvidedDependency &gt;, Name &gt; &gt;::Ptr ptr) const </arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>sauce::internal::injections::ImplicitProvider</name>
    <filename>classsauce_1_1internal_1_1injections_1_1_implicit_provider.html</filename>
    <templarg></templarg>
    <templarg></templarg>
    <base>sauce::Provider</base>
    <member kind="function">
      <type>Key&lt; Dependency &gt;::Ptr</type>
      <name>get</name>
      <anchorfile>classsauce_1_1internal_1_1injections_1_1_implicit_provider.html</anchorfile>
      <anchor>a023bc52cd1c112ea408c26c6cb17a53b</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="friend" protection="private">
      <type>friend class</type>
      <name>ImplicitProviderInjection&lt; Dependency, Name &gt;</name>
      <anchorfile>classsauce_1_1internal_1_1injections_1_1_implicit_provider.html</anchorfile>
      <anchor>a4e4a8fdc3e83c34a74904df2955ac4f1</anchor>
      <arglist></arglist>
    </member>
    <member kind="function" protection="protected">
      <type>sauce::shared_ptr&lt; Provider&lt; Dependency &gt; &gt;</type>
      <name>getSelf</name>
      <anchorfile>classsauce_1_1_provider.html</anchorfile>
      <anchor>a9fac62da0c899b2b8ae4a55dc22c5b90</anchor>
      <arglist>() const </arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>sauce::internal::injections::ImplicitProviderInjection</name>
    <filename>classsauce_1_1internal_1_1injections_1_1_implicit_provider_injection.html</filename>
    <templarg></templarg>
    <templarg></templarg>
    <base>ProvidingInjection&lt; Named&lt; Provider&lt; Dependency &gt;, Name &gt; &gt;</base>
    <base>sauce::internal::ProviderFriend</base>
    <member kind="typedef">
      <type>ProvidingInjection&lt; ProviderDependency &gt;::InjectionPtr</type>
      <name>InjectionPtr</name>
      <anchorfile>classsauce_1_1internal_1_1injections_1_1_implicit_provider_injection.html</anchorfile>
      <anchor>a16eb338837df110deace441bd5c65718</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Key&lt; Named&lt; Provider&lt; Dependency &gt;, Name &gt; &gt;::Normalized</type>
      <name>Dependency</name>
      <anchorfile>structsauce_1_1internal_1_1injections_1_1_providing_injection.html</anchorfile>
      <anchor>aff75cf1c0b73a87bbaf239af199fab93</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Key&lt; Dependency &gt;::Ptr</type>
      <name>IfacePtr</name>
      <anchorfile>structsauce_1_1internal_1_1injections_1_1_providing_injection.html</anchorfile>
      <anchor>adee2cef8158f4605a10618f8a921967a</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>ImplicitProviderInjection</name>
      <anchorfile>classsauce_1_1internal_1_1injections_1_1_implicit_provider_injection.html</anchorfile>
      <anchor>a427510085eae89ffd4a668bf7a59d564</anchor>
      <arglist>(ProvidedBindingPtr providedBinding)</arglist>
    </member>
    <member kind="function">
      <type>ProviderPtr</type>
      <name>provide</name>
      <anchorfile>classsauce_1_1internal_1_1injections_1_1_implicit_provider_injection.html</anchorfile>
      <anchor>a1a02688fb82e555d42dba0d5075360b2</anchor>
      <arglist>(InjectionPtr, InjectorPtr injector) const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>validateAcyclic</name>
      <anchorfile>structsauce_1_1internal_1_1injections_1_1_providing_injection.html</anchorfile>
      <anchor>a47efd1c7eb03bf28f692d9984d4b3b75</anchor>
      <arglist>(InjectorPtr, TypeIds &amp;) const</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setSelf</name>
      <anchorfile>structsauce_1_1internal_1_1_provider_friend.html</anchorfile>
      <anchor>a335c721a6d2c83e11d8498dada73d4c6</anchor>
      <arglist>(typename Key&lt; Named&lt; Provider&lt; ProvidedDependency &gt;, Name &gt; &gt;::Ptr ptr) const </arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>sauce::internal::injections::InjectorInjection</name>
    <filename>structsauce_1_1internal_1_1injections_1_1_injector_injection.html</filename>
    <base>ProvidingInjection&lt; Key&lt; Injector &gt;::Normalized &gt;</base>
    <member kind="function">
      <type>InjectorPtr</type>
      <name>provide</name>
      <anchorfile>structsauce_1_1internal_1_1injections_1_1_injector_injection.html</anchorfile>
      <anchor>a05f64ca3701bc84671b450a83f27418f</anchor>
      <arglist>(InjectionPtr, InjectorPtr injector) const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>validateAcyclic</name>
      <anchorfile>structsauce_1_1internal_1_1injections_1_1_providing_injection.html</anchorfile>
      <anchor>a47efd1c7eb03bf28f692d9984d4b3b75</anchor>
      <arglist>(InjectorPtr, TypeIds &amp;) const</arglist>
    </member>
    <member kind="typedef">
      <type>Key&lt; Key&lt; Injector &gt;::Normalized &gt;::Normalized</type>
      <name>Dependency</name>
      <anchorfile>structsauce_1_1internal_1_1injections_1_1_providing_injection.html</anchorfile>
      <anchor>aff75cf1c0b73a87bbaf239af199fab93</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>sauce::shared_ptr&lt; ProvidingInjection&lt; Dependency &gt; &gt;</type>
      <name>InjectionPtr</name>
      <anchorfile>structsauce_1_1internal_1_1injections_1_1_providing_injection.html</anchorfile>
      <anchor>a060d79783c9aa06d3b4b14b734d85522</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Key&lt; Dependency &gt;::Ptr</type>
      <name>IfacePtr</name>
      <anchorfile>structsauce_1_1internal_1_1injections_1_1_providing_injection.html</anchorfile>
      <anchor>adee2cef8158f4605a10618f8a921967a</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>sauce::internal::injections::NewInjection&lt; Dependency, Impl(), Allocator &gt;</name>
    <filename>classsauce_1_1internal_1_1injections_1_1_new_injection_3_01_dependency_00_01_impl_07_08_00_01_allocator_01_4.html</filename>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <base>ProvidingInjection&lt; Dependency &gt;</base>
    <member kind="typedef">
      <type>ProvidingInjection&lt; Dependency &gt;::InjectionPtr</type>
      <name>InjectionPtr</name>
      <anchorfile>classsauce_1_1internal_1_1injections_1_1_new_injection_3_01_dependency_00_01_impl_07_08_00_01_allocator_01_4.html</anchorfile>
      <anchor>a3124483d1df1582b24f459d51dfe6324</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Key&lt; Dependency &gt;::Normalized</type>
      <name>Dependency</name>
      <anchorfile>structsauce_1_1internal_1_1injections_1_1_providing_injection.html</anchorfile>
      <anchor>aff75cf1c0b73a87bbaf239af199fab93</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Key&lt; Dependency &gt;::Ptr</type>
      <name>IfacePtr</name>
      <anchorfile>structsauce_1_1internal_1_1injections_1_1_providing_injection.html</anchorfile>
      <anchor>adee2cef8158f4605a10618f8a921967a</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>Ptr</type>
      <name>provide</name>
      <anchorfile>classsauce_1_1internal_1_1injections_1_1_new_injection_3_01_dependency_00_01_impl_07_08_00_01_allocator_01_4.html</anchorfile>
      <anchor>a3a8829013bca9a775d8685eec10e50dc</anchor>
      <arglist>(InjectionPtr injection, InjectorPtr) const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>dispose</name>
      <anchorfile>classsauce_1_1internal_1_1injections_1_1_new_injection_3_01_dependency_00_01_impl_07_08_00_01_allocator_01_4.html</anchorfile>
      <anchor>ab003bd5c37cdf2192e93c6eb4772cdda</anchor>
      <arglist>(Iface *iface) const </arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual IfacePtr</type>
      <name>provide</name>
      <anchorfile>structsauce_1_1internal_1_1injections_1_1_providing_injection.html</anchorfile>
      <anchor>a8ec30f36c928cb517fa93cd69effd782</anchor>
      <arglist>(InjectionPtr, InjectorPtr) const =0</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>validateAcyclic</name>
      <anchorfile>structsauce_1_1internal_1_1injections_1_1_providing_injection.html</anchorfile>
      <anchor>a47efd1c7eb03bf28f692d9984d4b3b75</anchor>
      <arglist>(InjectorPtr, TypeIds &amp;) const</arglist>
    </member>
    <member kind="friend" protection="private">
      <type>friend class</type>
      <name>DisposalDeleter&lt; Iface, New &gt;</name>
      <anchorfile>classsauce_1_1internal_1_1injections_1_1_new_injection_3_01_dependency_00_01_impl_07_08_00_01_allocator_01_4.html</anchorfile>
      <anchor>a95cb0df2fe9c298eb93a4d28a7eaf1b2</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>sauce::internal::injections::NewInjection&lt; Dependency, Impl(A1), Allocator &gt;</name>
    <filename>classsauce_1_1internal_1_1injections_1_1_new_injection_3_01_dependency_00_01_impl_07_a1_08_00_01_allocator_01_4.html</filename>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <base>ProvidingInjection&lt; Dependency &gt;</base>
    <member kind="typedef">
      <type>ProvidingInjection&lt; Dependency &gt;::InjectionPtr</type>
      <name>InjectionPtr</name>
      <anchorfile>classsauce_1_1internal_1_1injections_1_1_new_injection_3_01_dependency_00_01_impl_07_a1_08_00_01_allocator_01_4.html</anchorfile>
      <anchor>a0c086c2963e39f6ef870ccd5acc37e9a</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Key&lt; Dependency &gt;::Normalized</type>
      <name>Dependency</name>
      <anchorfile>structsauce_1_1internal_1_1injections_1_1_providing_injection.html</anchorfile>
      <anchor>aff75cf1c0b73a87bbaf239af199fab93</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Key&lt; Dependency &gt;::Ptr</type>
      <name>IfacePtr</name>
      <anchorfile>structsauce_1_1internal_1_1injections_1_1_providing_injection.html</anchorfile>
      <anchor>adee2cef8158f4605a10618f8a921967a</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>Ptr</type>
      <name>provide</name>
      <anchorfile>classsauce_1_1internal_1_1injections_1_1_new_injection_3_01_dependency_00_01_impl_07_a1_08_00_01_allocator_01_4.html</anchorfile>
      <anchor>aeb805adb4d8e69ab08369c49eea6dbd8</anchor>
      <arglist>(InjectionPtr injection, InjectorPtr injector) const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>validateAcyclic</name>
      <anchorfile>classsauce_1_1internal_1_1injections_1_1_new_injection_3_01_dependency_00_01_impl_07_a1_08_00_01_allocator_01_4.html</anchorfile>
      <anchor>a45786249b55be620c164bca93017c5ff</anchor>
      <arglist>(InjectorPtr injector, TypeIds &amp;ids) const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>dispose</name>
      <anchorfile>classsauce_1_1internal_1_1injections_1_1_new_injection_3_01_dependency_00_01_impl_07_a1_08_00_01_allocator_01_4.html</anchorfile>
      <anchor>a6bfd831329ced003f52a9965a4cdd30d</anchor>
      <arglist>(Iface *iface) const </arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual IfacePtr</type>
      <name>provide</name>
      <anchorfile>structsauce_1_1internal_1_1injections_1_1_providing_injection.html</anchorfile>
      <anchor>a8ec30f36c928cb517fa93cd69effd782</anchor>
      <arglist>(InjectionPtr, InjectorPtr) const =0</arglist>
    </member>
    <member kind="friend" protection="private">
      <type>friend class</type>
      <name>DisposalDeleter&lt; Iface, New &gt;</name>
      <anchorfile>classsauce_1_1internal_1_1injections_1_1_new_injection_3_01_dependency_00_01_impl_07_a1_08_00_01_allocator_01_4.html</anchorfile>
      <anchor>a95cb0df2fe9c298eb93a4d28a7eaf1b2</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>sauce::internal::injections::NewInjection&lt; Dependency, Impl(A1, A2), Allocator &gt;</name>
    <filename>classsauce_1_1internal_1_1injections_1_1_new_injection_3_01_dependency_00_01_impl_07_a1_00_01_a2_08_00_01_allocator_01_4.html</filename>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <base>ProvidingInjection&lt; Dependency &gt;</base>
    <member kind="typedef">
      <type>ProvidingInjection&lt; Dependency &gt;::InjectionPtr</type>
      <name>InjectionPtr</name>
      <anchorfile>classsauce_1_1internal_1_1injections_1_1_new_injection_3_01_dependency_00_01_impl_07_a1_00_01_a2_08_00_01_allocator_01_4.html</anchorfile>
      <anchor>a2ab4a3525b8ed17dc919eaeb20a8ebb3</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Key&lt; Dependency &gt;::Normalized</type>
      <name>Dependency</name>
      <anchorfile>structsauce_1_1internal_1_1injections_1_1_providing_injection.html</anchorfile>
      <anchor>aff75cf1c0b73a87bbaf239af199fab93</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Key&lt; Dependency &gt;::Ptr</type>
      <name>IfacePtr</name>
      <anchorfile>structsauce_1_1internal_1_1injections_1_1_providing_injection.html</anchorfile>
      <anchor>adee2cef8158f4605a10618f8a921967a</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>Ptr</type>
      <name>provide</name>
      <anchorfile>classsauce_1_1internal_1_1injections_1_1_new_injection_3_01_dependency_00_01_impl_07_a1_00_01_a2_08_00_01_allocator_01_4.html</anchorfile>
      <anchor>ab0b85c0f2815f3e4e1c46b98a6a50154</anchor>
      <arglist>(InjectionPtr injection, InjectorPtr injector) const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>validateAcyclic</name>
      <anchorfile>classsauce_1_1internal_1_1injections_1_1_new_injection_3_01_dependency_00_01_impl_07_a1_00_01_a2_08_00_01_allocator_01_4.html</anchorfile>
      <anchor>a153fb2078eae40d57292cd4bfb411139</anchor>
      <arglist>(InjectorPtr injector, TypeIds &amp;ids) const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>dispose</name>
      <anchorfile>classsauce_1_1internal_1_1injections_1_1_new_injection_3_01_dependency_00_01_impl_07_a1_00_01_a2_08_00_01_allocator_01_4.html</anchorfile>
      <anchor>a872720cdfcaaaeec79aa6ee20f86a1e3</anchor>
      <arglist>(Iface *iface) const </arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual IfacePtr</type>
      <name>provide</name>
      <anchorfile>structsauce_1_1internal_1_1injections_1_1_providing_injection.html</anchorfile>
      <anchor>a8ec30f36c928cb517fa93cd69effd782</anchor>
      <arglist>(InjectionPtr, InjectorPtr) const =0</arglist>
    </member>
    <member kind="friend" protection="private">
      <type>friend class</type>
      <name>DisposalDeleter&lt; Iface, New &gt;</name>
      <anchorfile>classsauce_1_1internal_1_1injections_1_1_new_injection_3_01_dependency_00_01_impl_07_a1_00_01_a2_08_00_01_allocator_01_4.html</anchorfile>
      <anchor>a95cb0df2fe9c298eb93a4d28a7eaf1b2</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>sauce::internal::injections::NewInjection&lt; Dependency, Impl(A1, A2, A3), Allocator &gt;</name>
    <filename>classsauce_1_1internal_1_1injections_1_1_new_injection_3_01_dependency_00_01_impl_07_a1_00_01_a2d3529cd04a6d8a36dcc15286d2912a95.html</filename>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <base>ProvidingInjection&lt; Dependency &gt;</base>
    <member kind="typedef">
      <type>ProvidingInjection&lt; Dependency &gt;::InjectionPtr</type>
      <name>InjectionPtr</name>
      <anchorfile>classsauce_1_1internal_1_1injections_1_1_new_injection_3_01_dependency_00_01_impl_07_a1_00_01_a2d3529cd04a6d8a36dcc15286d2912a95.html</anchorfile>
      <anchor>ae4804cea4846dbe212dd4047e03fd777</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Key&lt; Dependency &gt;::Normalized</type>
      <name>Dependency</name>
      <anchorfile>structsauce_1_1internal_1_1injections_1_1_providing_injection.html</anchorfile>
      <anchor>aff75cf1c0b73a87bbaf239af199fab93</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Key&lt; Dependency &gt;::Ptr</type>
      <name>IfacePtr</name>
      <anchorfile>structsauce_1_1internal_1_1injections_1_1_providing_injection.html</anchorfile>
      <anchor>adee2cef8158f4605a10618f8a921967a</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>Ptr</type>
      <name>provide</name>
      <anchorfile>classsauce_1_1internal_1_1injections_1_1_new_injection_3_01_dependency_00_01_impl_07_a1_00_01_a2d3529cd04a6d8a36dcc15286d2912a95.html</anchorfile>
      <anchor>a2bc94f8dfa15f5888b3da237b4862baa</anchor>
      <arglist>(InjectionPtr injection, InjectorPtr injector) const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>validateAcyclic</name>
      <anchorfile>classsauce_1_1internal_1_1injections_1_1_new_injection_3_01_dependency_00_01_impl_07_a1_00_01_a2d3529cd04a6d8a36dcc15286d2912a95.html</anchorfile>
      <anchor>aaa5f94327381c23706ce965d5f63f14d</anchor>
      <arglist>(InjectorPtr injector, TypeIds &amp;ids) const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>dispose</name>
      <anchorfile>classsauce_1_1internal_1_1injections_1_1_new_injection_3_01_dependency_00_01_impl_07_a1_00_01_a2d3529cd04a6d8a36dcc15286d2912a95.html</anchorfile>
      <anchor>acf88d4c948f2b8900b0f844ed7594bc9</anchor>
      <arglist>(Iface *iface) const </arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual IfacePtr</type>
      <name>provide</name>
      <anchorfile>structsauce_1_1internal_1_1injections_1_1_providing_injection.html</anchorfile>
      <anchor>a8ec30f36c928cb517fa93cd69effd782</anchor>
      <arglist>(InjectionPtr, InjectorPtr) const =0</arglist>
    </member>
    <member kind="friend" protection="private">
      <type>friend class</type>
      <name>DisposalDeleter&lt; Iface, New &gt;</name>
      <anchorfile>classsauce_1_1internal_1_1injections_1_1_new_injection_3_01_dependency_00_01_impl_07_a1_00_01_a2d3529cd04a6d8a36dcc15286d2912a95.html</anchorfile>
      <anchor>a95cb0df2fe9c298eb93a4d28a7eaf1b2</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>sauce::internal::injections::NewInjection&lt; Dependency, Impl(A1, A2, A3, A4), Allocator &gt;</name>
    <filename>classsauce_1_1internal_1_1injections_1_1_new_injection_3_01_dependency_00_01_impl_07_a1_00_01_a2109401f0b2ba888ac07f00328c841d4a.html</filename>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <base>ProvidingInjection&lt; Dependency &gt;</base>
    <member kind="typedef">
      <type>ProvidingInjection&lt; Dependency &gt;::InjectionPtr</type>
      <name>InjectionPtr</name>
      <anchorfile>classsauce_1_1internal_1_1injections_1_1_new_injection_3_01_dependency_00_01_impl_07_a1_00_01_a2109401f0b2ba888ac07f00328c841d4a.html</anchorfile>
      <anchor>ac8f7df274084d77d256682457c9247b1</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Key&lt; Dependency &gt;::Normalized</type>
      <name>Dependency</name>
      <anchorfile>structsauce_1_1internal_1_1injections_1_1_providing_injection.html</anchorfile>
      <anchor>aff75cf1c0b73a87bbaf239af199fab93</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Key&lt; Dependency &gt;::Ptr</type>
      <name>IfacePtr</name>
      <anchorfile>structsauce_1_1internal_1_1injections_1_1_providing_injection.html</anchorfile>
      <anchor>adee2cef8158f4605a10618f8a921967a</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>Ptr</type>
      <name>provide</name>
      <anchorfile>classsauce_1_1internal_1_1injections_1_1_new_injection_3_01_dependency_00_01_impl_07_a1_00_01_a2109401f0b2ba888ac07f00328c841d4a.html</anchorfile>
      <anchor>a8c56feb753dc35d61b171537cd24e0ae</anchor>
      <arglist>(InjectionPtr injection, InjectorPtr injector) const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>validateAcyclic</name>
      <anchorfile>classsauce_1_1internal_1_1injections_1_1_new_injection_3_01_dependency_00_01_impl_07_a1_00_01_a2109401f0b2ba888ac07f00328c841d4a.html</anchorfile>
      <anchor>af2cacecc96428e1539c38467ccc858f8</anchor>
      <arglist>(InjectorPtr injector, TypeIds &amp;ids) const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>dispose</name>
      <anchorfile>classsauce_1_1internal_1_1injections_1_1_new_injection_3_01_dependency_00_01_impl_07_a1_00_01_a2109401f0b2ba888ac07f00328c841d4a.html</anchorfile>
      <anchor>a946e12e860e4772365808c72f0cbf8ad</anchor>
      <arglist>(Iface *iface) const </arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual IfacePtr</type>
      <name>provide</name>
      <anchorfile>structsauce_1_1internal_1_1injections_1_1_providing_injection.html</anchorfile>
      <anchor>a8ec30f36c928cb517fa93cd69effd782</anchor>
      <arglist>(InjectionPtr, InjectorPtr) const =0</arglist>
    </member>
    <member kind="friend" protection="private">
      <type>friend class</type>
      <name>DisposalDeleter&lt; Iface, New &gt;</name>
      <anchorfile>classsauce_1_1internal_1_1injections_1_1_new_injection_3_01_dependency_00_01_impl_07_a1_00_01_a2109401f0b2ba888ac07f00328c841d4a.html</anchorfile>
      <anchor>a95cb0df2fe9c298eb93a4d28a7eaf1b2</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>sauce::internal::injections::NewInjection&lt; Dependency, Impl(A1, A2, A3, A4, A5), Allocator &gt;</name>
    <filename>classsauce_1_1internal_1_1injections_1_1_new_injection_3_01_dependency_00_01_impl_07_a1_00_01_a2eb171240d559c79b8b0f608e1da3ff21.html</filename>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <base>ProvidingInjection&lt; Dependency &gt;</base>
    <member kind="typedef">
      <type>ProvidingInjection&lt; Dependency &gt;::InjectionPtr</type>
      <name>InjectionPtr</name>
      <anchorfile>classsauce_1_1internal_1_1injections_1_1_new_injection_3_01_dependency_00_01_impl_07_a1_00_01_a2eb171240d559c79b8b0f608e1da3ff21.html</anchorfile>
      <anchor>a49905b221db61f511add978bdda9534b</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Key&lt; Dependency &gt;::Normalized</type>
      <name>Dependency</name>
      <anchorfile>structsauce_1_1internal_1_1injections_1_1_providing_injection.html</anchorfile>
      <anchor>aff75cf1c0b73a87bbaf239af199fab93</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Key&lt; Dependency &gt;::Ptr</type>
      <name>IfacePtr</name>
      <anchorfile>structsauce_1_1internal_1_1injections_1_1_providing_injection.html</anchorfile>
      <anchor>adee2cef8158f4605a10618f8a921967a</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>Ptr</type>
      <name>provide</name>
      <anchorfile>classsauce_1_1internal_1_1injections_1_1_new_injection_3_01_dependency_00_01_impl_07_a1_00_01_a2eb171240d559c79b8b0f608e1da3ff21.html</anchorfile>
      <anchor>a1a1a8c549e6a4a8d4e040445a257be5e</anchor>
      <arglist>(InjectionPtr injection, InjectorPtr injector) const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>validateAcyclic</name>
      <anchorfile>classsauce_1_1internal_1_1injections_1_1_new_injection_3_01_dependency_00_01_impl_07_a1_00_01_a2eb171240d559c79b8b0f608e1da3ff21.html</anchorfile>
      <anchor>ae95a7a4c107e52f456f2c27b76d05349</anchor>
      <arglist>(InjectorPtr injector, TypeIds &amp;ids) const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>dispose</name>
      <anchorfile>classsauce_1_1internal_1_1injections_1_1_new_injection_3_01_dependency_00_01_impl_07_a1_00_01_a2eb171240d559c79b8b0f608e1da3ff21.html</anchorfile>
      <anchor>a11d9fff993f1b09abd11a32f0ba0b546</anchor>
      <arglist>(Iface *iface) const </arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual IfacePtr</type>
      <name>provide</name>
      <anchorfile>structsauce_1_1internal_1_1injections_1_1_providing_injection.html</anchorfile>
      <anchor>a8ec30f36c928cb517fa93cd69effd782</anchor>
      <arglist>(InjectionPtr, InjectorPtr) const =0</arglist>
    </member>
    <member kind="friend" protection="private">
      <type>friend class</type>
      <name>DisposalDeleter&lt; Iface, New &gt;</name>
      <anchorfile>classsauce_1_1internal_1_1injections_1_1_new_injection_3_01_dependency_00_01_impl_07_a1_00_01_a2eb171240d559c79b8b0f608e1da3ff21.html</anchorfile>
      <anchor>a95cb0df2fe9c298eb93a4d28a7eaf1b2</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>sauce::internal::injections::NewInjection&lt; Dependency, Impl(A1, A2, A3, A4, A5, A6), Allocator &gt;</name>
    <filename>classsauce_1_1internal_1_1injections_1_1_new_injection_3_01_dependency_00_01_impl_07_a1_00_01_a25bad68950b369ca6ccd09c77e3519aae.html</filename>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <base>ProvidingInjection&lt; Dependency &gt;</base>
    <member kind="typedef">
      <type>ProvidingInjection&lt; Dependency &gt;::InjectionPtr</type>
      <name>InjectionPtr</name>
      <anchorfile>classsauce_1_1internal_1_1injections_1_1_new_injection_3_01_dependency_00_01_impl_07_a1_00_01_a25bad68950b369ca6ccd09c77e3519aae.html</anchorfile>
      <anchor>a79e4c30798264051da49c0ee3d909275</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Key&lt; Dependency &gt;::Normalized</type>
      <name>Dependency</name>
      <anchorfile>structsauce_1_1internal_1_1injections_1_1_providing_injection.html</anchorfile>
      <anchor>aff75cf1c0b73a87bbaf239af199fab93</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Key&lt; Dependency &gt;::Ptr</type>
      <name>IfacePtr</name>
      <anchorfile>structsauce_1_1internal_1_1injections_1_1_providing_injection.html</anchorfile>
      <anchor>adee2cef8158f4605a10618f8a921967a</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>Ptr</type>
      <name>provide</name>
      <anchorfile>classsauce_1_1internal_1_1injections_1_1_new_injection_3_01_dependency_00_01_impl_07_a1_00_01_a25bad68950b369ca6ccd09c77e3519aae.html</anchorfile>
      <anchor>aedacc8cf0e03d62162651f5069d8fecc</anchor>
      <arglist>(InjectionPtr injection, InjectorPtr injector) const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>validateAcyclic</name>
      <anchorfile>classsauce_1_1internal_1_1injections_1_1_new_injection_3_01_dependency_00_01_impl_07_a1_00_01_a25bad68950b369ca6ccd09c77e3519aae.html</anchorfile>
      <anchor>a3c9b0491bfbc127af23830180e311e93</anchor>
      <arglist>(InjectorPtr injector, TypeIds &amp;ids) const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>dispose</name>
      <anchorfile>classsauce_1_1internal_1_1injections_1_1_new_injection_3_01_dependency_00_01_impl_07_a1_00_01_a25bad68950b369ca6ccd09c77e3519aae.html</anchorfile>
      <anchor>aad8afd2f98de0be3b8e1987592ac3928</anchor>
      <arglist>(Iface *iface) const </arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual IfacePtr</type>
      <name>provide</name>
      <anchorfile>structsauce_1_1internal_1_1injections_1_1_providing_injection.html</anchorfile>
      <anchor>a8ec30f36c928cb517fa93cd69effd782</anchor>
      <arglist>(InjectionPtr, InjectorPtr) const =0</arglist>
    </member>
    <member kind="friend" protection="private">
      <type>friend class</type>
      <name>DisposalDeleter&lt; Iface, New &gt;</name>
      <anchorfile>classsauce_1_1internal_1_1injections_1_1_new_injection_3_01_dependency_00_01_impl_07_a1_00_01_a25bad68950b369ca6ccd09c77e3519aae.html</anchorfile>
      <anchor>a95cb0df2fe9c298eb93a4d28a7eaf1b2</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>sauce::internal::injections::NewInjection&lt; Dependency, Impl(A1, A2, A3, A4, A5, A6, A7), Allocator &gt;</name>
    <filename>classsauce_1_1internal_1_1injections_1_1_new_injection_3_01_dependency_00_01_impl_07_a1_00_01_a22e4a976ebde29a8e5b0000e6bffcf11b.html</filename>
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
    <base>ProvidingInjection&lt; Dependency &gt;</base>
    <member kind="typedef">
      <type>ProvidingInjection&lt; Dependency &gt;::InjectionPtr</type>
      <name>InjectionPtr</name>
      <anchorfile>classsauce_1_1internal_1_1injections_1_1_new_injection_3_01_dependency_00_01_impl_07_a1_00_01_a22e4a976ebde29a8e5b0000e6bffcf11b.html</anchorfile>
      <anchor>a227be2ca1f39e46c8d676a9de3a5669d</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Key&lt; Dependency &gt;::Normalized</type>
      <name>Dependency</name>
      <anchorfile>structsauce_1_1internal_1_1injections_1_1_providing_injection.html</anchorfile>
      <anchor>aff75cf1c0b73a87bbaf239af199fab93</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Key&lt; Dependency &gt;::Ptr</type>
      <name>IfacePtr</name>
      <anchorfile>structsauce_1_1internal_1_1injections_1_1_providing_injection.html</anchorfile>
      <anchor>adee2cef8158f4605a10618f8a921967a</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>Ptr</type>
      <name>provide</name>
      <anchorfile>classsauce_1_1internal_1_1injections_1_1_new_injection_3_01_dependency_00_01_impl_07_a1_00_01_a22e4a976ebde29a8e5b0000e6bffcf11b.html</anchorfile>
      <anchor>a45b5b3bb20ca4990bc3182f5f3e70b7a</anchor>
      <arglist>(InjectionPtr injection, InjectorPtr injector) const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>validateAcyclic</name>
      <anchorfile>classsauce_1_1internal_1_1injections_1_1_new_injection_3_01_dependency_00_01_impl_07_a1_00_01_a22e4a976ebde29a8e5b0000e6bffcf11b.html</anchorfile>
      <anchor>a902816775aa6d172d6564765d631bed1</anchor>
      <arglist>(InjectorPtr injector, TypeIds &amp;ids) const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>dispose</name>
      <anchorfile>classsauce_1_1internal_1_1injections_1_1_new_injection_3_01_dependency_00_01_impl_07_a1_00_01_a22e4a976ebde29a8e5b0000e6bffcf11b.html</anchorfile>
      <anchor>a7c63c3a80bb640b541dde6bb158a6e99</anchor>
      <arglist>(Iface *iface) const </arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual IfacePtr</type>
      <name>provide</name>
      <anchorfile>structsauce_1_1internal_1_1injections_1_1_providing_injection.html</anchorfile>
      <anchor>a8ec30f36c928cb517fa93cd69effd782</anchor>
      <arglist>(InjectionPtr, InjectorPtr) const =0</arglist>
    </member>
    <member kind="friend" protection="private">
      <type>friend class</type>
      <name>DisposalDeleter&lt; Iface, New &gt;</name>
      <anchorfile>classsauce_1_1internal_1_1injections_1_1_new_injection_3_01_dependency_00_01_impl_07_a1_00_01_a22e4a976ebde29a8e5b0000e6bffcf11b.html</anchorfile>
      <anchor>a95cb0df2fe9c298eb93a4d28a7eaf1b2</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>sauce::internal::injections::NewInjection&lt; Dependency, Impl(A1, A2, A3, A4, A5, A6, A7, A8), Allocator &gt;</name>
    <filename>classsauce_1_1internal_1_1injections_1_1_new_injection_3_01_dependency_00_01_impl_07_a1_00_01_a213b41edf4023c45941aff9cbdaa4d111.html</filename>
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
    <base>ProvidingInjection&lt; Dependency &gt;</base>
    <member kind="typedef">
      <type>ProvidingInjection&lt; Dependency &gt;::InjectionPtr</type>
      <name>InjectionPtr</name>
      <anchorfile>classsauce_1_1internal_1_1injections_1_1_new_injection_3_01_dependency_00_01_impl_07_a1_00_01_a213b41edf4023c45941aff9cbdaa4d111.html</anchorfile>
      <anchor>a6dde063e7dbfa6fb6f0bdd50df66fff5</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Key&lt; Dependency &gt;::Normalized</type>
      <name>Dependency</name>
      <anchorfile>structsauce_1_1internal_1_1injections_1_1_providing_injection.html</anchorfile>
      <anchor>aff75cf1c0b73a87bbaf239af199fab93</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Key&lt; Dependency &gt;::Ptr</type>
      <name>IfacePtr</name>
      <anchorfile>structsauce_1_1internal_1_1injections_1_1_providing_injection.html</anchorfile>
      <anchor>adee2cef8158f4605a10618f8a921967a</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>Ptr</type>
      <name>provide</name>
      <anchorfile>classsauce_1_1internal_1_1injections_1_1_new_injection_3_01_dependency_00_01_impl_07_a1_00_01_a213b41edf4023c45941aff9cbdaa4d111.html</anchorfile>
      <anchor>a58f8dc0b07c845e80e0b1b4538f715fb</anchor>
      <arglist>(InjectionPtr injection, InjectorPtr injector) const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>validateAcyclic</name>
      <anchorfile>classsauce_1_1internal_1_1injections_1_1_new_injection_3_01_dependency_00_01_impl_07_a1_00_01_a213b41edf4023c45941aff9cbdaa4d111.html</anchorfile>
      <anchor>aff397ce0a2b23a07376954e0fba84ae9</anchor>
      <arglist>(InjectorPtr injector, TypeIds &amp;ids) const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>dispose</name>
      <anchorfile>classsauce_1_1internal_1_1injections_1_1_new_injection_3_01_dependency_00_01_impl_07_a1_00_01_a213b41edf4023c45941aff9cbdaa4d111.html</anchorfile>
      <anchor>ac632b72a175064f944067300034e2a89</anchor>
      <arglist>(Iface *iface) const </arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual IfacePtr</type>
      <name>provide</name>
      <anchorfile>structsauce_1_1internal_1_1injections_1_1_providing_injection.html</anchorfile>
      <anchor>a8ec30f36c928cb517fa93cd69effd782</anchor>
      <arglist>(InjectionPtr, InjectorPtr) const =0</arglist>
    </member>
    <member kind="friend" protection="private">
      <type>friend class</type>
      <name>DisposalDeleter&lt; Iface, New &gt;</name>
      <anchorfile>classsauce_1_1internal_1_1injections_1_1_new_injection_3_01_dependency_00_01_impl_07_a1_00_01_a213b41edf4023c45941aff9cbdaa4d111.html</anchorfile>
      <anchor>a95cb0df2fe9c298eb93a4d28a7eaf1b2</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>sauce::internal::injections::NewInjection&lt; Dependency, Impl(A1, A2, A3, A4, A5, A6, A7, A8, A9), Allocator &gt;</name>
    <filename>classsauce_1_1internal_1_1injections_1_1_new_injection_3_01_dependency_00_01_impl_07_a1_00_01_a2d05322dd0eb9c74c6d3c986f80e73247.html</filename>
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
    <base>ProvidingInjection&lt; Dependency &gt;</base>
    <member kind="typedef">
      <type>ProvidingInjection&lt; Dependency &gt;::InjectionPtr</type>
      <name>InjectionPtr</name>
      <anchorfile>classsauce_1_1internal_1_1injections_1_1_new_injection_3_01_dependency_00_01_impl_07_a1_00_01_a2d05322dd0eb9c74c6d3c986f80e73247.html</anchorfile>
      <anchor>a8b1de7db3c9e97eeb102a8be22adcd3d</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Key&lt; Dependency &gt;::Normalized</type>
      <name>Dependency</name>
      <anchorfile>structsauce_1_1internal_1_1injections_1_1_providing_injection.html</anchorfile>
      <anchor>aff75cf1c0b73a87bbaf239af199fab93</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Key&lt; Dependency &gt;::Ptr</type>
      <name>IfacePtr</name>
      <anchorfile>structsauce_1_1internal_1_1injections_1_1_providing_injection.html</anchorfile>
      <anchor>adee2cef8158f4605a10618f8a921967a</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>Ptr</type>
      <name>provide</name>
      <anchorfile>classsauce_1_1internal_1_1injections_1_1_new_injection_3_01_dependency_00_01_impl_07_a1_00_01_a2d05322dd0eb9c74c6d3c986f80e73247.html</anchorfile>
      <anchor>a72d7e5f1ce9fa26e2c17e58afe260b1d</anchor>
      <arglist>(InjectionPtr injection, InjectorPtr injector) const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>validateAcyclic</name>
      <anchorfile>classsauce_1_1internal_1_1injections_1_1_new_injection_3_01_dependency_00_01_impl_07_a1_00_01_a2d05322dd0eb9c74c6d3c986f80e73247.html</anchorfile>
      <anchor>a5ace75cbc1167420cb588c6a5b57eb59</anchor>
      <arglist>(InjectorPtr injector, TypeIds &amp;ids) const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>dispose</name>
      <anchorfile>classsauce_1_1internal_1_1injections_1_1_new_injection_3_01_dependency_00_01_impl_07_a1_00_01_a2d05322dd0eb9c74c6d3c986f80e73247.html</anchorfile>
      <anchor>a6ea97cbc7b0386c9befc397398317294</anchor>
      <arglist>(Iface *iface) const </arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual IfacePtr</type>
      <name>provide</name>
      <anchorfile>structsauce_1_1internal_1_1injections_1_1_providing_injection.html</anchorfile>
      <anchor>a8ec30f36c928cb517fa93cd69effd782</anchor>
      <arglist>(InjectionPtr, InjectorPtr) const =0</arglist>
    </member>
    <member kind="friend" protection="private">
      <type>friend class</type>
      <name>DisposalDeleter&lt; Iface, New &gt;</name>
      <anchorfile>classsauce_1_1internal_1_1injections_1_1_new_injection_3_01_dependency_00_01_impl_07_a1_00_01_a2d05322dd0eb9c74c6d3c986f80e73247.html</anchorfile>
      <anchor>a95cb0df2fe9c298eb93a4d28a7eaf1b2</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>sauce::internal::injections::NewInjection&lt; Dependency, Impl(A1, A2, A3, A4, A5, A6, A7, A8, A9, A10), Allocator &gt;</name>
    <filename>classsauce_1_1internal_1_1injections_1_1_new_injection_3_01_dependency_00_01_impl_07_a1_00_01_a26c0ea25f356727b120f3969649f3a4a1.html</filename>
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
    <base>ProvidingInjection&lt; Dependency &gt;</base>
    <member kind="typedef">
      <type>ProvidingInjection&lt; Dependency &gt;::InjectionPtr</type>
      <name>InjectionPtr</name>
      <anchorfile>classsauce_1_1internal_1_1injections_1_1_new_injection_3_01_dependency_00_01_impl_07_a1_00_01_a26c0ea25f356727b120f3969649f3a4a1.html</anchorfile>
      <anchor>ae70a4d93077164ecba69832645c310f1</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Key&lt; Dependency &gt;::Normalized</type>
      <name>Dependency</name>
      <anchorfile>structsauce_1_1internal_1_1injections_1_1_providing_injection.html</anchorfile>
      <anchor>aff75cf1c0b73a87bbaf239af199fab93</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Key&lt; Dependency &gt;::Ptr</type>
      <name>IfacePtr</name>
      <anchorfile>structsauce_1_1internal_1_1injections_1_1_providing_injection.html</anchorfile>
      <anchor>adee2cef8158f4605a10618f8a921967a</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>Ptr</type>
      <name>provide</name>
      <anchorfile>classsauce_1_1internal_1_1injections_1_1_new_injection_3_01_dependency_00_01_impl_07_a1_00_01_a26c0ea25f356727b120f3969649f3a4a1.html</anchorfile>
      <anchor>a364834b78d77311642c6f844834b82c0</anchor>
      <arglist>(InjectionPtr injection, InjectorPtr injector) const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>validateAcyclic</name>
      <anchorfile>classsauce_1_1internal_1_1injections_1_1_new_injection_3_01_dependency_00_01_impl_07_a1_00_01_a26c0ea25f356727b120f3969649f3a4a1.html</anchorfile>
      <anchor>afc58ffb4cb847f796a474425ec11ebb6</anchor>
      <arglist>(InjectorPtr injector, TypeIds &amp;ids) const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>dispose</name>
      <anchorfile>classsauce_1_1internal_1_1injections_1_1_new_injection_3_01_dependency_00_01_impl_07_a1_00_01_a26c0ea25f356727b120f3969649f3a4a1.html</anchorfile>
      <anchor>a55d3a29762b9ca5975aa18aa5e76c531</anchor>
      <arglist>(Iface *iface) const </arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual IfacePtr</type>
      <name>provide</name>
      <anchorfile>structsauce_1_1internal_1_1injections_1_1_providing_injection.html</anchorfile>
      <anchor>a8ec30f36c928cb517fa93cd69effd782</anchor>
      <arglist>(InjectionPtr, InjectorPtr) const =0</arglist>
    </member>
    <member kind="friend" protection="private">
      <type>friend class</type>
      <name>DisposalDeleter&lt; Iface, New &gt;</name>
      <anchorfile>classsauce_1_1internal_1_1injections_1_1_new_injection_3_01_dependency_00_01_impl_07_a1_00_01_a26c0ea25f356727b120f3969649f3a4a1.html</anchorfile>
      <anchor>a95cb0df2fe9c298eb93a4d28a7eaf1b2</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>sauce::internal::injections::ProviderInjection</name>
    <filename>structsauce_1_1internal_1_1injections_1_1_provider_injection.html</filename>
    <templarg></templarg>
    <templarg></templarg>
    <base>ProvidingInjection&lt; Dependency &gt;</base>
    <member kind="typedef">
      <type>ProvidingInjection&lt; Dependency &gt;::InjectionPtr</type>
      <name>InjectionPtr</name>
      <anchorfile>structsauce_1_1internal_1_1injections_1_1_provider_injection.html</anchorfile>
      <anchor>ac8d5b40356cf1e0b7d179ed2e2c41535</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Key&lt; Dependency &gt;::Normalized</type>
      <name>Dependency</name>
      <anchorfile>structsauce_1_1internal_1_1injections_1_1_providing_injection.html</anchorfile>
      <anchor>aff75cf1c0b73a87bbaf239af199fab93</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Key&lt; Dependency &gt;::Ptr</type>
      <name>IfacePtr</name>
      <anchorfile>structsauce_1_1internal_1_1injections_1_1_providing_injection.html</anchorfile>
      <anchor>adee2cef8158f4605a10618f8a921967a</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>validateAcyclic</name>
      <anchorfile>structsauce_1_1internal_1_1injections_1_1_provider_injection.html</anchorfile>
      <anchor>a226861267c1e5b4fab73d38bdf75a068</anchor>
      <arglist>(InjectorPtr injector, TypeIds &amp;ids) const </arglist>
    </member>
    <member kind="function">
      <type>Key&lt; Dependency &gt;::Ptr</type>
      <name>provide</name>
      <anchorfile>structsauce_1_1internal_1_1injections_1_1_provider_injection.html</anchorfile>
      <anchor>ab863ec626b9625d800322729b09403b8</anchor>
      <arglist>(InjectionPtr, InjectorPtr injector) const </arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual IfacePtr</type>
      <name>provide</name>
      <anchorfile>structsauce_1_1internal_1_1injections_1_1_providing_injection.html</anchorfile>
      <anchor>a8ec30f36c928cb517fa93cd69effd782</anchor>
      <arglist>(InjectionPtr, InjectorPtr) const =0</arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>sauce::internal::injections::ProvidingInjection</name>
    <filename>structsauce_1_1internal_1_1injections_1_1_providing_injection.html</filename>
    <templarg>Dependency_</templarg>
    <base>sauce::internal::InjectorFriend</base>
    <member kind="typedef">
      <type>Key&lt; Dependency_ &gt;::Normalized</type>
      <name>Dependency</name>
      <anchorfile>structsauce_1_1internal_1_1injections_1_1_providing_injection.html</anchorfile>
      <anchor>aff75cf1c0b73a87bbaf239af199fab93</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>sauce::shared_ptr&lt; ProvidingInjection&lt; Dependency &gt; &gt;</type>
      <name>InjectionPtr</name>
      <anchorfile>structsauce_1_1internal_1_1injections_1_1_providing_injection.html</anchorfile>
      <anchor>a060d79783c9aa06d3b4b14b734d85522</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Key&lt; Dependency &gt;::Ptr</type>
      <name>IfacePtr</name>
      <anchorfile>structsauce_1_1internal_1_1injections_1_1_providing_injection.html</anchorfile>
      <anchor>adee2cef8158f4605a10618f8a921967a</anchor>
      <arglist></arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual IfacePtr</type>
      <name>provide</name>
      <anchorfile>structsauce_1_1internal_1_1injections_1_1_providing_injection.html</anchorfile>
      <anchor>a8ec30f36c928cb517fa93cd69effd782</anchor>
      <arglist>(InjectionPtr, InjectorPtr) const =0</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>validateAcyclic</name>
      <anchorfile>structsauce_1_1internal_1_1injections_1_1_providing_injection.html</anchorfile>
      <anchor>a47efd1c7eb03bf28f692d9984d4b3b75</anchor>
      <arglist>(InjectorPtr, TypeIds &amp;) const </arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>validateAcyclicHelper</name>
      <anchorfile>classsauce_1_1internal_1_1_injector_friend.html</anchorfile>
      <anchor>a8040be092897ad90cffa1c5a69351eaa</anchor>
      <arglist>(InjectorPtr injector, TypeIds &amp;ids) const </arglist>
    </member>
    <member kind="function" protection="protected">
      <type>Key&lt; Dependency &gt;::Ptr</type>
      <name>getHelper</name>
      <anchorfile>classsauce_1_1internal_1_1_injector_friend.html</anchorfile>
      <anchor>a56383b672d8dcb945f33df0f406ef3de</anchor>
      <arglist>(InjectorPtr injector) const </arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>cache</name>
      <anchorfile>classsauce_1_1internal_1_1_injector_friend.html</anchorfile>
      <anchor>ade3dae24aba63755f841cc0a5f414620</anchor>
      <arglist>(InjectorPtr injector, typename Key&lt; Dependency &gt;::Ptr pointer, i::TypeId scope) const </arglist>
    </member>
    <member kind="function" protection="protected">
      <type>bool</type>
      <name>probe</name>
      <anchorfile>classsauce_1_1internal_1_1_injector_friend.html</anchorfile>
      <anchor>a90c25459558bfe86e4bb59e12137718b</anchor>
      <arglist>(InjectorPtr injector, typename Key&lt; Dependency &gt;::Ptr &amp;out, i::TypeId scope) const </arglist>
    </member>
  </compound>
  <compound kind="dir">
    <name>sauce/internal/injections/</name>
    <path>/Users/phil/code/sauce/sauce/internal/injections/</path>
    <filename>dir_2182445525149dd07059cb8338574d2b.html</filename>
    <file>all.h</file>
    <file>implicit_provider_injection.h</file>
    <file>injector_injection.h</file>
    <file>new_injection.h</file>
    <file>provider_injection.h</file>
    <file>providing_injection.h</file>
  </compound>
  <compound kind="dir">
    <name>sauce/internal/</name>
    <path>/Users/phil/code/sauce/sauce/internal/</path>
    <filename>dir_be47d98664d676f0a5d32321a98a37c8.html</filename>
    <dir>sauce/internal/injections/</dir>
    <dir>sauce/internal/memory/</dir>
    <file>base_injector.h</file>
    <file>bindings.h</file>
    <file>clause.h</file>
    <file>disposal_deleter.h</file>
    <file>implicit_bindings.h</file>
    <file>injection_binding.h</file>
    <file>key.h</file>
    <file>locker_factory.h</file>
    <file>opaque_binding.h</file>
    <file>pending_thrower.h</file>
    <file>resolved_binding.h</file>
    <file>scope_cache.h</file>
    <file>type_id.h</file>
  </compound>
  <compound kind="dir">
    <name>sauce/internal/memory/</name>
    <path>/Users/phil/code/sauce/sauce/internal/memory/</path>
    <filename>dir_f48b53205fbf9ae3fabc86d7cfc44a7a.html</filename>
    <file>boost.h</file>
    <file>std.h</file>
    <file>tr1.h</file>
  </compound>
  <compound kind="dir">
    <name>sauce/</name>
    <path>/Users/phil/code/sauce/sauce/</path>
    <filename>dir_fbd01e54bcee7d521bf3ffbb4e509f79.html</filename>
    <dir>sauce/internal/</dir>
    <file>binder.h</file>
    <file>exceptions.h</file>
    <file>injector.h</file>
    <file>memory.h</file>
    <file>modules.h</file>
    <file>named.h</file>
    <file>provider.h</file>
    <file>sauce.h</file>
    <file>scopes.h</file>
  </compound>
  <compound kind="page">
    <name>index</name>
    <title>API Reference</title>
    <filename>index</filename>
  </compound>
</tagfile>
