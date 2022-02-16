/* This file is generated, do not edit! */
package tensorflow.lite.tools.optimize.debugging.python.debugger;
@:pythonImport("tensorflow.lite.tools.optimize.debugging.python.debugger", "QuantizationDebugOptions") extern class QuantizationDebugOptions {
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
		Initializes debugger options.
		
		Args:
		  layer_debug_metrics: a dict to specify layer debug functions
		    {function_name_str: function} where the function accepts result of
		      NumericVerify Op, which is value difference between float and
		      dequantized op results. The function returns single scalar value.
		  model_debug_metrics: a dict to specify model debug functions
		    {function_name_str: function} where the function accepts outputs from
		      two models, and returns single scalar value for a metric. (e.g.
		      accuracy, IoU)
		  layer_direct_compare_metrics: a dict to specify layer debug functions
		    {function_name_str: function}. The signature is different from that of
		      `layer_debug_metrics`, and this one gets passed (original float value,
		      original quantized value, scale, zero point). The function's
		      implementation is responsible for correctly dequantize the quantized
		      value to compare. Use this one when comparing diff is not enough.
		      (Note) quantized value is passed as int8, so cast to int32 is needed.
		  denylisted_ops: a list of op names which is expected to be removed from
		    quantization.
		  denylisted_nodes: a list of op's output tensor names to be removed from
		    quantization.
		  fully_quantize: Bool indicating whether to fully quantize the model.
		    Besides model body, the input/output will be quantized as well.
		    Corresponding to mlir_quantize's fully_quantize parameter.
		
		Raises:
		  ValueError: when there are duplicate keys
	**/
	@:native("__init__")
	public function ___init__(?layer_debug_metrics:Dynamic, ?model_debug_metrics:Dynamic, ?layer_direct_compare_metrics:Dynamic, ?denylisted_ops:Dynamic, ?denylisted_nodes:Dynamic, ?fully_quantize:Dynamic):Dynamic;
	/**
		Initializes debugger options.
		
		Args:
		  layer_debug_metrics: a dict to specify layer debug functions
		    {function_name_str: function} where the function accepts result of
		      NumericVerify Op, which is value difference between float and
		      dequantized op results. The function returns single scalar value.
		  model_debug_metrics: a dict to specify model debug functions
		    {function_name_str: function} where the function accepts outputs from
		      two models, and returns single scalar value for a metric. (e.g.
		      accuracy, IoU)
		  layer_direct_compare_metrics: a dict to specify layer debug functions
		    {function_name_str: function}. The signature is different from that of
		      `layer_debug_metrics`, and this one gets passed (original float value,
		      original quantized value, scale, zero point). The function's
		      implementation is responsible for correctly dequantize the quantized
		      value to compare. Use this one when comparing diff is not enough.
		      (Note) quantized value is passed as int8, so cast to int32 is needed.
		  denylisted_ops: a list of op names which is expected to be removed from
		    quantization.
		  denylisted_nodes: a list of op's output tensor names to be removed from
		    quantization.
		  fully_quantize: Bool indicating whether to fully quantize the model.
		    Besides model body, the input/output will be quantized as well.
		    Corresponding to mlir_quantize's fully_quantize parameter.
		
		Raises:
		  ValueError: when there are duplicate keys
	**/
	public function new(?layer_debug_metrics:Dynamic, ?model_debug_metrics:Dynamic, ?layer_direct_compare_metrics:Dynamic, ?denylisted_ops:Dynamic, ?denylisted_nodes:Dynamic, ?fully_quantize:Dynamic):Void;
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
	static public var _tf_api_names : Dynamic;
	static public var _tf_api_names_v1 : Dynamic;
}