/* This file is generated, do not edit! */
package tensorflow.contrib.quantize.python.quantize;
@:pythonImport("tensorflow.contrib.quantize.python.quantize") extern class Quantize_Module {
	/**
		Updates graph with quantization operations.
		
		Currently we quantize the following tensors:
		* Conv/MatMul: Quantize the weights if it matches.
		* Activation: Quantize the output if it matches.
		* Bypass/Post-activation Bypass: Quantize both input and output
		  if it matches.
		
		Args:
		  graph: Graph to modify.
		  is_training: Whether quantizing training graph or eval graph.
		  weight_bits: Number of bits to use for quantizing weights.
		  activation_bits: Number of bits to use for quantizing activations.
		  symmetric: (Optional) If true, use symmetric quantization limits instead of
		    training the minimum and maximum of each quantization range separately.
		  ema_decay: (Optional) Float, EMA decay parameter.  EMA is used to update
		    quantization intervals for quantizing activations (see here about EMA:
		    https://en.wikipedia.org/wiki/Moving_average#Exponential_moving_average).
		  quant_delay: (Optional, default None) Int, count of global steps for which
		    to delay quantization.  This helps weights stabilize at the start of
		    training.
		  vars_collection: (Optional) Collection where to store the variables for
		    quantization interval ends.
		  scope: The scope to be transformed. If it's not None, only the ops which
		    are in this scope will be transformed.
		Raises:
		  ValueError: When quantization fails.
	**/
	static public function Quantize(graph:Dynamic, is_training:Dynamic, ?weight_bits:Dynamic, ?activation_bits:Dynamic, ?symmetric:Dynamic, ?ema_decay:Dynamic, ?quant_delay:Dynamic, ?vars_collection:Dynamic, ?scope:Dynamic):Dynamic;
	static public var _ACTIVATION_TYPES : Dynamic;
	/**
		Adds the context to the name if it exists.
	**/
	static public function _AddContextToName(context:Dynamic, name:Dynamic):Dynamic;
	/**
		Check if the output of an op should be quantized.
		
		Args:
		  src_op: op to be checked
		  quantized_ops: Set of previously quantized activation ops.
		
		Returns:
		  Boolean specifying if output should be quantized or not.
	**/
	static public function _CheckIfQuantizableOp(src_op:Dynamic, quantized_ops:Dynamic):Dynamic;
	/**
		Matches layers in graph to quantize.
		
		The following patterns get matched. Nodes surrounded by [] will be
		optionally matched:
		
		        weight|folded_weight
		              /
		       conv|fc
		          |
		    [batch_to_space_nd]
		          |
		  [post_conv_correction]
		          |
		   [biasadd|folded_bias]
		          |
		       [bypass]
		          |
		      activation
		          |
		 [post_activation_bypass]
		
		Match replacements:
		  If weight|folded_weight is found, FakeQuant is added afterwards.
		  If bypass is found, FakeQuant is added before and after.
		  If activation is found, FakeQuant is added afterwards.
		  If post_activation_bypass is found, FakeQuant is added afterwards.
		
		Args:
		  graph: Graph to perform match on.
		
		Returns:
		  list of _LayerMatches.
	**/
	static public function _FindLayersToQuantize(graph:Dynamic):Dynamic;
	/**
		Returns True if the tensor is followed by a FakeQuant.
	**/
	static public function _FollowedByFakeQuant(tensor:Dynamic):Dynamic;
	/**
		Gets the root context name from the op name.
	**/
	static public function _GetContextFromOp(op:Dynamic):Dynamic;
	static public var _INTERMEDIATE_OP : Dynamic;
	/**
		Inserts a quant op between a producer op and (multiple) consumer ops.
		
		Args:
		  context: Context where producer and consumer operations are nested.
		  name: Name for the new quantization op within the context.
		  producer: Producer operation of the pairs where quantization will be
		    inserted.
		  consumers: Consumer operations of the pairs.
		  is_training: Whether quantizing training graph or eval graph.
		  moving_avg: Specifies whether to use exponential moving average or just
		    the last value seen.
		  init_min: Starting minimum value for the new quantization op.
		  init_max: Starting maximum value for the new quantization op.
		  bits: Number of bits to use for quantization, must be between 2 and 8.
		  symmetric: (Optional) If true, use symmetric quantization limits instead of
		    training the minimum and maximum of each quantization range separately.
		  ema_decay: (Optional) Float, EMA decay parameter.  EMA is used to update
		    quantization intervals for quantizing activations (see here about EMA:
		    https://en.wikipedia.org/wiki/Moving_average#Exponential_moving_average).
		  quant_delay: (Optional, default None) Int, count of global steps for which
		    to delay quantization.  This helps weights stabilize at the start of
		    training.
		  vars_collection: (Optional) Collection where to store the variables for
		    quantization interval ends.
		  narrow_range: Whether to use the narrow quantization range
		    [1; 2^bits - 1] or wide range [0; 2^bits - 1].
		  producer_scope: The restriction of producer scope. If not None, the new op
		    will be inserted only when the producer is in this scope.
		  consumer_scope: The restriction of consumer scope. If not None, the new op
		    will be inserted only when all the consumers are in this scope.
		Raises:
		  ValueError: When producer operation is not directly connected to the
		    consumer operation.
	**/
	static public function _InsertQuantOp(context:Dynamic, name:Dynamic, producer:Dynamic, consumers:Dynamic, is_training:Dynamic, ?moving_avg:Dynamic, ?init_min:Dynamic, ?init_max:Dynamic, ?bits:Dynamic, ?symmetric:Dynamic, ?ema_decay:Dynamic, ?quant_delay:Dynamic, ?vars_collection:Dynamic, ?narrow_range:Dynamic, ?producer_scope:Dynamic, ?consumer_scope:Dynamic):Dynamic;
	/**
		Skip quantizing conv->identity->Batch norm layers.
		
		Args:
		  activation_op: Activation op detected by layer matching pattern
		
		Returns:
		  skip_layer: boolean, true when conv->identity->batch norm is detected.
	**/
	static public function _IsSkipLayer(activation_op:Dynamic):Dynamic;
	static public var _PASS_THROUGH_OP : Dynamic;
	static public var _QUANTIZABLE_TYPES : Dynamic;
	static public var _QUANTIZATION_OP : Dynamic;
	/**
		Quantize intermediate activation tensors after addition and multiplication.
		
		Args:
		  quantized_ops: Set of previously quantized activation ops.
		  graph: Graph to modify.
		  is_training: Whether quantizing training graph or eval graph.
		  activation_bits: Number of bits to use for quantizing activations.
		  ema_decay: (Optional) Float, EMA decay parameter.  EMA is used to update
		    quantization intervals for quantizing activations (see here about EMA:
		    https://en.wikipedia.org/wiki/Moving_average#Exponential_moving_average).
		  quant_delay: (Optional, default None) Int, count of global steps for which
		    to delay quantization.  This helps weights stabilize at the start of
		    training.
		  vars_collection: (Optional) Collection where to store the variables for
		    quantization interval ends.
		  scope: The scope to be transformed. If it's not None, only the ops which are
		    in this scope will be transformed.
		
		Raises:
		  ValueError: When quantization fails.
	**/
	static public function _QuantizeActivationLayers(quantized_ops:Dynamic, graph:Dynamic, is_training:Dynamic, ?activation_bits:Dynamic, ?ema_decay:Dynamic, ?quant_delay:Dynamic, ?vars_collection:Dynamic, ?scope:Dynamic):Dynamic;
	static public var _RELU_TYPES : Dynamic;
	static public var _VALID_ACTIVATION_OP : Dynamic;
	static public var _VALID_SRC_OP : Dynamic;
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