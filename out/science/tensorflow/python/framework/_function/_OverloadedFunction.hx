/* This file is generated, do not edit! */
package tensorflow.python.framework._function;
@:pythonImport("tensorflow.python.framework.function", "_OverloadedFunction") extern class _OverloadedFunction {
	/**
		Call self as a function.
	**/
	public function __call__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		Creates _DefinedFunction.
		
		Args:
		  func:  A python callable which constructs a tf function body.
		  argnames: A list of strings for function argument names.
		  func_name: The function name. Defaults to None, in which derives from
		    'func'.
		  grad_func: This function's gradient function, if not None. Defaults
		    to None.
		  python_grad_func: A python callable implementing the gradient of
		    the function python-side.
		  out_names: A list of strings for the function return value names.
		  **kwargs: The keyword arguments. **kwargs is passed to every call
		    site of this function.
		
		Raises:
		  ValueError: The function definition is invalid.
	**/
	@:native("__init__")
	public function ___init__(func:Dynamic, argnames:Dynamic, ?func_name:Dynamic, ?grad_func:Dynamic, ?python_grad_func:Dynamic, ?out_names:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Creates _DefinedFunction.
		
		Args:
		  func:  A python callable which constructs a tf function body.
		  argnames: A list of strings for function argument names.
		  func_name: The function name. Defaults to None, in which derives from
		    'func'.
		  grad_func: This function's gradient function, if not None. Defaults
		    to None.
		  python_grad_func: A python callable implementing the gradient of
		    the function python-side.
		  out_names: A list of strings for the function return value names.
		  **kwargs: The keyword arguments. **kwargs is passed to every call
		    site of this function.
		
		Raises:
		  ValueError: The function definition is invalid.
	**/
	public function new(func:Dynamic, argnames:Dynamic, ?func_name:Dynamic, ?grad_func:Dynamic, ?python_grad_func:Dynamic, ?out_names:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Void;
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
		Instantiate this function given input argument types.
		
		Args:
		  input_types: A list of data types for the inputs.
		
		Returns:
		  _DefinedFunction for the given input types.
	**/
	public function instantiate(input_types:Dynamic):Dynamic;
}