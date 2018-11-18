/* This file is generated, do not edit! */
package tensorflow.python.ops.sparse_grad;
@:pythonImport("tensorflow.python.ops.sparse_grad") extern class Sparse_grad_Module {
	/**
		The backward operator for the SparseAdd op.
		
		The SparseAdd op calculates A + B, where A, B, and the sum are all represented
		as `SparseTensor` objects.  This op takes in the upstream gradient w.r.t.
		non-empty values of the sum, and outputs the gradients w.r.t. the non-empty
		values of A and B.
		
		Args:
		  op: the SparseAdd op
		  *grads: the incoming gradients, one element per output of `op`
		
		Returns:
		  Gradient for each of the 6 input tensors of SparseAdd:
		    (a_indices, a_values, a_shape, b_indices, b_values, b_shape, thresh)
		  The gradients for the indices, shapes, and the threshold are None.
	**/
	static public function _SparseAddGrad(op:Dynamic, ?grads:python.VarArgs<Dynamic>):Dynamic;
	static public function _SparseDenseCwiseAddGrad(unused_op:Dynamic, unused_grad:Dynamic):Dynamic;
	/**
		Gradients for SparseDenseCwiseDiv.
	**/
	static public function _SparseDenseCwiseDivGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Gradients for SparseDenseCwiseMul.
	**/
	static public function _SparseDenseCwiseMulGrad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Common code for SparseDenseCwise{Mul,Div} gradients.
	**/
	static public function _SparseDenseCwiseMulOrDivGrad(op:Dynamic, grad:Dynamic, is_mul:Dynamic):Dynamic;
	/**
		Gradients for SparseFillEmptyRows.
	**/
	static public function _SparseFillEmptyRowsGrad(op:Dynamic, unused_grad_output_indices:Dynamic, output_grad_values:Dynamic, unused_grad_empty_row_indicator:Dynamic, unused_grad_reverse_index_map:Dynamic):Dynamic;
	/**
		Similar to gradient for the Sum Op (i.e. tf.reduce_sum()).
	**/
	static public function _SparseReduceSumGrad(op:Dynamic, out_grad:Dynamic):Dynamic;
	/**
		Gradients for the SparseReorder op.
		
		Args:
		  op: the SparseReorder op
		  unused_output_indices_grad: the incoming gradients of the output indices
		  output_values_grad: the incoming gradients of the output values
		
		Returns:
		  Gradient for each of the 3 input tensors:
		    (input_indices, input_values, input_shape)
		  The gradients for input_indices and input_shape is None.
	**/
	static public function _SparseReorderGrad(op:Dynamic, unused_output_indices_grad:Dynamic, output_values_grad:Dynamic):Dynamic;
	/**
		The backward operator for the SparseSlice op.
		
		This op takes in the upstream gradient w.r.t. non-empty values of
		the sliced `SparseTensor`, and outputs the gradients w.r.t.
		the non-empty values of input `SparseTensor`.
		
		Args:
		  op: the SparseSlice op
		  *grads: the incoming gradients, one element per output of `op`
		
		Returns:
		  Gradient for each of the 5 input tensors of SparseSlice:
		    (indices, values, shape, start, size)
		  The gradients for the indices, shape, start and the size are None.
	**/
	static public function _SparseSliceGrad(op:Dynamic, ?grads:python.VarArgs<Dynamic>):Dynamic;
	/**
		Gradients for SparseSoftmax.
		
		The calculation is the same as SoftmaxGrad:
		
		  grad_x = grad_softmax * softmax - sum(grad_softmax * softmax) * softmax
		
		where we now only operate on the non-zero values present in the SparseTensors.
		
		Args:
		  op: the SparseSoftmax op.
		  grad: the upstream gradient w.r.t. the non-zero SparseSoftmax output values.
		
		Returns:
		  Gradients w.r.t. the input (sp_indices, sp_values, sp_shape).
	**/
	static public function _SparseSoftmaxGrad(op:Dynamic, grad:Dynamic):Dynamic;
	static public function _SparseSparseMaximumGrad(unused_op:Dynamic, unused_grad:Dynamic):Dynamic;
	static public function _SparseSparseMinimumGrad(unused_op:Dynamic, unused_grad:Dynamic):Dynamic;
	static public function _SparseTensorDenseAddGrad(op:Dynamic, out_grad:Dynamic):Dynamic;
	/**
		Gradients for the dense tensor in the SparseTensorDenseMatMul op.
		
		If either input is complex, no gradient is provided.
		
		Args:
		  op: the SparseTensorDenseMatMul op
		  grad: the incoming gradient
		
		Returns:
		  Gradient for each of the 4 input tensors:
		    (sparse_indices, sparse_values, sparse_shape, dense_tensor)
		  The gradients for indices and shape are None.
		
		Raises:
		  TypeError: When the two operands don't have the same type.
	**/
	static public function _SparseTensorDenseMatMulGrad(op:Dynamic, grad:Dynamic):Dynamic;
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