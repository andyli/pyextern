/* This file is generated, do not edit! */
package tensorflow.python.ops.nn_grad;
@:pythonImport("tensorflow.python.ops.nn_grad") extern class Nn_grad_Module {
	static public function _AvgPool3DGrad(op:Dynamic, grad:Dynamic):Dynamic;
	static public function _AvgPool3DGradGrad(op:Dynamic, grad:Dynamic):Dynamic;
	static public function _AvgPoolGrad(op:Dynamic, grad:Dynamic):Dynamic;
	static public function _AvgPoolGradGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Return the gradients for the 3 inputs of BatchNorm.
		
		Args:
		  op: The BatchNormOp for which we need to compute gradients.
		  version: Integer indicating which version to use of the fused batch
		    norm gradient.
		  *grad: An argument list for tensors of gradients wrt the outputs
		    with grad[0] as grad_y.
		
		Returns:
		  grad_x: gradient for x, which is scale * rsqrt(variance + epsilon) *
		          [grad_y - mean(grad_y) - (x - mean(x)) *
		          mean(grad_y * (x - mean(x))) / (variance + epsilon)]
		          in training mode; grad_y * scale * rsqrt(pop_variance + epsilon)
		          in freeze mode.
		
		  grad_scale: gradient for scale, which is sum(grad_y * (x - mean(x)) *
		              rsqrt(variance + epsilon)) in training mode;
		              sum(grad_y * (x - pop_mean) * rsqrt(pop_variance + epsilon))
		              in freeze mode.
		
		  grad_offset: gradient for offset, which is sum(grad_y) in training mode;
		               sum(grad_y) in freeze mode.
	**/
	static public function _BaseFusedBatchNormGrad(op:Dynamic, version:Dynamic, ?grad:python.VarArgs<Dynamic>):Dynamic;
	/**
		Returns the gradients for the 3 inputs of BatchNorm.
		
		Args:
		  grad_y: A `Tensor` of 4 or 5 dimensions for gradient for y.
		  x: A `Tensor` of 4 or 5 dimensions for x.
		  scale: A `Tensor` of 1 dimension for scaling.
		  pop_mean: A `Tensor` of 1 dimension for the population mean. Only used when
		    is_training=False.
		  pop_var: A `Tensor` of 1 dimension for the population variance. Only used
		    when is_training=False.
		  epsilon: A small float number added to the variance of x.
		  data_format: The data format for input. Either b"NHWC" or b"NCHW".
		  is_training: A bool value to indicate the operation is for training
		    (default) or inference.
		
		Returns:
		  A tuple (grad_x, grad_scale, grad_offset), where grad_x is the gradient
		  for x, grad_scale the gradient for scale, and grad_offset the gradient
		  for offset.
	**/
	static public function _BatchNormGrad(grad_y:Dynamic, x:Dynamic, scale:Dynamic, pop_mean:Dynamic, pop_var:Dynamic, epsilon:Dynamic, data_format:Dynamic, ?is_training:Dynamic):Dynamic;
	/**
		Return the gradients for the 5 inputs of BatchNormWithGlobalNormalization.
		
		We do not backprop anything for the mean and var intentionally as they are
		not being trained with backprop in the operation.
		
		Args:
		  op: The BatchNormOp for which we need to generate gradients.
		  grad: Tensor.  The gradients passed to the BatchNormOp.
		
		Returns:
		  dx: Backprop for input, which is (grad * (g * rsqrt(v + epsilon)))
		  dm: Backprop for mean, which is
		      sum_over_rest(grad * g) * (-1 / rsqrt(v + epsilon))
		  dv: Backprop for variance, which is
		      sum_over_rest(grad * g * (x - m)) * (-1/2) * (v + epsilon) ^ (-3/2)
		  db: Backprop for beta, which is grad reduced in all except the
		      last dimension.
		  dg: Backprop for gamma, which is (grad * ((x - m) * rsqrt(v + epsilon)))
	**/
	static public function _BatchNormWithGlobalNormalizationGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Return the gradients for the 2 inputs of bias_op.
		
		The first input of unused_bias_op is the tensor t, and its gradient is
		just the gradient the unused_bias_op received.
		
		The second input of unused_bias_op is the bias vector which has one fewer
		dimension than "received_grad" (the batch dimension.)  Its gradient is the
		received gradient Summed on the batch dimension, which is the first dimension.
		
		Args:
		  op: The BiasOp for which we need to generate gradients.
		  received_grad: Tensor.  The gradients passed to the BiasOp.
		
		Returns:
		  Two tensors, the first one for the "tensor" input of the BiasOp,
		  the second one for the "bias" input of the BiasOp.
	**/
	static public function _BiasAddGrad(op:Dynamic, received_grad:Dynamic):Dynamic;
	/**
		Gradient for the BiasAddGrad op.
		
		Args:
		  op: BiasAddGrad op for which we are calculating gradients.
		  received_grad: The gradients passed to the BiasAddGrad op.
		
		Returns:
		  A single gradient Tensor for the input to BiasAddGrad (which
		  is the gradient of the bias term in BiasAdd)
	**/
	static public function _BiasAddGradGrad(op:Dynamic, received_grad:Dynamic):Dynamic;
	/**
		Return the gradients for the 2 inputs of bias_op.
		
		The first input of unused_bias_op is the tensor t, and its gradient is
		just the gradient the unused_bias_op received.
		
		The second input of unused_bias_op is the bias vector which has one fewer
		dimension than "received_grad" (the batch dimension.)  Its gradient is the
		received gradient Summed on the batch dimension, which is the first dimension.
		
		Args:
		  unused_bias_op: The BiasOp for which we need to generate gradients.
		  received_grad: Tensor.  The gradients passed to the BiasOp.
		
		Returns:
		  Two tensors, the first one for the "tensor" input of the BiasOp,
		  the second one for the "bias" input of the BiasOp.
	**/
	static public function _BiasAddGradV1(unused_bias_op:Dynamic, received_grad:Dynamic):Dynamic;
	/**
		Multiply after broadcasting vec to match dimensions of mat.
		
		Args:
		  vec: A 1-D tensor of dimension [D0]
		  mat: A 2-D tensor of dimension [D0, D1]
		
		Returns:
		  A tensor of dimension [D0, D1], the result of vec * mat
	**/
	static public function _BroadcastMul(vec:Dynamic, mat:Dynamic):Dynamic;
	static public function _Conv2DBackpropFilterGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		The derivatives for deconvolution.
		
		Args:
		  op: the Deconvolution op.
		  grad: the tensor representing the gradient w.r.t. the output
		
		Returns:
		  the gradients w.r.t. the input and the filter
	**/
	static public function _Conv2DBackpropInputGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Gradient function for Conv2D.
	**/
	static public function _Conv2DGrad(op:Dynamic, grad:Dynamic):Dynamic;
	static public function _Conv3DBackpropFilterGrad(op:Dynamic, grad:Dynamic):Dynamic;
	static public function _Conv3DBackpropInputGrad(op:Dynamic, grad:Dynamic):Dynamic;
	static public function _Conv3DGrad(op:Dynamic, grad:Dynamic):Dynamic;
	static public function _DepthwiseConv2dNativeBackpropFilterGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		The derivatives for deconvolution.
		
		Args:
		  op: the Deconvolution op.
		  grad: the tensor representing the gradient w.r.t. the output
		
		Returns:
		  the gradients w.r.t. the input and the filter
	**/
	static public function _DepthwiseConv2dNativeBackpropInputGrad(op:Dynamic, grad:Dynamic):Dynamic;
	static public function _DepthwiseConv2dNativeGrad(op:Dynamic, grad:Dynamic):Dynamic;
	static public function _Dilation2DGrad(op:Dynamic, grad:Dynamic):Dynamic;
	static public function _EluGrad(op:Dynamic, grad:Dynamic):Dynamic;
	static public function _EluGradGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Returns gradient for FractionalAvgPool.
		
		Since FractionalAvgPool has three outputs, there are three gradients passed in
		for each of the outputs. Only the first one is useful, the other two gradients
		are empty.
		
		Args:
		  op: The FractionalAvgPoolOp.
		  grad_0: Gradient with respect to op.outputs[0]
		  unused_grad_1: Gradient with respect to op.outputs[1]/row_seq. It is empty.
		  unused_grad_2: Gradient with respect to op.outputs[2]/col_seq. It is empty.
		
		Returns:
		  Input backprop for FractionalAvgPool op.
	**/
	static public function _FractionalAvgPoolGrad(op:Dynamic, grad_0:Dynamic, unused_grad_1:Dynamic, unused_grad_2:Dynamic):Dynamic;
	/**
		Returns gradient for FractionalMaxPool.
		
		Since FractionalMaxPool has three outputs, there are three gradients passed in
		for each of the outputs. Only the first one is useful, the other two gradients
		are empty.
		
		Args:
		  op: The FractionalMaxPoolOp.
		  grad_0: Gradient with respect to op.outputs[0]
		  unused_grad_1: Gradient with respect to op.outputs[1]/row_seq. It is empty.
		  unused_grad_2: Gradient with respect to op.outputs[2]/col_seq. It is empty.
		
		Returns:
		  Input backprop for FractionalMaxPool op.
	**/
	static public function _FractionalMaxPoolGrad(op:Dynamic, grad_0:Dynamic, unused_grad_1:Dynamic, unused_grad_2:Dynamic):Dynamic;
	static public function _FusedBatchNormGrad(op:Dynamic, ?grad:python.VarArgs<Dynamic>):Dynamic;
	/**
		Returns the gradients for the 3 inputs of FusedBatchNormGrad.
		
		Args:
		  op: The FusedBatchNormGradOp for which we need to compute gradients.
		  *grad: An argument list for tensors of gradients wrt the outputs with
		    grad[0] as grad_grad_x, grad[1] as grad_grad_scale, grad[2] as
		    grad_grad_offset.
		
		Returns:
		  A tuple (grad_grad_y, grad_x, grad_scale, None, None), where grad_grad_y
		  is the gradient for grad_y, grad_x the gradient for x, grad_scale the
		  gradient for scale.
	**/
	static public function _FusedBatchNormGradGrad(op:Dynamic, ?grad:python.VarArgs<Dynamic>):Dynamic;
	static public function _FusedBatchNormGradGradV2(op:Dynamic, ?grad:python.VarArgs<Dynamic>):Dynamic;
	static public function _FusedBatchNormGradGradV3(op:Dynamic, ?grad:python.VarArgs<Dynamic>):Dynamic;
	static public function _FusedBatchNormV2Grad(op:Dynamic, ?grad:python.VarArgs<Dynamic>):Dynamic;
	static public function _FusedBatchNormV3Grad(op:Dynamic, ?grad:python.VarArgs<Dynamic>):Dynamic;
	/**
		Gradient for the isotonic regression function.
		
		Args:
		  op: The IsotonicRegression tensorflow op.
		  grad_output: Tensor of incoming gradients with respect to the output.
		  grad_segments: Tensor of incoming gradients with respect to the segments.
		
		Returns:
		  A tensor, same size as `grad_output` with the gradient with respect to
		  the input.
	**/
	static public function _IsotonicRegressionGrad(op:Dynamic, grad_output:Dynamic, grad_segments:Dynamic):Dynamic;
	/**
		Return the gradients for L2Loss.
		
		Args:
		  op: The L2LossOp for which we need to generate gradients.
		  grad: Tensor containing a single number.
		
		Returns:
		  The gradient, which is (x * grad).
	**/
	static public function _L2LossGrad(op:Dynamic, grad:Dynamic):Dynamic;
	static public function _LRNGrad(op:Dynamic, grad:Dynamic):Dynamic;
	static public function _LeakyReluGrad(op:Dynamic, grad:Dynamic):Dynamic;
	static public function _LeakyReluGradGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		The gradient for log_softmax.
		
		    log_softmax = input - log(sum(exp(input))
		    dlog_softmax/dinput = diag - softmax(input)
		
		Args:
		  op: The log softmax op.
		  grad: The tensor representing the gradient w.r.t. the output.
		
		Returns:
		  The gradients w.r.t. the input.
	**/
	static public function _LogSoftmaxGrad(op:Dynamic, grad:Dynamic):Dynamic;
	static public function _MaxPool3DGrad(op:Dynamic, grad:Dynamic):Dynamic;
	static public function _MaxPool3DGradGrad(op:Dynamic, grad:Dynamic):Dynamic;
	static public function _MaxPool3DGradGradGrad(op:Dynamic, grad:Dynamic):Dynamic;
	static public function _MaxPoolGrad(op:Dynamic, grad:Dynamic):Dynamic;
	static public function _MaxPoolGradGrad(op:Dynamic, grad:Dynamic):Dynamic;
	static public function _MaxPoolGradGradGrad(op:Dynamic, grad:Dynamic):Dynamic;
	static public function _MaxPoolGradGradV2(op:Dynamic, grad:Dynamic):Dynamic;
	static public function _MaxPoolGradV2(op:Dynamic, grad:Dynamic):Dynamic;
	static public function _MaxPoolGradWithArgmax(op:Dynamic, grad:Dynamic, unused_argmax_grad:Dynamic):Dynamic;
	/**
		Replaces each segment with its mean along the last axis.
		
		Specifically, each value in the `inputs` tensor gets replaced by the mean
		value computed from the values that belong to the same segment.
		
		Args:
		 inputs: A 2-tensor. Aggregation is done over dimension 1.
		 segments: A 2-tensor, same shape as `input`.
		
		Returns:
		  The result, same shape and type as `inputs`.
	**/
	static public function _MeanAggregator(inputs:Dynamic, segments:Dynamic):Dynamic;
	/**
		Return the gradients for NthElement.
		
		Args:
		  op: The NthElementOp for which we need to generate gradients.
		  grad: Tensor. The gradients passed to the NthElementOp
		
		Returns:
		  A list of two tensors, the first being the gradient w.r.t. the input,
		  the second being the gradient w.r.t. the N (None).
	**/
	static public function _NthElementGrad(op:Dynamic, grad:Dynamic):Dynamic;
	static public function _Relu6Grad(op:Dynamic, grad:Dynamic):Dynamic;
	static public function _Relu6GradGrad(op:Dynamic, grad:Dynamic):Dynamic;
	static public function _ReluGrad(op:Dynamic, grad:Dynamic):Dynamic;
	static public function _ReluGradGrad(op:Dynamic, grad:Dynamic):Dynamic;
	static public function _SeluGrad(op:Dynamic, grad:Dynamic):Dynamic;
	static public function _SeluGradGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Gradient function for SoftmaxCrossEntropyWithLogits.
	**/
	static public function _SoftmaxCrossEntropyWithLogitsGrad(op:Dynamic, grad_loss:Dynamic, grad_grad:Dynamic):Dynamic;
	/**
		The derivative of the softmax nonlinearity.
		
		We assume that probs is of shape [batch_size * dim]
		The formula for dsoftmax / dx = (diag(softmax) - softmax * softmax').
		This matrix is diagonal minus a rank one matrix, so it is easy to implement
		as follows:
		
		  grad_x = grad_softmax * softmax - sum(grad_softmax * softmax) * softmax
		
		Args:
		   op: the Softmax op.
		   grad_softmax:  the tensor representing the gradient w.r.t. the softmax
		     output.
		
		Returns:
		   gradient w.r.t the input to the softmax
	**/
	static public function _SoftmaxGrad(op:Dynamic, grad_softmax:Dynamic):Dynamic;
	static public function _SoftplusGrad(op:Dynamic, grad:Dynamic):Dynamic;
	static public function _SoftplusGradGrad(op:Dynamic, grad:Dynamic):Dynamic;
	static public function _SoftsignGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Gradient function for SparseSoftmaxCrossEntropyWithLogits.
	**/
	static public function _SparseSoftmaxCrossEntropyWithLogitsGrad(op:Dynamic, grad_loss:Dynamic, grad_grad:Dynamic):Dynamic;
	/**
		Return the gradients for TopK.
		
		Args:
		  op: The TopKOp for which we need to generate gradients.
		  grad: Tensor. The gradients passed to the TopKOp.
		
		Returns:
		  A list of two tensors, the first being the gradient w.r.t to the input and
		  TopK, and the second being the gradient w.r.t. to the indices (all zero).
	**/
	static public function _TopKGrad(op:Dynamic, grad:Dynamic, _:Dynamic):Dynamic;
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