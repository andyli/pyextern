/* This file is generated, do not edit! */
package tensorflow.python.ops.gen_sdca_ops;
@:pythonImport("tensorflow.python.ops.gen_sdca_ops") extern class Gen_sdca_ops_Module {
	static public function _InitOpDefLibrary(op_list_proto_bytes:Dynamic):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _op_def_lib : Dynamic;
	static public var _sdca_optimizer_outputs : Dynamic;
	/**
		Decorator for marking endpoints deprecated.
		
		This decorator does not print deprecation messages.
		TODO(annarev): eventually start printing deprecation warnings when
		@deprecation_endpoints decorator is added.
		
		Args:
		  *args: Deprecated endpoint names.
		
		Returns:
		  A function that takes symbol as an argument and adds
		  _tf_deprecated_api_names to that symbol.
		  _tf_deprecated_api_names would be set to a list of deprecated
		  endpoint names for the symbol.
	**/
	static public function deprecated_endpoints(?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		Computes fingerprints of the input strings.
		
		Args:
		  input: A `Tensor` of type `string`.
		    vector of strings to compute fingerprints on.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `int64`.
	**/
	static public function sdca_fprint(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function sdca_fprint
	**/
	static public function sdca_fprint_eager_fallback(input:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Distributed version of Stochastic Dual Coordinate Ascent (SDCA) optimizer for
		
		linear models with L1 + L2 regularization. As global optimization objective is
		strongly-convex, the optimizer optimizes the dual objective at each step. The
		optimizer applies each update one example at a time. Examples are sampled
		uniformly, and the optimizer is learning rate free and enjoys linear convergence
		rate.
		
		[Proximal Stochastic Dual Coordinate Ascent](http://arxiv.org/pdf/1211.2717v1.pdf).<br>
		Shai Shalev-Shwartz, Tong Zhang. 2012
		
		$$Loss Objective = \sum f_{i} (wx_{i}) + (l2 / 2) * |w|^2 + l1 * |w|$$
		
		[Adding vs. Averaging in Distributed Primal-Dual Optimization](http://arxiv.org/abs/1502.03508).<br>
		Chenxin Ma, Virginia Smith, Martin Jaggi, Michael I. Jordan,
		Peter Richtarik, Martin Takac. 2015
		
		[Stochastic Dual Coordinate Ascent with Adaptive Probabilities](https://arxiv.org/abs/1502.08053).<br>
		Dominik Csiba, Zheng Qu, Peter Richtarik. 2015
		
		Args:
		  sparse_example_indices: A list of `Tensor` objects with type `int64`.
		    a list of vectors which contain example indices.
		  sparse_feature_indices: A list with the same length as `sparse_example_indices` of `Tensor` objects with type `int64`.
		    a list of vectors which contain feature indices.
		  sparse_feature_values: A list of `Tensor` objects with type `float32`.
		    a list of vectors which contains feature value
		    associated with each feature group.
		  dense_features: A list of `Tensor` objects with type `float32`.
		    a list of matrices which contains the dense feature values.
		  example_weights: A `Tensor` of type `float32`.
		    a vector which contains the weight associated with each
		    example.
		  example_labels: A `Tensor` of type `float32`.
		    a vector which contains the label/target associated with each
		    example.
		  sparse_indices: A list with the same length as `sparse_example_indices` of `Tensor` objects with type `int64`.
		    a list of vectors where each value is the indices which has
		    corresponding weights in sparse_weights. This field maybe omitted for the
		    dense approach.
		  sparse_weights: A list with the same length as `sparse_example_indices` of `Tensor` objects with type `float32`.
		    a list of vectors where each value is the weight associated with
		    a sparse feature group.
		  dense_weights: A list with the same length as `dense_features` of `Tensor` objects with type `float32`.
		    a list of vectors where the values are the weights associated
		    with a dense feature group.
		  example_state_data: A `Tensor` of type `float32`.
		    a list of vectors containing the example state data.
		  loss_type: A `string` from: `"logistic_loss", "squared_loss", "hinge_loss", "smooth_hinge_loss", "poisson_loss"`.
		    Type of the primal loss. Currently SdcaSolver supports logistic,
		    squared and hinge losses.
		  l1: A `float`. Symmetric l1 regularization strength.
		  l2: A `float`. Symmetric l2 regularization strength.
		  num_loss_partitions: An `int` that is `>= 1`.
		    Number of partitions of the global loss function.
		  num_inner_iterations: An `int` that is `>= 1`.
		    Number of iterations per mini-batch.
		  adaptative: An optional `bool`. Defaults to `True`.
		    Whether to use Adaptive SDCA for the inner loop.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (out_example_state_data, out_delta_sparse_weights, out_delta_dense_weights).
		
		  out_example_state_data: A `Tensor` of type `float32`.
		  out_delta_sparse_weights: A list with the same length as `sparse_example_indices` of `Tensor` objects with type `float32`.
		  out_delta_dense_weights: A list with the same length as `dense_features` of `Tensor` objects with type `float32`.
	**/
	static public function sdca_optimizer(sparse_example_indices:Dynamic, sparse_feature_indices:Dynamic, sparse_feature_values:Dynamic, dense_features:Dynamic, example_weights:Dynamic, example_labels:Dynamic, sparse_indices:Dynamic, sparse_weights:Dynamic, dense_weights:Dynamic, example_state_data:Dynamic, loss_type:Dynamic, l1:Dynamic, l2:Dynamic, num_loss_partitions:Dynamic, num_inner_iterations:Dynamic, ?adaptative:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function sdca_optimizer
	**/
	static public function sdca_optimizer_eager_fallback(sparse_example_indices:Dynamic, sparse_feature_indices:Dynamic, sparse_feature_values:Dynamic, dense_features:Dynamic, example_weights:Dynamic, example_labels:Dynamic, sparse_indices:Dynamic, sparse_weights:Dynamic, dense_weights:Dynamic, example_state_data:Dynamic, loss_type:Dynamic, l1:Dynamic, l2:Dynamic, num_loss_partitions:Dynamic, num_inner_iterations:Dynamic, ?adaptative:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Applies L1 regularization shrink step on the parameters.
		
		Args:
		  weights: A list of `Tensor` objects with type mutable `float32`.
		    a list of vectors where each value is the weight associated with a
		    feature group.
		  l1: A `float`. Symmetric l1 regularization strength.
		  l2: A `float`.
		    Symmetric l2 regularization strength. Should be a positive float.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function sdca_shrink_l1(weights:Dynamic, l1:Dynamic, l2:Dynamic, ?name:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}