/* This file is generated, do not edit! */
package tensorflow.python.ops.tensor_array_grad;
@:pythonImport("tensorflow.python.ops.tensor_array_grad") extern class Tensor_array_grad_Module {
	/**
		Identify which call to tf.gradients created this gradient op or tensor.
		
		TensorArray gradient calls use an accumulator TensorArray object.  If
		multiple gradients are calculated and run in the same session, the multiple
		gradient nodes may accidentally flow through the same accumulator TensorArray.
		This double counting breaks the TensorArray gradient flow.
		
		The solution is to identify which gradient call this particular
		TensorArray*Grad is being called in, by looking at the input gradient
		tensor's name, and create or lookup an accumulator gradient TensorArray
		associated with this specific call.  This solves any confusion and ensures
		different gradients from the same forward graph get their own accumulators.
		
		This function creates the unique label associated with the tf.gradients call
		that is used to create the gradient TensorArray.
		
		Args:
		  op_or_tensor: `Tensor` or `Operation` which is an input to a
		    TensorArray*Grad call.
		
		Returns:
		  A python string, the unique label associated with this particular
		  gradients calculation.
		
		Raises:
		  ValueError: If not called within a gradients calculation.
	**/
	static public function _GetGradSource(op_or_tensor:Dynamic):Dynamic;
	/**
		Gradient for TensorArrayConcat.
		
		Args:
		  op: Forward TensorArrayConcat op.
		  grad: Gradient `Tensor` to TensorArrayConcat.
		
		Returns:
		  A flow `Tensor`, which can be used in control dependencies to
		  force the write of `grad` to the gradient `TensorArray`.
	**/
	static public function _TensorArrayConcatGrad(op:Dynamic, grad:Dynamic, unused_lengths_grad:Dynamic):Dynamic;
	/**
		Gradient for TensorArrayGather.
		
		Args:
		  op: Forward TensorArrayGather op.
		  grad: Gradient `Tensor` to TensorArrayGather.
		
		Returns:
		  A flow `Tensor`, which can be used in control dependencies to
		  force the write of `grad` to the gradient `TensorArray`.
	**/
	static public function _TensorArrayGatherGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Gradient for TensorArrayRead.
		
		Args:
		  op: Forward TensorArrayRead op.
		  grad: Gradient `Tensor` to TensorArrayRead.
		
		Returns:
		  A flow `Tensor`, which can be used in control dependencies to
		  force the write of `grad` to the gradient `TensorArray`.
	**/
	static public function _TensorArrayReadGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Gradient for TensorArrayScatter.
		
		Args:
		  op: Forward TensorArrayScatter op.
		  flow: Gradient `Tensor` flow to TensorArrayScatter.
		
		Returns:
		  A grad `Tensor`, the gradient created in upstream ReadGrads or PackGrad.
	**/
	static public function _TensorArrayScatterGrad(op:Dynamic, flow:Dynamic):Dynamic;
	/**
		Gradient for TensorArraySplit.
		
		Args:
		  op: Forward TensorArraySplit op.
		  flow: Gradient `Tensor` flow to TensorArraySplit.
		
		Returns:
		  A grad `Tensor`, the gradient created in upstream ReadGrads or PackGrad.
	**/
	static public function _TensorArraySplitGrad(op:Dynamic, flow:Dynamic):Dynamic;
	/**
		Gradient for TensorArrayWrite.
		
		Args:
		  op: Forward TensorArrayWrite op.
		  flow: Gradient `Tensor` flow to TensorArrayWrite.
		
		Returns:
		  A grad `Tensor`, the gradient created in an upstream ReadGrad or PackGrad.
	**/
	static public function _TensorArrayWriteGrad(op:Dynamic, flow:Dynamic):Dynamic;
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