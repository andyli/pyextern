/* This file is generated, do not edit! */
package tensorflow.python.keras.engine.base_layer;
@:pythonImport("tensorflow.python.keras.engine.base_layer") extern class Base_layer_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Retrieves the output mask(s) of the previous node.
		
		Arguments:
		    input_tensors: A tensor or list of tensors.
		
		Returns:
		    A mask tensor or list of mask tensors.
	**/
	static public function collect_previous_mask(input_tensors:Dynamic):Dynamic;
	/**
		Decorates a method to detect overrides in subclasses.
	**/
	@:native("default")
	static public function _default(method:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public function generate_placeholders_from_shape(shape:Dynamic):Dynamic;
	static public function get_default_graph_uid_map():Dynamic;
	static public function have_all_keras_metadata(iterable_or_element:Dynamic):Dynamic;
	static public function is_tensor_or_tensor_list(v:Dynamic):Dynamic;
	/**
		Temporary util to create a variable (relies on `variable_scope.variable`).
		
		Some reuse-related technicalities prevent us from using
		`variable_scope.get_variable()` directly, so we use a subcomponent
		that has fewer constraints (`variable_scope.variable()`).
		
		In the longer term, it seems like a similar "default variable creator" method
		should exist in `CheckpointableBase` instead. When this happens, we can get
		rid of this temporary solution.
		
		TODO(fchollet): remove this method when no longer needed.
		TODO(fchollet): handle `partitioner` argument.
		
		Arguments:
		  name: Variable name.
		  shape: Variable shape.
		  dtype: The type of the variable. Defaults to `self.dtype` or `float32`.
		  initializer: Initializer instance (callable).
		  partition_info: Not handled at this time.
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
	static public function make_variable(name:Dynamic, ?shape:Dynamic, ?dtype:Dynamic, ?initializer:Dynamic, ?partition_info:Dynamic, ?trainable:Dynamic, ?caching_device:Dynamic, ?validate_shape:Dynamic, ?constraint:Dynamic, ?use_resource:Dynamic, ?collections:Dynamic, ?synchronization:Dynamic, ?aggregation:Dynamic, ?partitioner:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function to_snake_case(name:Dynamic):Dynamic;
	/**
		Makes a layer name (or arbitrary string) unique within a TensorFlow graph.
		
		Arguments:
		  name: String name to make unique.
		  name_uid_map: An optional defaultdict(int) to use when creating unique
		    names. If None (default), uses a per-Graph dictionary.
		  avoid_names: An optional set or dict with names which should not be used. If
		    None (default) does not avoid any names.
		  namespace: Gets a name which is unique within the (graph, namespace). Layers
		    which are not Networks use a blank namespace and so get graph-global
		    names.
		  zero_based: If True, name sequences start with no suffix (e.g. "dense",
		    "dense_1"). If False, naming is one-based ("dense_1", "dense_2").
		
		Returns:
		  Unique string name.
		
		Example:
		
		```python
		_unique_layer_name('dense')  # dense_1
		_unique_layer_name('dense')  # dense_2
		```
	**/
	static public function unique_layer_name(name:Dynamic, ?name_uid_map:Dynamic, ?avoid_names:Dynamic, ?namespace:Dynamic, ?zero_based:Dynamic):Dynamic;
}