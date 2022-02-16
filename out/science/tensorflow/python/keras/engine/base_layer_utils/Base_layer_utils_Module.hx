/* This file is generated, do not edit! */
package tensorflow.python.keras.engine.base_layer_utils;
@:pythonImport("tensorflow.python.keras.engine.base_layer_utils") extern class Base_layer_utils_Module {
	static public var REVIVED_LOSS_PLACEHOLDER : Dynamic;
	static public var V2_DTYPE_BEHAVIOR : Dynamic;
	static public var _UNSAFE_GRAPH_OP_LAYER_CREATION : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _call_context : Dynamic;
	/**
		Helper method for `create_keras_history`.
		
		Args:
		  tensors: A structure of Tensors for which to create Keras metadata.
		  processed_ops: Set. TensorFlow operations that have already been wrapped in
		    `TensorFlowOpLayer` instances.
		  created_layers: List. The `TensorFlowOpLayer` instances created.
		
		Returns:
		  Tuple. First element is the updated set of TensorFlow Operations that
		  have been wrapped in `TensorFlowOpLayer` instances. Second element is
		  a list of the `TensorFlowOpLayer` instances created.
	**/
	static public function _create_keras_history_helper(tensors:Dynamic, processed_ops:Dynamic, created_layers:Dynamic):Dynamic;
	/**
		Returns currently active `CallContext`.
	**/
	static public function call_context():Dynamic;
	/**
		Checks that tensors passed to `add_*` method match the Keras graph.
		
		When one of the `add_*` method is called inside a V2 conditional branch,
		the underlying tensor gets created in a FuncGraph managed by control_flow_v2.
		We need to raise clear error messages in such cases.
		
		Args:
		  tensor: Tensor to check, or `False` if it is known that an error
		    should be raised.
		  method: Caller method, one of {'add_metric', 'add_loss', 'add_update'}.
		  force_raise: If an error should be raised regardless of `tensor`.
		
		Raises:
		  RuntimeError: In case of an out-of-graph tensor.
	**/
	static public function check_graph_consistency(?tensor:Dynamic, ?method:Dynamic, ?force_raise:Dynamic):Dynamic;
	/**
		Retrieves the output mask(s) of the previous node.
		
		Args:
		    input_tensors: An arbitrary structure of Tensors.
		
		Returns:
		    A mask tensor or list of mask tensors.
	**/
	static public function collect_previous_mask(input_tensors:Dynamic):Dynamic;
	/**
		Wraps TensorFlow Operations for compatibility with the Functional API.
		
		This method checks to see if a Tensor in `tensors` is missing Keras metadata
		and has its origin in a Keras `Input` Layer. If so, this method will replace
		the raw TensorFlow Operations that created this tensor with
		`TensorFlowOpLayer` instances that create identical operations.
		
		Any Tensors not originating from a Keras `Input` Layer will be treated as
		constants when constructing `TensorFlowOpLayer` instances.
		
		Args:
		  tensors: A structure of Tensors, some of which come from raw TensorFlow
		    operations and need to have Keras metadata assigned to them.
		
		Returns:
		  created_layers: List. The `TensorFlowOpLayer` instances created to wrap
		    the raw Tensorflow operations.
	**/
	static public function create_keras_history(tensors:Dynamic):Dynamic;
	static public function create_mean_metric(value:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Disables the V2 dtype behavior for Keras layers.
		
		See `tf.compat.v1.keras.layers.enable_v2_dtype_behavior`.
	**/
	static public function disable_v2_dtype_behavior():Dynamic;
	/**
		Enable the V2 dtype behavior for Keras layers.
		
		By default, the V2 dtype behavior is enabled in TensorFlow 2, so this function
		is only useful if `tf.compat.v1.disable_v2_behavior` has been called. Since
		mixed precision requires V2 dtype behavior to be enabled, this function allows
		you to use mixed precision in Keras layers if `disable_v2_behavior` has been
		called.
		
		When enabled, the dtype of Keras layers defaults to floatx (which is typically
		float32) instead of None. In addition, layers will automatically cast
		floating-point inputs to the layer's dtype.
		
		>>> x = tf.ones((4, 4, 4, 4), dtype='float64')
		>>> layer = tf.keras.layers.Conv2D(filters=4, kernel_size=2)
		>>> print(layer.dtype)  # float32 since V2 dtype behavior is enabled
		float32
		>>> y = layer(x)  # Layer casts inputs since V2 dtype behavior is enabled
		>>> print(y.dtype.name)
		float32
		
		A layer author can opt-out their layer from the automatic input casting by
		passing `autocast=False` to the base Layer's constructor. This disables the
		autocasting part of the V2 behavior for that layer, but not the defaulting to
		floatx part of the V2 behavior.
		
		When a global `tf.keras.mixed_precision.Policy` is set, a Keras layer's dtype
		will default to the global policy instead of floatx. Layers will automatically
		cast inputs to the policy's compute_dtype.
	**/
	static public function enable_v2_dtype_behavior():Dynamic;
	/**
		Returns whether the layer is loaded from a SavedModel.
	**/
	static public function from_saved_model(layer:Dynamic):Dynamic;
	static public function generate_placeholders_from_shape(shape:Dynamic):Dynamic;
	static public function has_weights(obj:Dynamic):Dynamic;
	static public function have_all_keras_metadata(tensors:Dynamic):Dynamic;
	/**
		Returns if in eager mode or inside of a tf.function.
	**/
	static public function is_in_eager_or_tf_function():Dynamic;
	/**
		Returns if currently executing inside of a Keras graph.
	**/
	static public function is_in_keras_graph():Dynamic;
	/**
		Returns if inside of a tf.function.
	**/
	static public function is_in_tf_function():Dynamic;
	/**
		Returns True if `v` is either a PartionedVariable or a ShardedVariable.
	**/
	static public function is_split_variable(v:Dynamic):Dynamic;
	/**
		Returns True if the object is a subclassed layer or subclassed model.
	**/
	static public function is_subclassed(layer:Dynamic):Dynamic;
	static public function keras_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Temporary util to create a variable (relies on `variable_scope.variable`).
		
		Some reuse-related technicalities prevent us from using
		`variable_scope.get_variable()` directly, so we use a subcomponent
		that has fewer constraints (`variable_scope.variable()`).
		
		In the longer term, it seems like a similar "default variable creator" method
		should exist in `Trackable` instead. When this happens, we can get
		rid of this temporary solution.
		
		TODO(fchollet): remove this method when no longer needed.
		
		Args:
		  name: Variable name.
		  shape: Variable shape.
		  dtype: The type of the variable. Defaults to `self.dtype` or `float32`.
		  initializer: Initializer instance (callable).
		  trainable: Whether the variable should be part of the layer's
		    "trainable_variables" (e.g. variables, biases)
		    or "non_trainable_variables" (e.g. BatchNorm mean, stddev).
		    Note, if the current variable scope is marked as non-trainable
		    then this parameter is ignored and any added variables are also
		    marked as non-trainable. `trainable` defaults to `True` unless
		    `synchronization` is set to `ON_READ`.
		  caching_device: Passed to `tf.Variable`.
		  validate_shape: Passed to `tf.Variable`.
		  constraint: Constraint instance (callable).
		  use_resource: Whether to use a `ResourceVariable`.
		  collections: List of graph collections keys. The new variable is added to
		    these collections. Defaults to `[GraphKeys.GLOBAL_VARIABLES]`.
		  synchronization: Indicates when a distributed a variable will be
		    aggregated. Accepted values are constants defined in the class
		    `tf.VariableSynchronization`. By default the synchronization is set to
		    `AUTO` and the current `DistributionStrategy` chooses
		    when to synchronize. If `synchronization` is set to `ON_READ`,
		    `trainable` must not be set to `True`.
		  aggregation: Indicates how a distributed variable will be aggregated.
		    Accepted values are constants defined in the class
		    `tf.VariableAggregation`.
		  partitioner: Not handled at this time.
		
		Returns:
		  Variable instance.
	**/
	static public function make_variable(name:Dynamic, ?shape:Dynamic, ?dtype:Dynamic, ?initializer:Dynamic, ?trainable:Dynamic, ?caching_device:Dynamic, ?validate_shape:Dynamic, ?constraint:Dynamic, ?use_resource:Dynamic, ?collections:Dynamic, ?synchronization:Dynamic, ?aggregation:Dynamic, ?partitioner:Dynamic):Dynamic;
	/**
		Marks `outputs` as the return values for automatic control deps.
	**/
	static public function mark_as_return(outputs:Dynamic, acd:Dynamic):Dynamic;
	/**
		Marks that these Tensors should not be tracked.
		
		This prevents Layers from attempting to create TensorFlowOpLayers
		for these Tensors.
		
		Args:
		  tensors: An arbitrary structure of Tensors.
	**/
	static public function mark_checked(tensors:Dynamic):Dynamic;
	/**
		Check if any Tensors need to be wrapped in TensorFlowOpLayers.
		
		This will never return True inside a sublayer, because sublayers
		do not need to create Keras History. Otherwise, this returns True
		if one or more of `tensors` originates from a `keras.Input` and
		does not have `_keras_history` set.
		
		Args:
		  tensors: An arbitrary nested structure of Tensors.
		  ignore_call_context: Whether to ignore the check of if currently
		    outside of a `call` context. This is `True` when creating
		    KerasHistory inside `Node`, where we always know that Tensors
		    are being used with the Functional API.
		
		Returns:
		  Bool, whether at least one Tensor needs to be wrapped.
	**/
	static public function needs_keras_history(tensors:Dynamic, ?ignore_call_context:Dynamic):Dynamic;
	static public function no_ragged_support(inputs:Dynamic, layer_name:Dynamic):Dynamic;
	/**
		Returns whether a user passed the `training` argument in `__call__`.
	**/
	static public function training_arg_passed_to_call(argspec:Dynamic, args:Dynamic, kwargs:Dynamic):Dynamic;
	static public function unnest_if_single_tensor(input_tensors:Dynamic):Dynamic;
	/**
		Check if at least one Tensor originates from a `keras.Input`.
		
		This is `True` if at least one Tensor has its origin in a `keras.Input`.
		Any Tensor that originates from a `keras.Input` will have a dependency
		Tensor with a `_keras_history` attribute attached. Tensors that have
		already been checked to not originate from a `keras.Input`
		are marked as `_keras_history_checked`.
		
		Args:
		  tensors: An arbitrary nested structure of Tensors.
		
		Returns:
		  Bool, whether at least one Tensor originates from a `keras.Input`.
	**/
	static public function uses_keras_history(tensors:Dynamic):Dynamic;
	/**
		Returns True if the V2 dtype behavior is enabled.
	**/
	static public function v2_dtype_behavior_enabled():Dynamic;
}