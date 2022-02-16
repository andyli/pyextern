/* This file is generated, do not edit! */
package tensorflow.python.distribute.input_lib;
@:pythonImport("tensorflow.python.distribute.input_lib") extern class Input_lib_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Returns whether to always wrap the values in a DistributedValues.
	**/
	static public function _always_wrap(strategy:Dynamic):Dynamic;
	/**
		Calcualates the number of replicas that have values.
		
		Args:
		  strategy: the `tf.distribute.Strategy`.
		  input_workers: the `InputWorkers`.
		  optional_list: a list of lists `tf.experimental.Optional`. The values from
		    each compute device grouped by the input device.
		
		Returns:
		  A scalar Tensor.
	**/
	static public function _calculate_replicas_with_values(strategy:Dynamic, input_workers:Dynamic, optional_list:Dynamic):Dynamic;
	/**
		Returns the cardinality of the dataset.
	**/
	static public function _cardinality(dataset:Dynamic):Dynamic;
	/**
		Create device datasets per worker given a dataset function.
	**/
	static public function _create_datasets_from_function_with_input_context(input_contexts:Dynamic, input_workers:Dynamic, dataset_fn:Dynamic):Dynamic;
	/**
		Create a `tf.TypeSpec` for a given strategy and input `tensor_spec`.
		
		Args:
		  strategy: The given `tf.distribute` strategy.
		  tensor_spec: `tf.TensorSpec` of a given value. The batch dimension of the
		    shape should be None if you have partial batches.
		
		Returns:
		  A `tf.TypeSpec` that matches the values produced by a given strategy. This
		  can be a `tf.TensorSpec` or a `PerRelicaSpec`.
	**/
	static public function _create_distributed_tensor_spec(strategy:Dynamic, tensor_spec:Dynamic):Dynamic;
	/**
		Create a multidevice iterator on each of the workers.
	**/
	static public function _create_iterators_per_worker(worker_datasets:Dynamic, input_workers:Dynamic, enable_legacy_iterators:Dynamic, ?options:Dynamic, ?canonicalize_devices:Dynamic):Dynamic;
	/**
		Creates a PerReplica.
		
		For strategies other than OneDeviceStrategy, it creates a PerReplica whose
		type spec is set to the element spec of the dataset. This helps avoid
		retracing for partial batches. Retracing is problematic for multi client when
		different client retraces different time, since retracing changes the
		collective keys in the tf.function, and causes mismatches among clients.
		
		For single client strategies, this simply calls distribute_utils.regroup().
		
		Args:
		  value_list: a list of values, one for each replica.
		  strategy: the `tf.distribute.Strategy`.
		
		Returns:
		  a structure of PerReplica.
	**/
	static public function _create_per_replica(value_list:Dynamic, strategy:Dynamic):Dynamic;
	/**
		A function to create dummy tensors from `value_structure`.
	**/
	static public function _dummy_tensor_fn(value_structure:Dynamic):Dynamic;
	/**
		Returns whether to enable using partial batch handling.
	**/
	static public function _enable_get_next_as_optional(strategy:Dynamic, dataset:Dynamic, cardinality:Dynamic):Dynamic;
	/**
		Get the batched dataset from `d`.
	**/
	static public function _get_batched_dataset(d:Dynamic):Dynamic;
	/**
		Get `batch_size`, `drop_remainder` of dataset.
	**/
	static public function _get_batched_dataset_attributes(d:Dynamic):Dynamic;
	/**
		Get the underlying attributes from the dataset object.
	**/
	static public function _get_dataset_attributes(dataset:Dynamic):Dynamic;
	/**
		Returns the value of the optionals or dummy values.
		
		Args:
		  input_workers: the `InputWorkers`.
		  optional_list: a list of lists `tf.experimental.Optional`. The values from
		    each compute device grouped by the input device.
		  produce_dummy: a bool. Whether to produce dummy tensors when the optional
		    doesn't have a value.
		
		Returns:
		  A flatten list of Tensors.
	**/
	static public function _get_value_or_dummy(input_workers:Dynamic, optional_list:Dynamic, produce_dummy:Dynamic):Dynamic;
	/**
		Test if an iterator output is statically shaped.
		
		For sparse and ragged tensors this only tests the batch dimension.
		
		Args:
		  element_spec: a nest structure of `tf.TypeSpec`. The element spec of the
		    dataset of the iterator.
		
		Returns:
		  True if the shape is static, false otherwise.
	**/
	static public function _is_statically_shaped(element_spec:Dynamic):Dynamic;
	/**
		Rebatch the spec to have a dynamic batch dimension.
	**/
	static public function _rebatch_as_dynamic(per_replica_spec:Dynamic):Dynamic;
	/**
		If `spec` is a `PerReplicaSpec`, then return its `i`th value_spec.
	**/
	static public function _replace_per_replica_spec(spec:Dynamic, i:Dynamic):Dynamic;
	/**
		Determine whether to use multi_device_iterator_ops.
	**/
	static public function _should_use_multi_device_iterator(options:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Decorator for marking functions or methods deprecated.
		
		This decorator logs a deprecation warning whenever the decorated function is
		called. It has the following format:
		
		  <function> (from <module>) is deprecated and will be removed after <date>.
		  Instructions for updating:
		  <instructions>
		
		If `date` is None, 'after <date>' is replaced with 'in a future version'.
		<function> will include the class name if it is a method.
		
		It also edits the docstring of the function: ' (deprecated)' is appended
		to the first line of the docstring and a deprecation notice is prepended
		to the rest of the docstring.
		
		Args:
		  date: String or None. The date the function is scheduled to be removed.
		    Must be ISO 8601 (YYYY-MM-DD), or None.
		  instructions: String. Instructions on how to update code using the
		    deprecated function.
		  warn_once: Boolean. Set to `True` to warn only the first time the decorated
		    function is called. Otherwise, every call will log a warning.
		
		Returns:
		  Decorated function or method.
		
		Raises:
		  ValueError: If date is not None or in ISO 8601 format, or instructions are
		    empty.
	**/
	static public function deprecated(date:Dynamic, instructions:Dynamic, ?warn_once:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Returns a distributed dataset from the given tf.data.Dataset instance.
		
		This is a common function that is used by all strategies to return a
		distributed dataset. The distributed dataset instance returned is different
		depending on if we are in a TF 1 or TF 2 context. The distributed dataset
		instances returned differ from each other in the APIs supported by each of
		them.
		
		Args:
		  dataset: a tf.data.Dataset instance.
		  input_workers: an InputWorkers object which specifies devices on which
		      iterators should be created.
		  strategy: a `tf.distribute.Strategy` object, used to run all-reduce to
		      handle last partial batch.
		  num_replicas_in_sync: Optional integer. If this is not None, the value is
		      used to decide how to rebatch datasets into smaller batches so that
		      the total batch size for each step (across all workers and replicas)
		      adds up to `dataset`'s batch size.
		  input_context: `InputContext` for sharding. Only pass this in for between
		      graph multi-worker cases where there is only one `input_worker`. In
		      these cases, we will shard based on the `input_pipeline_id` and
		      `num_input_pipelines` in the `InputContext`.
		  options: Default is None. `tf.distribute.InputOptions` used to control
		      options on how this dataset is distributed.
		  build: whether to build underlying datasets when a DistributedDataset is
		      created. This is only useful for `ParameterServerStrategy` now.
		
		Returns:
		  A distributed dataset instance.
	**/
	static public function get_distributed_dataset(dataset:Dynamic, input_workers:Dynamic, strategy:Dynamic, ?num_replicas_in_sync:Dynamic, ?input_context:Dynamic, ?options:Dynamic, ?build:Dynamic):Dynamic;
	/**
		Returns a distributed dataset from the given input function.
		
		This is a common function that is used by all strategies to return a
		distributed dataset. The distributed dataset instance returned is different
		depending on if we are in a TF 1 or TF 2 context. The distributed dataset
		instances returned differ from each other in the APIs supported by each of
		them.
		
		Args:
		  dataset_fn: a function that returns a tf.data.Dataset instance.
		  input_workers: an InputWorkers object which specifies devices on which
		      iterators should be created.
		  input_contexts: A list of `InputContext` instances to be passed to call(s)
		      to `dataset_fn`. Length and order should match worker order in
		      `worker_device_pairs`.
		  strategy: a `tf.distribute.Strategy` object, used to run all-reduce to
		      handle last partial batch.
		  options: Default is None. `tf.distribute.InputOptions` used to control
		      options on how this dataset is distributed.
		  build: whether to build underlying datasets when a
		      `DistributedDatasetFromFunction` is created. This is only useful for
		      `ParameterServerStrategy` now.
		
		Returns:
		  A distributed dataset instance.
		
		Raises:
		  ValueError: if `options.experimental_replication_mode` and
		  `options.experimental_place_dataset_on_device` are not consistent
	**/
	static public function get_distributed_datasets_from_function(dataset_fn:Dynamic, input_workers:Dynamic, input_contexts:Dynamic, strategy:Dynamic, ?options:Dynamic, ?build:Dynamic):Dynamic;
	/**
		Returns an iterator spec from dataset function.
		
		This function constructs type spec for iterator obtained from
		iter(dataset).
		
		Args:
		  strategy: a `tf.distribute.Strategy` object, used to run all-reduce to
		      handle last partial batch.
		  dataset: A tf.data.Dataset instance. If using a function that returns a
		    tf.data.Dataset instance, pass dataset_fn.structured_outputs.
		
		Returns:
		  A type_spec for iterator for dataset instance.
	**/
	static public function get_iterator_spec_from_dataset(strategy:Dynamic, dataset:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}