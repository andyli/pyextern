/* This file is generated, do not edit! */
package tensorflow.python.autograph.utils;
@:pythonImport("tensorflow.python.autograph.utils") extern class Utils_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Wraps any Tensor arguments with an identity op.
		
		Any other argument, including Variables, is returned unchanged.
		
		Args:
		  *args: Any arguments. Must contain at least one element.
		
		Returns:
		  Same as *args, with Tensor instances replaced as described.
		
		Raises:
		  ValueError: If args doesn't meet the requirements.
	**/
	static public function alias_tensors(?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		Create a TF control dependency on the return values of a function.
		
		If the function had no return value, a no-op context is returned.
		
		Args:
		  return_value: The return value to set as control dependency.
		
		Returns:
		  A context manager.
	**/
	static public function control_dependency_on_returns(return_value:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Converts a list append call inline.
	**/
	static public function dynamic_list_append(target:Dynamic, element:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Helper that wraps a callable to py_func.
		
		The helper passes tensor arguments through the py_func interface. Non-tensor
		arguments are allowed, and will be passed to f directly. Note that non-tensor
		arguments are captured by f will not update every time the wrapper is
		called (this is consistent with its argument list, which only includes
		the tensor arguments). In general, it's safest not to reuse this wrapper.
		
		Args:
		  f: Callable
		  return_dtypes: None, individual of tuple/list of DType or MatchDType, the
		      data type for each of f's return value(s). Set to None if f has no
		      return values or use_dummy_return is True. Use MatchDType to define a
		      dtype identical to that of `i`th argument (argument 0 is the first);
		      an argument must of Tensor type if it is to be used with MatchDType.
		  args: Positional arguments for f, as list or tuple.
		  kwargs: Keyword arguments for f, as dict with string keys. May be None.
		  use_dummy_return: If True, the function will return a dummy value of 1
		      and discard its actual return value.
		Returns:
		  The return values of f converted to tensor.
		Raises:
		  ValueError: if any of the arguments are incorrect.
	**/
	static public function wrap_py_func(f:Dynamic, return_dtypes:Dynamic, args:Dynamic, ?kwargs:Dynamic, ?use_dummy_return:Dynamic):Dynamic;
}