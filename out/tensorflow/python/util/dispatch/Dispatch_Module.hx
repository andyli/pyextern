/* This file is generated, do not edit! */
package tensorflow.python.util.dispatch;
@:pythonImport("tensorflow.python.util.dispatch") extern class Dispatch_Module {
	static public var DISPATCH_ATTR : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Decorator that adds a dispatch_list attribute to an op.
	**/
	static public function add_dispatch_list(target:Dynamic):Dynamic;
	/**
		Decorator that adds a dispatch handling wrapper to an op.
	**/
	static public function add_dispatch_support(target:Dynamic):Dynamic;
	/**
		Returns the result from the first successful dispatcher for a given op.
		
		Calls the `handle` method of each `OpDispatcher` that has been registered
		to handle `op`, and returns the value from the first successful handler.
		
		Args:
		  op: Python function: the operation to dispatch for.
		  *args: The arguments to the operation.
		  **kwargs: They keyword arguments to the operation.
		
		Returns:
		  The result of the operation, or `NOT_SUPPORTED` if no registered
		  dispatcher can handle the given arguments.
	**/
	static public function dispatch(op:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Decorator to declare that a Python function overrides an op for a type.
		
		The decorated function is used to override `op` if any of the arguments or
		keyword arguments (including elements of lists or tuples) have one of the
		specified types.
		
		Example:
		
		```python
		@dispatch_for_types(math_ops.add, RaggedTensor, RaggedTensorValue)
		def ragged_add(x, y, name=None): ...
		```
		
		Args:
		  op: Python function: the operation that should be overridden.
		  *types: The argument types for which this function should be used.
	**/
	static public function dispatch_for_types(op:Dynamic, ?types:python.VarArgs<Dynamic>):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}