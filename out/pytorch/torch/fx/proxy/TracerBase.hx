/* This file is generated, do not edit! */
package torch.fx.proxy;
@:pythonImport("torch.fx.proxy", "TracerBase") extern class TracerBase {
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
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Void;
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
	static public var check_mutable_operations : Dynamic;
	/**
		A method that lowers the objects seen as arguments during symbolic evaluation
		into Argument types that can be stored in IR.
		
		Can be override to support more trace-specific types.
		
		.. note::
		    Backwards-compatibility for this API is guaranteed.
	**/
	public function create_arg(a:Dynamic):Dynamic;
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
}