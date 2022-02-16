/* This file is generated, do not edit! */
package tensorflow.python.ops.weights_broadcast_ops;
@:pythonImport("tensorflow.python.ops.weights_broadcast_ops") extern class Weights_broadcast_ops_Module {
	static public var _ASSERT_BROADCASTABLE_ERROR_PREFIX : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _has_valid_dims(weights_shape:Dynamic, values_shape:Dynamic):Dynamic;
	static public function _has_valid_nonscalar_shape(weights_rank:Dynamic, weights_shape:Dynamic, values_rank:Dynamic, values_shape:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Asserts `weights` can be broadcast to `values`.
		
		In `tf.losses` and `tf.metrics`, we support limited weight broadcasting. We
		let weights be either scalar, or the same rank as the target values, with each
		dimension either 1, or the same as the corresponding values dimension.
		
		Args:
		  weights: `Tensor` of weights.
		  values: `Tensor` of values to which weights are applied.
		
		Returns:
		  `Operation` raising `InvalidArgumentError` if `weights` has incorrect shape.
		  `no_op` if static checks determine `weights` has correct shape.
		
		Raises:
		  ValueError:  If static checks determine `weights` has incorrect shape.
	**/
	static public function assert_broadcastable(weights:Dynamic, values:Dynamic):Dynamic;
	/**
		Broadcast `weights` to the same shape as `values`.
		
		This returns a version of `weights` following the same broadcast rules as
		`mul(weights, values)`, but limited to the weights shapes allowed by
		`assert_broadcastable`. When computing a weighted average, use this function
		to broadcast `weights` before summing them; e.g.,
		`reduce_sum(w * v) / reduce_sum(_broadcast_weights(w, v))`.
		
		Args:
		  weights: `Tensor` whose shape is broadcastable to `values` according to the
		    rules of `assert_broadcastable`.
		  values: `Tensor` of any shape.
		
		Returns:
		  `weights` broadcast to `values` shape according to the rules of
		    `assert_broadcastable`.
	**/
	static public function broadcast_weights(weights:Dynamic, values:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}