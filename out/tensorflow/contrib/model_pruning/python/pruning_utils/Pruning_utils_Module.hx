/* This file is generated, do not edit! */
package tensorflow.contrib.model_pruning.python.pruning_utils;
@:pythonImport("tensorflow.contrib.model_pruning.python.pruning_utils") extern class Pruning_utils_Module {
	static public var _NBINS : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Return histogram of values.
		
		Given the tensor `values`, this operation returns a rank 1 histogram counting
		the number of entries in `values` that fell into every bin.  The bins are
		equal width and determined by the arguments `value_range` and `nbins`.
		
		Args:
		  values:  Numeric `Tensor`.
		  value_range:  Shape [2] `Tensor` of same `dtype` as `values`.
		    values <= value_range[0] will be mapped to hist[0],
		    values >= value_range[1] will be mapped to hist[-1].
		  nbins:  Scalar `int32 Tensor`.  Number of histogram bins.
		  dtype:  dtype for returned histogram.
		  name:  A name for this operation (defaults to 'histogram').
		
		Returns:
		  A 1-D `Tensor` holding histogram of values.
	**/
	static public function _histogram(values:Dynamic, value_range:Dynamic, ?nbins:Dynamic, ?dtype:Dynamic, ?name:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Returns the normalized cumulative distribution of the given values tensor.
		
		Uses tf.while_loop to directly compute the cdf of the values.
		
		Args:
		  values:  Numeric `Tensor`.
		  value_range:  Shape [2] `Tensor` of same `dtype` as `values`
		  **kwargs: keyword arguments: nbins, name
		
		Returns:
		  A 1-D `Tensor` holding normalized cdf of values.
	**/
	static public function compute_cdf(values:Dynamic, value_range:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Returns the normalized cumulative distribution of the given values tensor.
		
		Computes the histogram and uses tf.cumsum to arrive at cdf
		
		Args:
		  values:  Numeric `Tensor`.
		  value_range:  Shape [2] `Tensor` of same `dtype` as `values`.
		  **kwargs: keyword arguments: nbins, name
		
		Returns:
		  A 1-D `Tensor` holding normalized cdf of values.
	**/
	static public function compute_cdf_from_histogram(values:Dynamic, value_range:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function determine_partitioned_axis(partitioned_variable:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Expands a 2D tensor by replicating the tensor values.
		
		This is equivalent to the kronecker product of the tensor and a matrix of
		ones of size block_dims.
		
		Example:
		
		tensor = [[1,2]
		          [3,4]]
		block_dims = [2,2]
		
		result = [[1 1 2 2]
		          [1 1 2 2]
		          [3 3 4 4]
		          [3 3 4 4]]
		
		Args:
		  tensor: A 2D tensor that needs to be expanded.
		  block_dims: List of integers specifying the expansion factor.
		
		Returns:
		  The expanded tensor
		
		Raises:
		  ValueError: if tensor is not rank-2 or block_dims is does not have 2
		  elements.
	**/
	static public function expand_tensor(tensor:Dynamic, block_dims:Dynamic):Dynamic;
	/**
		Performs m x n pooling through a combination of 1xm and 1xn pooling.
		
		Args:
		  input_tensor: Input tensor. Must be rank 2
		  window_shape: Pooling window shape
		  pooling_type: Either 'MAX' or 'AVG'
		  strides: The stride of the pooling window
		  padding: 'SAME' or 'VALID'.
		  name: Name of the op
		
		Returns:
		  A rank 2 tensor containing the pooled output
		
		Raises:
		  ValueError: if the input tensor is not rank 2
	**/
	static public function factorized_pool(input_tensor:Dynamic, window_shape:Dynamic, pooling_type:Dynamic, strides:Dynamic, padding:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes the Kronecker product of two matrices mat1 and mat2.
		
		Args:
		  mat1: A matrix of size m x n
		  mat2: A matrix of size p x q
		Returns:
		  Kronecker product of matrices mat1 and mat2 of size mp x nq
	**/
	static public function kronecker_product(mat1:Dynamic, mat2:Dynamic):Dynamic;
	/**
		Assign op for partitioned variables.
		
		Args:
		  partitioned_var: A partitioned tensorflow variable
		  new_value: Value to be assigned to the variable var
		
		Returns:
		  A tensorflow op that groups the assign ops for each of the variable slices
	**/
	static public function partitioned_variable_assign(partitioned_var:Dynamic, new_value:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public function variable_assign(_var:Dynamic, new_value:Dynamic):Dynamic;
	/**
		Create a mask for the weights.
		
		This function adds a variable 'mask' to the graph.
		
		Args:
		  var: the weight variable that needs to be masked
		  scope: The variable scope of the variable var
		
		Returns:
		  the mask variable of the same size and shape as var, initialized to all 1s.
	**/
	static public function weight_mask_variable(_var:Dynamic, scope:Dynamic):Dynamic;
	/**
		Create a scalar threshold for the weights.
		
		This function adds a variable
		'threshold' to the graph.
		
		Args:
		  var: The weight variable that needs to be masked
		  scope: The variable scope of the variable var
		
		Returns:
		  A scalar threshold variable initialized to 0.
	**/
	static public function weight_threshold_variable(_var:Dynamic, scope:Dynamic):Dynamic;
}