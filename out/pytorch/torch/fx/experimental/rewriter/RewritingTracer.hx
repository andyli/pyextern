/* This file is generated, do not edit! */
package torch.fx.experimental.rewriter;
@:pythonImport("torch.fx.experimental.rewriter", "RewritingTracer") extern class RewritingTracer {
	static public var __annotations__ : Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		Default dir() implementation.
	**/
	public function __dir__():Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		Default object formatter.
	**/
	public function __format__(format_spec:Dynamic):Dynamic;
	/**
		Return self>=value.
	**/
	public function __ge__(value:Dynamic):Dynamic;
	/**
		Return getattr(self, name).
	**/
	public function __getattribute__(name:Dynamic):Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
	/**
		Construct a Tracer object.
		
		Args:
		
		    autowrap_modules (Tuple[ModuleType]): defaults to `(math, )`,
		        Python modules whose functions should be wrapped automatically
		        without needing to use fx.wrap(). Backward-compatibility for
		        this parameter is guaranteed.
		
		    autowrap_function (Tuple[Callable, ...]): defaults to `()`,
		        Python functions that should be wrapped automatically without
		        needing to use fx.wrap(). Backward compabilibility for this
		        parameter is guaranteed.
		
		    param_shapes_constant (bool): When this flag is set,  calls to shape,
		        size and a few other shape like attributes of a module's parameter
		        will be evaluted directly, rather than returning a new Proxy value
		        for an attribute access. Backward compatibility for this parameter
		        is guaranteed.
		
		    enable_cpatching (bool): defaults to `False`,
		        Allows you to enable/disable monkeypatching of torch functions at the
		        C-level (which captures functins like randn).
		
		        C-level monkeypatching works by directly modifying the PyCFunctionObject*
		        so that calling it returns a different function.
		
		        Turning this on is likely to slow down tracing by 1.5-3x. This
		        parameter is experimental and its backward-compatibility is NOT
		        guaranteed.
		
		.. note::
		    Backwards-compatibility for this API is guaranteed.
	**/
	@:native("__init__")
	public function ___init__(?autowrap_modules:Dynamic, ?autowrap_functions:Dynamic, ?enable_cpatching:Dynamic, ?param_shapes_constant:Dynamic):Dynamic;
	/**
		Construct a Tracer object.
		
		Args:
		
		    autowrap_modules (Tuple[ModuleType]): defaults to `(math, )`,
		        Python modules whose functions should be wrapped automatically
		        without needing to use fx.wrap(). Backward-compatibility for
		        this parameter is guaranteed.
		
		    autowrap_function (Tuple[Callable, ...]): defaults to `()`,
		        Python functions that should be wrapped automatically without
		        needing to use fx.wrap(). Backward compabilibility for this
		        parameter is guaranteed.
		
		    param_shapes_constant (bool): When this flag is set,  calls to shape,
		        size and a few other shape like attributes of a module's parameter
		        will be evaluted directly, rather than returning a new Proxy value
		        for an attribute access. Backward compatibility for this parameter
		        is guaranteed.
		
		    enable_cpatching (bool): defaults to `False`,
		        Allows you to enable/disable monkeypatching of torch functions at the
		        C-level (which captures functins like randn).
		
		        C-level monkeypatching works by directly modifying the PyCFunctionObject*
		        so that calling it returns a different function.
		
		        Turning this on is likely to slow down tracing by 1.5-3x. This
		        parameter is experimental and its backward-compatibility is NOT
		        guaranteed.
		
		.. note::
		    Backwards-compatibility for this API is guaranteed.
	**/
	public function new(?autowrap_modules:Dynamic, ?autowrap_functions:Dynamic, ?enable_cpatching:Dynamic, ?param_shapes_constant:Dynamic):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
	/**
		Return self<value.
	**/
	public function __lt__(value:Dynamic):Dynamic;
	static public var __module__ : Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce__():Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce_ex__(protocol:Dynamic):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		Size of object in memory, in bytes.
	**/
	public function __sizeof__():Dynamic;
	/**
		Return str(self).
	**/
	public function __str__():Dynamic;
	/**
		Abstract classes can override this to customize issubclass().
		
		This is invoked early on by abc.ABCMeta.__subclasscheck__().
		It should return True, False or NotImplemented.  If it returns
		NotImplemented, the normal algorithm is used.  Otherwise, it
		overrides the normal algorithm (and the outcome is cached).
	**/
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	/**
		Find the Python stack frame executing the user code during
		symbolic tracing.
	**/
	public function _find_user_frame():Dynamic;
	public function _module_getattr(attr:Dynamic, attr_val:Dynamic, parameter_proxy_cache:Dynamic):Dynamic;
	/**
		Method that specifies the behavior of this ``Tracer`` when it encounters
		a call to an ``nn.Module`` instance.
		
		By default, the behavior is to check if the called module is a leaf module
		via ``is_leaf_module``. If it is, emit a ``call_module`` node referring to
		``m`` in the ``Graph``. Otherwise, call the ``Module`` normally, tracing through
		the operations in its ``forward`` function.
		
		This method can be overridden to--for example--create nested traced
		GraphModules, or any other behavior you would want while tracing across
		``Module`` boundaries.
		
		Args:
		
		    m (Module): The module for which a call is being emitted
		    forward (Callable): The forward() method of the ``Module`` to be invoked
		    args (Tuple): args of the module callsite
		    kwargs (Dict): kwargs of the module callsite
		
		Return:
		
		    The return value from the Module call. In the case that a ``call_module``
		    node was emitted, this is a ``Proxy`` value. Otherwise, it is whatever
		    value was returned from the ``Module`` invocation.
		
		.. note::
		    Backwards-compatibility for this API is guaranteed.
	**/
	public function call_module(m:Dynamic, forward:Dynamic, args:Dynamic, kwargs:Dynamic):Dynamic;
	static public var check_mutable_operations : Dynamic;
	/**
		A method to specify the behavior of tracing when preparing values to
		be used as arguments to nodes in the ``Graph``.
		
		By default, the behavior includes:
		
		#. Iterate through collection types (e.g. tuple, list, dict) and recursively
		   call ``create_args`` on the elements.
		#. Given a Proxy object, return a reference to the underlying IR ``Node``
		#. Given a non-Proxy Tensor object, emit IR for various cases:
		
		    * For a Parameter, emit a ``get_attr`` node referring to that Parameter
		    * For a non-Parameter Tensor, store the Tensor away in a special
		      attribute referring to that attribute.
		
		This method can be overridden to support more types.
		
		Args:
		
		    a (Any): The value to be emitted as an ``Argument`` in the ``Graph``.
		
		
		Returns:
		
		    The value ``a`` converted into the appropriate ``Argument``
		
		.. note::
		    Backwards-compatibility for this API is guaranteed.
	**/
	public function create_arg(a:Dynamic):Dynamic;
	/**
		Create ``placeholder`` nodes corresponding to the signature of the ``root``
		Module. This method introspects root's signature and emits those
		nodes accordingly, also supporting ``*args`` and ``**kwargs``.
		
		.. warning::
		    This API is experimental and is *NOT* backward-compatible.
	**/
	public function create_args_for_root(root_fn:Dynamic, is_module:Dynamic, ?concrete_args:Dynamic):Dynamic;
	/**
		Inserts a graph node given target, args, kwargs, and name.
		
		This method can be overridden to do extra checking, validation, or
		modification of values used in node creation. For example, one might
		want to disallow in-place operations from being recorded.
		
		.. note::
		    Backwards-compatibility for this API is guaranteed.
	**/
	public function create_node(kind:Dynamic, target:Dynamic, args:Dynamic, kwargs:Dynamic, ?name:Dynamic, ?type_expr:Dynamic):Dynamic;
	/**
		Create a Node from the given arguments, then return the Node
		wrapped in a Proxy object.
		
		If kind = 'placeholder', then we're creating a Node that
		represents the parameter of a function. If we need to encode
		a default parameter, we use the ``args`` tuple. ``args`` is
		otherwise empty for ``placeholder`` Nodes.
		
		.. note::
		    Backwards-compatibility for this API is guaranteed.
	**/
	public function create_proxy(kind:Dynamic, target:Dynamic, args:Dynamic, kwargs:Dynamic, ?name:Dynamic, ?type_expr:Dynamic, ?proxy_factory_fn:Dynamic):Dynamic;
	/**
		A method to specify whether a given ``nn.Module`` is a "leaf" module.
		
		Leaf modules are the atomic units that appear in
		the IR, referenced by ``call_module`` calls. By default,
		Modules in the PyTorch standard library namespace (torch.nn)
		are leaf modules. All other modules are traced through and
		their constituent ops are recorded, unless specified otherwise
		via this parameter.
		
		Args:
		
		    m (Module): The module being queried about
		    module_qualified_name (str): The path to root of this module. For example,
		        if you have a module hierarchy where submodule ``foo`` contains
		        submodule ``bar``, which contains submodule ``baz``, that module will
		        appear with the qualified name ``foo.bar.baz`` here.
		
		.. note::
		    Backwards-compatibility for this API is guaranteed.
	**/
	public function is_leaf_module(m:Dynamic, module_qualified_name:Dynamic):Dynamic;
	/**
		Called when a proxy object is being iterated over, such as
		        when used in control flow.  Normally we don't know what to do because
		        we don't know the value of the proxy, but a custom tracer can attach more
		        information to the graph node using create_node and can choose to return an iterator.
		
		.. note::
		    Backwards-compatibility for this API is guaranteed.
	**/
	public function iter(obj:Dynamic):Dynamic;
	/**
		Called when a proxy object is has the keys() method called.
		        This is what happens when ** is called on a proxy. This should return an
		        iterator it ** is suppose to work in your custom tracer.
		
		.. note::
		    Backwards-compatibility for this API is guaranteed.
	**/
	public function keys(obj:Dynamic):Dynamic;
	/**
		Helper method to find the qualified name of ``mod`` in the Module hierarchy
		of ``root``. For example, if ``root`` has a submodule named ``foo``, which has
		a submodule named ``bar``, passing ``bar`` into this function will return
		the string "foo.bar".
		
		Args:
		
		    mod (str): The ``Module`` to retrieve the qualified name for.
		
		.. note::
		    Backwards-compatibility for this API is guaranteed.
	**/
	public function path_of_module(mod:Dynamic):Dynamic;
	/**
		.. note::
		    Backwards-compatibility for this API is guaranteed.
	**/
	public function proxy(node:Dynamic):Dynamic;
	static public var record_stack_traces : Dynamic;
	/**
		Called when a proxy object is being converted to a boolean, such as
		        when used in control flow.  Normally we don't know what to do because
		        we don't know the value of the proxy, but a custom tracer can attach more
		        information to the graph node using create_node and can choose to return a value.
		
		.. note::
		    Backwards-compatibility for this API is guaranteed.
	**/
	public function to_bool(obj:Dynamic):Dynamic;
	/**
		Trace ``root`` and return the corresponding FX ``Graph`` representation. ``root``
		can either be an ``nn.Module`` instance or a Python callable.
		
		Note that after this call, ``self.root`` may be different from the ``root`` passed
		in here. For example, when a free function is passed to ``trace()``, we will
		create an ``nn.Module`` instance to use as the root and add embedded constants
		to.
		
		
		Args:
		
		    root (Union[Module, Callable]): Either a ``Module`` or a function to be
		        traced through. Backwards-compatibility for this parameter is
		        guaranteed.
		    concrete_args (Optional[Dict[str, any]]): Concrete arguments that should
		        not be treated as Proxies. This parameter is experimental and
		        its backwards-compatibility is *NOT* guaranteed.
		
		Returns:
		
		    A ``Graph`` representing the semantics of the passed-in ``root``.
		
		.. note::
		    Backwards-compatibility for this API is guaranteed.
	**/
	public function trace(root:Dynamic, ?concrete_args:Dynamic):Dynamic;
}