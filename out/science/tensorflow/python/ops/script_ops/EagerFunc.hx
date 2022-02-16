/* This file is generated, do not edit! */
package tensorflow.python.ops.script_ops;
@:pythonImport("tensorflow.python.ops.script_ops", "EagerFunc") extern class EagerFunc {
	/**
		Calls `self._func` in eager mode, recording the tape if needed.
	**/
	public function __call__(device:Dynamic, token:Dynamic, args:Dynamic):Dynamic;
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
		Constructs an EagerFunc.
		
		Args:
		  func: The function to wrap.
		  Tout: A list of datatypes for the output; an empty list if the output is
		    None.
		  is_grad_func: Whether this EagerFunc is the gradient of another
		    EagerPyFunc.
	**/
	@:native("__init__")
	public function ___init__(func:Dynamic, Tout:Dynamic, is_grad_func:Dynamic):Dynamic;
	/**
		Constructs an EagerFunc.
		
		Args:
		  func: The function to wrap.
		  Tout: A list of datatypes for the output; an empty list if the output is
		    None.
		  is_grad_func: Whether this EagerFunc is the gradient of another
		    EagerPyFunc.
	**/
	public function new(func:Dynamic, Tout:Dynamic, is_grad_func:Dynamic):Void;
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
		Passes `args` to `self._func`, which is executed eagerly.
	**/
	public function _call(device:Dynamic, args:Dynamic):Dynamic;
	/**
		Converts `value` to a tensor of type `dtype`, with error checking.
		
		Args:
		  value: The tensor to convert.
		  dtype: The desired dtype.
		
		Returns:
		  A tensor of type `dtype`, or a zeros tensor if value is None and
		  this function is in fact a gradient function.
		
		Raises:
		  RuntimeError: if `value` is a variable.
	**/
	public function _convert(value:Dynamic, dtype:Dynamic):Dynamic;
	/**
		Indicates the object shall support gradient ops.
		
		This function is internally used by _EagerPyFuncGrad to support
		graph mode gradient of EagerFunc via tf.gradient().
	**/
	public function set_support_graph_mode_gradient():Dynamic;
}