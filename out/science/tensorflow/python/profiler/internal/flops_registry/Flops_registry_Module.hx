/* This file is generated, do not edit! */
package tensorflow.python.profiler.internal.flops_registry;
@:pythonImport("tensorflow.python.profiler.internal.flops_registry") extern class Flops_registry_Module {
	static public var IMPLEMENTED_OPS : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Compute flops for Add operation.
	**/
	static public function _add_flops(graph:Dynamic, node:Dynamic):Dynamic;
	/**
		Compute flops for AddN operation.
	**/
	static public function _add_n_flops(graph:Dynamic, node:Dynamic):Dynamic;
	/**
		Compute flops for ArgMax operation.
	**/
	static public function _arg_max_flops(graph:Dynamic, node:Dynamic):Dynamic;
	/**
		Compute flops for ArgMin operation.
	**/
	static public function _arg_min_flops(graph:Dynamic, node:Dynamic):Dynamic;
	/**
		Compute flops for AssignAdd operation.
	**/
	static public function _assign_add_flops(graph:Dynamic, node:Dynamic):Dynamic;
	/**
		Compute flops for AssignSub operation.
	**/
	static public function _assign_sub_flops(graph:Dynamic, node:Dynamic):Dynamic;
	/**
		Compute flops for AvgPool operation.
	**/
	static public function _avg_pool_flops(graph:Dynamic, node:Dynamic):Dynamic;
	/**
		Compute flops for AvgPoolGrad operation.
	**/
	static public function _avg_pool_grad_flops(graph:Dynamic, node:Dynamic):Dynamic;
	/**
		Compute flops for BiasAddGrad operation.
	**/
	static public function _bias_add_grad_flops(graph:Dynamic, node:Dynamic):Dynamic;
	/**
		Common code which compute flops for binary operations.
	**/
	static public function _binary_per_element_op_flops(graph:Dynamic, node:Dynamic, ?ops_per_element:Dynamic):Dynamic;
	/**
		Compute flops for Conv2DBackpropFilter operation.
	**/
	static public function _conv_2d_backprop_filter_flops(graph:Dynamic, node:Dynamic):Dynamic;
	/**
		Compute flops for Conv2DBackpropInput operation.
	**/
	static public function _conv_2d_backprop_input_flops(graph:Dynamic, node:Dynamic):Dynamic;
	/**
		Compute flops for Equal operation.
	**/
	static public function _equal_flops(graph:Dynamic, node:Dynamic):Dynamic;
	/**
		Compute flops for GreaterEqual operation.
	**/
	static public function _greater_equal_flops(graph:Dynamic, node:Dynamic):Dynamic;
	/**
		Compute flops for Greater operation.
	**/
	static public function _greater_flops(graph:Dynamic, node:Dynamic):Dynamic;
	/**
		Compute flops for L2Loss operation.
	**/
	static public function _l2_loss_flops(graph:Dynamic, node:Dynamic):Dynamic;
	/**
		Compute flops for LessEqual operation.
	**/
	static public function _less_equal_flops(graph:Dynamic, node:Dynamic):Dynamic;
	/**
		Compute flops for Less operation.
	**/
	static public function _less_flops(graph:Dynamic, node:Dynamic):Dynamic;
	/**
		Computes product of element of the list.
	**/
	static public function _list_product(lst:Dynamic):Dynamic;
	/**
		Compute flops for Log operation.
	**/
	static public function _log_flops(graph:Dynamic, node:Dynamic):Dynamic;
	/**
		Compute flops for MaxPool operation.
	**/
	static public function _max_pool_flops(graph:Dynamic, node:Dynamic):Dynamic;
	/**
		Compute flops for MaxPoolGrad operation.
	**/
	static public function _max_pool_grad_flops(graph:Dynamic, node:Dynamic):Dynamic;
	/**
		Compute flops for Maximum operation.
	**/
	static public function _maximum_flops(graph:Dynamic, node:Dynamic):Dynamic;
	/**
		Compute flops for Mean operation.
	**/
	static public function _mean_flops(graph:Dynamic, node:Dynamic):Dynamic;
	/**
		Compute flops for Minimum operation.
	**/
	static public function _minimum_flops(graph:Dynamic, node:Dynamic):Dynamic;
	/**
		Compute flops for Mul operation.
	**/
	static public function _mul_flops(graph:Dynamic, node:Dynamic):Dynamic;
	/**
		Compute flops for Neg operation.
	**/
	static public function _neg_flops(graph:Dynamic, node:Dynamic):Dynamic;
	/**
		Compute flops for NotEqual operation.
	**/
	static public function _not_equal_flops(graph:Dynamic, node:Dynamic):Dynamic;
	/**
		Common code which compute flops for pooling operations.
	**/
	static public function _pool_flops(graph:Dynamic, node:Dynamic):Dynamic;
	/**
		Compute flops for Pow operation.
	**/
	static public function _pow_flops(graph:Dynamic, node:Dynamic):Dynamic;
	/**
		Compute flops for RealDiv operation.
	**/
	static public function _real_div_flops(graph:Dynamic, node:Dynamic):Dynamic;
	/**
		Compute flops for Reciprocal operation.
	**/
	static public function _reciprocal_flops(graph:Dynamic, node:Dynamic):Dynamic;
	/**
		Common code which compute flops for reduction operations.
	**/
	static public function _reduction_op_flops(graph:Dynamic, node:Dynamic, ?reduce_flops:Dynamic, ?finalize_flops:Dynamic):Dynamic;
	/**
		Compute flops for Rsqrt operation.
	**/
	static public function _rsqrt_flops(graph:Dynamic, node:Dynamic):Dynamic;
	/**
		Compute flops for RsqrtGrad operation.
	**/
	static public function _rsqrt_grad_flops(graph:Dynamic, node:Dynamic):Dynamic;
	/**
		Compute flops for Softmax operation.
	**/
	static public function _softmax_flops(graph:Dynamic, node:Dynamic):Dynamic;
	/**
		Compute flops for Square operation.
	**/
	static public function _square_flops(graph:Dynamic, node:Dynamic):Dynamic;
	/**
		Compute flops for SquaredDifference operation.
	**/
	static public function _squared_difference_flops(graph:Dynamic, node:Dynamic):Dynamic;
	/**
		Compute flops for Sub operation.
	**/
	static public function _sub_flops(graph:Dynamic, node:Dynamic):Dynamic;
	/**
		Compute flops for Sum operation.
	**/
	static public function _sum_flops(graph:Dynamic, node:Dynamic):Dynamic;
	/**
		Common code which compute flops for unary operations.
	**/
	static public function _unary_op_flops(graph:Dynamic, node:Dynamic, ?ops_per_element:Dynamic):Dynamic;
	/**
		Verifies data format for pooling and convolutional operations.
	**/
	static public function _verify_conv_data_format(node:Dynamic):Dynamic;
	/**
		Returns zero flops.
	**/
	static public function _zero_flops(graph:Dynamic, node:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}