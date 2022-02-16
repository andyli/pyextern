/* This file is generated, do not edit! */
package tensorflow.python.eager.wrap_function;
@:pythonImport("tensorflow.python.eager.wrap_function", "WrappedGraph") extern class WrappedGraph {
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
	public function ___init__(?variable_holder:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(?variable_holder:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Void;
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
		Internal wrap function method with extended func_graph arguments.
	**/
	public function _wrap_function(fn:Dynamic, ?args:Dynamic, ?kwargs:Dynamic, ?signature:Dynamic, ?name:Dynamic):Dynamic;
	public var functions : Dynamic;
	public var variables : Dynamic;
	/**
		Wraps a TF 1.X function and returns an eager-compatible function.
		
		All functions wrapped in the same `WrappedGraph` will have access to the
		same graph (`tf.compat.v1.get_default_graph` to get the graph object
		within a function, or `WrappedGraph.graph` to get the graph outside a
		function). Variables created within the function will be added to the
		`variables` list.
		
		Function inputs: All inputs to the function must be tensors (nested ok),
		with their shapes and dtypes defined in the `signature` argument.
		
		Function outputs:
		
		  * The 1.X function may return tensors, variables, and ops. The wrapped
		    eager-compatible function will always return tensors in the same nested
		    structure.
		  * Variables are replaced with a tensor containing the latest read values.
		  * Returned ops are executed, and replaced with None.
		  * The order of op execution and variable reads in the return is
		    nondeterministic. For example:
		
		    ```
		    def update_var(x):
		      v = tf.Variable(0)
		      op = tf.compat.v1.assign(v, x).op
		      return v, op
		
		    g = WrappedGraph()
		    fn = g.wrap_function(update_var)
		    read_value, _ = fn(tf.constant(3))
		    print(read_value.numpy())  # could be 0 or 3
		    print(g.variables[0].numpy()) # always 3
		    ```
		
		To ensure that ops in the function are executed (e.g. ops added to the
		`tf.GraphKeys.UPDATE_OPS` collection), include them in the function returns.
		
		Args:
		  fn: a 1.X tensorflow function.
		  signature: a possibly nested sequence of `TensorSpecs` specifying the
		    shapes and dtypes of the arguments.
		  name: an optional string name for the function. The function will be saved
		    with key `name` in the `functions` dictionary.
		
		Returns:
		  An eager-compatible function.
	**/
	public function wrap_function(fn:Dynamic, signature:Dynamic, ?name:Dynamic):Dynamic;
}