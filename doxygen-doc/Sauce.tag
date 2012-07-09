<?xml version='1.0' encoding='UTF-8' standalone='yes' ?>
<tagfile>
  <compound kind="class">
    <name>sauce::SettingClause</name>
    <filename>classsauce_1_1_setting_clause.html</filename>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <base>sauce::internal::FinalClause</base>
    <member kind="function">
      <type></type>
      <name>SettingClause</name>
      <anchorfile>classsauce_1_1_setting_clause.html</anchorfile>
      <anchor>a6464272d13f0dfca4a95a7691a8472dc</anchor>
      <arglist>(Method method)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setState</name>
      <anchorfile>classsauce_1_1internal_1_1_final_clause.html</anchorfile>
      <anchor>a8ac2fc03c59af1c1d3cf298d63217114</anchor>
      <arglist>(ClauseStatePtr state)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type></type>
      <name>FinalClause</name>
      <anchorfile>classsauce_1_1internal_1_1_final_clause.html</anchorfile>
      <anchor>a4caa056b5e9dd1b6668462bb138dd63d</anchor>
      <arglist>(ClauseStatePtr state)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>Next</type>
      <name>pass</name>
      <anchorfile>classsauce_1_1internal_1_1_final_clause.html</anchorfile>
      <anchor>a45f561024722fb62635433458471ad4e</anchor>
      <arglist>(Next next)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>bind</name>
      <anchorfile>classsauce_1_1internal_1_1_final_clause.html</anchorfile>
      <anchor>a36344543b017d215f0f11afcbe22e852</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>bindExtra</name>
      <anchorfile>classsauce_1_1internal_1_1_final_clause.html</anchorfile>
      <anchor>a53e5cfdafa278b6c4a108040500bb6a4</anchor>
      <arglist>(BoundInjection)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>bindDynamicDependencyName</name>
      <anchorfile>classsauce_1_1internal_1_1_final_clause.html</anchorfile>
      <anchor>aa333cb17528b9dbf8e38a72b82bcca83</anchor>
      <arglist>(unsigned int position, std::string const name)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>sauce::NamingClause</name>
    <filename>classsauce_1_1_naming_clause.html</filename>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <base>sauce::internal::FinalClause</base>
    <member kind="function">
      <type>NamingClause&lt; Dependency, Scope, Ctor, Allocator &gt; &amp;</type>
      <name>naming</name>
      <anchorfile>classsauce_1_1_naming_clause.html</anchorfile>
      <anchor>a7cf46feb6bab715bbac5ff748b367dce</anchor>
      <arglist>(unsigned int position, std::string const name)</arglist>
    </member>
    <member kind="function">
      <type>SettingClause&lt; Dependency, Scope, Ctor, Allocator, Method &gt;</type>
      <name>setting</name>
      <anchorfile>classsauce_1_1_naming_clause.html</anchorfile>
      <anchor>a92baee4f3c910b4803929aed9dc698b4</anchor>
      <arglist>(Method method)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setState</name>
      <anchorfile>classsauce_1_1internal_1_1_final_clause.html</anchorfile>
      <anchor>a8ac2fc03c59af1c1d3cf298d63217114</anchor>
      <arglist>(ClauseStatePtr state)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type></type>
      <name>FinalClause</name>
      <anchorfile>classsauce_1_1internal_1_1_final_clause.html</anchorfile>
      <anchor>a4caa056b5e9dd1b6668462bb138dd63d</anchor>
      <arglist>(ClauseStatePtr state)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>Next</type>
      <name>pass</name>
      <anchorfile>classsauce_1_1internal_1_1_final_clause.html</anchorfile>
      <anchor>a45f561024722fb62635433458471ad4e</anchor>
      <arglist>(Next next)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>bind</name>
      <anchorfile>classsauce_1_1internal_1_1_final_clause.html</anchorfile>
      <anchor>a36344543b017d215f0f11afcbe22e852</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>bindExtra</name>
      <anchorfile>classsauce_1_1internal_1_1_final_clause.html</anchorfile>
      <anchor>a53e5cfdafa278b6c4a108040500bb6a4</anchor>
      <arglist>(BoundInjection)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>bindDynamicDependencyName</name>
      <anchorfile>classsauce_1_1internal_1_1_final_clause.html</anchorfile>
      <anchor>aa333cb17528b9dbf8e38a72b82bcca83</anchor>
      <arglist>(unsigned int position, std::string const name)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>sauce::AllocateFromClause</name>
    <filename>classsauce_1_1_allocate_from_clause.html</filename>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <base>sauce::internal::FinalClause</base>
    <member kind="function">
      <type>NamingClause&lt; Dependency, Scope, Ctor, Allocator &gt;</type>
      <name>naming</name>
      <anchorfile>classsauce_1_1_allocate_from_clause.html</anchorfile>
      <anchor>a4920e56ee856690edaba116f48928c5c</anchor>
      <arglist>(unsigned int position, std::string const name)</arglist>
    </member>
    <member kind="function">
      <type>SettingClause&lt; Dependency, Scope, Ctor, Allocator, Method &gt;</type>
      <name>setting</name>
      <anchorfile>classsauce_1_1_allocate_from_clause.html</anchorfile>
      <anchor>aa08b7d99485f5db64f8a7c74ff64b1bb</anchor>
      <arglist>(Method method)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setState</name>
      <anchorfile>classsauce_1_1internal_1_1_final_clause.html</anchorfile>
      <anchor>a8ac2fc03c59af1c1d3cf298d63217114</anchor>
      <arglist>(ClauseStatePtr state)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type></type>
      <name>FinalClause</name>
      <anchorfile>classsauce_1_1internal_1_1_final_clause.html</anchorfile>
      <anchor>a4caa056b5e9dd1b6668462bb138dd63d</anchor>
      <arglist>(ClauseStatePtr state)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>Next</type>
      <name>pass</name>
      <anchorfile>classsauce_1_1internal_1_1_final_clause.html</anchorfile>
      <anchor>a45f561024722fb62635433458471ad4e</anchor>
      <arglist>(Next next)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>bind</name>
      <anchorfile>classsauce_1_1internal_1_1_final_clause.html</anchorfile>
      <anchor>a36344543b017d215f0f11afcbe22e852</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>bindExtra</name>
      <anchorfile>classsauce_1_1internal_1_1_final_clause.html</anchorfile>
      <anchor>a53e5cfdafa278b6c4a108040500bb6a4</anchor>
      <arglist>(BoundInjection)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>bindDynamicDependencyName</name>
      <anchorfile>classsauce_1_1internal_1_1_final_clause.html</anchorfile>
      <anchor>aa333cb17528b9dbf8e38a72b82bcca83</anchor>
      <arglist>(unsigned int position, std::string const name)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>sauce::ToClause</name>
    <filename>classsauce_1_1_to_clause.html</filename>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <base>FinalClause&lt; Dependency, Scope, Ctor, std::allocator&lt; int &gt; &gt;</base>
    <member kind="function">
      <type>AllocateFromClause&lt; Dependency, Scope, Ctor, Allocator &gt;</type>
      <name>allocatedFrom</name>
      <anchorfile>classsauce_1_1_to_clause.html</anchorfile>
      <anchor>a815933865130b4d57b5f88c4f682298e</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>NamingClause&lt; Dependency, Scope, Ctor, std::allocator&lt; int &gt; &gt;</type>
      <name>naming</name>
      <anchorfile>classsauce_1_1_to_clause.html</anchorfile>
      <anchor>ac144980e1f799504d884f8d1bed7312f</anchor>
      <arglist>(unsigned int position, std::string const name)</arglist>
    </member>
    <member kind="function">
      <type>SettingClause&lt; Dependency, Scope, Ctor, std::allocator&lt; int &gt;, Method &gt;</type>
      <name>setting</name>
      <anchorfile>classsauce_1_1_to_clause.html</anchorfile>
      <anchor>ad2fa52a2727cc471340fb8190f121540</anchor>
      <arglist>(Method method)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setState</name>
      <anchorfile>classsauce_1_1internal_1_1_final_clause.html</anchorfile>
      <anchor>a8ac2fc03c59af1c1d3cf298d63217114</anchor>
      <arglist>(ClauseStatePtr state)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type></type>
      <name>FinalClause</name>
      <anchorfile>classsauce_1_1internal_1_1_final_clause.html</anchorfile>
      <anchor>a4caa056b5e9dd1b6668462bb138dd63d</anchor>
      <arglist>(ClauseStatePtr state)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>Next</type>
      <name>pass</name>
      <anchorfile>classsauce_1_1internal_1_1_final_clause.html</anchorfile>
      <anchor>a45f561024722fb62635433458471ad4e</anchor>
      <arglist>(Next next)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>bind</name>
      <anchorfile>classsauce_1_1internal_1_1_final_clause.html</anchorfile>
      <anchor>a36344543b017d215f0f11afcbe22e852</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>bindExtra</name>
      <anchorfile>classsauce_1_1internal_1_1_final_clause.html</anchorfile>
      <anchor>a53e5cfdafa278b6c4a108040500bb6a4</anchor>
      <arglist>(BoundInjection)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>bindDynamicDependencyName</name>
      <anchorfile>classsauce_1_1internal_1_1_final_clause.html</anchorfile>
      <anchor>aa333cb17528b9dbf8e38a72b82bcca83</anchor>
      <arglist>(unsigned int position, std::string const name)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>sauce::ToProviderClause</name>
    <filename>classsauce_1_1_to_provider_clause.html</filename>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <base>FinalClause&lt; ProviderDependency, Scope, ProviderCtor, std::allocator&lt; int &gt; &gt;</base>
    <member kind="function">
      <type>AllocateFromClause&lt; ProviderDependency, Scope, ProviderCtor, Allocator &gt;</type>
      <name>allocatedFrom</name>
      <anchorfile>classsauce_1_1_to_provider_clause.html</anchorfile>
      <anchor>a91caabf86c78477c63f8df4140f2cd39</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>NamingClause&lt; ProviderDependency, Scope, ProviderCtor, std::allocator&lt; int &gt; &gt;</type>
      <name>naming</name>
      <anchorfile>classsauce_1_1_to_provider_clause.html</anchorfile>
      <anchor>ab1e660d093886087570e74e01f2b5e86</anchor>
      <arglist>(unsigned int position, std::string const name)</arglist>
    </member>
    <member kind="function">
      <type>SettingClause&lt; ProviderDependency, Scope, ProviderCtor, std::allocator&lt; int &gt;, Method &gt;</type>
      <name>setting</name>
      <anchorfile>classsauce_1_1_to_provider_clause.html</anchorfile>
      <anchor>afcad93ec616dbaf7f9df5dce38f70bf1</anchor>
      <arglist>(Method method)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setState</name>
      <anchorfile>classsauce_1_1internal_1_1_final_clause.html</anchorfile>
      <anchor>a8ac2fc03c59af1c1d3cf298d63217114</anchor>
      <arglist>(ClauseStatePtr state)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type></type>
      <name>FinalClause</name>
      <anchorfile>classsauce_1_1internal_1_1_final_clause.html</anchorfile>
      <anchor>a4caa056b5e9dd1b6668462bb138dd63d</anchor>
      <arglist>(ClauseStatePtr state)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>Next</type>
      <name>pass</name>
      <anchorfile>classsauce_1_1internal_1_1_final_clause.html</anchorfile>
      <anchor>a45f561024722fb62635433458471ad4e</anchor>
      <arglist>(Next next)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>bind</name>
      <anchorfile>classsauce_1_1internal_1_1_final_clause.html</anchorfile>
      <anchor>a36344543b017d215f0f11afcbe22e852</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>bindExtra</name>
      <anchorfile>classsauce_1_1internal_1_1_final_clause.html</anchorfile>
      <anchor>a53e5cfdafa278b6c4a108040500bb6a4</anchor>
      <arglist>(BoundInjection)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>bindDynamicDependencyName</name>
      <anchorfile>classsauce_1_1internal_1_1_final_clause.html</anchorfile>
      <anchor>aa333cb17528b9dbf8e38a72b82bcca83</anchor>
      <arglist>(unsigned int position, std::string const name)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>sauce::InClause</name>
    <filename>classsauce_1_1_in_clause.html</filename>
    <templarg></templarg>
    <templarg></templarg>
    <base>sauce::internal::InitialClause</base>
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
    <member kind="function" protection="protected">
      <type>void</type>
      <name>onComplete</name>
      <anchorfile>classsauce_1_1internal_1_1_initial_clause.html</anchorfile>
      <anchor>a06750baf1f99773b73f856cedeccec1b</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" protection="protected">
      <type></type>
      <name>InitialClause</name>
      <anchorfile>classsauce_1_1internal_1_1_initial_clause.html</anchorfile>
      <anchor>a5cae840144147095ceeff8f49b7515d1</anchor>
      <arglist>(ClauseStatePtr state)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>Next</type>
      <name>pass</name>
      <anchorfile>classsauce_1_1internal_1_1_initial_clause.html</anchorfile>
      <anchor>a6a4ad776123bc291eb5e8e72c3b61739</anchor>
      <arglist>(Next next)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>setState</name>
      <anchorfile>classsauce_1_1internal_1_1_initial_clause.html</anchorfile>
      <anchor>a6048e78c295403821660bc9451a6e610</anchor>
      <arglist>(ClauseStatePtr state)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>setDynamicName</name>
      <anchorfile>classsauce_1_1internal_1_1_initial_clause.html</anchorfile>
      <anchor>ac08c8231534df2fa0a0f88a28e4252cb</anchor>
      <arglist>(std::string const name)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>throwLater</name>
      <anchorfile>classsauce_1_1internal_1_1_initial_clause.html</anchorfile>
      <anchor>a3cd79bae3d17ea057478443e7bb16eb5</anchor>
      <arglist>(Exception)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>sauce::NamedClause</name>
    <filename>classsauce_1_1_named_clause.html</filename>
    <templarg></templarg>
    <base>sauce::internal::InitialClause</base>
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
    <member kind="function" protection="protected">
      <type>void</type>
      <name>onComplete</name>
      <anchorfile>classsauce_1_1internal_1_1_initial_clause.html</anchorfile>
      <anchor>a06750baf1f99773b73f856cedeccec1b</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" protection="protected">
      <type></type>
      <name>InitialClause</name>
      <anchorfile>classsauce_1_1internal_1_1_initial_clause.html</anchorfile>
      <anchor>a5cae840144147095ceeff8f49b7515d1</anchor>
      <arglist>(ClauseStatePtr state)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>Next</type>
      <name>pass</name>
      <anchorfile>classsauce_1_1internal_1_1_initial_clause.html</anchorfile>
      <anchor>a6a4ad776123bc291eb5e8e72c3b61739</anchor>
      <arglist>(Next next)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>setState</name>
      <anchorfile>classsauce_1_1internal_1_1_initial_clause.html</anchorfile>
      <anchor>a6048e78c295403821660bc9451a6e610</anchor>
      <arglist>(ClauseStatePtr state)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>setDynamicName</name>
      <anchorfile>classsauce_1_1internal_1_1_initial_clause.html</anchorfile>
      <anchor>ac08c8231534df2fa0a0f88a28e4252cb</anchor>
      <arglist>(std::string const name)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>throwLater</name>
      <anchorfile>classsauce_1_1internal_1_1_initial_clause.html</anchorfile>
      <anchor>a3cd79bae3d17ea057478443e7bb16eb5</anchor>
      <arglist>(Exception)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>sauce::BindClause</name>
    <filename>classsauce_1_1_bind_clause.html</filename>
    <templarg>Iface</templarg>
    <base>InitialClause&lt; Named&lt; Iface, Unnamed &gt; &gt;</base>
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
    <member kind="friend" protection="private">
      <type>friend class</type>
      <name>Binder</name>
      <anchorfile>classsauce_1_1_bind_clause.html</anchorfile>
      <anchor>ac1477f45573f7be56ec13bb35c0041b9</anchor>
      <arglist></arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>onComplete</name>
      <anchorfile>classsauce_1_1internal_1_1_initial_clause.html</anchorfile>
      <anchor>a06750baf1f99773b73f856cedeccec1b</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" protection="protected">
      <type></type>
      <name>InitialClause</name>
      <anchorfile>classsauce_1_1internal_1_1_initial_clause.html</anchorfile>
      <anchor>a5cae840144147095ceeff8f49b7515d1</anchor>
      <arglist>(ClauseStatePtr state)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>Next</type>
      <name>pass</name>
      <anchorfile>classsauce_1_1internal_1_1_initial_clause.html</anchorfile>
      <anchor>a6a4ad776123bc291eb5e8e72c3b61739</anchor>
      <arglist>(Next next)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>setState</name>
      <anchorfile>classsauce_1_1internal_1_1_initial_clause.html</anchorfile>
      <anchor>a6048e78c295403821660bc9451a6e610</anchor>
      <arglist>(ClauseStatePtr state)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>setDynamicName</name>
      <anchorfile>classsauce_1_1internal_1_1_initial_clause.html</anchorfile>
      <anchor>ac08c8231534df2fa0a0f88a28e4252cb</anchor>
      <arglist>(std::string const name)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>throwLater</name>
      <anchorfile>classsauce_1_1internal_1_1_initial_clause.html</anchorfile>
      <anchor>a3cd79bae3d17ea057478443e7bb16eb5</anchor>
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
      <name>UnboundException</name>
      <anchorfile>structsauce_1_1_unbound_exception.html</anchorfile>
      <anchor>a5cd85ac85d9691c3490de766e36975c5</anchor>
      <arglist>(std::string const name)</arglist>
    </member>
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
    <member kind="function">
      <type></type>
      <name>UnboundExceptionFor</name>
      <anchorfile>structsauce_1_1_unbound_exception_for.html</anchorfile>
      <anchor>a1e1b6233075290507218b7afa9fd9c34</anchor>
      <arglist>(std::string const name)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>UnboundException</name>
      <anchorfile>structsauce_1_1_unbound_exception.html</anchorfile>
      <anchor>a5cd85ac85d9691c3490de766e36975c5</anchor>
      <arglist>(std::string const name)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>Exception</name>
      <anchorfile>structsauce_1_1_exception.html</anchorfile>
      <anchor>a712d07bd39b9df1bf8b4596a0b64c9b7</anchor>
      <arglist>(std::string message)</arglist>
    </member>
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
    <member kind="typedef">
      <type>i::Key&lt; Dependency &gt;::Iface</type>
      <name>Iface</name>
      <anchorfile>classsauce_1_1_provider.html</anchorfile>
      <anchor>abfe43c0ceeb19745314767fd84ae9d9f</anchor>
      <arglist></arglist>
    </member>
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
      <anchor>a4a2343d76ae48ae8b6bdda2494e9f9a9</anchor>
      <arglist>(InjectorPtr injector, TypeIds &amp;ids, std::string const name) const </arglist>
    </member>
    <member kind="function" protection="protected">
      <type>Key&lt; Dependency &gt;::Ptr</type>
      <name>getHelper</name>
      <anchorfile>classsauce_1_1internal_1_1_injector_friend.html</anchorfile>
      <anchor>a03ee99cad37f969f3cfe3a6ca33724e0</anchor>
      <arglist>(InjectorPtr injector, std::string const name) const </arglist>
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
      <type>Bindings&lt; ImplicitBindings &gt;</type>
      <name>Bindings_</name>
      <anchorfile>structsauce_1_1internal_1_1_get_decorator.html</anchorfile>
      <anchor>a383d908aa770cbc953b3aa8e5c742dc9</anchor>
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
      <anchor>a25c60904ff15951af1eda7f2cf342324</anchor>
      <arglist>(Bindings_ const &amp;bindings, InjectorPtr injector, std::string const name)</arglist>
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
      <type>Bindings&lt; ImplicitBindings &gt;</type>
      <name>Bindings_</name>
      <anchorfile>structsauce_1_1internal_1_1_get_decorator_3_01_implicit_bindings_00_01_named_3_01_provider_3_01_2bd1789f15c1abf4bb77f9fe019a26cd.html</anchorfile>
      <anchor>a5ba551c7bd185630b0d937b7a359a790</anchor>
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
      <anchor>a68553d525ecfaba966e9cc298780cf1f</anchor>
      <arglist>(Bindings_ const &amp;bindings, InjectorPtr injector, std::string const name)</arglist>
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
      <anchor>ab0b40c6e8bba2e71e9b59f202a3203ab</anchor>
      <arglist>(sauce::shared_ptr&lt; Injector &gt; injector, TypeIds &amp;ids, std::string const name) const </arglist>
    </member>
    <member kind="function">
      <type>Key&lt; Dependency &gt;::Ptr</type>
      <name>get</name>
      <anchorfile>classsauce_1_1internal_1_1_base_injector.html</anchorfile>
      <anchor>aaf2db85d3d54c1798fae1ba64c273b94</anchor>
      <arglist>(sauce::shared_ptr&lt; Injector &gt; injector, std::string const name) const </arglist>
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
    <member kind="function">
      <type>NamedTypeId</type>
      <name>getKey</name>
      <anchorfile>structsauce_1_1internal_1_1_resolved_binding.html</anchorfile>
      <anchor>a7ff0341fe08ae52a0f03a35ad6dd3c79</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual void</type>
      <name>validateAcyclic</name>
      <anchorfile>structsauce_1_1internal_1_1_resolved_binding.html</anchorfile>
      <anchor>a503de5fe9cb4996db536f6f6d6d486be</anchor>
      <arglist>(sauce::shared_ptr&lt; Injector &gt;, TypeIds &amp;) const =0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual IfacePtr</type>
      <name>get</name>
      <anchorfile>structsauce_1_1internal_1_1_resolved_binding.html</anchorfile>
      <anchor>a06fb04d3ee1d8d42d7f93f20a205ff25</anchor>
      <arglist>(BindingPtr, sauce::shared_ptr&lt; Injector &gt;) const =0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual void</type>
      <name>eagerlyProvide</name>
      <anchorfile>structsauce_1_1internal_1_1_opaque_binding.html</anchorfile>
      <anchor>a9cbe103bedc3ea77c5edef5f30a4d74c</anchor>
      <arglist>(OpaqueBindingPtr, sauce::shared_ptr&lt; Injector &gt;) const =0</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>validateAcyclicHelper</name>
      <anchorfile>classsauce_1_1internal_1_1_injector_friend.html</anchorfile>
      <anchor>a4a2343d76ae48ae8b6bdda2494e9f9a9</anchor>
      <arglist>(InjectorPtr injector, TypeIds &amp;ids, std::string const name) const </arglist>
    </member>
    <member kind="function" protection="protected">
      <type>Key&lt; Dependency &gt;::Ptr</type>
      <name>getHelper</name>
      <anchorfile>classsauce_1_1internal_1_1_injector_friend.html</anchorfile>
      <anchor>a03ee99cad37f969f3cfe3a6ca33724e0</anchor>
      <arglist>(InjectorPtr injector, std::string const name) const </arglist>
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
      <anchor>a5260f5aaa08c9e9c5b656be4e973e30f</anchor>
      <arglist>(std::string const name) const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>validateAcyclic</name>
      <anchorfile>classsauce_1_1internal_1_1_bindings.html</anchorfile>
      <anchor>a3773aeb2d530c18f3739d37a82e69760</anchor>
      <arglist>(sauce::shared_ptr&lt; Injector &gt; injector, TypeIds &amp;ids, std::string const name) const </arglist>
    </member>
    <member kind="function">
      <type>Key&lt; Dependency &gt;::Ptr</type>
      <name>get</name>
      <anchorfile>classsauce_1_1internal_1_1_bindings.html</anchorfile>
      <anchor>a7bd8d3a1fc4a9624f6deb00da0639efe</anchor>
      <arglist>(sauce::shared_ptr&lt; Injector &gt; injector, std::string const name) const </arglist>
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
      <anchor>aba03bf94603ef44c42fe42722c5ad878</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>bindExtra</name>
      <anchorfile>classsauce_1_1internal_1_1_clause_state.html</anchorfile>
      <anchor>a78a618b36d93cbea655a29062bad85f2</anchor>
      <arglist>()</arglist>
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
    <name>sauce::internal::InitialClause</name>
    <filename>classsauce_1_1internal_1_1_initial_clause.html</filename>
    <templarg>Dependency</templarg>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>onComplete</name>
      <anchorfile>classsauce_1_1internal_1_1_initial_clause.html</anchorfile>
      <anchor>a06750baf1f99773b73f856cedeccec1b</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" protection="protected">
      <type></type>
      <name>InitialClause</name>
      <anchorfile>classsauce_1_1internal_1_1_initial_clause.html</anchorfile>
      <anchor>a5cae840144147095ceeff8f49b7515d1</anchor>
      <arglist>(ClauseStatePtr state)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>Next</type>
      <name>pass</name>
      <anchorfile>classsauce_1_1internal_1_1_initial_clause.html</anchorfile>
      <anchor>a6a4ad776123bc291eb5e8e72c3b61739</anchor>
      <arglist>(Next next)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>setState</name>
      <anchorfile>classsauce_1_1internal_1_1_initial_clause.html</anchorfile>
      <anchor>a6048e78c295403821660bc9451a6e610</anchor>
      <arglist>(ClauseStatePtr state)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>setDynamicName</name>
      <anchorfile>classsauce_1_1internal_1_1_initial_clause.html</anchorfile>
      <anchor>ac08c8231534df2fa0a0f88a28e4252cb</anchor>
      <arglist>(std::string const name)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>throwLater</name>
      <anchorfile>classsauce_1_1internal_1_1_initial_clause.html</anchorfile>
      <anchor>a3cd79bae3d17ea057478443e7bb16eb5</anchor>
      <arglist>(Exception)</arglist>
    </member>
    <member kind="friend">
      <type>friend class</type>
      <name>InitialClause&lt; Named&lt; typename Key&lt; Dependency &gt;::Iface, Unnamed &gt; &gt;</name>
      <anchorfile>classsauce_1_1internal_1_1_initial_clause.html</anchorfile>
      <anchor>a8ab28e65ffe6ae2e976aee124c58c877</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>sauce::internal::FinalClause</name>
    <filename>classsauce_1_1internal_1_1_final_clause.html</filename>
    <templarg>Dependency</templarg>
    <templarg>Scope</templarg>
    <templarg>Ctor</templarg>
    <templarg>Allocator</templarg>
    <member kind="function">
      <type>void</type>
      <name>setState</name>
      <anchorfile>classsauce_1_1internal_1_1_final_clause.html</anchorfile>
      <anchor>a8ac2fc03c59af1c1d3cf298d63217114</anchor>
      <arglist>(ClauseStatePtr state)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type></type>
      <name>FinalClause</name>
      <anchorfile>classsauce_1_1internal_1_1_final_clause.html</anchorfile>
      <anchor>a4caa056b5e9dd1b6668462bb138dd63d</anchor>
      <arglist>(ClauseStatePtr state)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>Next</type>
      <name>pass</name>
      <anchorfile>classsauce_1_1internal_1_1_final_clause.html</anchorfile>
      <anchor>a45f561024722fb62635433458471ad4e</anchor>
      <arglist>(Next next)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>bind</name>
      <anchorfile>classsauce_1_1internal_1_1_final_clause.html</anchorfile>
      <anchor>a36344543b017d215f0f11afcbe22e852</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>bindExtra</name>
      <anchorfile>classsauce_1_1internal_1_1_final_clause.html</anchorfile>
      <anchor>a53e5cfdafa278b6c4a108040500bb6a4</anchor>
      <arglist>(BoundInjection)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>bindDynamicDependencyName</name>
      <anchorfile>classsauce_1_1internal_1_1_final_clause.html</anchorfile>
      <anchor>aa333cb17528b9dbf8e38a72b82bcca83</anchor>
      <arglist>(unsigned int position, std::string const name)</arglist>
    </member>
    <member kind="friend" protection="private">
      <type>friend class</type>
      <name>InitialClause&lt; Dependency &gt;</name>
      <anchorfile>classsauce_1_1internal_1_1_final_clause.html</anchorfile>
      <anchor>adea48932e50d3b60ec49586c85dcdf32</anchor>
      <arglist></arglist>
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
      <anchor>ace9c9f0d406d3427b0351bdcc3da4176</anchor>
      <arglist>(ConcreteBindings const &amp;, std::string const name)</arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>sauce::internal::ImplicitBindings</name>
    <filename>structsauce_1_1internal_1_1_implicit_bindings.html</filename>
    <member kind="function">
      <type>sauce::shared_ptr&lt; ResolvedBinding&lt; Dependency &gt; &gt;</type>
      <name>get</name>
      <anchorfile>structsauce_1_1internal_1_1_implicit_bindings.html</anchorfile>
      <anchor>a2ab32c0258b8150fa3f769869f17a9b1</anchor>
      <arglist>(ConcreteBindings const &amp;bindings, std::string const name) const </arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>sauce::internal::ImplicitBinding&lt; Named&lt; Injector, Unnamed &gt; &gt;</name>
    <filename>structsauce_1_1internal_1_1_implicit_binding_3_01_named_3_01_injector_00_01_unnamed_01_4_01_4.html</filename>
    <base>ImplicitBindingTraits&lt; i::InjectorBinding &gt;</base>
    <member kind="function" static="yes">
      <type>static BindingPtr</type>
      <name>get</name>
      <anchorfile>structsauce_1_1internal_1_1_implicit_binding_3_01_named_3_01_injector_00_01_unnamed_01_4_01_4.html</anchorfile>
      <anchor>adc49a93de1c667c98afd8f038cc40545</anchor>
      <arglist>(ConcreteBindings const &amp;, std::string const name)</arglist>
    </member>
    <member kind="typedef">
      <type>i::InjectorBinding</type>
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
      <type>ImplicitBindingTraits&lt; i::ImplicitProviderBinding&lt; ProvidedDependency, Name &gt; &gt;</type>
      <name>Traits</name>
      <anchorfile>structsauce_1_1internal_1_1_implicit_binding_3_01_named_3_01_provider_3_01_provided_dependency_01_4_00_01_name_01_4_01_4.html</anchorfile>
      <anchor>a6cfc0a0c4e02b8f114e5fdede75bd3bd</anchor>
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
      <anchor>a272b5b01e1e47ee1423d0183b270ee0a</anchor>
      <arglist>(ConcreteBindings const &amp;bindings, std::string const name)</arglist>
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
    <member kind="typedef">
      <type>i::Key&lt; Dependency &gt;::Iface</type>
      <name>Iface</name>
      <anchorfile>classsauce_1_1_provider.html</anchorfile>
      <anchor>abfe43c0ceeb19745314767fd84ae9d9f</anchor>
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
    <name>sauce::internal::ImplicitProviderBinding</name>
    <filename>classsauce_1_1internal_1_1_implicit_provider_binding.html</filename>
    <templarg></templarg>
    <templarg></templarg>
    <base>Binding&lt; Named&lt; Provider&lt; Dependency &gt;, Name &gt;, NoScope &gt;</base>
    <base>sauce::internal::ProviderFriend</base>
    <member kind="typedef">
      <type>ResolvedBinding&lt; ProviderDependency &gt;::BindingPtr</type>
      <name>BindingPtr</name>
      <anchorfile>classsauce_1_1internal_1_1_implicit_provider_binding.html</anchorfile>
      <anchor>a77f5f1c324f7b32e16c1de5c5aeb2976</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Key&lt; Named&lt; Provider&lt; Dependency &gt;, Name &gt; &gt;::Normalized</type>
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
    <member kind="function">
      <type></type>
      <name>ImplicitProviderBinding</name>
      <anchorfile>classsauce_1_1internal_1_1_implicit_provider_binding.html</anchorfile>
      <anchor>a3348a56c86e37c29418cd979044f156f</anchor>
      <arglist>(ProvidedBindingPtr providedBinding)</arglist>
    </member>
    <member kind="function">
      <type>ProviderPtr</type>
      <name>provide</name>
      <anchorfile>classsauce_1_1internal_1_1_implicit_provider_binding.html</anchorfile>
      <anchor>af0d21fc2e678fb1e69fa43a14d570f06</anchor>
      <arglist>(BindingPtr, InjectorPtr injector) const </arglist>
    </member>
    <member kind="function">
      <type>std::string</type>
      <name>getName</name>
      <anchorfile>classsauce_1_1internal_1_1_binding.html</anchorfile>
      <anchor>ae7bf0f08a99b2346aca54988a13bad99</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setName</name>
      <anchorfile>classsauce_1_1internal_1_1_binding.html</anchorfile>
      <anchor>a195b6fc17905a087a72fb6c515736254</anchor>
      <arglist>(std::string const name)</arglist>
    </member>
    <member kind="function">
      <type>NamedTypeId</type>
      <name>getKey</name>
      <anchorfile>structsauce_1_1internal_1_1_resolved_binding.html</anchorfile>
      <anchor>a7ff0341fe08ae52a0f03a35ad6dd3c79</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual void</type>
      <name>validateAcyclic</name>
      <anchorfile>structsauce_1_1internal_1_1_resolved_binding.html</anchorfile>
      <anchor>a503de5fe9cb4996db536f6f6d6d486be</anchor>
      <arglist>(sauce::shared_ptr&lt; Injector &gt;, TypeIds &amp;) const =0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual IfacePtr</type>
      <name>get</name>
      <anchorfile>structsauce_1_1internal_1_1_resolved_binding.html</anchorfile>
      <anchor>a06fb04d3ee1d8d42d7f93f20a205ff25</anchor>
      <arglist>(BindingPtr, sauce::shared_ptr&lt; Injector &gt;) const =0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual void</type>
      <name>eagerlyProvide</name>
      <anchorfile>structsauce_1_1internal_1_1_opaque_binding.html</anchorfile>
      <anchor>a9cbe103bedc3ea77c5edef5f30a4d74c</anchor>
      <arglist>(OpaqueBindingPtr, sauce::shared_ptr&lt; Injector &gt;) const =0</arglist>
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
    <name>sauce::internal::InjectorBinding</name>
    <filename>classsauce_1_1internal_1_1_injector_binding.html</filename>
    <base>Binding&lt; Key&lt; Injector &gt;::Normalized, NoScope &gt;</base>
    <member kind="function">
      <type>InjectorPtr</type>
      <name>provide</name>
      <anchorfile>classsauce_1_1internal_1_1_injector_binding.html</anchorfile>
      <anchor>a69fc7a398ec667d0bcfcc60fee225bff</anchor>
      <arglist>(BindingPtr, InjectorPtr injector) const </arglist>
    </member>
    <member kind="function">
      <type>std::string</type>
      <name>getName</name>
      <anchorfile>classsauce_1_1internal_1_1_binding.html</anchorfile>
      <anchor>ae7bf0f08a99b2346aca54988a13bad99</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setName</name>
      <anchorfile>classsauce_1_1internal_1_1_binding.html</anchorfile>
      <anchor>a195b6fc17905a087a72fb6c515736254</anchor>
      <arglist>(std::string const name)</arglist>
    </member>
    <member kind="function">
      <type>NamedTypeId</type>
      <name>getKey</name>
      <anchorfile>structsauce_1_1internal_1_1_resolved_binding.html</anchorfile>
      <anchor>a7ff0341fe08ae52a0f03a35ad6dd3c79</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual void</type>
      <name>validateAcyclic</name>
      <anchorfile>structsauce_1_1internal_1_1_resolved_binding.html</anchorfile>
      <anchor>a503de5fe9cb4996db536f6f6d6d486be</anchor>
      <arglist>(sauce::shared_ptr&lt; Injector &gt;, TypeIds &amp;) const =0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual IfacePtr</type>
      <name>get</name>
      <anchorfile>structsauce_1_1internal_1_1_resolved_binding.html</anchorfile>
      <anchor>a06fb04d3ee1d8d42d7f93f20a205ff25</anchor>
      <arglist>(BindingPtr, sauce::shared_ptr&lt; Injector &gt;) const =0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual void</type>
      <name>eagerlyProvide</name>
      <anchorfile>structsauce_1_1internal_1_1_opaque_binding.html</anchorfile>
      <anchor>a9cbe103bedc3ea77c5edef5f30a4d74c</anchor>
      <arglist>(OpaqueBindingPtr, sauce::shared_ptr&lt; Injector &gt;) const =0</arglist>
    </member>
    <member kind="typedef">
      <type>Key&lt; Key&lt; Injector &gt;::Normalized &gt;::Normalized</type>
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
      <type>sauce::shared_ptr&lt; Iface_ &gt;</type>
      <name>Ptr</name>
      <anchorfile>structsauce_1_1internal_1_1_key.html</anchorfile>
      <anchor>a46da03627c577d9fcceb861ec39cae1c</anchor>
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
      <type>Named&lt; Iface_, Unnamed &gt;</type>
      <name>Normalized</name>
      <anchorfile>structsauce_1_1internal_1_1_key.html</anchorfile>
      <anchor>ae5f752dc2b00b3f6325d55b264674fdc</anchor>
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
      <type>sauce::shared_ptr&lt; Iface_ &gt;</type>
      <name>Ptr</name>
      <anchorfile>structsauce_1_1internal_1_1_key_3_01_iface___01_6_01_4.html</anchorfile>
      <anchor>a5a55eb364d9e0350e7bfa400f602d2b2</anchor>
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
      <type>Named&lt; Iface_, Unnamed &gt;</type>
      <name>Normalized</name>
      <anchorfile>structsauce_1_1internal_1_1_key_3_01_iface___01_6_01_4.html</anchorfile>
      <anchor>a3b265b5f116961bc3408a8071efdaae6</anchor>
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
      <type>sauce::shared_ptr&lt; Iface_ &gt;</type>
      <name>Ptr</name>
      <anchorfile>structsauce_1_1internal_1_1_key_3_01_named_3_01_iface___00_01_name___01_4_01_4.html</anchorfile>
      <anchor>a40d567edaf85745970d3e821008c086b</anchor>
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
      <type>Named&lt; Iface_, Name_ &gt;</type>
      <name>Normalized</name>
      <anchorfile>structsauce_1_1internal_1_1_key_3_01_named_3_01_iface___00_01_name___01_4_01_4.html</anchorfile>
      <anchor>a2c66548c978fbcf6f890d8f64470e60c</anchor>
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
  <compound kind="class">
    <name>sauce::internal::NewBinding</name>
    <filename>classsauce_1_1internal_1_1_new_binding.html</filename>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <base>Binding&lt; Dependency, Scope &gt;</base>
    <member kind="typedef">
      <type>ResolvedBinding&lt; Dependency &gt;::BindingPtr</type>
      <name>BindingPtr</name>
      <anchorfile>classsauce_1_1internal_1_1_new_binding.html</anchorfile>
      <anchor>a803baa1ca76870cc2062c8d4bd18685b</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Key&lt; Dependency &gt;::Normalized</type>
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
    <member kind="function">
      <type>Ptr</type>
      <name>provide</name>
      <anchorfile>classsauce_1_1internal_1_1_new_binding.html</anchorfile>
      <anchor>a50ae98b5f92ab7abb6f1bc45cdc4a3ec</anchor>
      <arglist>(BindingPtr binding, InjectorPtr) const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>dispose</name>
      <anchorfile>classsauce_1_1internal_1_1_new_binding.html</anchorfile>
      <anchor>ad333ca32a148ef01080e28eb0b48f741</anchor>
      <arglist>(Iface *iface) const </arglist>
    </member>
    <member kind="function">
      <type>std::string</type>
      <name>getName</name>
      <anchorfile>classsauce_1_1internal_1_1_binding.html</anchorfile>
      <anchor>ae7bf0f08a99b2346aca54988a13bad99</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setName</name>
      <anchorfile>classsauce_1_1internal_1_1_binding.html</anchorfile>
      <anchor>a195b6fc17905a087a72fb6c515736254</anchor>
      <arglist>(std::string const name)</arglist>
    </member>
    <member kind="function">
      <type>NamedTypeId</type>
      <name>getKey</name>
      <anchorfile>structsauce_1_1internal_1_1_resolved_binding.html</anchorfile>
      <anchor>a7ff0341fe08ae52a0f03a35ad6dd3c79</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual void</type>
      <name>validateAcyclic</name>
      <anchorfile>structsauce_1_1internal_1_1_resolved_binding.html</anchorfile>
      <anchor>a503de5fe9cb4996db536f6f6d6d486be</anchor>
      <arglist>(sauce::shared_ptr&lt; Injector &gt;, TypeIds &amp;) const =0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual IfacePtr</type>
      <name>get</name>
      <anchorfile>structsauce_1_1internal_1_1_resolved_binding.html</anchorfile>
      <anchor>a06fb04d3ee1d8d42d7f93f20a205ff25</anchor>
      <arglist>(BindingPtr, sauce::shared_ptr&lt; Injector &gt;) const =0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual void</type>
      <name>eagerlyProvide</name>
      <anchorfile>structsauce_1_1internal_1_1_opaque_binding.html</anchorfile>
      <anchor>a9cbe103bedc3ea77c5edef5f30a4d74c</anchor>
      <arglist>(OpaqueBindingPtr, sauce::shared_ptr&lt; Injector &gt;) const =0</arglist>
    </member>
    <member kind="friend" protection="private">
      <type>friend class</type>
      <name>DisposalDeleter&lt; Iface, New &gt;</name>
      <anchorfile>classsauce_1_1internal_1_1_new_binding.html</anchorfile>
      <anchor>a95cb0df2fe9c298eb93a4d28a7eaf1b2</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>sauce::internal::NewBinding&lt; Dependency, Scope, Impl(), Allocator &gt;</name>
    <filename>classsauce_1_1internal_1_1_new_binding_3_01_dependency_00_01_scope_00_01_impl_07_08_00_01_allocator_01_4.html</filename>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <base>Binding&lt; Dependency, Scope &gt;</base>
    <member kind="typedef">
      <type>ResolvedBinding&lt; Dependency &gt;::BindingPtr</type>
      <name>BindingPtr</name>
      <anchorfile>classsauce_1_1internal_1_1_new_binding_3_01_dependency_00_01_scope_00_01_impl_07_08_00_01_allocator_01_4.html</anchorfile>
      <anchor>a61b4fdbf0e9a4aa98e5b98d1de046611</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Key&lt; Dependency &gt;::Normalized</type>
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
    <member kind="function">
      <type>Ptr</type>
      <name>provide</name>
      <anchorfile>classsauce_1_1internal_1_1_new_binding_3_01_dependency_00_01_scope_00_01_impl_07_08_00_01_allocator_01_4.html</anchorfile>
      <anchor>a083984217620164fd93c6d89f13576d5</anchor>
      <arglist>(BindingPtr binding, InjectorPtr) const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>dispose</name>
      <anchorfile>classsauce_1_1internal_1_1_new_binding_3_01_dependency_00_01_scope_00_01_impl_07_08_00_01_allocator_01_4.html</anchorfile>
      <anchor>a64aa106ebd5ea13106c6f3b01eb3903c</anchor>
      <arglist>(Iface *iface) const </arglist>
    </member>
    <member kind="function">
      <type>std::string</type>
      <name>getName</name>
      <anchorfile>classsauce_1_1internal_1_1_binding.html</anchorfile>
      <anchor>ae7bf0f08a99b2346aca54988a13bad99</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setName</name>
      <anchorfile>classsauce_1_1internal_1_1_binding.html</anchorfile>
      <anchor>a195b6fc17905a087a72fb6c515736254</anchor>
      <arglist>(std::string const name)</arglist>
    </member>
    <member kind="function">
      <type>NamedTypeId</type>
      <name>getKey</name>
      <anchorfile>structsauce_1_1internal_1_1_resolved_binding.html</anchorfile>
      <anchor>a7ff0341fe08ae52a0f03a35ad6dd3c79</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual void</type>
      <name>validateAcyclic</name>
      <anchorfile>structsauce_1_1internal_1_1_resolved_binding.html</anchorfile>
      <anchor>a503de5fe9cb4996db536f6f6d6d486be</anchor>
      <arglist>(sauce::shared_ptr&lt; Injector &gt;, TypeIds &amp;) const =0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual IfacePtr</type>
      <name>get</name>
      <anchorfile>structsauce_1_1internal_1_1_resolved_binding.html</anchorfile>
      <anchor>a06fb04d3ee1d8d42d7f93f20a205ff25</anchor>
      <arglist>(BindingPtr, sauce::shared_ptr&lt; Injector &gt;) const =0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual void</type>
      <name>eagerlyProvide</name>
      <anchorfile>structsauce_1_1internal_1_1_opaque_binding.html</anchorfile>
      <anchor>a9cbe103bedc3ea77c5edef5f30a4d74c</anchor>
      <arglist>(OpaqueBindingPtr, sauce::shared_ptr&lt; Injector &gt;) const =0</arglist>
    </member>
    <member kind="friend" protection="private">
      <type>friend class</type>
      <name>DisposalDeleter&lt; Iface, New &gt;</name>
      <anchorfile>classsauce_1_1internal_1_1_new_binding_3_01_dependency_00_01_scope_00_01_impl_07_08_00_01_allocator_01_4.html</anchorfile>
      <anchor>a95cb0df2fe9c298eb93a4d28a7eaf1b2</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>sauce::internal::NewBinding&lt; Dependency, Scope, Impl(A1), Allocator &gt;</name>
    <filename>classsauce_1_1internal_1_1_new_binding_3_01_dependency_00_01_scope_00_01_impl_07_a1_08_00_01_allocator_01_4.html</filename>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <base>Binding&lt; Dependency, Scope &gt;</base>
    <member kind="typedef">
      <type>ResolvedBinding&lt; Dependency &gt;::BindingPtr</type>
      <name>BindingPtr</name>
      <anchorfile>classsauce_1_1internal_1_1_new_binding_3_01_dependency_00_01_scope_00_01_impl_07_a1_08_00_01_allocator_01_4.html</anchorfile>
      <anchor>af9c5ce882d9c6dc817e7cc16caf27a2c</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Key&lt; Dependency &gt;::Normalized</type>
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
    <member kind="function">
      <type>Ptr</type>
      <name>provide</name>
      <anchorfile>classsauce_1_1internal_1_1_new_binding_3_01_dependency_00_01_scope_00_01_impl_07_a1_08_00_01_allocator_01_4.html</anchorfile>
      <anchor>adb00e2f224dba0553317ec32258d5073</anchor>
      <arglist>(BindingPtr binding, InjectorPtr injector) const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>dispose</name>
      <anchorfile>classsauce_1_1internal_1_1_new_binding_3_01_dependency_00_01_scope_00_01_impl_07_a1_08_00_01_allocator_01_4.html</anchorfile>
      <anchor>a05e26abfb49e4189cc05d515185ece9a</anchor>
      <arglist>(Iface *iface) const </arglist>
    </member>
    <member kind="function">
      <type>std::string</type>
      <name>getName</name>
      <anchorfile>classsauce_1_1internal_1_1_binding.html</anchorfile>
      <anchor>ae7bf0f08a99b2346aca54988a13bad99</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setName</name>
      <anchorfile>classsauce_1_1internal_1_1_binding.html</anchorfile>
      <anchor>a195b6fc17905a087a72fb6c515736254</anchor>
      <arglist>(std::string const name)</arglist>
    </member>
    <member kind="function">
      <type>NamedTypeId</type>
      <name>getKey</name>
      <anchorfile>structsauce_1_1internal_1_1_resolved_binding.html</anchorfile>
      <anchor>a7ff0341fe08ae52a0f03a35ad6dd3c79</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual void</type>
      <name>validateAcyclic</name>
      <anchorfile>structsauce_1_1internal_1_1_resolved_binding.html</anchorfile>
      <anchor>a503de5fe9cb4996db536f6f6d6d486be</anchor>
      <arglist>(sauce::shared_ptr&lt; Injector &gt;, TypeIds &amp;) const =0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual IfacePtr</type>
      <name>get</name>
      <anchorfile>structsauce_1_1internal_1_1_resolved_binding.html</anchorfile>
      <anchor>a06fb04d3ee1d8d42d7f93f20a205ff25</anchor>
      <arglist>(BindingPtr, sauce::shared_ptr&lt; Injector &gt;) const =0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual void</type>
      <name>eagerlyProvide</name>
      <anchorfile>structsauce_1_1internal_1_1_opaque_binding.html</anchorfile>
      <anchor>a9cbe103bedc3ea77c5edef5f30a4d74c</anchor>
      <arglist>(OpaqueBindingPtr, sauce::shared_ptr&lt; Injector &gt;) const =0</arglist>
    </member>
    <member kind="friend" protection="private">
      <type>friend class</type>
      <name>DisposalDeleter&lt; Iface, New &gt;</name>
      <anchorfile>classsauce_1_1internal_1_1_new_binding_3_01_dependency_00_01_scope_00_01_impl_07_a1_08_00_01_allocator_01_4.html</anchorfile>
      <anchor>a95cb0df2fe9c298eb93a4d28a7eaf1b2</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>sauce::internal::NewBinding&lt; Dependency, Scope, Impl(A1, A2), Allocator &gt;</name>
    <filename>classsauce_1_1internal_1_1_new_binding_3_01_dependency_00_01_scope_00_01_impl_07_a1_00_01_a2_08_00_01_allocator_01_4.html</filename>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <base>Binding&lt; Dependency, Scope &gt;</base>
    <member kind="typedef">
      <type>ResolvedBinding&lt; Dependency &gt;::BindingPtr</type>
      <name>BindingPtr</name>
      <anchorfile>classsauce_1_1internal_1_1_new_binding_3_01_dependency_00_01_scope_00_01_impl_07_a1_00_01_a2_08_00_01_allocator_01_4.html</anchorfile>
      <anchor>a84f4b05b15e24fd4823e16078a9b95a0</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Key&lt; Dependency &gt;::Normalized</type>
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
    <member kind="function">
      <type>Ptr</type>
      <name>provide</name>
      <anchorfile>classsauce_1_1internal_1_1_new_binding_3_01_dependency_00_01_scope_00_01_impl_07_a1_00_01_a2_08_00_01_allocator_01_4.html</anchorfile>
      <anchor>a7d7adbf1019df0fb17d8ce4257d34cc8</anchor>
      <arglist>(BindingPtr binding, InjectorPtr injector) const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>dispose</name>
      <anchorfile>classsauce_1_1internal_1_1_new_binding_3_01_dependency_00_01_scope_00_01_impl_07_a1_00_01_a2_08_00_01_allocator_01_4.html</anchorfile>
      <anchor>aed2e1795194141ccda68efc31463d29a</anchor>
      <arglist>(Iface *iface) const </arglist>
    </member>
    <member kind="function">
      <type>std::string</type>
      <name>getName</name>
      <anchorfile>classsauce_1_1internal_1_1_binding.html</anchorfile>
      <anchor>ae7bf0f08a99b2346aca54988a13bad99</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setName</name>
      <anchorfile>classsauce_1_1internal_1_1_binding.html</anchorfile>
      <anchor>a195b6fc17905a087a72fb6c515736254</anchor>
      <arglist>(std::string const name)</arglist>
    </member>
    <member kind="function">
      <type>NamedTypeId</type>
      <name>getKey</name>
      <anchorfile>structsauce_1_1internal_1_1_resolved_binding.html</anchorfile>
      <anchor>a7ff0341fe08ae52a0f03a35ad6dd3c79</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual void</type>
      <name>validateAcyclic</name>
      <anchorfile>structsauce_1_1internal_1_1_resolved_binding.html</anchorfile>
      <anchor>a503de5fe9cb4996db536f6f6d6d486be</anchor>
      <arglist>(sauce::shared_ptr&lt; Injector &gt;, TypeIds &amp;) const =0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual IfacePtr</type>
      <name>get</name>
      <anchorfile>structsauce_1_1internal_1_1_resolved_binding.html</anchorfile>
      <anchor>a06fb04d3ee1d8d42d7f93f20a205ff25</anchor>
      <arglist>(BindingPtr, sauce::shared_ptr&lt; Injector &gt;) const =0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual void</type>
      <name>eagerlyProvide</name>
      <anchorfile>structsauce_1_1internal_1_1_opaque_binding.html</anchorfile>
      <anchor>a9cbe103bedc3ea77c5edef5f30a4d74c</anchor>
      <arglist>(OpaqueBindingPtr, sauce::shared_ptr&lt; Injector &gt;) const =0</arglist>
    </member>
    <member kind="friend" protection="private">
      <type>friend class</type>
      <name>DisposalDeleter&lt; Iface, New &gt;</name>
      <anchorfile>classsauce_1_1internal_1_1_new_binding_3_01_dependency_00_01_scope_00_01_impl_07_a1_00_01_a2_08_00_01_allocator_01_4.html</anchorfile>
      <anchor>a95cb0df2fe9c298eb93a4d28a7eaf1b2</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>sauce::internal::NewBinding&lt; Dependency, Scope, Impl(A1, A2, A3), Allocator &gt;</name>
    <filename>classsauce_1_1internal_1_1_new_binding_3_01_dependency_00_01_scope_00_01_impl_07_a1_00_01_a2_00_01_a3_08_00_01_allocator_01_4.html</filename>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <base>Binding&lt; Dependency, Scope &gt;</base>
    <member kind="typedef">
      <type>ResolvedBinding&lt; Dependency &gt;::BindingPtr</type>
      <name>BindingPtr</name>
      <anchorfile>classsauce_1_1internal_1_1_new_binding_3_01_dependency_00_01_scope_00_01_impl_07_a1_00_01_a2_00_01_a3_08_00_01_allocator_01_4.html</anchorfile>
      <anchor>a78acb81beafb0cfa8890b76689d7f1a6</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Key&lt; Dependency &gt;::Normalized</type>
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
    <member kind="function">
      <type>Ptr</type>
      <name>provide</name>
      <anchorfile>classsauce_1_1internal_1_1_new_binding_3_01_dependency_00_01_scope_00_01_impl_07_a1_00_01_a2_00_01_a3_08_00_01_allocator_01_4.html</anchorfile>
      <anchor>ac7dc8b381775ea0c31e34124bed7a499</anchor>
      <arglist>(BindingPtr binding, InjectorPtr injector) const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>dispose</name>
      <anchorfile>classsauce_1_1internal_1_1_new_binding_3_01_dependency_00_01_scope_00_01_impl_07_a1_00_01_a2_00_01_a3_08_00_01_allocator_01_4.html</anchorfile>
      <anchor>aebfd496b3b57a80687ca0ebc930e6391</anchor>
      <arglist>(Iface *iface) const </arglist>
    </member>
    <member kind="function">
      <type>std::string</type>
      <name>getName</name>
      <anchorfile>classsauce_1_1internal_1_1_binding.html</anchorfile>
      <anchor>ae7bf0f08a99b2346aca54988a13bad99</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setName</name>
      <anchorfile>classsauce_1_1internal_1_1_binding.html</anchorfile>
      <anchor>a195b6fc17905a087a72fb6c515736254</anchor>
      <arglist>(std::string const name)</arglist>
    </member>
    <member kind="function">
      <type>NamedTypeId</type>
      <name>getKey</name>
      <anchorfile>structsauce_1_1internal_1_1_resolved_binding.html</anchorfile>
      <anchor>a7ff0341fe08ae52a0f03a35ad6dd3c79</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual void</type>
      <name>validateAcyclic</name>
      <anchorfile>structsauce_1_1internal_1_1_resolved_binding.html</anchorfile>
      <anchor>a503de5fe9cb4996db536f6f6d6d486be</anchor>
      <arglist>(sauce::shared_ptr&lt; Injector &gt;, TypeIds &amp;) const =0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual IfacePtr</type>
      <name>get</name>
      <anchorfile>structsauce_1_1internal_1_1_resolved_binding.html</anchorfile>
      <anchor>a06fb04d3ee1d8d42d7f93f20a205ff25</anchor>
      <arglist>(BindingPtr, sauce::shared_ptr&lt; Injector &gt;) const =0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual void</type>
      <name>eagerlyProvide</name>
      <anchorfile>structsauce_1_1internal_1_1_opaque_binding.html</anchorfile>
      <anchor>a9cbe103bedc3ea77c5edef5f30a4d74c</anchor>
      <arglist>(OpaqueBindingPtr, sauce::shared_ptr&lt; Injector &gt;) const =0</arglist>
    </member>
    <member kind="friend" protection="private">
      <type>friend class</type>
      <name>DisposalDeleter&lt; Iface, New &gt;</name>
      <anchorfile>classsauce_1_1internal_1_1_new_binding_3_01_dependency_00_01_scope_00_01_impl_07_a1_00_01_a2_00_01_a3_08_00_01_allocator_01_4.html</anchorfile>
      <anchor>a95cb0df2fe9c298eb93a4d28a7eaf1b2</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>sauce::internal::NewBinding&lt; Dependency, Scope, Impl(A1, A2, A3, A4), Allocator &gt;</name>
    <filename>classsauce_1_1internal_1_1_new_binding_3_01_dependency_00_01_scope_00_01_impl_07_a1_00_01_a2_00_853a6971eda1a9c9b960ed478c28b8ed.html</filename>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <base>Binding&lt; Dependency, Scope &gt;</base>
    <member kind="typedef">
      <type>ResolvedBinding&lt; Dependency &gt;::BindingPtr</type>
      <name>BindingPtr</name>
      <anchorfile>classsauce_1_1internal_1_1_new_binding_3_01_dependency_00_01_scope_00_01_impl_07_a1_00_01_a2_00_853a6971eda1a9c9b960ed478c28b8ed.html</anchorfile>
      <anchor>a36a10d16a448cc236aaca6107be7685a</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Key&lt; Dependency &gt;::Normalized</type>
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
    <member kind="function">
      <type>Ptr</type>
      <name>provide</name>
      <anchorfile>classsauce_1_1internal_1_1_new_binding_3_01_dependency_00_01_scope_00_01_impl_07_a1_00_01_a2_00_853a6971eda1a9c9b960ed478c28b8ed.html</anchorfile>
      <anchor>af9e822602d6c232d3ca0ee4127e3b74e</anchor>
      <arglist>(BindingPtr binding, InjectorPtr injector) const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>dispose</name>
      <anchorfile>classsauce_1_1internal_1_1_new_binding_3_01_dependency_00_01_scope_00_01_impl_07_a1_00_01_a2_00_853a6971eda1a9c9b960ed478c28b8ed.html</anchorfile>
      <anchor>a74270510fe5784d21e48d1b4a82dae1f</anchor>
      <arglist>(Iface *iface) const </arglist>
    </member>
    <member kind="function">
      <type>std::string</type>
      <name>getName</name>
      <anchorfile>classsauce_1_1internal_1_1_binding.html</anchorfile>
      <anchor>ae7bf0f08a99b2346aca54988a13bad99</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setName</name>
      <anchorfile>classsauce_1_1internal_1_1_binding.html</anchorfile>
      <anchor>a195b6fc17905a087a72fb6c515736254</anchor>
      <arglist>(std::string const name)</arglist>
    </member>
    <member kind="function">
      <type>NamedTypeId</type>
      <name>getKey</name>
      <anchorfile>structsauce_1_1internal_1_1_resolved_binding.html</anchorfile>
      <anchor>a7ff0341fe08ae52a0f03a35ad6dd3c79</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual void</type>
      <name>validateAcyclic</name>
      <anchorfile>structsauce_1_1internal_1_1_resolved_binding.html</anchorfile>
      <anchor>a503de5fe9cb4996db536f6f6d6d486be</anchor>
      <arglist>(sauce::shared_ptr&lt; Injector &gt;, TypeIds &amp;) const =0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual IfacePtr</type>
      <name>get</name>
      <anchorfile>structsauce_1_1internal_1_1_resolved_binding.html</anchorfile>
      <anchor>a06fb04d3ee1d8d42d7f93f20a205ff25</anchor>
      <arglist>(BindingPtr, sauce::shared_ptr&lt; Injector &gt;) const =0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual void</type>
      <name>eagerlyProvide</name>
      <anchorfile>structsauce_1_1internal_1_1_opaque_binding.html</anchorfile>
      <anchor>a9cbe103bedc3ea77c5edef5f30a4d74c</anchor>
      <arglist>(OpaqueBindingPtr, sauce::shared_ptr&lt; Injector &gt;) const =0</arglist>
    </member>
    <member kind="friend" protection="private">
      <type>friend class</type>
      <name>DisposalDeleter&lt; Iface, New &gt;</name>
      <anchorfile>classsauce_1_1internal_1_1_new_binding_3_01_dependency_00_01_scope_00_01_impl_07_a1_00_01_a2_00_853a6971eda1a9c9b960ed478c28b8ed.html</anchorfile>
      <anchor>a95cb0df2fe9c298eb93a4d28a7eaf1b2</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>sauce::internal::NewBinding&lt; Dependency, Scope, Impl(A1, A2, A3, A4, A5), Allocator &gt;</name>
    <filename>classsauce_1_1internal_1_1_new_binding_3_01_dependency_00_01_scope_00_01_impl_07_a1_00_01_a2_00_61401ce1bca98f3dca06d5ed085870c7.html</filename>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <base>Binding&lt; Dependency, Scope &gt;</base>
    <member kind="typedef">
      <type>ResolvedBinding&lt; Dependency &gt;::BindingPtr</type>
      <name>BindingPtr</name>
      <anchorfile>classsauce_1_1internal_1_1_new_binding_3_01_dependency_00_01_scope_00_01_impl_07_a1_00_01_a2_00_61401ce1bca98f3dca06d5ed085870c7.html</anchorfile>
      <anchor>aa9e933e94144e90fc6557164fc4fa29f</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Key&lt; Dependency &gt;::Normalized</type>
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
    <member kind="function">
      <type>Ptr</type>
      <name>provide</name>
      <anchorfile>classsauce_1_1internal_1_1_new_binding_3_01_dependency_00_01_scope_00_01_impl_07_a1_00_01_a2_00_61401ce1bca98f3dca06d5ed085870c7.html</anchorfile>
      <anchor>a53fca5b9d8f59b6161bfb22b53073d2c</anchor>
      <arglist>(BindingPtr binding, InjectorPtr injector) const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>dispose</name>
      <anchorfile>classsauce_1_1internal_1_1_new_binding_3_01_dependency_00_01_scope_00_01_impl_07_a1_00_01_a2_00_61401ce1bca98f3dca06d5ed085870c7.html</anchorfile>
      <anchor>a21bfa3a31523ef436dbf303334e4f208</anchor>
      <arglist>(Iface *iface) const </arglist>
    </member>
    <member kind="function">
      <type>std::string</type>
      <name>getName</name>
      <anchorfile>classsauce_1_1internal_1_1_binding.html</anchorfile>
      <anchor>ae7bf0f08a99b2346aca54988a13bad99</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setName</name>
      <anchorfile>classsauce_1_1internal_1_1_binding.html</anchorfile>
      <anchor>a195b6fc17905a087a72fb6c515736254</anchor>
      <arglist>(std::string const name)</arglist>
    </member>
    <member kind="function">
      <type>NamedTypeId</type>
      <name>getKey</name>
      <anchorfile>structsauce_1_1internal_1_1_resolved_binding.html</anchorfile>
      <anchor>a7ff0341fe08ae52a0f03a35ad6dd3c79</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual void</type>
      <name>validateAcyclic</name>
      <anchorfile>structsauce_1_1internal_1_1_resolved_binding.html</anchorfile>
      <anchor>a503de5fe9cb4996db536f6f6d6d486be</anchor>
      <arglist>(sauce::shared_ptr&lt; Injector &gt;, TypeIds &amp;) const =0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual IfacePtr</type>
      <name>get</name>
      <anchorfile>structsauce_1_1internal_1_1_resolved_binding.html</anchorfile>
      <anchor>a06fb04d3ee1d8d42d7f93f20a205ff25</anchor>
      <arglist>(BindingPtr, sauce::shared_ptr&lt; Injector &gt;) const =0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual void</type>
      <name>eagerlyProvide</name>
      <anchorfile>structsauce_1_1internal_1_1_opaque_binding.html</anchorfile>
      <anchor>a9cbe103bedc3ea77c5edef5f30a4d74c</anchor>
      <arglist>(OpaqueBindingPtr, sauce::shared_ptr&lt; Injector &gt;) const =0</arglist>
    </member>
    <member kind="friend" protection="private">
      <type>friend class</type>
      <name>DisposalDeleter&lt; Iface, New &gt;</name>
      <anchorfile>classsauce_1_1internal_1_1_new_binding_3_01_dependency_00_01_scope_00_01_impl_07_a1_00_01_a2_00_61401ce1bca98f3dca06d5ed085870c7.html</anchorfile>
      <anchor>a95cb0df2fe9c298eb93a4d28a7eaf1b2</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>sauce::internal::NewBinding&lt; Dependency, Scope, Impl(A1, A2, A3, A4, A5, A6), Allocator &gt;</name>
    <filename>classsauce_1_1internal_1_1_new_binding_3_01_dependency_00_01_scope_00_01_impl_07_a1_00_01_a2_00_ea89917b454ffdb7dc2c877dae6143e1.html</filename>
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
    <base>Binding&lt; Dependency, Scope &gt;</base>
    <member kind="typedef">
      <type>ResolvedBinding&lt; Dependency &gt;::BindingPtr</type>
      <name>BindingPtr</name>
      <anchorfile>classsauce_1_1internal_1_1_new_binding_3_01_dependency_00_01_scope_00_01_impl_07_a1_00_01_a2_00_ea89917b454ffdb7dc2c877dae6143e1.html</anchorfile>
      <anchor>a07d21f03d32063916d35ad41a6a31b64</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Key&lt; Dependency &gt;::Normalized</type>
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
    <member kind="function">
      <type>Ptr</type>
      <name>provide</name>
      <anchorfile>classsauce_1_1internal_1_1_new_binding_3_01_dependency_00_01_scope_00_01_impl_07_a1_00_01_a2_00_ea89917b454ffdb7dc2c877dae6143e1.html</anchorfile>
      <anchor>a7c983197d2f4ef036245883bbe767fd1</anchor>
      <arglist>(BindingPtr binding, InjectorPtr injector) const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>dispose</name>
      <anchorfile>classsauce_1_1internal_1_1_new_binding_3_01_dependency_00_01_scope_00_01_impl_07_a1_00_01_a2_00_ea89917b454ffdb7dc2c877dae6143e1.html</anchorfile>
      <anchor>a684e209f237c189af7f871327d90ffed</anchor>
      <arglist>(Iface *iface) const </arglist>
    </member>
    <member kind="function">
      <type>std::string</type>
      <name>getName</name>
      <anchorfile>classsauce_1_1internal_1_1_binding.html</anchorfile>
      <anchor>ae7bf0f08a99b2346aca54988a13bad99</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setName</name>
      <anchorfile>classsauce_1_1internal_1_1_binding.html</anchorfile>
      <anchor>a195b6fc17905a087a72fb6c515736254</anchor>
      <arglist>(std::string const name)</arglist>
    </member>
    <member kind="function">
      <type>NamedTypeId</type>
      <name>getKey</name>
      <anchorfile>structsauce_1_1internal_1_1_resolved_binding.html</anchorfile>
      <anchor>a7ff0341fe08ae52a0f03a35ad6dd3c79</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual void</type>
      <name>validateAcyclic</name>
      <anchorfile>structsauce_1_1internal_1_1_resolved_binding.html</anchorfile>
      <anchor>a503de5fe9cb4996db536f6f6d6d486be</anchor>
      <arglist>(sauce::shared_ptr&lt; Injector &gt;, TypeIds &amp;) const =0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual IfacePtr</type>
      <name>get</name>
      <anchorfile>structsauce_1_1internal_1_1_resolved_binding.html</anchorfile>
      <anchor>a06fb04d3ee1d8d42d7f93f20a205ff25</anchor>
      <arglist>(BindingPtr, sauce::shared_ptr&lt; Injector &gt;) const =0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual void</type>
      <name>eagerlyProvide</name>
      <anchorfile>structsauce_1_1internal_1_1_opaque_binding.html</anchorfile>
      <anchor>a9cbe103bedc3ea77c5edef5f30a4d74c</anchor>
      <arglist>(OpaqueBindingPtr, sauce::shared_ptr&lt; Injector &gt;) const =0</arglist>
    </member>
    <member kind="friend" protection="private">
      <type>friend class</type>
      <name>DisposalDeleter&lt; Iface, New &gt;</name>
      <anchorfile>classsauce_1_1internal_1_1_new_binding_3_01_dependency_00_01_scope_00_01_impl_07_a1_00_01_a2_00_ea89917b454ffdb7dc2c877dae6143e1.html</anchorfile>
      <anchor>a95cb0df2fe9c298eb93a4d28a7eaf1b2</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>sauce::internal::NewBinding&lt; Dependency, Scope, Impl(A1, A2, A3, A4, A5, A6, A7), Allocator &gt;</name>
    <filename>classsauce_1_1internal_1_1_new_binding_3_01_dependency_00_01_scope_00_01_impl_07_a1_00_01_a2_00_f19280f71343369648f76178478d1a44.html</filename>
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
    <base>Binding&lt; Dependency, Scope &gt;</base>
    <member kind="typedef">
      <type>ResolvedBinding&lt; Dependency &gt;::BindingPtr</type>
      <name>BindingPtr</name>
      <anchorfile>classsauce_1_1internal_1_1_new_binding_3_01_dependency_00_01_scope_00_01_impl_07_a1_00_01_a2_00_f19280f71343369648f76178478d1a44.html</anchorfile>
      <anchor>a495922e7970a0862584d5ecbe3bb9765</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Key&lt; Dependency &gt;::Normalized</type>
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
    <member kind="function">
      <type>Ptr</type>
      <name>provide</name>
      <anchorfile>classsauce_1_1internal_1_1_new_binding_3_01_dependency_00_01_scope_00_01_impl_07_a1_00_01_a2_00_f19280f71343369648f76178478d1a44.html</anchorfile>
      <anchor>a3e050cb2ef32f0bcba2e0b2de0156a94</anchor>
      <arglist>(BindingPtr binding, InjectorPtr injector) const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>dispose</name>
      <anchorfile>classsauce_1_1internal_1_1_new_binding_3_01_dependency_00_01_scope_00_01_impl_07_a1_00_01_a2_00_f19280f71343369648f76178478d1a44.html</anchorfile>
      <anchor>a50cac53405ebea71df8e1ea2bbd01230</anchor>
      <arglist>(Iface *iface) const </arglist>
    </member>
    <member kind="function">
      <type>std::string</type>
      <name>getName</name>
      <anchorfile>classsauce_1_1internal_1_1_binding.html</anchorfile>
      <anchor>ae7bf0f08a99b2346aca54988a13bad99</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setName</name>
      <anchorfile>classsauce_1_1internal_1_1_binding.html</anchorfile>
      <anchor>a195b6fc17905a087a72fb6c515736254</anchor>
      <arglist>(std::string const name)</arglist>
    </member>
    <member kind="function">
      <type>NamedTypeId</type>
      <name>getKey</name>
      <anchorfile>structsauce_1_1internal_1_1_resolved_binding.html</anchorfile>
      <anchor>a7ff0341fe08ae52a0f03a35ad6dd3c79</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual void</type>
      <name>validateAcyclic</name>
      <anchorfile>structsauce_1_1internal_1_1_resolved_binding.html</anchorfile>
      <anchor>a503de5fe9cb4996db536f6f6d6d486be</anchor>
      <arglist>(sauce::shared_ptr&lt; Injector &gt;, TypeIds &amp;) const =0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual IfacePtr</type>
      <name>get</name>
      <anchorfile>structsauce_1_1internal_1_1_resolved_binding.html</anchorfile>
      <anchor>a06fb04d3ee1d8d42d7f93f20a205ff25</anchor>
      <arglist>(BindingPtr, sauce::shared_ptr&lt; Injector &gt;) const =0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual void</type>
      <name>eagerlyProvide</name>
      <anchorfile>structsauce_1_1internal_1_1_opaque_binding.html</anchorfile>
      <anchor>a9cbe103bedc3ea77c5edef5f30a4d74c</anchor>
      <arglist>(OpaqueBindingPtr, sauce::shared_ptr&lt; Injector &gt;) const =0</arglist>
    </member>
    <member kind="friend" protection="private">
      <type>friend class</type>
      <name>DisposalDeleter&lt; Iface, New &gt;</name>
      <anchorfile>classsauce_1_1internal_1_1_new_binding_3_01_dependency_00_01_scope_00_01_impl_07_a1_00_01_a2_00_f19280f71343369648f76178478d1a44.html</anchorfile>
      <anchor>a95cb0df2fe9c298eb93a4d28a7eaf1b2</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>sauce::internal::NewBinding&lt; Dependency, Scope, Impl(A1, A2, A3, A4, A5, A6, A7, A8), Allocator &gt;</name>
    <filename>classsauce_1_1internal_1_1_new_binding_3_01_dependency_00_01_scope_00_01_impl_07_a1_00_01_a2_00_0c9577aa76def35d1caf86739dcc13db.html</filename>
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
    <base>Binding&lt; Dependency, Scope &gt;</base>
    <member kind="typedef">
      <type>ResolvedBinding&lt; Dependency &gt;::BindingPtr</type>
      <name>BindingPtr</name>
      <anchorfile>classsauce_1_1internal_1_1_new_binding_3_01_dependency_00_01_scope_00_01_impl_07_a1_00_01_a2_00_0c9577aa76def35d1caf86739dcc13db.html</anchorfile>
      <anchor>ae549d5957371b05fbcdb93a2afb0bb32</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Key&lt; Dependency &gt;::Normalized</type>
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
    <member kind="function">
      <type>Ptr</type>
      <name>provide</name>
      <anchorfile>classsauce_1_1internal_1_1_new_binding_3_01_dependency_00_01_scope_00_01_impl_07_a1_00_01_a2_00_0c9577aa76def35d1caf86739dcc13db.html</anchorfile>
      <anchor>aaf050ed6bcaf7d56f02b981ef87044da</anchor>
      <arglist>(BindingPtr binding, InjectorPtr injector) const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>dispose</name>
      <anchorfile>classsauce_1_1internal_1_1_new_binding_3_01_dependency_00_01_scope_00_01_impl_07_a1_00_01_a2_00_0c9577aa76def35d1caf86739dcc13db.html</anchorfile>
      <anchor>a50a4c2f4e109d0d4f458f14691797a99</anchor>
      <arglist>(Iface *iface) const </arglist>
    </member>
    <member kind="function">
      <type>std::string</type>
      <name>getName</name>
      <anchorfile>classsauce_1_1internal_1_1_binding.html</anchorfile>
      <anchor>ae7bf0f08a99b2346aca54988a13bad99</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setName</name>
      <anchorfile>classsauce_1_1internal_1_1_binding.html</anchorfile>
      <anchor>a195b6fc17905a087a72fb6c515736254</anchor>
      <arglist>(std::string const name)</arglist>
    </member>
    <member kind="function">
      <type>NamedTypeId</type>
      <name>getKey</name>
      <anchorfile>structsauce_1_1internal_1_1_resolved_binding.html</anchorfile>
      <anchor>a7ff0341fe08ae52a0f03a35ad6dd3c79</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual void</type>
      <name>validateAcyclic</name>
      <anchorfile>structsauce_1_1internal_1_1_resolved_binding.html</anchorfile>
      <anchor>a503de5fe9cb4996db536f6f6d6d486be</anchor>
      <arglist>(sauce::shared_ptr&lt; Injector &gt;, TypeIds &amp;) const =0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual IfacePtr</type>
      <name>get</name>
      <anchorfile>structsauce_1_1internal_1_1_resolved_binding.html</anchorfile>
      <anchor>a06fb04d3ee1d8d42d7f93f20a205ff25</anchor>
      <arglist>(BindingPtr, sauce::shared_ptr&lt; Injector &gt;) const =0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual void</type>
      <name>eagerlyProvide</name>
      <anchorfile>structsauce_1_1internal_1_1_opaque_binding.html</anchorfile>
      <anchor>a9cbe103bedc3ea77c5edef5f30a4d74c</anchor>
      <arglist>(OpaqueBindingPtr, sauce::shared_ptr&lt; Injector &gt;) const =0</arglist>
    </member>
    <member kind="friend" protection="private">
      <type>friend class</type>
      <name>DisposalDeleter&lt; Iface, New &gt;</name>
      <anchorfile>classsauce_1_1internal_1_1_new_binding_3_01_dependency_00_01_scope_00_01_impl_07_a1_00_01_a2_00_0c9577aa76def35d1caf86739dcc13db.html</anchorfile>
      <anchor>a95cb0df2fe9c298eb93a4d28a7eaf1b2</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>sauce::internal::NewBinding&lt; Dependency, Scope, Impl(A1, A2, A3, A4, A5, A6, A7, A8, A9), Allocator &gt;</name>
    <filename>classsauce_1_1internal_1_1_new_binding_3_01_dependency_00_01_scope_00_01_impl_07_a1_00_01_a2_00_86cb1bff76f0306492018c376ace3b77.html</filename>
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
    <base>Binding&lt; Dependency, Scope &gt;</base>
    <member kind="typedef">
      <type>ResolvedBinding&lt; Dependency &gt;::BindingPtr</type>
      <name>BindingPtr</name>
      <anchorfile>classsauce_1_1internal_1_1_new_binding_3_01_dependency_00_01_scope_00_01_impl_07_a1_00_01_a2_00_86cb1bff76f0306492018c376ace3b77.html</anchorfile>
      <anchor>a653d94519cabf9e82bc00af4d1853f6d</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Key&lt; Dependency &gt;::Normalized</type>
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
    <member kind="function">
      <type>Ptr</type>
      <name>provide</name>
      <anchorfile>classsauce_1_1internal_1_1_new_binding_3_01_dependency_00_01_scope_00_01_impl_07_a1_00_01_a2_00_86cb1bff76f0306492018c376ace3b77.html</anchorfile>
      <anchor>a7fe0481ebe9fab91ed4ecc8f9efd84b0</anchor>
      <arglist>(BindingPtr binding, InjectorPtr injector) const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>dispose</name>
      <anchorfile>classsauce_1_1internal_1_1_new_binding_3_01_dependency_00_01_scope_00_01_impl_07_a1_00_01_a2_00_86cb1bff76f0306492018c376ace3b77.html</anchorfile>
      <anchor>acdfcb77990cadf7984d9cadb21c2ceb6</anchor>
      <arglist>(Iface *iface) const </arglist>
    </member>
    <member kind="function">
      <type>std::string</type>
      <name>getName</name>
      <anchorfile>classsauce_1_1internal_1_1_binding.html</anchorfile>
      <anchor>ae7bf0f08a99b2346aca54988a13bad99</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setName</name>
      <anchorfile>classsauce_1_1internal_1_1_binding.html</anchorfile>
      <anchor>a195b6fc17905a087a72fb6c515736254</anchor>
      <arglist>(std::string const name)</arglist>
    </member>
    <member kind="function">
      <type>NamedTypeId</type>
      <name>getKey</name>
      <anchorfile>structsauce_1_1internal_1_1_resolved_binding.html</anchorfile>
      <anchor>a7ff0341fe08ae52a0f03a35ad6dd3c79</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual void</type>
      <name>validateAcyclic</name>
      <anchorfile>structsauce_1_1internal_1_1_resolved_binding.html</anchorfile>
      <anchor>a503de5fe9cb4996db536f6f6d6d486be</anchor>
      <arglist>(sauce::shared_ptr&lt; Injector &gt;, TypeIds &amp;) const =0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual IfacePtr</type>
      <name>get</name>
      <anchorfile>structsauce_1_1internal_1_1_resolved_binding.html</anchorfile>
      <anchor>a06fb04d3ee1d8d42d7f93f20a205ff25</anchor>
      <arglist>(BindingPtr, sauce::shared_ptr&lt; Injector &gt;) const =0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual void</type>
      <name>eagerlyProvide</name>
      <anchorfile>structsauce_1_1internal_1_1_opaque_binding.html</anchorfile>
      <anchor>a9cbe103bedc3ea77c5edef5f30a4d74c</anchor>
      <arglist>(OpaqueBindingPtr, sauce::shared_ptr&lt; Injector &gt;) const =0</arglist>
    </member>
    <member kind="friend" protection="private">
      <type>friend class</type>
      <name>DisposalDeleter&lt; Iface, New &gt;</name>
      <anchorfile>classsauce_1_1internal_1_1_new_binding_3_01_dependency_00_01_scope_00_01_impl_07_a1_00_01_a2_00_86cb1bff76f0306492018c376ace3b77.html</anchorfile>
      <anchor>a95cb0df2fe9c298eb93a4d28a7eaf1b2</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>sauce::internal::NewBinding&lt; Dependency, Scope, Impl(A1, A2, A3, A4, A5, A6, A7, A8, A9, A10), Allocator &gt;</name>
    <filename>classsauce_1_1internal_1_1_new_binding_3_01_dependency_00_01_scope_00_01_impl_07_a1_00_01_a2_00_4fdc3ca37455c5a5a21192435fa5d161.html</filename>
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
    <templarg></templarg>
    <base>Binding&lt; Dependency, Scope &gt;</base>
    <member kind="typedef">
      <type>ResolvedBinding&lt; Dependency &gt;::BindingPtr</type>
      <name>BindingPtr</name>
      <anchorfile>classsauce_1_1internal_1_1_new_binding_3_01_dependency_00_01_scope_00_01_impl_07_a1_00_01_a2_00_4fdc3ca37455c5a5a21192435fa5d161.html</anchorfile>
      <anchor>a94e841d389bbcedcf301bb34c063bd95</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>Key&lt; Dependency &gt;::Normalized</type>
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
    <member kind="function">
      <type>Ptr</type>
      <name>provide</name>
      <anchorfile>classsauce_1_1internal_1_1_new_binding_3_01_dependency_00_01_scope_00_01_impl_07_a1_00_01_a2_00_4fdc3ca37455c5a5a21192435fa5d161.html</anchorfile>
      <anchor>a8baf06d6f404de26e9d90aa85ca100c9</anchor>
      <arglist>(BindingPtr binding, InjectorPtr injector) const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>dispose</name>
      <anchorfile>classsauce_1_1internal_1_1_new_binding_3_01_dependency_00_01_scope_00_01_impl_07_a1_00_01_a2_00_4fdc3ca37455c5a5a21192435fa5d161.html</anchorfile>
      <anchor>a866cba2a0fa3b1cbee3cfdd676bca04d</anchor>
      <arglist>(Iface *iface) const </arglist>
    </member>
    <member kind="function">
      <type>std::string</type>
      <name>getName</name>
      <anchorfile>classsauce_1_1internal_1_1_binding.html</anchorfile>
      <anchor>ae7bf0f08a99b2346aca54988a13bad99</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setName</name>
      <anchorfile>classsauce_1_1internal_1_1_binding.html</anchorfile>
      <anchor>a195b6fc17905a087a72fb6c515736254</anchor>
      <arglist>(std::string const name)</arglist>
    </member>
    <member kind="function">
      <type>NamedTypeId</type>
      <name>getKey</name>
      <anchorfile>structsauce_1_1internal_1_1_resolved_binding.html</anchorfile>
      <anchor>a7ff0341fe08ae52a0f03a35ad6dd3c79</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual void</type>
      <name>validateAcyclic</name>
      <anchorfile>structsauce_1_1internal_1_1_resolved_binding.html</anchorfile>
      <anchor>a503de5fe9cb4996db536f6f6d6d486be</anchor>
      <arglist>(sauce::shared_ptr&lt; Injector &gt;, TypeIds &amp;) const =0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual IfacePtr</type>
      <name>get</name>
      <anchorfile>structsauce_1_1internal_1_1_resolved_binding.html</anchorfile>
      <anchor>a06fb04d3ee1d8d42d7f93f20a205ff25</anchor>
      <arglist>(BindingPtr, sauce::shared_ptr&lt; Injector &gt;) const =0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual void</type>
      <name>eagerlyProvide</name>
      <anchorfile>structsauce_1_1internal_1_1_opaque_binding.html</anchorfile>
      <anchor>a9cbe103bedc3ea77c5edef5f30a4d74c</anchor>
      <arglist>(OpaqueBindingPtr, sauce::shared_ptr&lt; Injector &gt;) const =0</arglist>
    </member>
    <member kind="friend" protection="private">
      <type>friend class</type>
      <name>DisposalDeleter&lt; Iface, New &gt;</name>
      <anchorfile>classsauce_1_1internal_1_1_new_binding_3_01_dependency_00_01_scope_00_01_impl_07_a1_00_01_a2_00_4fdc3ca37455c5a5a21192435fa5d161.html</anchorfile>
      <anchor>a95cb0df2fe9c298eb93a4d28a7eaf1b2</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>sauce::internal::OpaqueBinding</name>
    <filename>structsauce_1_1internal_1_1_opaque_binding.html</filename>
    <member kind="function" virtualness="pure">
      <type>virtual std::string</type>
      <name>getName</name>
      <anchorfile>structsauce_1_1internal_1_1_opaque_binding.html</anchorfile>
      <anchor>aa22bfd5e4d4459c2e3379ab6802d0285</anchor>
      <arglist>() const =0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual void</type>
      <name>setName</name>
      <anchorfile>structsauce_1_1internal_1_1_opaque_binding.html</anchorfile>
      <anchor>aebbd72acc376d0f4733e51a13f94db99</anchor>
      <arglist>(std::string)=0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual NamedTypeId</type>
      <name>getKey</name>
      <anchorfile>structsauce_1_1internal_1_1_opaque_binding.html</anchorfile>
      <anchor>a16b36cf388c4edeea73f0b18bb376481</anchor>
      <arglist>() const =0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual TypeId</type>
      <name>getScopeKey</name>
      <anchorfile>structsauce_1_1internal_1_1_opaque_binding.html</anchorfile>
      <anchor>afcab860863e3fdec961ff24704c45217</anchor>
      <arglist>() const =0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual void</type>
      <name>eagerlyProvide</name>
      <anchorfile>structsauce_1_1internal_1_1_opaque_binding.html</anchorfile>
      <anchor>a9cbe103bedc3ea77c5edef5f30a4d74c</anchor>
      <arglist>(OpaqueBindingPtr, sauce::shared_ptr&lt; Injector &gt;) const =0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual void</type>
      <name>setDynamicDependencyNames</name>
      <anchorfile>structsauce_1_1internal_1_1_opaque_binding.html</anchorfile>
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
    <member kind="typedef">
      <type>Key&lt; Dependency &gt;::Normalized</type>
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
    <member kind="function">
      <type>void</type>
      <name>validateAcyclic</name>
      <anchorfile>classsauce_1_1internal_1_1_provider_binding.html</anchorfile>
      <anchor>a53cc384b36418bf8661c2c7041f3fdbd</anchor>
      <arglist>(InjectorPtr injector, TypeIds &amp;ids) const </arglist>
    </member>
    <member kind="function">
      <type>Key&lt; Dependency &gt;::Ptr</type>
      <name>provide</name>
      <anchorfile>classsauce_1_1internal_1_1_provider_binding.html</anchorfile>
      <anchor>a8c57c0b8f1609f7ce5ed915c657d450f</anchor>
      <arglist>(BindingPtr binding, InjectorPtr injector) const </arglist>
    </member>
    <member kind="function">
      <type>std::string</type>
      <name>getName</name>
      <anchorfile>classsauce_1_1internal_1_1_binding.html</anchorfile>
      <anchor>ae7bf0f08a99b2346aca54988a13bad99</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setName</name>
      <anchorfile>classsauce_1_1internal_1_1_binding.html</anchorfile>
      <anchor>a195b6fc17905a087a72fb6c515736254</anchor>
      <arglist>(std::string const name)</arglist>
    </member>
    <member kind="function">
      <type>NamedTypeId</type>
      <name>getKey</name>
      <anchorfile>structsauce_1_1internal_1_1_resolved_binding.html</anchorfile>
      <anchor>a7ff0341fe08ae52a0f03a35ad6dd3c79</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual void</type>
      <name>validateAcyclic</name>
      <anchorfile>structsauce_1_1internal_1_1_resolved_binding.html</anchorfile>
      <anchor>a503de5fe9cb4996db536f6f6d6d486be</anchor>
      <arglist>(sauce::shared_ptr&lt; Injector &gt;, TypeIds &amp;) const =0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual IfacePtr</type>
      <name>get</name>
      <anchorfile>structsauce_1_1internal_1_1_resolved_binding.html</anchorfile>
      <anchor>a06fb04d3ee1d8d42d7f93f20a205ff25</anchor>
      <arglist>(BindingPtr, sauce::shared_ptr&lt; Injector &gt;) const =0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual void</type>
      <name>eagerlyProvide</name>
      <anchorfile>structsauce_1_1internal_1_1_opaque_binding.html</anchorfile>
      <anchor>a9cbe103bedc3ea77c5edef5f30a4d74c</anchor>
      <arglist>(OpaqueBindingPtr, sauce::shared_ptr&lt; Injector &gt;) const =0</arglist>
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
      <type>NamedTypeId</type>
      <name>getKey</name>
      <anchorfile>structsauce_1_1internal_1_1_resolved_binding.html</anchorfile>
      <anchor>a7ff0341fe08ae52a0f03a35ad6dd3c79</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual void</type>
      <name>validateAcyclic</name>
      <anchorfile>structsauce_1_1internal_1_1_resolved_binding.html</anchorfile>
      <anchor>a503de5fe9cb4996db536f6f6d6d486be</anchor>
      <arglist>(sauce::shared_ptr&lt; Injector &gt;, TypeIds &amp;) const =0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual IfacePtr</type>
      <name>get</name>
      <anchorfile>structsauce_1_1internal_1_1_resolved_binding.html</anchorfile>
      <anchor>a06fb04d3ee1d8d42d7f93f20a205ff25</anchor>
      <arglist>(BindingPtr, sauce::shared_ptr&lt; Injector &gt;) const =0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual std::string</type>
      <name>getName</name>
      <anchorfile>structsauce_1_1internal_1_1_opaque_binding.html</anchorfile>
      <anchor>aa22bfd5e4d4459c2e3379ab6802d0285</anchor>
      <arglist>() const =0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual void</type>
      <name>setName</name>
      <anchorfile>structsauce_1_1internal_1_1_opaque_binding.html</anchorfile>
      <anchor>aebbd72acc376d0f4733e51a13f94db99</anchor>
      <arglist>(std::string)=0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual TypeId</type>
      <name>getScopeKey</name>
      <anchorfile>structsauce_1_1internal_1_1_opaque_binding.html</anchorfile>
      <anchor>afcab860863e3fdec961ff24704c45217</anchor>
      <arglist>() const =0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual void</type>
      <name>eagerlyProvide</name>
      <anchorfile>structsauce_1_1internal_1_1_opaque_binding.html</anchorfile>
      <anchor>a9cbe103bedc3ea77c5edef5f30a4d74c</anchor>
      <arglist>(OpaqueBindingPtr, sauce::shared_ptr&lt; Injector &gt;) const =0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual void</type>
      <name>setDynamicDependencyNames</name>
      <anchorfile>structsauce_1_1internal_1_1_opaque_binding.html</anchorfile>
      <anchor>a0d34b0bb5be2e0d0546200d480f3ae30</anchor>
      <arglist>(std::vector&lt; std::string &gt; const &amp;)=0</arglist>
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
  <compound kind="dir">
    <name>sauce/internal/</name>
    <path>/Users/phil/code/sauce/sauce/internal/</path>
    <filename>dir_be47d98664d676f0a5d32321a98a37c8.html</filename>
    <dir>sauce/internal/memory/</dir>
    <file>base_injector.h</file>
    <file>binding.h</file>
    <file>bindings.h</file>
    <file>clause.h</file>
    <file>disposal_deleter.h</file>
    <file>implicit_bindings.h</file>
    <file>implicit_provider_binding.h</file>
    <file>injector_binding.h</file>
    <file>key.h</file>
    <file>locker_factory.h</file>
    <file>new_binding.h</file>
    <file>opaque_binding.h</file>
    <file>pending_thrower.h</file>
    <file>provider_binding.h</file>
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
    <file>config.h</file>
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
