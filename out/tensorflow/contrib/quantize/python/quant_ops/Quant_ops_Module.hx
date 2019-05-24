/* This file is generated, do not edit! */
package tensorflow.contrib.quantize.python.quant_ops;
@:pythonImport("tensorflow.contrib.quantize.python.quant_ops") extern class Quant_ops_Module {
	/**
		Adds a fake quantize layer with fixed quantization interval.
		
		Args:
		  inputs: a tensor containing values to be quantized.
		  init_min: the lower end of quantization interval.
		  init_max: the upper end of quantization interval.
		  scope: Optional scope for name_scope.
		Returns:
		  a tensor containing quantized values.
	**/
	static public function FixedQuantize(inputs:Dynamic, ?init_min:Dynamic, ?init_max:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Adds a layer that collects quantization ranges as last input ranges.
		
		LastValueQuantize creates variables called 'min' and 'max', representing the
		interval used for quantization and clamping.
		
		Args:
		  inputs: a tensor containing values to be quantized.
		  per_channel: (Optional) a boolean specifying whether to use different
		    quantization ranges per output channel.
		  init_min: a float scalar, the initial value for variable min.
		  init_max: a float scalar, the initial value for variable max.
		  vars_collection: (Optional) collection where to store variables for
		    quantization interval ends.
		  name_prefix: name_prefix for created nodes.
		  reuse: whether or not the layer and its variables should be reused. To be
		    able to reuse the layer scope must be given.
		  is_training: Whether the op is applied to a training or eval graph.
		  num_bits: Number of bits to use for quantization, must be between 2 and 8.
		  narrow_range: Whether to use the narrow quantization range
		    [1; 2^num_bits - 1] or wide range [0; 2^num_bits - 1].
		  symmetric: If true, use symmetric quantization limits instead of training
		    the minimum and maximum of each quantization range separately.
		Returns:
		  a tensor containing quantized values.
	**/
	static public function LastValueQuantize(inputs:Dynamic, ?per_channel:Dynamic, ?init_min:Dynamic, ?init_max:Dynamic, ?vars_collection:Dynamic, ?name_prefix:Dynamic, ?reuse:Dynamic, ?is_training:Dynamic, ?num_bits:Dynamic, ?narrow_range:Dynamic, ?symmetric:Dynamic):Dynamic;
	/**
		Adds a layer that collects quantization ranges as EMAs of input ranges.
		
		MovingAvgQuantize creates variables called 'min' and 'max', representing the
		interval used for quantization and clamping.
		
		Args:
		  inputs: a tensor containing values to be quantized.
		  per_channel: (default False) a boolean specifying whether to use different
		    quantization ranges per output channel.
		  init_min: a float scalar, the initial value for variable min.
		  init_max: a float scalar, the initial value for variable max.
		  ema_decay: EMA decay parameter.
		  vars_collection: (Optional) collection where to store variables for
		    quantization interval ends.
		  name_prefix: name_prefix for created nodes.
		  reuse: whether or not the layer and its variables should be reused. To be
		    able to reuse the layer scope must be given.
		  is_training: Whether the op is applied to a training or eval graph.
		  num_bits: Number of bits to use for quantization, must be between 2 and 8.
		  narrow_range: Whether to use the narrow quantization range
		    [1; 2^num_bits - 1] or wide range [0; 2^num_bits - 1].
		  symmetric: If true, use symmetric quantization limits instead of training
		    the minimum and maximum of each quantization range separately.
		Returns:
		  a tensor containing quantized values.
	**/
	static public function MovingAvgQuantize(inputs:Dynamic, ?per_channel:Dynamic, ?init_min:Dynamic, ?init_max:Dynamic, ?ema_decay:Dynamic, ?vars_collection:Dynamic, ?name_prefix:Dynamic, ?reuse:Dynamic, ?is_training:Dynamic, ?num_bits:Dynamic, ?narrow_range:Dynamic, ?symmetric:Dynamic):Dynamic;
	/**
		Adds a fake quantization operation.
		
		Depending on value of per_channel, this operation may do global quantization
		or per channel quantization.  min_var and max_var should have corresponding
		shapes: [1] when per_channel == False and [d] when per_channel == True.
		
		Args:
		  inputs: a tensor containing values to be quantized.
		  min_var: a variable containing quantization range lower end(s).
		  max_var: a variable containing quantization range upper end(s).
		  per_channel: a boolean specifying whether to use per-channel quantization.
		  num_bits: Number of bits to use for quantization, must be between 2 and 8.
		  narrow_range: Whether to use the narrow quantization range
		    [1; 2^num_bits - 1] or wide range [0; 2^num_bits - 1].
		Returns:
		  a tensor containing quantized values.
	**/
	static public function _FakeQuantWithMinMaxVars(inputs:Dynamic, min_var:Dynamic, max_var:Dynamic, per_channel:Dynamic, num_bits:Dynamic, narrow_range:Dynamic):Dynamic;
	static public function _ModelVariable(name:Dynamic, ?shape:Dynamic, ?initializer:Dynamic, ?collections:Dynamic, ?trainable:Dynamic):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}