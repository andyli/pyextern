/* This file is generated, do not edit! */
package tensorflow.contrib.quantize.python.fold_batch_norms;
@:pythonImport("tensorflow.contrib.quantize.python.fold_batch_norms") extern class Fold_batch_norms_Module {
	/**
		Finds batch norm layers and folds them into preceding layers.
		
		Folding only affects the following layers: Conv2D, fully connected, depthwise
		convolution.
		
		Args:
		  graph: Graph to walk and modify.
		  is_training: Bool, true if training.
		  freeze_batch_norm_delay: How many steps to wait before freezing moving mean
		    and variance and using them for batch normalization. This value is used
		    only when is_training is True.
		Raises:
		  ValueError: When batch norm folding fails.
	**/
	static public function FoldBatchNorms(graph:Dynamic, is_training:Dynamic, ?freeze_batch_norm_delay:Dynamic):Dynamic;
	/**
		Makes sure that shapes of input and output tensors are compatible.
		
		Args:
		  op_name: String, operation name, only used in error message.
		  in_tensor: Tensor, input tensor.
		  out_tensor: Tensor, output tensor.
		
		Raises:
		  ValueError: When input and output tensors have different shapes.
	**/
	static public function _AssertShapesMatch(op_name:Dynamic, in_tensor:Dynamic, out_tensor:Dynamic):Dynamic;
	/**
		Clones a given op, replaces its name and some of its inputs.
		
		Args:
		  op: Operation to modify.
		  new_name: String, a new name to set on cloned op.
		  new_inputs: A list of tuples (idx, tensor), each input with corresponding
		    index will be replaced by the given Tensor in the cloned op.
		
		Returns:
		  Operation, the cloned op.
		
		Raises:
		  TypeError: When Operation type is not supported.
		  ValueError: When input shapes are incompatible.
	**/
	static public function _CloneOp(op:Dynamic, new_name:Dynamic, new_inputs:Dynamic):Dynamic;
	/**
		Clones layer_op with input_tensor and weight_tensor as new inputs.
	**/
	static public function _CloneWithNewOperands(layer_op:Dynamic, input_tensor:Dynamic, weight_tensor:Dynamic, batch_to_space_op:Dynamic):Dynamic;
	/**
		Computes batch norm correction params.
		
		   Before batch normalization is frozen:
		   We use batch statistics for batch norm.
		     correction_scale = sigma_b/sigma_mv
		     correction_recip = 1/correction_scale
		     correction_offset = 0
		
		   After batch normalization is frozen:
		    correction_scale = sigma_b/sigma_mv
		    correction_recip = 1
		    correction_offset =  gamma*(mu_b/sigma_b-mu_mv/sigma_mv).
		
		   Batch norm is frozen if global_step > bn_freeze_delay.
		   The corrections ensure that:
		   a) The weights are quantized after scaling by gamma/sigma_mv. This enables
		   smoother training as the scaling on the weights changes slowly, rather than
		   jump across mini-batches
		   b) Changing the values of the corrections allows for one to switch between
		   using batch statistics to using moving mean and average, without requiring
		   changes to batch_norm
		
		
		Args:
		  context: The scope under which we look for batch norm params
		  match: Object containing required batch norm tensors for correction
		    computation.
		  freeze_batch_norm_delay: Delay in steps at which computation switches
		    from regular batch norm to frozen mean and variance.
		
		
		Returns:
		  A tuple of correction_scale, correction_recip, correction_offset
	**/
	static public function _ComputeBatchNormCorrections(context:Dynamic, match:Dynamic, freeze_batch_norm_delay:Dynamic):Dynamic;
	/**
		Folds in batch norm layer into preceding convolution or FC layer.
		
		Creates 3 new nodes, connects their inputs and adds them to the graph:
		mul is cloned into mul_fold, Conv2D or MatMul, or DepthwiseConv2d is cloned
		into respective *_Fold, add is cloned into add_fold.
		
		Args:
		  graph: Graph to modify.
		  context: String, batch norm context, i.e. node into which BatchNorm is
		    nested.
		  has_scaling: Whether the batch norm has scaling enabled.
		  freeze_batch_norm_delay: How many steps to wait before freezing moving mean
		    and variance and using them for batch normalization.
		  is_training: Bool, true if training.
		
		Raises:
		  ValueError: When operation type is not supported, or input and output tensor
		    shapes mismatch for created operations: mul_fold, add_fold.
		
		Returns:
		  A pair of Operations, the first is the original consumer node of the batch
		    norm (../BatchNorm/batchnorm_1/add_1), the second is the consumer node of
		    the folded graph (add_fold).
	**/
	static public function _CreateFoldedOp(graph:Dynamic, context:Dynamic, has_scaling:Dynamic, freeze_batch_norm_delay:Dynamic, is_training:Dynamic):Dynamic;
	/**
		Finds all ops and tensors related to found FusedBatchNorms.
		
		Args:
		  graph: Graph to inspect.
		
		Yields:
		  _FusedBatchNormMatches.
	**/
	static public function _FindFusedBatchNorms(graph:Dynamic):Dynamic;
	/**
		Finds best match of ops matching match_pattern with scope.
		
		   Example: _FindMatchingTensor(graph,'/BatchNorm/moments/Squeeze',
		   'MobilenetV1/MobilenetV1/Conv2d_0/') returns:
		    Tensor('MobilenetV1/Conv2d_0/BatchNorm/moments/Squeeze')
		
		Args:
		  graph: Graph to inspect.
		  match_pattern: Part of the name of the op that we need to match, should
		  be present in the op's name
		  scope: The scope of the op. All the elements of the scope need not be
		  present in the op's name.
		
		Returns:
		  Tensor from graph that provides the best match to the match_pattern and
		  scope
	**/
	static public function _FindMatchingTensor(graph:Dynamic, match_pattern:Dynamic, scope:Dynamic):Dynamic;
	static public function _FoldFusedBatchNormGrad(op:Dynamic, unused_grad_y:Dynamic, grad_mean:Dynamic, grad_var:Dynamic, unused_1:Dynamic, unused_2:Dynamic):Dynamic;
	/**
		Finds fused batch norm layers and folds them into preceding layers.
		
		Folding only affects the following layers: Conv2D, fully connected, depthwise
		convolution.
		
		Args:
		  graph: Graph to walk and modify.
		  is_training: Bool, true if training.
		  freeze_batch_norm_delay: How many steps to wait before freezing moving mean
		    and variance and using them for batch normalization.
		
		Raises:
		  ValueError: When batch norm folding fails.
	**/
	static public function _FoldFusedBatchNorms(graph:Dynamic, is_training:Dynamic, freeze_batch_norm_delay:Dynamic):Dynamic;
	/**
		Finds unfused batch norm layers and folds them into preceding layers.
		
		Folding only affects the following layers: Conv2D, fully connected, depthwise
		convolution.
		
		Args:
		  graph: Graph to walk and modify.
		  is_training: Bool, True if training.
		  freeze_batch_norm_delay: How many steps to wait before freezing moving mean
		    and variance and using them for batch normalization.
		
		Raises:
		  ValueError: When batch norm folding fails.
	**/
	static public function _FoldUnfusedBatchNorms(graph:Dynamic, is_training:Dynamic, freeze_batch_norm_delay:Dynamic):Dynamic;
	/**
		Extracts relevant tensors for folding batch norms.
		
		Args:
		  graph: Graph to inspect.
		  context: The scope under which we look for batch norm params
		  has_scaling: Bool that specifies if scaling is done as part of batch norm.
		
		Returns:
		  _BatchNormMatch containing all required batch norm parameters.
	**/
	static public function _GetBatchNormParams(graph:Dynamic, context:Dynamic, has_scaling:Dynamic):Dynamic;
	/**
		Checks if batch norm  has scaling enabled.
		
		Difference between batch norm with scaling and without is that with scaling:
		
		Rsqrt -> mul -> mul_1
		            \-> mul_2
		
		where
		  mul multiplies gamma by inverse square root of EMA of batch variance,
		  mul_1 multiplies output of mul with output from the base operation
		    (convolution, FC or depthwise convolution),
		  mul_2 multiplies output of mul with EMA of batch mean,
		and without scaling:
		
		Rsqrt -> mul
		     \-> mul_1
		
		where
		  mul multiplies the inverse square root of EMA of batch variance with output
		    from the base operation,
		  mul_1 multiplies inverse square root of EMA of batch variance with EMA
		    of batch mean.
		
		Args:
		  graph: Graph to inspect.
		  input_to_ops_map: InputToOps object containing mapping from tensor's name
		    to ops that take it as input.
		  bn: Batch norm layer prefix string.
		
		Returns:
		  A boolean indicating whether this batch norm layer has scaling enabled.
	**/
	static public function _HasScaling(graph:Dynamic, input_to_ops_map:Dynamic, bn:Dynamic):Dynamic;
	/**
		Checks that the output of the unfused batch norm has consumers.
	**/
	static public function _IsValidUnfusedBatchNorm(graph:Dynamic, context:Dynamic):Dynamic;
	static public var _OP_CLONER : Dynamic;
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