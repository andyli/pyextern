/* This file is generated, do not edit! */
package tensorflow.python.eager._function;
@:pythonImport("tensorflow.python.eager.function", "_ForwardBackwardCall") extern class _ForwardBackwardCall {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
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
		Collects information about the function call.
		
		Args:
		  functions: An object which produces forward and backward functions, either
		    a _DelayedRewriteGradientFunctions or a _TapeGradientFunctions object.
		  inference_args: A flat list of Tensors, arguments to the inference
		    function.
		  input_tangents: A flat list of Tensors, jvps associated with
		    `inference_args`.
		  tape_watching: Boolean, with True indicating that recording is necessary.
	**/
	@:native("__init__")
	public function ___init__(functions:Dynamic, inference_args:Dynamic, input_tangents:Dynamic, tape_watching:Dynamic):Dynamic;
	/**
		Collects information about the function call.
		
		Args:
		  functions: An object which produces forward and backward functions, either
		    a _DelayedRewriteGradientFunctions or a _TapeGradientFunctions object.
		  inference_args: A flat list of Tensors, arguments to the inference
		    function.
		  input_tangents: A flat list of Tensors, jvps associated with
		    `inference_args`.
		  tape_watching: Boolean, with True indicating that recording is necessary.
	**/
	public function new(functions:Dynamic, inference_args:Dynamic, input_tangents:Dynamic, tape_watching:Dynamic):Void;
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
	static public var __slots__ : Dynamic;
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
	public var _functions : Dynamic;
	public var _inference_args : Dynamic;
	public var _input_tangents : Dynamic;
	public var _tape_watching : Dynamic;
	/**
		Builds or retrieves a forward function for this call.
	**/
	public function forward():Dynamic;
	/**
		Given outputs from the execution of `forward`, records the operation.
	**/
	public function record(flat_outputs:Dynamic):Dynamic;
}