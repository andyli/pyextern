/* This file is generated, do not edit! */
package tensorflow.lite.python.lite;
@:pythonImport("tensorflow.lite.python.lite", "QuantizationMode") extern class QuantizationMode {
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
	public function ___init__(optimizations:Dynamic, target_spec:Dynamic, representative_dataset:Dynamic, graph_def:Dynamic, ?disable_per_channel:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(optimizations:Dynamic, target_spec:Dynamic, representative_dataset:Dynamic, graph_def:Dynamic, ?disable_per_channel:Dynamic):Void;
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
	public function _is_int16x8_target_required():Dynamic;
	public function _is_int8_target_required():Dynamic;
	public function _smallest_supported_type():Dynamic;
	/**
		Int8 mode requires certain parameters to exist and be compatible.
	**/
	public function _validate_int8_required():Dynamic;
	public function activations_type():Dynamic;
	public function any_optimization_enabled():Dynamic;
	/**
		Checks if the graph contains any training-time quantization ops.
	**/
	public function contains_training_quant_op():Dynamic;
	/**
		Flags to the converter.
	**/
	public function converter_flags(?inference_ty:Dynamic, ?inference_input_ty:Dynamic):Dynamic;
	/**
		If none of the above are true.
	**/
	public function fp32_execution():Dynamic;
	public function is_allow_float():Dynamic;
	public function is_bfloat16_inference_allowed():Dynamic;
	public function is_integer_quantize():Dynamic;
	public function is_post_training_integer_quantize():Dynamic;
	public function is_post_training_integer_quantize_16x8():Dynamic;
	public function is_post_training_integer_quantize_8():Dynamic;
	public function is_training_time_int8_allow_float():Dynamic;
	public function post_training_dynamic_range_int8():Dynamic;
	public function post_training_fp16():Dynamic;
	public function post_training_int16x8_allow_float():Dynamic;
	public function post_training_int16x8_no_float():Dynamic;
	public function post_training_int8_allow_float():Dynamic;
	public function post_training_int8_no_float():Dynamic;
}