/* This file is generated, do not edit! */
package tensorflow.contrib.estimator.python.estimator.replicate_model_fn;
@:pythonImport("tensorflow.contrib.estimator.python.estimator.replicate_model_fn") extern class Replicate_model_fn_Module {
	static public var _DEFAULT_NAME_SCOPE_PATTERN : Dynamic;
	static public var _HAS_DYNAMIC_ATTRIBUTES : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Returns a namedtuple as a dictionary.
		
		This is required because `_asdict()` in Python 3.x.x is broken in classes
		that inherit from `collections.namedtuple`. See
		https://bugs.python.org/issue24931 for more details.
		
		Args:
		  namedtuple: An object that inherits from `collections.namedtuple`.
		
		Returns:
		  A dictionary version of the tuple.
	**/
	static public function _asdict(namedtuple:Dynamic):Dynamic;
	static public function _compute_sum_on_device(values:Dynamic, device:Dynamic, ?name:Dynamic):Dynamic;
	static public function _concat_tensor_dicts(?tensor_dicts:python.VarArgs<Dynamic>):Dynamic;
	static public function _dict_concat(?dicts:python.VarArgs<Dynamic>):Dynamic;
	/**
		Populate replicated EstimatorSpec for `GraphKeys.EVAL`.
	**/
	static public function _eval_spec(tower_specs:Dynamic, aggregation_device:Dynamic, ?aggregated_loss_name:Dynamic):Dynamic;
	static public function _extract_tensors(tensors_and_vars:Dynamic):Dynamic;
	static public function _get_local_devices(device_type:Dynamic):Dynamic;
	/**
		Replicate the loss computation across devices.
	**/
	static public function _get_loss_towers(model_fn:Dynamic, mode:Dynamic, features:Dynamic, labels:Dynamic, params:Dynamic, config:Dynamic, devices:Dynamic, local_ps_devices:Dynamic, loss_reduction:Dynamic, ?name_scope_pattern:Dynamic):Dynamic;
	/**
		A device setter that puts distributes Var/Ops to PS/workers.
	**/
	static public function _local_device_setter(worker_device:Dynamic, ps_devices:Dynamic, ps_strategy:Dynamic):Dynamic;
	/**
		`train_op` of the last tower applies aggregated gradients.
	**/
	static public function _minimize_towers(tower_specs:Dynamic):Dynamic;
	/**
		Populate replicated EstimatorSpec for `GraphKeys.PREDICT`.
	**/
	static public function _predict_spec(tower_specs:Dynamic, aggregation_device:Dynamic):Dynamic;
	/**
		Aggregate local variables used in metrics into the first tower.
	**/
	static public function _reduce_metric_variables(number_of_towers:Dynamic):Dynamic;
	/**
		A version of `replicate_model_fn` that allows to specify a `mode`.
	**/
	static public function _replicate_model_fn_with_mode(model_fn:Dynamic, loss_reduction:Dynamic, ?devices:Dynamic, ?mode:Dynamic):Dynamic;
	/**
		If needed, scale down the loss for averaging loss by summing.
	**/
	static public function _scale_loss(loss:Dynamic, loss_reduction:Dynamic, number_of_towers:Dynamic):Dynamic;
	/**
		Produce an EstimatorSpec with appropriately scaled loss.
	**/
	static public function _scale_tower_loss(tower_spec:Dynamic, loss_reduction:Dynamic, number_of_towers:Dynamic):Dynamic;
	/**
		Split input features and labels into batches.
	**/
	static public function _split_batch(features:Dynamic, labels:Dynamic, number_of_shards:Dynamic, device:Dynamic):Dynamic;
	/**
		Populate replicated EstimatorSpec for `GraphKeys.TRAIN`.
	**/
	static public function _train_spec(tower_specs:Dynamic, train_op:Dynamic, aggregation_device:Dynamic, ?aggregated_loss_name:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		@contextmanager decorator.
		
		Typical usage:
		
		    @contextmanager
		    def some_generator(<arguments>):
		        <setup>
		        try:
		            yield <value>
		        finally:
		            <cleanup>
		
		This makes this:
		
		    with some_generator(<arguments>) as <variable>:
		        <body>
		
		equivalent to this:
		
		    <setup>
		    try:
		        <variable> = <value>
		        <body>
		    finally:
		        <cleanup>
	**/
	static public function contextmanager(func:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	/**
		Replicate `Estimator.model_fn` over GPUs. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed after 2018-05-31.
		Instructions for updating:
		Please use `tf.contrib.distribute.MirroredStrategy` instead.
		
		The given `model_fn` specifies a single forward pass of a model.  To replicate
		such a model over GPUs, each GPU gets its own instance of the forward pass
		(a.k.a. a tower).  The input features and labels get sharded into the chunks
		that correspond to the number of GPUs.  Each tower computes a loss based
		on its input.  For each such loss, gradients are computed.  After that, the
		available losses are aggregated to form aggregated loss.  Available
		gradients are summed.  Then, they update weights using the specified
		optimizer.
		
		If `devices` are `None`, then all available GPUs are going to be used for
		replication.  If no GPUs are available, then the model is going to be
		placed on the CPU.
		
		Two modes of local replication over available GPUs are supported:
		  1)  If exactly 1 GPU is detected, then variables and operations are placed
		      onto the GPU.
		  2)  If more than 1 GPU is detected, then variables are going to be placed on
		      the CPU.  Replicas of operations are placed on each individual GPU.
		
		Here is an example of how one might use their `model_fn` to run over GPUs:
		  ```python
		     ...
		     def model_fn(...):  # See `model_fn` in `Estimator`.
		       loss = ...
		       optimizer = tf.train.GradientDescentOptimizer(learning_rate=0.001)
		       optimizer = tf.contrib.estimator.TowerOptimizer(optimizer)
		       if mode == tf.estimator.ModeKeys.TRAIN:
		         #  See the section below on `EstimatorSpec.train_op`.
		         return EstimatorSpec(mode=mode, loss=loss,
		                              train_op=optimizer.minimize(loss))
		
		       #  No change for `ModeKeys.EVAL` or `ModeKeys.PREDICT`.
		       return EstimatorSpec(...)
		     ...
		     classifier = tf.estimator.Estimator(
		       model_fn=tf.contrib.estimator.replicate_model_fn(model_fn))
		  ```
		
		Please see `DNNClassifierIntegrationTest` for an example with a canned
		Estimator.
		
		On `EstimatorSpec.train_op`:
		`model_fn` returns `EstimatorSpec.train_op` for
		`tf.estimator.GraphKeys.TRAIN`. It is typically derived using an optimizer.
		Towers are expected to populate it in the same way.  Gradients from all towers
		are reduced and applied in the last tower.  To achieve that in the case of
		multiple towers, `TowerOptimizer` needs to be used.  See `TowerOptimizer`.
		
		On sharding input features and labels:
		Input features and labels are split for consumption by each tower. They are
		split across the dimension 0.  Features and labels need to be batch major.
		
		On reduction algorithms:
		Certain algorithms were chosen for aggregating results of computations on
		multiple towers:
		  - Losses from all towers are reduced according to `loss_reduction`.
		  - Gradients from all towers are reduced according to `loss_reduction`
		    for each trainable variable.
		  - `eval_metrics_ops` are reduced per metric using `reduce_mean`.
		  - `EstimatorSpec.predictions` and `EstimatorSpec.export_outputs` are
		    reduced using concatenation.
		  - For all other fields of `EstimatorSpec` the values of the first tower
		    are taken.
		
		On distribution of variables:
		Variables are not duplicated between towers.  Instead, they are placed on a
		single device as defined above and shared across towers.
		
		On overhead:
		If only one device is specified, then aggregation of loss and gradients
		doesn't happen. Replication consists of placing `model_fn` onto the
		specified device.
		
		On current limitations:
		  - `predictions` are not supported for `ModeKeys.EVAL`.  They are required
		     for `tf.contrib.estimator.add_metrics`.
		
		Args:
		  model_fn: `model_fn` as defined in `Estimator`.  See the section above about
		    the train_op argument of `EstimatorSpec`.
		  loss_reduction: controls whether losses are summed or averaged.
		  devices: Optional list of devices to replicate the model across.  This
		    argument can be used to replicate only on the subset of available GPUs.
		    If `None`, then all available GPUs are going to be used for replication.
		    If no GPUs are available, then the model is going to be placed on the CPU.
		
		Raises:
		  ValueError: if there is no `loss_reduction` or if TowerOptimizer is
		    mis-used.
		
		Returns:
		  A replicated version of the supplied `model_fn`. Returned function that
		    conforms to the requirements of `Estimator`'s `model_fn` and can be used
		    instead of the supplied `model_fn`.
	**/
	static public function replicate_model_fn(model_fn:Dynamic, ?loss_reduction:Dynamic, ?devices:Dynamic):Dynamic;
}