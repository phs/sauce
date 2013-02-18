<?xml version='1.0' encoding='UTF-8' standalone='yes' ?>
<tagfile>
  <compound kind="class">
    <name>ApplyFunction</name>
    <filename>class_apply_function.html</filename>
    <templarg></templarg>
    <templarg></templarg>
  </compound>
  <compound kind="class">
    <name>ApplyMethod</name>
    <filename>class_apply_method.html</filename>
    <templarg></templarg>
    <templarg></templarg>
  </compound>
  <compound kind="class">
    <name>ApplyVoidFunction</name>
    <filename>class_apply_void_function.html</filename>
    <templarg></templarg>
    <templarg></templarg>
  </compound>
  <compound kind="class">
    <name>BaseInjector</name>
    <filename>class_base_injector.html</filename>
    <templarg></templarg>
  </compound>
  <compound kind="class">
    <name>BindClause</name>
    <filename>class_bind_clause.html</filename>
    <templarg></templarg>
  </compound>
  <compound kind="class">
    <name>ImplicitProviderBinding</name>
    <filename>class_implicit_provider_binding.html</filename>
    <templarg></templarg>
    <templarg></templarg>
  </compound>
  <compound kind="class">
    <name>NamedClause</name>
    <filename>class_named_clause.html</filename>
    <templarg></templarg>
  </compound>
  <compound kind="class">
    <name>Provider</name>
    <filename>class_provider.html</filename>
    <templarg></templarg>
  </compound>
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
  </compound>
  <compound kind="class">
    <name>sauce::ToProviderClause</name>
    <filename>classsauce_1_1_to_provider_clause.html</filename>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <base>Clause&lt; ProviderDependency &gt;</base>
  </compound>
  <compound kind="class">
    <name>sauce::InClause</name>
    <filename>classsauce_1_1_in_clause.html</filename>
    <templarg></templarg>
    <templarg></templarg>
    <base>sauce::internal::Clause</base>
  </compound>
  <compound kind="class">
    <name>sauce::ToMethodClause</name>
    <filename>classsauce_1_1_to_method_clause.html</filename>
    <templarg></templarg>
    <templarg></templarg>
    <base>sauce::internal::Clause</base>
  </compound>
  <compound kind="class">
    <name>sauce::ToMethodNamingClause</name>
    <filename>classsauce_1_1_to_method_naming_clause.html</filename>
    <templarg>Dependency</templarg>
    <templarg>Signature</templarg>
    <base>sauce::internal::Clause</base>
  </compound>
  <compound kind="class">
    <name>sauce::ToInstanceClause</name>
    <filename>classsauce_1_1_to_instance_clause.html</filename>
    <templarg></templarg>
    <base>sauce::internal::Clause</base>
  </compound>
  <compound kind="class">
    <name>sauce::NamedClause</name>
    <filename>classsauce_1_1_named_clause.html</filename>
    <templarg></templarg>
    <base>sauce::internal::Clause</base>
  </compound>
  <compound kind="class">
    <name>sauce::BindClause</name>
    <filename>classsauce_1_1_bind_clause.html</filename>
    <templarg>Iface</templarg>
    <base>Clause&lt; Named&lt; Iface, Unnamed &gt; &gt;</base>
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
  </compound>
  <compound kind="class">
    <name>sauce::Exception</name>
    <filename>classsauce_1_1_exception.html</filename>
  </compound>
  <compound kind="class">
    <name>sauce::UnboundException</name>
    <filename>classsauce_1_1_unbound_exception.html</filename>
    <base>sauce::Exception</base>
  </compound>
  <compound kind="class">
    <name>sauce::UnboundExceptionFor</name>
    <filename>classsauce_1_1_unbound_exception_for.html</filename>
    <templarg></templarg>
    <base>sauce::UnboundException</base>
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
  </compound>
  <compound kind="class">
    <name>sauce::AbstractModule</name>
    <filename>classsauce_1_1_abstract_module.html</filename>
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
    <member kind="function">
      <type>sauce::shared_ptr&lt; Iface &gt;</type>
      <name>get</name>
      <anchorfile>classsauce_1_1_abstract_provider.html</anchorfile>
      <anchor>a3a11110c10e8d92c8e8fc8bf87ae7609</anchor>
      <arglist>()</arglist>
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
  </compound>
  <compound kind="class">
    <name>sauce::internal::ApplyConstructor</name>
    <filename>classsauce_1_1internal_1_1_apply_constructor.html</filename>
    <templarg>Parameters</templarg>
    <templarg>Constructed_</templarg>
    <templarg></templarg>
  </compound>
  <compound kind="class">
    <name>sauce::internal::ApplyFunction&lt; Parameters, Return_(*)()&gt;</name>
    <filename>classsauce_1_1internal_1_1_apply_function_3_01_parameters_00_01_return___07_5_08_07_08_4.html</filename>
    <templarg></templarg>
    <templarg></templarg>
  </compound>
  <compound kind="class">
    <name>sauce::internal::ApplyVoidFunction&lt; Parameters, void(*)()&gt;</name>
    <filename>classsauce_1_1internal_1_1_apply_void_function_3_01_parameters_00_01void_07_5_08_07_08_4.html</filename>
    <templarg></templarg>
  </compound>
  <compound kind="class">
    <name>sauce::internal::ApplyMethod&lt; Parameters, Return_(Receiver_::*)()&gt;</name>
    <filename>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_07_08_4.html</filename>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
  </compound>
  <compound kind="class">
    <name>sauce::internal::ApplyConstructor&lt; Parameters, Constructed_(), Allocator_ &gt;</name>
    <filename>classsauce_1_1internal_1_1_apply_constructor_3_01_parameters_00_01_constructed___07_08_00_01_allocator___01_4.html</filename>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
  </compound>
  <compound kind="class">
    <name>sauce::internal::ApplyFunction&lt; Parameters, Return_(*)(A0)&gt;</name>
    <filename>classsauce_1_1internal_1_1_apply_function_3_01_parameters_00_01_return___07_5_08_07_a0_08_4.html</filename>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
  </compound>
  <compound kind="class">
    <name>sauce::internal::ApplyVoidFunction&lt; Parameters, void(*)(A0)&gt;</name>
    <filename>classsauce_1_1internal_1_1_apply_void_function_3_01_parameters_00_01void_07_5_08_07_a0_08_4.html</filename>
    <templarg></templarg>
    <templarg></templarg>
  </compound>
  <compound kind="class">
    <name>sauce::internal::ApplyMethod&lt; Parameters, Return_(Receiver_::*)(A0)&gt;</name>
    <filename>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_07_a0_08_4.html</filename>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
  </compound>
  <compound kind="class">
    <name>sauce::internal::ApplyConstructor&lt; Parameters, Constructed_(A0), Allocator_ &gt;</name>
    <filename>classsauce_1_1internal_1_1_apply_constructor_3_01_parameters_00_01_constructed___07_a0_08_00_01_allocator___01_4.html</filename>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
  </compound>
  <compound kind="class">
    <name>sauce::internal::ApplyFunction&lt; Parameters, Return_(*)(A0, A1)&gt;</name>
    <filename>classsauce_1_1internal_1_1_apply_function_3_01_parameters_00_01_return___07_5_08_07_a0_00_01_a1_08_4.html</filename>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
  </compound>
  <compound kind="class">
    <name>sauce::internal::ApplyVoidFunction&lt; Parameters, void(*)(A0, A1)&gt;</name>
    <filename>classsauce_1_1internal_1_1_apply_void_function_3_01_parameters_00_01void_07_5_08_07_a0_00_01_a1_08_4.html</filename>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
  </compound>
  <compound kind="class">
    <name>sauce::internal::ApplyMethod&lt; Parameters, Return_(Receiver_::*)(A0, A1)&gt;</name>
    <filename>classsauce_1_1internal_1_1_apply_method_3_01_parameters_00_01_return___07_receiver___1_1_5_08_07_a0_00_01_a1_08_4.html</filename>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
  </compound>
  <compound kind="class">
    <name>sauce::internal::ApplyConstructor&lt; Parameters, Constructed_(A0, A1), Allocator_ &gt;</name>
    <filename>classsauce_1_1internal_1_1_apply_constructor_3_01_parameters_00_01_constructed___07_a0_00_01_a1_08_00_01_allocator___01_4.html</filename>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
  </compound>
  <compound kind="class">
    <name>sauce::internal::ApplyFunction&lt; Parameters, Return_(*)(A0, A1, A2)&gt;</name>
    <filename>classsauce_1_1internal_1_1_apply_function_3_01_parameters_00_01_return___07_5_08_07_a0_00_01_a1_00_01_a2_08_4.html</filename>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
  </compound>
  <compound kind="class">
    <name>sauce::internal::ApplyVoidFunction&lt; Parameters, void(*)(A0, A1, A2)&gt;</name>
    <filename>classsauce_1_1internal_1_1_apply_void_function_3_01_parameters_00_01void_07_5_08_07_a0_00_01_a1_00_01_a2_08_4.html</filename>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
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
  </compound>
  <compound kind="class">
    <name>sauce::internal::ApplyVoidFunction&lt; Parameters, void(*)(A0, A1, A2, A3)&gt;</name>
    <filename>classsauce_1_1internal_1_1_apply_void_function_3_01_parameters_00_01void_07_5_08_07_a0_00_01_a1_00_01_a2_00_01_a3_08_4.html</filename>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
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
  </compound>
  <compound kind="class">
    <name>sauce::internal::CircularDependencyGuard</name>
    <filename>classsauce_1_1internal_1_1_circular_dependency_guard.html</filename>
    <templarg>ImplicitBindings</templarg>
    <templarg>Dependency</templarg>
  </compound>
  <compound kind="class">
    <name>sauce::internal::BaseInjector</name>
    <filename>classsauce_1_1internal_1_1_base_injector.html</filename>
    <templarg></templarg>
    <member kind="function">
      <type>sauce::auto_ptr&lt; Lock &gt;</type>
      <name>acquireLock</name>
      <anchorfile>classsauce_1_1internal_1_1_base_injector.html</anchorfile>
      <anchor>a10391f6b6167d89af6c27c64f87a58f8</anchor>
      <arglist>()</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>sauce::internal::Binding</name>
    <filename>classsauce_1_1internal_1_1_binding.html</filename>
    <templarg>Dependency_</templarg>
    <templarg>Scope</templarg>
    <base>ResolvedBinding&lt; Dependency_ &gt;</base>
    <base>sauce::internal::InjectorFriend</base>
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
      <anchorfile>classsauce_1_1internal_1_1_resolved_binding.html</anchorfile>
      <anchor>a7ff0341fe08ae52a0f03a35ad6dd3c79</anchor>
      <arglist>() const</arglist>
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
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>isModifier</name>
      <anchorfile>classsauce_1_1internal_1_1_opaque_binding.html</anchorfile>
      <anchor>a08d286d2d97f34d3c5104b4ed95527bc</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual void</type>
      <name>eagerlyInject</name>
      <anchorfile>classsauce_1_1internal_1_1_opaque_binding.html</anchorfile>
      <anchor>a7f2819936b99c569cc29e3114d216328</anchor>
      <arglist>(OpaqueBindingPtr, sauce::shared_ptr&lt; Injector &gt;) const =0</arglist>
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
      <type>void</type>
      <name>get</name>
      <anchorfile>classsauce_1_1internal_1_1_bindings.html</anchorfile>
      <anchor>a687faca79d1ff2cc0562527732a833d3</anchor>
      <arglist>(typename Key&lt; Dependency &gt;::Ptr &amp;injected, InjectorPtr injector, std::string const name) const </arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>sauce::internal::ClauseState</name>
    <filename>classsauce_1_1internal_1_1_clause_state.html</filename>
  </compound>
  <compound kind="class">
    <name>sauce::internal::Clause</name>
    <filename>classsauce_1_1internal_1_1_clause.html</filename>
    <templarg>Dependency</templarg>
  </compound>
  <compound kind="class">
    <name>sauce::internal::DisposalDeleter</name>
    <filename>classsauce_1_1internal_1_1_disposal_deleter.html</filename>
    <templarg></templarg>
    <templarg></templarg>
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
  </compound>
  <compound kind="class">
    <name>sauce::internal::ImplicitBinding</name>
    <filename>classsauce_1_1internal_1_1_implicit_binding.html</filename>
    <templarg></templarg>
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
  </compound>
  <compound kind="class">
    <name>sauce::internal::ImplicitBinding&lt; Named&lt; Provider&lt; ProvidedDependency &gt;, Name &gt; &gt;</name>
    <filename>classsauce_1_1internal_1_1_implicit_binding_3_01_named_3_01_provider_3_01_provided_dependency_01_4_00_01_name_01_4_01_4.html</filename>
    <templarg></templarg>
    <templarg></templarg>
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
  </compound>
  <compound kind="class">
    <name>sauce::internal::ImplicitProviderBinding</name>
    <filename>classsauce_1_1internal_1_1_implicit_provider_binding.html</filename>
    <templarg></templarg>
    <templarg></templarg>
    <base>Binding&lt; Named&lt; Provider&lt; Dependency &gt;, Name &gt;, NoScope &gt;</base>
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
      <anchorfile>classsauce_1_1internal_1_1_resolved_binding.html</anchorfile>
      <anchor>a7ff0341fe08ae52a0f03a35ad6dd3c79</anchor>
      <arglist>() const</arglist>
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
      <anchorfile>classsauce_1_1internal_1_1_resolved_binding.html</anchorfile>
      <anchor>a7ff0341fe08ae52a0f03a35ad6dd3c79</anchor>
      <arglist>() const</arglist>
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
    <name>sauce::internal::InstanceBinding</name>
    <filename>classsauce_1_1internal_1_1_instance_binding.html</filename>
    <templarg></templarg>
    <base>Binding&lt; Dependency, NoScope &gt;</base>
    <member kind="function">
      <type>void</type>
      <name>inject</name>
      <anchorfile>classsauce_1_1internal_1_1_instance_binding.html</anchorfile>
      <anchor>aa12cb8a1f0b19a908464063b023bfa7a</anchor>
      <arglist>(IfacePtr &amp;injected, BindingPtr, InjectorPtr) const </arglist>
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
    <name>sauce::internal::Key</name>
    <filename>classsauce_1_1internal_1_1_key.html</filename>
    <templarg>Iface_</templarg>
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
  </compound>
  <compound kind="class">
    <name>sauce::internal::Key&lt; sauce::shared_ptr&lt; Iface_ &gt; &gt;</name>
    <filename>classsauce_1_1internal_1_1_key_3_01sauce_1_1shared__ptr_3_01_iface___01_4_01_4.html</filename>
    <templarg></templarg>
  </compound>
  <compound kind="class">
    <name>sauce::internal::Key&lt; Named&lt; Iface_, Name_ &gt; &gt;</name>
    <filename>classsauce_1_1internal_1_1_key_3_01_named_3_01_iface___00_01_name___01_4_01_4.html</filename>
    <templarg></templarg>
    <templarg></templarg>
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
  </compound>
  <compound kind="class">
    <name>sauce::internal::LockFactory</name>
    <filename>classsauce_1_1internal_1_1_lock_factory.html</filename>
  </compound>
  <compound kind="class">
    <name>sauce::internal::NullLockFactory</name>
    <filename>classsauce_1_1internal_1_1_null_lock_factory.html</filename>
    <base>sauce::internal::LockFactory</base>
  </compound>
  <compound kind="class">
    <name>sauce::internal::LockerLockFactory</name>
    <filename>classsauce_1_1internal_1_1_locker_lock_factory.html</filename>
    <templarg></templarg>
    <templarg></templarg>
    <base>sauce::internal::LockFactory</base>
  </compound>
  <compound kind="class">
    <name>sauce::internal::MethodBinding</name>
    <filename>classsauce_1_1internal_1_1_method_binding.html</filename>
    <templarg></templarg>
    <templarg></templarg>
    <base>Binding&lt; Dependency, NoScope &gt;</base>
    <member kind="function">
      <type>void</type>
      <name>inject</name>
      <anchorfile>classsauce_1_1internal_1_1_method_binding.html</anchorfile>
      <anchor>aae1876b16ce144b5372d4442432712a9</anchor>
      <arglist>(IfacePtr &amp;injected, BindingPtr, InjectorPtr injector) const </arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>sauce::internal::MethodBinding::InjectParameters::Parameter</name>
    <filename>structsauce_1_1internal_1_1_method_binding_1_1_inject_parameters_1_1_parameter.html</filename>
    <templarg></templarg>
    <templarg>i</templarg>
  </compound>
  <compound kind="struct">
    <name>sauce::internal::MethodBinding::InjectParameters::Passed</name>
    <filename>structsauce_1_1internal_1_1_method_binding_1_1_inject_parameters_1_1_passed.html</filename>
  </compound>
  <compound kind="struct">
    <name>sauce::internal::MethodBinding::ValidateAcyclicParameters::Parameter</name>
    <filename>structsauce_1_1internal_1_1_method_binding_1_1_validate_acyclic_parameters_1_1_parameter.html</filename>
    <templarg></templarg>
    <templarg>i</templarg>
  </compound>
  <compound kind="struct">
    <name>sauce::internal::MethodBinding::ValidateAcyclicParameters::Passed</name>
    <filename>structsauce_1_1internal_1_1_method_binding_1_1_validate_acyclic_parameters_1_1_passed.html</filename>
  </compound>
  <compound kind="class">
    <name>sauce::internal::NewBinding</name>
    <filename>classsauce_1_1internal_1_1_new_binding.html</filename>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <base>Binding&lt; Dependency, Scope &gt;</base>
    <member kind="function">
      <type>void</type>
      <name>inject</name>
      <anchorfile>classsauce_1_1internal_1_1_new_binding.html</anchorfile>
      <anchor>a1ef83c10662cb5bfbdaae8f7b472d707</anchor>
      <arglist>(IfacePtr &amp;injected, BindingPtr binding, InjectorPtr injector) const </arglist>
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
  </compound>
  <compound kind="struct">
    <name>sauce::internal::NewBinding::InjectParameters::Parameter</name>
    <filename>structsauce_1_1internal_1_1_new_binding_1_1_inject_parameters_1_1_parameter.html</filename>
    <templarg></templarg>
    <templarg>i</templarg>
  </compound>
  <compound kind="struct">
    <name>sauce::internal::NewBinding::InjectParameters::Passed</name>
    <filename>structsauce_1_1internal_1_1_new_binding_1_1_inject_parameters_1_1_passed.html</filename>
  </compound>
  <compound kind="struct">
    <name>sauce::internal::NewBinding::ValidateAcyclicParameters::Parameter</name>
    <filename>structsauce_1_1internal_1_1_new_binding_1_1_validate_acyclic_parameters_1_1_parameter.html</filename>
    <templarg></templarg>
    <templarg>i</templarg>
  </compound>
  <compound kind="struct">
    <name>sauce::internal::NewBinding::ValidateAcyclicParameters::Passed</name>
    <filename>structsauce_1_1internal_1_1_new_binding_1_1_validate_acyclic_parameters_1_1_passed.html</filename>
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
      <anchor>aebbd72acc376d0f4733e51a13f94db99</anchor>
      <arglist>(std::string)=0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual NamedTypeId</type>
      <name>getKey</name>
      <anchorfile>classsauce_1_1internal_1_1_opaque_binding.html</anchorfile>
      <anchor>a16b36cf388c4edeea73f0b18bb376481</anchor>
      <arglist>() const =0</arglist>
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
      <name>setDynamicDependencyNames</name>
      <anchorfile>classsauce_1_1internal_1_1_opaque_binding.html</anchorfile>
      <anchor>a0d34b0bb5be2e0d0546200d480f3ae30</anchor>
      <arglist>(std::vector&lt; std::string &gt; const &amp;)=0</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>sauce::internal::PendingThrower</name>
    <filename>classsauce_1_1internal_1_1_pending_thrower.html</filename>
  </compound>
  <compound kind="class">
    <name>sauce::internal::ProviderBinding</name>
    <filename>classsauce_1_1internal_1_1_provider_binding.html</filename>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <base>Binding&lt; Dependency, Scope &gt;</base>
  </compound>
  <compound kind="class">
    <name>sauce::internal::ResolvedBinding</name>
    <filename>classsauce_1_1internal_1_1_resolved_binding.html</filename>
    <templarg>Dependency</templarg>
    <base>sauce::internal::OpaqueBinding</base>
  </compound>
  <compound kind="class">
    <name>sauce::internal::ScopeCacheLineDeleter</name>
    <filename>classsauce_1_1internal_1_1_scope_cache_line_deleter.html</filename>
    <templarg></templarg>
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
  </compound>
  <compound kind="class">
    <name>sauce::internal::TypeId</name>
    <filename>classsauce_1_1internal_1_1_type_id.html</filename>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>throwOutOfScopeException</name>
      <anchorfile>classsauce_1_1internal_1_1_type_id.html</anchorfile>
      <anchor>a56c2171cc2a8de369d51d55a9e141177</anchor>
      <arglist>() const </arglist>
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
  <compound kind="dir">
    <name>sauce/internal</name>
    <path>/Users/phil/code/sauce/sauce/internal/</path>
    <filename>dir_be47d98664d676f0a5d32321a98a37c8.html</filename>
    <dir>sauce/internal/memory</dir>
    <file>apply_variadic.h</file>
    <file>base_injector.h</file>
    <file>binding.h</file>
    <file>bindings.h</file>
    <file>clause.h</file>
    <file>disposal_deleter.h</file>
    <file>implicit_bindings.h</file>
    <file>implicit_provider_binding.h</file>
    <file>injector_binding.h</file>
    <file>instance_binding.h</file>
    <file>key.h</file>
    <file>locker_factory.h</file>
    <file>method_binding.h</file>
    <file>new_binding.h</file>
    <file>opaque_binding.h</file>
    <file>pending_thrower.h</file>
    <file>provider_binding.h</file>
    <file>resolved_binding.h</file>
    <file>scope_cache.h</file>
    <file>self_injector.h</file>
    <file>type_id.h</file>
  </compound>
  <compound kind="dir">
    <name>sauce/internal/memory</name>
    <path>/Users/phil/code/sauce/sauce/internal/memory/</path>
    <filename>dir_f48b53205fbf9ae3fabc86d7cfc44a7a.html</filename>
    <file>boost.h</file>
    <file>std.h</file>
    <file>tr1.h</file>
  </compound>
  <compound kind="dir">
    <name>sauce</name>
    <path>/Users/phil/code/sauce/sauce/</path>
    <filename>dir_fbd01e54bcee7d521bf3ffbb4e509f79.html</filename>
    <dir>sauce/internal</dir>
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
