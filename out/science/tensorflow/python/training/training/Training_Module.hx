/* This file is generated, do not edit! */
package tensorflow.python.training.training;
@:pythonImport("tensorflow.python.training.training") extern class Training_Module {
	static public var DESCRIPTOR : Dynamic;
	/**
		Creates a `MonitoredSession` for training.
		
		For a chief, this utility sets proper session initializer/restorer. It also
		creates hooks related to checkpoint and summary saving. For workers, this
		utility sets proper session creator which waits for the chief to
		initialize/restore. Please check `tf.compat.v1.train.MonitoredSession` for
		more
		information.
		
		@compatibility(TF2)
		This API is not compatible with eager execution and `tf.function`. To migrate
		to TF2, rewrite the code to be compatible with eager execution. Check the
		[migration
		guide](https://www.tensorflow.org/guide/migrate#1_replace_v1sessionrun_calls)
		on replacing `Session.run` calls. In Keras, session hooks can be replaced by
		Callbacks e.g. [logging hook notebook](
		https://github.com/tensorflow/docs/blob/master/site/en/guide/migrate/logging_stop_hook.ipynb)
		For more details please read [Better
		performance with tf.function](https://www.tensorflow.org/guide/function).
		@end_compatibility
		
		Args:
		  master: `String` the TensorFlow master to use.
		  is_chief: If `True`, it will take care of initialization and recovery the
		    underlying TensorFlow session. If `False`, it will wait on a chief to
		    initialize or recover the TensorFlow session.
		  checkpoint_dir: A string.  Optional path to a directory where to restore
		    variables.
		  scaffold: A `Scaffold` used for gathering or building supportive ops. If not
		    specified, a default one is created. It's used to finalize the graph.
		  hooks: Optional list of `SessionRunHook` objects.
		  chief_only_hooks: list of `SessionRunHook` objects. Activate these hooks if
		    `is_chief==True`, ignore otherwise.
		  save_checkpoint_secs: The frequency, in seconds, that a checkpoint is saved
		    using a default checkpoint saver. If both `save_checkpoint_steps` and
		    `save_checkpoint_secs` are set to `None`, then the default checkpoint
		    saver isn't used. If both are provided, then only `save_checkpoint_secs`
		    is used. Default 600.
		  save_summaries_steps: The frequency, in number of global steps, that the
		    summaries are written to disk using a default summary saver. If both
		    `save_summaries_steps` and `save_summaries_secs` are set to `None`, then
		    the default summary saver isn't used. Default 100.
		  save_summaries_secs: The frequency, in secs, that the summaries are written
		    to disk using a default summary saver.  If both `save_summaries_steps` and
		    `save_summaries_secs` are set to `None`, then the default summary saver
		    isn't used. Default not enabled.
		  config: an instance of `tf.compat.v1.ConfigProto` proto used to configure
		    the session. It's the `config` argument of constructor of
		    `tf.compat.v1.Session`.
		  stop_grace_period_secs: Number of seconds given to threads to stop after
		    `close()` has been called.
		  log_step_count_steps: The frequency, in number of global steps, that the
		    global step/sec is logged.
		  max_wait_secs: Maximum time workers should wait for the session to become
		    available. This should be kept relatively short to help detect incorrect
		    code, but sometimes may need to be increased if the chief takes a while to
		    start up.
		  save_checkpoint_steps: The frequency, in number of global steps, that a
		    checkpoint is saved using a default checkpoint saver. If both
		    `save_checkpoint_steps` and `save_checkpoint_secs` are set to `None`, then
		    the default checkpoint saver isn't used. If both are provided, then only
		    `save_checkpoint_secs` is used. Default not enabled.
		  summary_dir: A string.  Optional path to a directory where to save
		    summaries. If None, checkpoint_dir is used instead.
		  save_graph_def: Whether to save the GraphDef and MetaGraphDef to
		    `checkpoint_dir`. The GraphDef is saved after the session is created as
		    `graph.pbtxt`. MetaGraphDefs are saved out for every checkpoint as
		    `model.ckpt-*.meta`.
		
		Returns:
		  A `MonitoredSession` object.
	**/
	static public function MonitoredTrainingSession(?master:Dynamic, ?is_chief:Dynamic, ?checkpoint_dir:Dynamic, ?scaffold:Dynamic, ?hooks:Dynamic, ?chief_only_hooks:Dynamic, ?save_checkpoint_secs:Dynamic, ?save_summaries_steps:Dynamic, ?save_summaries_secs:Dynamic, ?config:Dynamic, ?stop_grace_period_secs:Dynamic, ?log_step_count_steps:Dynamic, ?max_wait_secs:Dynamic, ?save_checkpoint_steps:Dynamic, ?summary_dir:Dynamic, ?save_graph_def:Dynamic):Dynamic;
	/**
		A function that returns a CheckPointReader.
		
		Args:
		  filepattern: The filename.
		
		Returns:
		  A CheckpointReader object.
	**/
	static public function NewCheckpointReader(filepattern:Dynamic):Dynamic;
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
		Adds a `QueueRunner` to a collection in the graph. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		To construct input pipelines, use the `tf.data` module.
		
		When building a complex model that uses many queues it is often difficult to
		gather all the queue runners that need to be run.  This convenience function
		allows you to add a queue runner to a well known collection in the graph.
		
		The companion method `start_queue_runners()` can be used to start threads for
		all the collected queue runners.
		
		@compatibility(TF2)
		QueueRunners are not compatible with eager execution. Instead, please
		use [tf.data](https://www.tensorflow.org/guide/data) to get data into your
		model.
		@end_compatibility
		
		Args:
		  qr: A `QueueRunner`.
		  collection: A `GraphKey` specifying the graph collection to add
		    the queue runner to.  Defaults to `GraphKeys.QUEUE_RUNNERS`.
	**/
	static public function add_queue_runner(qr:Dynamic, ?collection:Dynamic):Dynamic;
	/**
		Asserts `global_step_tensor` is a scalar int `Variable` or `Tensor`.
		
		Args:
		  global_step_tensor: `Tensor` to test.
	**/
	static public function assert_global_step(global_step_tensor:Dynamic):Dynamic;
	/**
		Basic loop to train a model.
		
		Calls `train_step_fn` in a loop to train a model.  The function is called as:
		
		```python
		train_step_fn(session, *args, **kwargs)
		```
		
		It is passed a `tf.compat.v1.Session` in addition to `args` and `kwargs`.  The
		function
		typically runs one training step in the session.
		
		Args:
		  supervisor: `tf.compat.v1.train.Supervisor` to run the training services.
		  train_step_fn: Callable to execute one training step.  Called repeatedly as
		    `train_step_fn(session, *args **kwargs)`.
		  args: Optional positional arguments passed to `train_step_fn`.
		  kwargs: Optional keyword arguments passed to `train_step_fn`.
		  master: Master to use to create the training session.  Defaults to `""`
		    which causes the session to be created in the local process.
	**/
	static public function basic_train_loop(supervisor:Dynamic, train_step_fn:Dynamic, ?args:Dynamic, ?kwargs:Dynamic, ?master:Dynamic):Dynamic;
	/**
		Creates batches of tensors in `tensors`. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Queue-based input pipelines have been replaced by `tf.data`. Use `tf.data.Dataset.batch(batch_size)` (or `padded_batch(...)` if `dynamic_pad=True`).
		
		The argument `tensors` can be a list or a dictionary of tensors.
		The value returned by the function will be of the same type
		as `tensors`.
		
		This function is implemented using a queue. A `QueueRunner` for the
		queue is added to the current `Graph`'s `QUEUE_RUNNER` collection.
		
		If `enqueue_many` is `False`, `tensors` is assumed to represent a single
		example.  An input tensor with shape `[x, y, z]` will be output as a tensor
		with shape `[batch_size, x, y, z]`.
		
		If `enqueue_many` is `True`, `tensors` is assumed to represent a batch of
		examples, where the first dimension is indexed by example, and all members of
		`tensors` should have the same size in the first dimension.  If an input
		tensor has shape `[*, x, y, z]`, the output will have shape `[batch_size, x,
		y, z]`.  The `capacity` argument controls the how long the prefetching is
		allowed to grow the queues.
		
		The returned operation is a dequeue operation and will throw
		`tf.errors.OutOfRangeError` if the input queue is exhausted. If this
		operation is feeding another input queue, its queue runner will catch
		this exception, however, if this operation is used in your main thread
		you are responsible for catching this yourself.
		
		*N.B.:* If `dynamic_pad` is `False`, you must ensure that either
		(i) the `shapes` argument is passed, or (ii) all of the tensors in
		`tensors` must have fully-defined shapes. `ValueError` will be
		raised if neither of these conditions holds.
		
		If `dynamic_pad` is `True`, it is sufficient that the *rank* of the
		tensors is known, but individual dimensions may have shape `None`.
		In this case, for each enqueue the dimensions with value `None`
		may have a variable length; upon dequeue, the output tensors will be padded
		on the right to the maximum shape of the tensors in the current minibatch.
		For numbers, this padding takes value 0.  For strings, this padding is
		the empty string.  See `PaddingFIFOQueue` for more info.
		
		If `allow_smaller_final_batch` is `True`, a smaller batch value than
		`batch_size` is returned when the queue is closed and there are not enough
		elements to fill the batch, otherwise the pending elements are discarded.
		In addition, all output tensors' static shapes, as accessed via the
		`shape` property will have a first `Dimension` value of `None`, and
		operations that depend on fixed batch_size would fail.
		
		Args:
		  tensors: The list or dictionary of tensors to enqueue.
		  batch_size: The new batch size pulled from the queue.
		  num_threads: The number of threads enqueuing `tensors`.  The batching will
		    be nondeterministic if `num_threads > 1`.
		  capacity: An integer. The maximum number of elements in the queue.
		  enqueue_many: Whether each tensor in `tensors` is a single example.
		  shapes: (Optional) The shapes for each example.  Defaults to the
		    inferred shapes for `tensors`.
		  dynamic_pad: Boolean.  Allow variable dimensions in input shapes.
		    The given dimensions are padded upon dequeue so that tensors within a
		    batch have the same shapes.
		  allow_smaller_final_batch: (Optional) Boolean. If `True`, allow the final
		    batch to be smaller if there are insufficient items left in the queue.
		  shared_name: (Optional). If set, this queue will be shared under the given
		    name across multiple sessions.
		  name: (Optional) A name for the operations.
		
		Returns:
		  A list or dictionary of tensors with the same types as `tensors` (except if
		  the input is a list of one element, then it returns a tensor, not a list).
		
		Raises:
		  ValueError: If the `shapes` are not specified, and cannot be
		    inferred from the elements of `tensors`.
		
		@compatibility(eager)
		Input pipelines based on Queues are not supported when eager execution is
		enabled. Please use the `tf.data` API to ingest data under eager execution.
		@end_compatibility
	**/
	static public function batch(tensors:Dynamic, batch_size:Dynamic, ?num_threads:Dynamic, ?capacity:Dynamic, ?enqueue_many:Dynamic, ?shapes:Dynamic, ?dynamic_pad:Dynamic, ?allow_smaller_final_batch:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Runs a list of tensors to fill a queue to create batches of examples. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Queue-based input pipelines have been replaced by `tf.data`. Use `tf.data.Dataset.interleave(...).batch(batch_size)` (or `padded_batch(...)` if `dynamic_pad=True`).
		
		The `tensors_list` argument is a list of tuples of tensors, or a list of
		dictionaries of tensors.  Each element in the list is treated similarly
		to the `tensors` argument of `tf.compat.v1.train.batch()`.
		
		WARNING: This function is nondeterministic, since it starts a separate thread
		for each tensor.
		
		Enqueues a different list of tensors in different threads.
		Implemented using a queue -- a `QueueRunner` for the queue
		is added to the current `Graph`'s `QUEUE_RUNNER` collection.
		
		`len(tensors_list)` threads will be started,
		with thread `i` enqueuing the tensors from
		`tensors_list[i]`. `tensors_list[i1][j]` must match
		`tensors_list[i2][j]` in type and shape, except in the first
		dimension if `enqueue_many` is true.
		
		If `enqueue_many` is `False`, each `tensors_list[i]` is assumed
		to represent a single example. An input tensor `x` will be output as a
		tensor with shape `[batch_size] + x.shape`.
		
		If `enqueue_many` is `True`, `tensors_list[i]` is assumed to
		represent a batch of examples, where the first dimension is indexed
		by example, and all members of `tensors_list[i]` should have the
		same size in the first dimension.  The slices of any input tensor
		`x` are treated as examples, and the output tensors will have shape
		`[batch_size] + x.shape[1:]`.
		
		The `capacity` argument controls the how long the prefetching is allowed to
		grow the queues.
		
		The returned operation is a dequeue operation and will throw
		`tf.errors.OutOfRangeError` if the input queue is exhausted. If this
		operation is feeding another input queue, its queue runner will catch
		this exception, however, if this operation is used in your main thread
		you are responsible for catching this yourself.
		
		*N.B.:* If `dynamic_pad` is `False`, you must ensure that either
		(i) the `shapes` argument is passed, or (ii) all of the tensors in
		`tensors_list` must have fully-defined shapes. `ValueError` will be
		raised if neither of these conditions holds.
		
		If `dynamic_pad` is `True`, it is sufficient that the *rank* of the
		tensors is known, but individual dimensions may have value `None`.
		In this case, for each enqueue the dimensions with value `None`
		may have a variable length; upon dequeue, the output tensors will be padded
		on the right to the maximum shape of the tensors in the current minibatch.
		For numbers, this padding takes value 0.  For strings, this padding is
		the empty string.  See `PaddingFIFOQueue` for more info.
		
		If `allow_smaller_final_batch` is `True`, a smaller batch value than
		`batch_size` is returned when the queue is closed and there are not enough
		elements to fill the batch, otherwise the pending elements are discarded.
		In addition, all output tensors' static shapes, as accessed via the
		`shape` property will have a first `Dimension` value of `None`, and
		operations that depend on fixed batch_size would fail.
		
		Args:
		  tensors_list: A list of tuples or dictionaries of tensors to enqueue.
		  batch_size: An integer. The new batch size pulled from the queue.
		  capacity: An integer. The maximum number of elements in the queue.
		  enqueue_many: Whether each tensor in `tensor_list_list` is a single
		    example.
		  shapes: (Optional) The shapes for each example.  Defaults to the
		    inferred shapes for `tensor_list_list[i]`.
		  dynamic_pad: Boolean.  Allow variable dimensions in input shapes.
		    The given dimensions are padded upon dequeue so that tensors within a
		    batch have the same shapes.
		  allow_smaller_final_batch: (Optional) Boolean. If `True`, allow the final
		    batch to be smaller if there are insufficient items left in the queue.
		  shared_name: (Optional) If set, this queue will be shared under the given
		    name across multiple sessions.
		  name: (Optional) A name for the operations.
		
		Returns:
		  A list or dictionary of tensors with the same number and types as
		  `tensors_list[i]`.
		
		Raises:
		  ValueError: If the `shapes` are not specified, and cannot be
		    inferred from the elements of `tensor_list_list`.
		
		@compatibility(eager)
		Input pipelines based on Queues are not supported when eager execution is
		enabled. Please use the `tf.data` API to ingest data under eager execution.
		@end_compatibility
	**/
	static public function batch_join(tensors_list:Dynamic, batch_size:Dynamic, ?capacity:Dynamic, ?enqueue_many:Dynamic, ?shapes:Dynamic, ?dynamic_pad:Dynamic, ?allow_smaller_final_batch:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Checks whether a V1 or V2 checkpoint exists with the specified prefix. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use standard file APIs to check for files with this prefix.
		
		This is the recommended way to check if a checkpoint exists, since it takes
		into account the naming difference between V1 and V2 formats.
		
		Args:
		  checkpoint_prefix: the prefix of a V1 or V2 checkpoint, with V2 taking
		    priority.  Typically the result of `Saver.save()` or that of
		    `tf.train.latest_checkpoint()`, regardless of sharded/non-sharded or
		    V1/V2.
		
		Returns:
		  A bool, true if a checkpoint referred to by `checkpoint_prefix` exists.
	**/
	static public function checkpoint_exists(checkpoint_prefix:Dynamic):Dynamic;
	/**
		Applies cosine decay to the learning rate.
		
		When training a model, it is often recommended to lower the learning rate as
		the training progresses.  This function applies a cosine decay function
		to a provided initial learning rate.  It requires a `global_step` value to
		compute the decayed learning rate.  You can just pass a TensorFlow variable
		that you increment at each training step.
		
		The function returns the decayed learning rate.  It is computed as:
		```python
		global_step = min(global_step, decay_steps)
		cosine_decay = 0.5 * (1 + cos(pi * global_step / decay_steps))
		decayed = (1 - alpha) * cosine_decay + alpha
		decayed_learning_rate = learning_rate * decayed
		```
		
		Example usage:
		```python
		decay_steps = 1000
		lr_decayed = cosine_decay(learning_rate, global_step, decay_steps)
		```
		
		Args:
		  learning_rate: A scalar `float32` or `float64` Tensor or a Python number.
		    The initial learning rate.
		  global_step: A scalar `int32` or `int64` `Tensor` or a Python number. Global
		    step to use for the decay computation.
		  decay_steps: A scalar `int32` or `int64` `Tensor` or a Python number. Number
		    of steps to decay over.
		  alpha: A scalar `float32` or `float64` Tensor or a Python number. Minimum
		    learning rate value as a fraction of learning_rate.
		  name: String. Optional name of the operation.  Defaults to 'CosineDecay'.
		
		Returns:
		  A scalar `Tensor` of the same type as `learning_rate`.  The decayed
		  learning rate.
		Raises:
		  ValueError: if `global_step` is not supplied.
		
		References:
		  Stochastic Gradient Descent with Warm Restarts:
		    [Loshchilov et al., 2017]
		    (https://openreview.net/forum?id=Skq89Scxx&noteId=Skq89Scxx)
		    ([pdf](https://openreview.net/pdf?id=Skq89Scxx))
		
		@compatibility(eager)
		When eager execution is enabled, this function returns a function which in
		turn returns the decayed learning rate Tensor. This can be useful for changing
		the learning rate value across different invocations of optimizer functions.
		@end_compatibility
	**/
	static public function cosine_decay(learning_rate:Dynamic, global_step:Dynamic, decay_steps:Dynamic, ?alpha:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Applies cosine decay with restarts to the learning rate.
		
		When training a model, it is often recommended to lower the learning rate as
		the training progresses.  This function applies a cosine decay function with
		restarts to a provided initial learning rate.  It requires a `global_step`
		value to compute the decayed learning rate.  You can just pass a TensorFlow
		variable that you increment at each training step.
		
		The function returns the decayed learning rate while taking into account
		possible warm restarts. The learning rate multiplier first decays
		from 1 to `alpha` for `first_decay_steps` steps. Then, a warm
		restart is performed. Each new warm restart runs for `t_mul` times more steps
		and with `m_mul` times smaller initial learning rate.
		
		Example usage:
		```python
		first_decay_steps = 1000
		lr_decayed = cosine_decay_restarts(learning_rate, global_step,
		                                   first_decay_steps)
		```
		
		Args:
		  learning_rate: A scalar `float32` or `float64` Tensor or a Python number.
		    The initial learning rate.
		  global_step: A scalar `int32` or `int64` `Tensor` or a Python number. Global
		    step to use for the decay computation.
		  first_decay_steps: A scalar `int32` or `int64` `Tensor` or a Python number.
		    Number of steps to decay over.
		  t_mul: A scalar `float32` or `float64` `Tensor` or a Python number. Used to
		    derive the number of iterations in the i-th period
		  m_mul: A scalar `float32` or `float64` `Tensor` or a Python number.
		    Used to derive the initial learning rate of the i-th period:
		  alpha: A scalar `float32` or `float64` Tensor or a Python number. Minimum
		    learning rate value as a fraction of the learning_rate.
		  name: String. Optional name of the operation.  Defaults to 'SGDRDecay'.
		
		Returns:
		  A scalar `Tensor` of the same type as `learning_rate`.  The decayed
		  learning rate.
		Raises:
		  ValueError: if `global_step` is not supplied.
		
		References:
		  Stochastic Gradient Descent with Warm Restarts:
		    [Loshchilov et al., 2017]
		    (https://openreview.net/forum?id=Skq89Scxx&noteId=Skq89Scxx)
		    ([pdf](https://openreview.net/pdf?id=Skq89Scxx))
		
		@compatibility(eager)
		When eager execution is enabled, this function returns a function which in
		turn returns the decayed learning rate Tensor. This can be useful for changing
		the learning rate value across different invocations of optimizer functions.
		@end_compatibility
	**/
	static public function cosine_decay_restarts(learning_rate:Dynamic, global_step:Dynamic, first_decay_steps:Dynamic, ?t_mul:Dynamic, ?m_mul:Dynamic, ?alpha:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Create global step tensor in graph.
		
		Args:
		  graph: The graph in which to create the global step tensor. If missing, use
		    default graph.
		
		Returns:
		  Global step tensor.
		
		Raises:
		  ValueError: if global step tensor is already defined.
		
		@compatibility(TF2)
		With the deprecation of global graphs, TF no longer tracks variables in
		collections. In other words, there are no global variables in TF2. Thus, the
		global step functions have been removed  (`get_or_create_global_step`,
		`create_global_step`, `get_global_step`) . You have two options for migrating:
		
		1. Create a Keras optimizer, which generates an `iterations` variable. This
		   variable is automatically incremented when calling `apply_gradients`.
		2. Manually create and increment a `tf.Variable`.
		
		Below is an example of migrating away from using a global step to using a
		Keras optimizer:
		
		Define a dummy model and loss:
		
		>>> def compute_loss(x):
		...   v = tf.Variable(3.0)
		...   y = x * v
		...   loss = x * 5 - x * v
		...   return loss, [v]
		
		Before migrating:
		
		>>> g = tf.Graph()
		>>> with g.as_default():
		...   x = tf.compat.v1.placeholder(tf.float32, [])
		...   loss, var_list = compute_loss(x)
		...   global_step = tf.compat.v1.train.create_global_step()
		...   global_init = tf.compat.v1.global_variables_initializer()
		...   optimizer = tf.compat.v1.train.GradientDescentOptimizer(0.1)
		...   train_op = optimizer.minimize(loss, global_step, var_list)
		>>> sess = tf.compat.v1.Session(graph=g)
		>>> sess.run(global_init)
		>>> print("before training:", sess.run(global_step))
		before training: 0
		>>> sess.run(train_op, feed_dict={x: 3})
		>>> print("after training:", sess.run(global_step))
		after training: 1
		
		Migrating to a Keras optimizer:
		
		>>> optimizer = tf.keras.optimizers.SGD(.01)
		>>> print("before training:", optimizer.iterations.numpy())
		before training: 0
		>>> with tf.GradientTape() as tape:
		...   loss, var_list = compute_loss(3)
		...   grads = tape.gradient(loss, var_list)
		...   optimizer.apply_gradients(zip(grads, var_list))
		>>> print("after training:", optimizer.iterations.numpy())
		after training: 1
		
		@end_compatibility
	**/
	static public function create_global_step(?graph:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Enable mixed precision via a graph rewrite.
		
		Mixed precision is the use of both float32 and float16 data types when
		training a model to improve performance. This is achieved via a graph rewrite
		operation and a loss-scale optimizer.
		
		Performing arithmetic operations in float16 takes advantage of specialized
		processing units, such as NVIDIA Tensor Cores, for much higher arithmetic
		throughput. However, due to the smaller representable range, performing the
		entire training with float16 can result in gradient underflow, that is, small
		gradient values becoming zeroes. Instead, performing only select arithmetic
		operations in float16 results in higher throughput and decreased training
		time when using compatible hardware accelerators while also reducing memory
		usage, typically without sacrificing model accuracy.
		
		Note: While the mixed precision rewrite changes the datatype of various
		layers throughout the model, the same accuracy reached in float32 is
		expected. If a `NaN` gradient occurs with dynamic loss scaling, the model
		update for that batch is skipped. In this case, the global step count is not
		incremented, and the `LossScaleOptimizer` attempts to decrease the loss
		scaling value to avoid `NaN` values in subsequent iterations. This approach
		has been shown to achieve the same accuracy as float32 and, in most cases,
		better training throughput.
		
		Example:
		
		```python
		model = tf.keras.models.Sequential([
		    tf.keras.layers.Dense(64, activation='relu'),
		    tf.keras.layers.Dense(64, activation='softmax'),
		])
		
		opt = tf.keras.optimizers.SGD()
		opt = tf.train.experimental.enable_mixed_precision_graph_rewrite(opt)
		model.compile(loss="mse", optimizer=opt)
		
		x_train = np.random.random((1024, 64))
		y_train = np.random.random((1024, 64))
		model.fit(x_train, y_train)
		```
		
		Calling `enable_mixed_precision_graph_rewrite(opt)` enables the graph rewrite
		operation before computing gradients. The function additionally returns an
		`Optimizer` (`opt`) wrapped with a `LossScaleOptimizer`. This prevents
		underflow in the float16 tensors during the backward pass. An optimizer of
		type `tf.train.Optimizer` or `tf.keras.optimizers.Optimizer` must be passed
		to this function, which will then be wrapped to use loss scaling.
		
		The graph rewrite operation changes the `dtype` of certain operations in the
		graph from float32 to float16. There are several categories of operations
		that are either included or excluded by this rewrite operation. The following
		categories of Ops are defined inside corresponding functions under the class
		`AutoMixedPrecisionLists` in
		<a href="https://github.com/tensorflow/tensorflow/blob/master/tensorflow/
		core/grappler/optimizers/auto_mixed_precision_lists.h">
		auto_mixed_precision_lists.h</a>:
		
		* `ClearList`: Ops that do not have numerically significant adverse effects.
		E.g. `ArgMax` and `Floor`.
		* `AllowList`: Ops that are considered numerically safe for execution in
		float16, and thus are always converted. E.g. `Conv2D`.
		* `DenyList`: Ops that are numerically unsafe to execute in float16 and
		can negatively affect downstream nodes. E.g. `Softmax`.
		* `GrayList`: Ops that are considered numerically safe for execution in
		float16 unless downstream from a DenyList Op. E.g. `Add` and `AvgPool`.
		
		When this function is used, gradients should only be computed and applied
		with the returned optimizer, either by calling `opt.minimize()` or
		`opt.compute_gradients()` followed by `opt.apply_gradients()`.
		Gradients should not be computed with `tf.gradients` or `tf.GradientTape`.
		This is because the returned optimizer will apply loss scaling, and
		`tf.gradients` or `tf.GradientTape` will not. If you do directly use
		`tf.gradients` or `tf.GradientTape`, your model may not converge due to
		float16 underflow problems.
		
		When eager execution is enabled, the mixed precision graph rewrite is only
		enabled within `tf.function`s, as outside `tf.function`s, there is no graph.
		
		For NVIDIA GPUs with Tensor cores, as a general performance guide, dimensions
		(such as batch size, input size, output size, and channel counts)
		should be powers of two if under 256, or  otherwise divisible by 8 if above
		256. For more information, check out the
		[NVIDIA Deep Learning Performance Guide](
		https://docs.nvidia.com/deeplearning/sdk/dl-performance-guide/index.html).
		
		Currently, mixed precision is only enabled on NVIDIA Tensor Core GPUs with
		Compute Capability 7.0 and above (Volta, Turing, or newer architectures). The
		parts of the graph on CPUs and TPUs are untouched by the graph rewrite.
		
		Raises:
		  `ValueError`, if the `tf.keras.mixed_precision` API is also used by calling
		  `tf.keras.mixed_precision.set_global_policy`. Only one mixed precision
		  API can be used.
		
		Args:
		  opt: An instance of a `tf.keras.optimizers.Optimizer` or a
		    `tf.train.Optimizer`.
		  loss_scale: Either an int/float, the string `"dynamic"`, or an instance of
		    a `tf.mixed_precision.experimental.LossScale`. The loss scale to use. It
		    is recommended to keep this as its default value of `"dynamic"`, which
		    will adjust the scaling automatically to prevent `Inf` or `NaN` values.
		
		Returns:
		  A version of `opt` that will use loss scaling to prevent underflow.
	**/
	static public function enable_mixed_precision_graph_rewrite_v1(opt:Dynamic, ?loss_scale:Dynamic):Dynamic;
	/**
		Applies exponential decay to the learning rate.
		
		When training a model, it is often recommended to lower the learning rate as
		the training progresses.  This function applies an exponential decay function
		to a provided initial learning rate.  It requires a `global_step` value to
		compute the decayed learning rate.  You can just pass a TensorFlow variable
		that you increment at each training step.
		
		The function returns the decayed learning rate.  It is computed as:
		
		```python
		decayed_learning_rate = learning_rate *
		                        decay_rate ^ (global_step / decay_steps)
		```
		
		If the argument `staircase` is `True`, then `global_step / decay_steps` is an
		integer division and the decayed learning rate follows a staircase function.
		
		Example: decay every 100000 steps with a base of 0.96:
		
		```python
		...
		global_step = tf.Variable(0, trainable=False)
		starter_learning_rate = 0.1
		learning_rate = tf.compat.v1.train.exponential_decay(starter_learning_rate,
		global_step,
		                                           100000, 0.96, staircase=True)
		# Passing global_step to minimize() will increment it at each step.
		learning_step = (
		    tf.compat.v1.train.GradientDescentOptimizer(learning_rate)
		    .minimize(...my loss..., global_step=global_step)
		)
		```
		
		Args:
		  learning_rate: A scalar `float32` or `float64` `Tensor` or a Python number.
		    The initial learning rate.
		  global_step: A scalar `int32` or `int64` `Tensor` or a Python number. Global
		    step to use for the decay computation.  Must not be negative.
		  decay_steps: A scalar `int32` or `int64` `Tensor` or a Python number. Must
		    be positive.  See the decay computation above.
		  decay_rate: A scalar `float32` or `float64` `Tensor` or a Python number.
		    The decay rate.
		  staircase: Boolean.  If `True` decay the learning rate at discrete intervals
		  name: String.  Optional name of the operation.  Defaults to
		    'ExponentialDecay'.
		
		Returns:
		  A scalar `Tensor` of the same type as `learning_rate`.  The decayed
		  learning rate.
		
		Raises:
		  ValueError: if `global_step` is not supplied.
		
		@compatibility(eager)
		When eager execution is enabled, this function returns a function which in
		turn returns the decayed learning rate Tensor. This can be useful for changing
		the learning rate value across different invocations of optimizer functions.
		@end_compatibility
	**/
	static public function exponential_decay(learning_rate:Dynamic, global_step:Dynamic, decay_steps:Dynamic, decay_rate:Dynamic, ?staircase:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns `MetaGraphDef` proto.
		
		Optionally writes it to filename.
		
		This function exports the graph, saver, and collection objects into
		`MetaGraphDef` protocol buffer with the intention of it being imported
		at a later time or location to restart training, run inference, or be
		a subgraph.
		
		Args:
		  filename: Optional filename including the path for writing the generated
		    `MetaGraphDef` protocol buffer.
		  meta_info_def: `MetaInfoDef` protocol buffer.
		  graph_def: `GraphDef` protocol buffer.
		  saver_def: `SaverDef` protocol buffer.
		  collection_list: List of string keys to collect.
		  as_text: If `True`, writes the `MetaGraphDef` as an ASCII proto.
		  graph: The `Graph` to export. If `None`, use the default graph.
		  export_scope: Optional `string`. Name scope under which to extract the
		    subgraph. The scope name will be striped from the node definitions for
		    easy import later into new name scopes. If `None`, the whole graph is
		    exported. graph_def and export_scope cannot both be specified.
		  clear_devices: Whether or not to clear the device field for an `Operation`
		    or `Tensor` during export.
		  clear_extraneous_savers: Remove any Saver-related information from the graph
		    (both Save/Restore ops and SaverDefs) that are not associated with the
		    provided SaverDef.
		  strip_default_attrs: Boolean. If `True`, default-valued attributes will be
		    removed from the NodeDefs. For a detailed guide, see
		    [Stripping Default-Valued Attributes](https://github.com/tensorflow/tensorflow/blob/master/tensorflow/python/saved_model/README.md#stripping-default-valued-attributes).
		  save_debug_info: If `True`, save the GraphDebugInfo to a separate file,
		    which in the same directory of filename and with `_debug` added before the
		    file extend.
		  **kwargs: Optional keyed arguments.
		
		Returns:
		  A `MetaGraphDef` proto.
		
		Raises:
		  ValueError: When the `GraphDef` is larger than 2GB.
		  RuntimeError: If called with eager execution enabled.
		
		@compatibility(eager)
		Exporting/importing meta graphs is not supported unless both `graph_def` and
		`graph` are provided. No graph exists when eager execution is enabled.
		@end_compatibility
	**/
	static public function export_meta_graph(?filename:Dynamic, ?meta_info_def:Dynamic, ?graph_def:Dynamic, ?saver_def:Dynamic, ?collection_list:Dynamic, ?as_text:Dynamic, ?graph:Dynamic, ?export_scope:Dynamic, ?clear_devices:Dynamic, ?clear_extraneous_savers:Dynamic, ?strip_default_attrs:Dynamic, ?save_debug_info:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Generates a checkpoint state proto.
		
		Args:
		  save_dir: Directory where the model was saved.
		  model_checkpoint_path: The checkpoint file.
		  all_model_checkpoint_paths: List of strings.  Paths to all not-yet-deleted
		    checkpoints, sorted from oldest to newest.  If this is a non-empty list,
		    the last element must be equal to model_checkpoint_path.  These paths
		    are also saved in the CheckpointState proto.
		  all_model_checkpoint_timestamps: A list of floats, indicating the number of
		    seconds since the Epoch when each checkpoint was generated.
		  last_preserved_timestamp: A float, indicating the number of seconds since
		    the Epoch when the last preserved checkpoint was written, e.g. due to a
		    `keep_checkpoint_every_n_hours` parameter (see
		    `tf.train.CheckpointManager` for an implementation).
		Returns:
		  CheckpointState proto with model_checkpoint_path and
		  all_model_checkpoint_paths updated to either absolute paths or
		  relative paths to the current save_dir.
		
		Raises:
		  ValueError: If `all_model_checkpoint_timestamps` was provided but its length
		    does not match `all_model_checkpoint_paths`.
	**/
	static public function generate_checkpoint_state_proto(save_dir:Dynamic, model_checkpoint_path:Dynamic, ?all_model_checkpoint_paths:Dynamic, ?all_model_checkpoint_timestamps:Dynamic, ?last_preserved_timestamp:Dynamic):Dynamic;
	/**
		Returns the mtimes (modification timestamps) of the checkpoints. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use standard file utilities to get mtimes.
		
		Globs for the checkpoints pointed to by `checkpoint_prefixes`.  If the files
		exist, collect their mtime.  Both V2 and V1 checkpoints are considered, in
		that priority.
		
		This is the recommended way to get the mtimes, since it takes into account
		the naming difference between V1 and V2 formats.
		
		Note: If not all checkpoints exist, the length of the returned mtimes list
		will be smaller than the length of `checkpoint_prefixes` list, so mapping
		checkpoints to corresponding mtimes will not be possible.
		
		Args:
		  checkpoint_prefixes: a list of checkpoint paths, typically the results of
		    `Saver.save()` or those of `tf.train.latest_checkpoint()`, regardless of
		    sharded/non-sharded or V1/V2.
		Returns:
		  A list of mtimes (in microseconds) of the found checkpoints.
	**/
	static public function get_checkpoint_mtimes(checkpoint_prefixes:Dynamic):Dynamic;
	/**
		Returns CheckpointState proto from the "checkpoint" file.
		
		If the "checkpoint" file contains a valid CheckpointState
		proto, returns it.
		
		Args:
		  checkpoint_dir: The directory of checkpoints.
		  latest_filename: Optional name of the checkpoint file.  Default to
		    'checkpoint'.
		
		Returns:
		  A CheckpointState if the state was available, None
		  otherwise.
		
		Raises:
		  ValueError: if the checkpoint read doesn't have model_checkpoint_path set.
	**/
	static public function get_checkpoint_state(checkpoint_dir:Dynamic, ?latest_filename:Dynamic):Dynamic;
	/**
		Get the global step tensor.
		
		The global step tensor must be an integer variable. We first try to find it
		in the collection `GLOBAL_STEP`, or by name `global_step:0`.
		
		Args:
		  graph: The graph to find the global step in. If missing, use default graph.
		
		Returns:
		  The global step variable, or `None` if none was found.
		
		Raises:
		  TypeError: If the global step tensor has a non-integer type, or if it is not
		    a `Variable`.
		
		@compatibility(TF2)
		With the deprecation of global graphs, TF no longer tracks variables in
		collections. In other words, there are no global variables in TF2. Thus, the
		global step functions have been removed  (`get_or_create_global_step`,
		`create_global_step`, `get_global_step`) . You have two options for migrating:
		
		1. Create a Keras optimizer, which generates an `iterations` variable. This
		   variable is automatically incremented when calling `apply_gradients`.
		2. Manually create and increment a `tf.Variable`.
		
		Below is an example of migrating away from using a global step to using a
		Keras optimizer:
		
		Define a dummy model and loss:
		
		>>> def compute_loss(x):
		...   v = tf.Variable(3.0)
		...   y = x * v
		...   loss = x * 5 - x * v
		...   return loss, [v]
		
		Before migrating:
		
		>>> g = tf.Graph()
		>>> with g.as_default():
		...   x = tf.compat.v1.placeholder(tf.float32, [])
		...   loss, var_list = compute_loss(x)
		...   global_step = tf.compat.v1.train.get_or_create_global_step()
		...   global_init = tf.compat.v1.global_variables_initializer()
		...   optimizer = tf.compat.v1.train.GradientDescentOptimizer(0.1)
		...   train_op = optimizer.minimize(loss, global_step, var_list)
		>>> sess = tf.compat.v1.Session(graph=g)
		>>> sess.run(global_init)
		>>> print("before training:", sess.run(global_step))
		before training: 0
		>>> sess.run(train_op, feed_dict={x: 3})
		>>> print("after training:", sess.run(global_step))
		after training: 1
		
		Using `get_global_step`:
		
		>>> with g.as_default():
		...   print(sess.run(tf.compat.v1.train.get_global_step()))
		1
		
		Migrating to a Keras optimizer:
		
		>>> optimizer = tf.keras.optimizers.SGD(.01)
		>>> print("before training:", optimizer.iterations.numpy())
		before training: 0
		>>> with tf.GradientTape() as tape:
		...   loss, var_list = compute_loss(3)
		...   grads = tape.gradient(loss, var_list)
		...   optimizer.apply_gradients(zip(grads, var_list))
		>>> print("after training:", optimizer.iterations.numpy())
		after training: 1
		
		@end_compatibility
	**/
	static public function get_global_step(?graph:Dynamic):Dynamic;
	/**
		Returns and create (if necessary) the global step tensor.
		
		Args:
		  graph: The graph in which to create the global step tensor. If missing, use
		    default graph.
		
		Returns:
		  The global step tensor.
		
		@compatibility(TF2)
		With the deprecation of global graphs, TF no longer tracks variables in
		collections. In other words, there are no global variables in TF2. Thus, the
		global step functions have been removed  (`get_or_create_global_step`,
		`create_global_step`, `get_global_step`) . You have two options for migrating:
		
		1. Create a Keras optimizer, which generates an `iterations` variable. This
		   variable is automatically incremented when calling `apply_gradients`.
		2. Manually create and increment a `tf.Variable`.
		
		Below is an example of migrating away from using a global step to using a
		Keras optimizer:
		
		Define a dummy model and loss:
		
		>>> def compute_loss(x):
		...   v = tf.Variable(3.0)
		...   y = x * v
		...   loss = x * 5 - x * v
		...   return loss, [v]
		
		Before migrating:
		
		>>> g = tf.Graph()
		>>> with g.as_default():
		...   x = tf.compat.v1.placeholder(tf.float32, [])
		...   loss, var_list = compute_loss(x)
		...   global_step = tf.compat.v1.train.get_or_create_global_step()
		...   global_init = tf.compat.v1.global_variables_initializer()
		...   optimizer = tf.compat.v1.train.GradientDescentOptimizer(0.1)
		...   train_op = optimizer.minimize(loss, global_step, var_list)
		>>> sess = tf.compat.v1.Session(graph=g)
		>>> sess.run(global_init)
		>>> print("before training:", sess.run(global_step))
		before training: 0
		>>> sess.run(train_op, feed_dict={x: 3})
		>>> print("after training:", sess.run(global_step))
		after training: 1
		
		Migrating to a Keras optimizer:
		
		>>> optimizer = tf.keras.optimizers.SGD(.01)
		>>> print("before training:", optimizer.iterations.numpy())
		before training: 0
		>>> with tf.GradientTape() as tape:
		...   loss, var_list = compute_loss(3)
		...   grads = tape.gradient(loss, var_list)
		...   optimizer.apply_gradients(zip(grads, var_list))
		>>> print("after training:", optimizer.iterations.numpy())
		after training: 1
		
		@end_compatibility
	**/
	static public function get_or_create_global_step(?graph:Dynamic):Dynamic;
	/**
		Gets or creates the steps_per_run variable.
		
		In Estimator, the user provided computation, the model_fn, is wrapped
		inside a tf.while_loop for peak performance. The iterations of the loop are
		specified by this variable, which adjusts its value on the CPU after each
		device program execution and before the next execution.
		
		The purpose of using a variable, rather than a constant, is to allow
		Estimator adapt the device training iterations according to the final steps
		specified by users. For example, if the user sets the steps_per_run as
		4 and steps as 10 in Estimator.train(), the steps_per_run
		variable will have the following value before each training run.
		
		    - 1-st execution: steps_per_run = 4
		    - 2-nd execution: steps_per_run = 4
		    - 3-rd execution: steps_per_run = 2
		
		As model_fn increases the global step once per train_op invocation, the global
		step is 10 after all executions, matching the steps=10 inputs passed in by
		users.
		
		Returns:
		  A TF non-trainable resource variable.
		
		Raises:
		  RuntimeError: If multi steps_per_run variables were found.
	**/
	static public function get_or_create_steps_per_run_variable():Dynamic;
	/**
		Small helper to get the global step.
		
		```python
		# Create a variable to hold the global_step.
		global_step_tensor = tf.Variable(10, trainable=False, name='global_step')
		# Create a session.
		sess = tf.compat.v1.Session()
		# Initialize the variable
		sess.run(global_step_tensor.initializer)
		# Get the variable value.
		print('global_step: %s' % tf.compat.v1.train.global_step(sess,
		global_step_tensor))
		
		global_step: 10
		```
		
		Args:
		  sess: A TensorFlow `Session` object.
		  global_step_tensor:  `Tensor` or the `name` of the operation that contains
		    the global step.
		
		Returns:
		  The global step value.
	**/
	static public function global_step(sess:Dynamic, global_step_tensor:Dynamic):Dynamic;
	/**
		Recreates a Graph saved in a `MetaGraphDef` proto.
		
		This function takes a `MetaGraphDef` protocol buffer as input. If
		the argument is a file containing a `MetaGraphDef` protocol buffer ,
		it constructs a protocol buffer from the file content. The function
		then adds all the nodes from the `graph_def` field to the
		current graph, recreates all the collections, and returns a saver
		constructed from the `saver_def` field.
		
		In combination with `export_meta_graph()`, this function can be used to
		
		* Serialize a graph along with other Python objects such as `QueueRunner`,
		  `Variable` into a `MetaGraphDef`.
		
		* Restart training from a saved graph and checkpoints.
		
		* Run inference from a saved graph and checkpoints.
		
		```Python
		...
		# Create a saver.
		saver = tf.compat.v1.train.Saver(...variables...)
		# Remember the training_op we want to run by adding it to a collection.
		tf.compat.v1.add_to_collection('train_op', train_op)
		sess = tf.compat.v1.Session()
		for step in xrange(1000000):
		    sess.run(train_op)
		    if step % 1000 == 0:
		        # Saves checkpoint, which by default also exports a meta_graph
		        # named 'my-model-global_step.meta'.
		        saver.save(sess, 'my-model', global_step=step)
		```
		
		Later we can continue training from this saved `meta_graph` without building
		the model from scratch.
		
		```Python
		with tf.Session() as sess:
		  new_saver =
		  tf.train.import_meta_graph('my-save-dir/my-model-10000.meta')
		  new_saver.restore(sess, 'my-save-dir/my-model-10000')
		  # tf.get_collection() returns a list. In this example we only want
		  # the first one.
		  train_op = tf.get_collection('train_op')[0]
		  for step in xrange(1000000):
		    sess.run(train_op)
		```
		
		NOTE: Restarting training from saved `meta_graph` only works if the
		device assignments have not changed.
		
		Example:
		Variables, placeholders, and independent operations can also be stored, as
		shown in the following example.
		
		```Python
		# Saving contents and operations.
		v1 = tf.placeholder(tf.float32, name="v1")
		v2 = tf.placeholder(tf.float32, name="v2")
		v3 = tf.math.multiply(v1, v2)
		vx = tf.Variable(10.0, name="vx")
		v4 = tf.add(v3, vx, name="v4")
		saver = tf.train.Saver([vx])
		sess = tf.Session()
		sess.run(tf.global_variables_initializer())
		sess.run(vx.assign(tf.add(vx, vx)))
		result = sess.run(v4, feed_dict={v1:12.0, v2:3.3})
		print(result)
		saver.save(sess, "./model_ex1")
		```
		
		Later this model can be restored and contents loaded.
		
		```Python
		# Restoring variables and running operations.
		saver = tf.train.import_meta_graph("./model_ex1.meta")
		sess = tf.Session()
		saver.restore(sess, "./model_ex1")
		result = sess.run("v4:0", feed_dict={"v1:0": 12.0, "v2:0": 3.3})
		print(result)
		```
		
		Args:
		  meta_graph_or_file: `MetaGraphDef` protocol buffer or filename (including
		    the path) containing a `MetaGraphDef`.
		  clear_devices: Whether or not to clear the device field for an `Operation`
		    or `Tensor` during import.
		  import_scope: Optional `string`. Name scope to add. Only used when
		    initializing from protocol buffer.
		  **kwargs: Optional keyed arguments.
		
		Returns:
		  A saver constructed from `saver_def` in `MetaGraphDef` or None.
		
		  A None value is returned if no variables exist in the `MetaGraphDef`
		  (i.e., there are no variables to restore).
		
		Raises:
		  RuntimeError: If called with eager execution enabled.
		
		@compatibility(eager)
		Exporting/importing meta graphs is not supported. No graph exists when eager
		execution is enabled.
		@end_compatibility
	**/
	static public function import_meta_graph(meta_graph_or_file:Dynamic, ?clear_devices:Dynamic, ?import_scope:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Replaces `tf.Variable` initializers so they load from a checkpoint file.
		
		@compatibility(TF2)
		`tf.compat.v1.train.init_from_checkpoint` is not recommended for restoring
		variable values in TF2.
		
		To restore checkpoints in TF2, please use
		`tf.keras.Model.load_weights` or `tf.train.Checkpoint.restore`. These APIs use
		use an [object-based method of checkpointing]
		(https://www.tensorflow.org/guide/checkpoint#loading_mechanics), while
		`tf.compat.v1.init_from_checkpoint` relies on a more-fragile variable-name
		based method of checkpointing. There is no object-based equivalent of
		`init_from_checkpoint` in TF2.
		
		Please re-write your checkpoints immediately using the object-based APIs,
		see [migration guide]
		(https://www.tensorflow.org/guide/migrate#checkpoint_compatibility) for more
		details.
		
		You can load a name-based checkpoint written by `tf.compat.v1.train.Saver`
		using `tf.train.Checkpoint.restore` or `tf.keras.Model.load_weights`. However,
		you may have to change the names of the variables in your model to match the
		variable names in the name-based checkpoint, which can be viewed with
		`tf.train.list_variables(path)`.
		
		Another option is to create an `assignment_map` that maps the name of the
		variables in the name-based checkpoint to the variables in your model, eg:
		```
		{
		    'sequential/dense/bias': model.variables[0],
		    'sequential/dense/kernel': model.variables[1]
		}
		```
		and use `tf.compat.v1.train.init_from_checkpoint(path, assignment_map)` to
		restore the name-based checkpoint.
		
		After restoring, re-encode your checkpoint using `tf.train.Checkpoint.save`
		or `tf.keras.Model.save_weights`.
		
		@end_compatibility
		
		Values are not loaded immediately, but when the initializer is run
		(typically by running a `tf.compat.v1.global_variables_initializer` op).
		
		Note: This overrides default initialization ops of specified variables and
		redefines dtype.
		
		Assignment map supports following syntax:
		
		* `'checkpoint_scope_name/': 'scope_name/'` - will load all variables in
		  current `scope_name` from `checkpoint_scope_name` with matching tensor
		  names.
		* `'checkpoint_scope_name/some_other_variable': 'scope_name/variable_name'` -
		  will initialize `scope_name/variable_name` variable
		  from `checkpoint_scope_name/some_other_variable`.
		* `'scope_variable_name': variable` - will initialize given `tf.Variable`
		  object with tensor 'scope_variable_name' from the checkpoint.
		* `'scope_variable_name': list(variable)` - will initialize list of
		  partitioned variables with tensor 'scope_variable_name' from the checkpoint.
		* `'/': 'scope_name/'` - will load all variables in current `scope_name` from
		  checkpoint's root (e.g. no scope).
		
		Supports loading into partitioned variables, which are represented as
		`'<variable>/part_<part #>'`.
		
		Assignment map can be a dict, or a list of pairs.  The latter is
		necessary to initialize multiple variables in the current graph from
		the same variable in the checkpoint.
		
		Example:
		
		```python
		
		# Say, '/tmp/model.ckpt' has the following tensors:
		#  -- name='old_scope_1/var1', shape=[20, 2]
		#  -- name='old_scope_1/var2', shape=[50, 4]
		#  -- name='old_scope_2/var3', shape=[100, 100]
		
		# Create new model's variables
		with tf.compat.v1.variable_scope('new_scope_1'):
		  var1 = tf.compat.v1.get_variable('var1', shape=[20, 2],
		                         initializer=tf.compat.v1.zeros_initializer())
		with tf.compat.v1.variable_scope('new_scope_2'):
		  var2 = tf.compat.v1.get_variable('var2', shape=[50, 4],
		                         initializer=tf.compat.v1.zeros_initializer())
		  # Partition into 5 variables along the first axis.
		  var3 = tf.compat.v1.get_variable(name='var3', shape=[100, 100],
		                         initializer=tf.compat.v1.zeros_initializer(),
		                         partitioner=lambda shape, dtype: [5, 1])
		
		# Initialize all variables in `new_scope_1` from `old_scope_1`.
		init_from_checkpoint('/tmp/model.ckpt', {'old_scope_1/': 'new_scope_1/'})
		
		# Use names to specify which variables to initialize from checkpoint.
		init_from_checkpoint('/tmp/model.ckpt',
		                     {'old_scope_1/var1': 'new_scope_1/var1',
		                      'old_scope_1/var2': 'new_scope_2/var2'})
		
		# Or use tf.Variable objects to identify what to initialize.
		init_from_checkpoint('/tmp/model.ckpt',
		                     {'old_scope_1/var1': var1,
		                      'old_scope_1/var2': var2})
		
		# Initialize partitioned variables using variable's name
		init_from_checkpoint('/tmp/model.ckpt',
		                     {'old_scope_2/var3': 'new_scope_2/var3'})
		
		# Or specify the list of tf.Variable objects.
		init_from_checkpoint('/tmp/model.ckpt',
		                     {'old_scope_2/var3': var3._get_variable_list()})
		
		```
		
		Args:
		  ckpt_dir_or_file: Directory with checkpoints file or path to checkpoint.
		  assignment_map: Dict, or a list of key-value pairs, where keys are names
		    of the variables in the checkpoint and values are current variables or
		    names of current variables (in default graph).
		
		Raises:
		  ValueError: If missing variables in current graph, or if missing
		    checkpoints or tensors in checkpoints.
	**/
	static public function init_from_checkpoint(ckpt_dir_or_file:Dynamic, assignment_map:Dynamic):Dynamic;
	/**
		Output the rows of `input_tensor` to a queue for an input pipeline. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Queue-based input pipelines have been replaced by `tf.data`. Use `tf.data.Dataset.from_tensor_slices(input_tensor).shuffle(tf.shape(input_tensor, out_type=tf.int64)[0]).repeat(num_epochs)`. If `shuffle=False`, omit the `.shuffle(...)`.
		
		Note: if `num_epochs` is not `None`, this function creates local counter
		`epochs`. Use `local_variables_initializer()` to initialize local variables.
		
		Args:
		  input_tensor: A tensor with the rows to produce. Must be at least
		    one-dimensional. Must either have a fully-defined shape, or
		    `element_shape` must be defined.
		  element_shape: (Optional.) A `TensorShape` representing the shape of a
		    row of `input_tensor`, if it cannot be inferred.
		  num_epochs: (Optional.) An integer. If specified `input_producer` produces
		    each row of `input_tensor` `num_epochs` times before generating an
		    `OutOfRange` error. If not specified, `input_producer` can cycle through
		    the rows of `input_tensor` an unlimited number of times.
		  shuffle: (Optional.) A boolean. If true, the rows are randomly shuffled
		    within each epoch.
		  seed: (Optional.) An integer. The seed to use if `shuffle` is true.
		  capacity: (Optional.) The capacity of the queue to be used for buffering
		    the input.
		  shared_name: (Optional.) If set, this queue will be shared under the given
		    name across multiple sessions.
		  summary_name: (Optional.) If set, a scalar summary for the current queue
		    size will be generated, using this name as part of the tag.
		  name: (Optional.) A name for queue.
		  cancel_op: (Optional.) Cancel op for the queue
		
		Returns:
		  A queue with the output rows.  A `QueueRunner` for the queue is
		  added to the current `QUEUE_RUNNER` collection of the current
		  graph.
		
		Raises:
		  ValueError: If the shape of the input cannot be inferred from the arguments.
		  RuntimeError: If called with eager execution enabled.
		
		@compatibility(eager)
		Input pipelines based on Queues are not supported when eager execution is
		enabled. Please use the `tf.data` API to ingest data under eager execution.
		@end_compatibility
	**/
	static public function input_producer(input_tensor:Dynamic, ?element_shape:Dynamic, ?num_epochs:Dynamic, ?shuffle:Dynamic, ?seed:Dynamic, ?capacity:Dynamic, ?shared_name:Dynamic, ?summary_name:Dynamic, ?name:Dynamic, ?cancel_op:Dynamic):Dynamic;
	/**
		Applies inverse time decay to the initial learning rate.
		
		When training a model, it is often recommended to lower the learning rate as
		the training progresses.  This function applies an inverse decay function
		to a provided initial learning rate.  It requires an `global_step` value to
		compute the decayed learning rate.  You can just pass a TensorFlow variable
		that you increment at each training step.
		
		The function returns the decayed learning rate.  It is computed as:
		
		```python
		decayed_learning_rate = learning_rate / (1 + decay_rate * global_step /
		decay_step)
		```
		
		or, if `staircase` is `True`, as:
		
		```python
		decayed_learning_rate = learning_rate / (1 + decay_rate * floor(global_step /
		decay_step))
		```
		
		Example: decay 1/t with a rate of 0.5:
		
		```python
		...
		global_step = tf.Variable(0, trainable=False)
		learning_rate = 0.1
		decay_steps = 1.0
		decay_rate = 0.5
		learning_rate = tf.compat.v1.train.inverse_time_decay(learning_rate,
		global_step,
		decay_steps, decay_rate)
		
		# Passing global_step to minimize() will increment it at each step.
		learning_step = (
		    tf.compat.v1.train.GradientDescentOptimizer(learning_rate)
		    .minimize(...my loss..., global_step=global_step)
		)
		```
		
		Args:
		  learning_rate: A scalar `float32` or `float64` `Tensor` or a Python number.
		    The initial learning rate.
		  global_step: A Python number. Global step to use for the decay computation.
		    Must not be negative.
		  decay_steps: How often to apply decay.
		  decay_rate: A Python number.  The decay rate.
		  staircase: Whether to apply decay in a discrete staircase, as opposed to
		    continuous, fashion.
		  name: String.  Optional name of the operation.  Defaults to
		    'InverseTimeDecay'.
		
		Returns:
		  A scalar `Tensor` of the same type as `learning_rate`.  The decayed
		  learning rate.
		
		Raises:
		  ValueError: if `global_step` is not supplied.
		
		@compatibility(eager)
		When eager execution is enabled, this function returns a function which in
		turn returns the decayed learning rate Tensor. This can be useful for changing
		the learning rate value across different invocations of optimizer functions.
		@end_compatibility
	**/
	static public function inverse_time_decay(learning_rate:Dynamic, global_step:Dynamic, decay_steps:Dynamic, decay_rate:Dynamic, ?staircase:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Finds the filename of latest saved checkpoint file.
		
		Gets the checkpoint state given the provided checkpoint_dir and looks for a
		corresponding TensorFlow 2 (preferred) or TensorFlow 1.x checkpoint path.
		The latest_filename argument is only applicable if you are saving checkpoint
		using `v1.train.Saver.save`
		
		
		See the [Training Checkpoints
		Guide](https://www.tensorflow.org/guide/checkpoint) for more details and
		examples.`
		
		Args:
		  checkpoint_dir: Directory where the variables were saved.
		  latest_filename: Optional name for the protocol buffer file that
		    contains the list of most recent checkpoint filenames.
		    See the corresponding argument to `v1.train.Saver.save`.
		
		Returns:
		  The full path to the latest checkpoint or `None` if no checkpoint was found.
	**/
	static public function latest_checkpoint(checkpoint_dir:Dynamic, ?latest_filename:Dynamic):Dynamic;
	/**
		Returns tensor `num_epochs` times and then raises an `OutOfRange` error. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Queue-based input pipelines have been replaced by `tf.data`. Use `tf.data.Dataset.from_tensors(tensor).repeat(num_epochs)`.
		
		Note: creates local counter `epochs`. Use `local_variables_initializer()` to
		initialize local variables.
		
		Args:
		  tensor: Any `Tensor`.
		  num_epochs: A positive integer (optional).  If specified, limits the number
		    of steps the output tensor may be evaluated.
		  name: A name for the operations (optional).
		
		Returns:
		  tensor or `OutOfRange`.
		
		Raises:
		  ValueError: if `num_epochs` is invalid.
	**/
	static public function limit_epochs(tensor:Dynamic, ?num_epochs:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Applies linear cosine decay to the learning rate.
		
		Note that linear cosine decay is more aggressive than cosine decay and
		larger initial learning rates can typically be used.
		
		When training a model, it is often recommended to lower the learning rate as
		the training progresses.  This function applies a linear cosine decay function
		to a provided initial learning rate.  It requires a `global_step` value to
		compute the decayed learning rate.  You can just pass a TensorFlow variable
		that you increment at each training step.
		
		The function returns the decayed learning rate.  It is computed as:
		```python
		global_step = min(global_step, decay_steps)
		linear_decay = (decay_steps - global_step) / decay_steps)
		cosine_decay = 0.5 * (
		    1 + cos(pi * 2 * num_periods * global_step / decay_steps))
		decayed = (alpha + linear_decay) * cosine_decay + beta
		decayed_learning_rate = learning_rate * decayed
		```
		
		Example usage:
		```python
		decay_steps = 1000
		lr_decayed = linear_cosine_decay(learning_rate, global_step, decay_steps)
		```
		
		Args:
		  learning_rate: A scalar `float32` or `float64` Tensor or a Python number.
		    The initial learning rate.
		  global_step: A scalar `int32` or `int64` `Tensor` or a Python number. Global
		    step to use for the decay computation.
		  decay_steps: A scalar `int32` or `int64` `Tensor` or a Python number. Number
		    of steps to decay over.
		  num_periods: Number of periods in the cosine part of the decay. See
		    computation above.
		  alpha: See computation above.
		  beta: See computation above.
		  name: String.  Optional name of the operation.  Defaults to
		    'LinearCosineDecay'.
		
		Returns:
		  A scalar `Tensor` of the same type as `learning_rate`.  The decayed
		  learning rate.
		Raises:
		  ValueError: if `global_step` is not supplied.
		
		References:
		  Neural Optimizer Search with Reinforcement Learning:
		    [Bello et al., 2017](http://proceedings.mlr.press/v70/bello17a.html)
		    ([pdf](http://proceedings.mlr.press/v70/bello17a/bello17a.pdf))
		  Stochastic Gradient Descent with Warm Restarts:
		    [Loshchilov et al., 2017]
		    (https://openreview.net/forum?id=Skq89Scxx&noteId=Skq89Scxx)
		    ([pdf](https://openreview.net/pdf?id=Skq89Scxx))
		
		@compatibility(eager)
		When eager execution is enabled, this function returns a function which in
		turn returns the decayed learning rate Tensor. This can be useful for changing
		the learning rate value across different invocations of optimizer functions.
		@end_compatibility
	**/
	static public function linear_cosine_decay(learning_rate:Dynamic, global_step:Dynamic, decay_steps:Dynamic, ?num_periods:Dynamic, ?alpha:Dynamic, ?beta:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Lists the checkpoint keys and shapes of variables in a checkpoint.
		
		Checkpoint keys are paths in a checkpoint graph.
		
		Example usage:
		
		  ```python
		import tensorflow as tf
		import os
		ckpt_directory = "/tmp/training_checkpoints/ckpt"
		ckpt = tf.train.Checkpoint(optimizer=optimizer, model=model)
		manager = tf.train.CheckpointManager(ckpt, ckpt_directory, max_to_keep=3)
		train_and_checkpoint(model, manager)
		tf.train.list_variables(manager.latest_checkpoint)
		```
		
		Args:
		  ckpt_dir_or_file: Directory with checkpoints file or path to checkpoint.
		
		Returns:
		  List of tuples `(key, shape)`.
	**/
	static public function list_variables(ckpt_dir_or_file:Dynamic):Dynamic;
	/**
		Returns `CheckpointReader` for checkpoint found in `ckpt_dir_or_file`.
		
		If `ckpt_dir_or_file` resolves to a directory with multiple checkpoints,
		reader for the latest checkpoint is returned.
		
		Args:
		  ckpt_dir_or_file: Directory with checkpoints file or path to checkpoint
		    file.
		
		Returns:
		  `CheckpointReader` object.
		
		Raises:
		  ValueError: If `ckpt_dir_or_file` resolves to a directory with no
		    checkpoints.
	**/
	static public function load_checkpoint(ckpt_dir_or_file:Dynamic):Dynamic;
	/**
		Returns the tensor value of the given variable in the checkpoint.
		
		Args:
		  ckpt_dir_or_file: Directory with checkpoints file or path to checkpoint.
		  name: Name of the variable to return.
		
		Returns:
		  A numpy `ndarray` with a copy of the value of this variable.
	**/
	static public function load_variable(ckpt_dir_or_file:Dynamic, name:Dynamic):Dynamic;
	/**
		Save the list of files matching pattern, so it is only computed once.
		
		NOTE: The order of the files returned is deterministic.
		
		Args:
		  pattern: A file pattern (glob), or 1D tensor of file patterns.
		  name: A name for the operations (optional).
		
		Returns:
		  A variable that is initialized to the list of files matching the pattern(s).
	**/
	static public function match_filenames_once(pattern:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Conditionally creates batches of tensors based on `keep_input`. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Queue-based input pipelines have been replaced by `tf.data`. Use `tf.data.Dataset.filter(...).batch(batch_size)` (or `padded_batch(...)` if `dynamic_pad=True`).
		
		See docstring in `batch` for more details.
		
		Args:
		  tensors: The list or dictionary of tensors to enqueue.
		  keep_input: A `bool` Tensor.  This tensor controls whether the input is
		    added to the queue or not.  If it is a scalar and evaluates `True`, then
		    `tensors` are all added to the queue. If it is a vector and `enqueue_many`
		    is `True`, then each example is added to the queue only if the
		    corresponding value in `keep_input` is `True`. This tensor essentially
		    acts as a filtering mechanism.
		  batch_size: The new batch size pulled from the queue.
		  num_threads: The number of threads enqueuing `tensors`.  The batching will
		    be nondeterministic if `num_threads > 1`.
		  capacity: An integer. The maximum number of elements in the queue.
		  enqueue_many: Whether each tensor in `tensors` is a single example.
		  shapes: (Optional) The shapes for each example.  Defaults to the
		    inferred shapes for `tensors`.
		  dynamic_pad: Boolean.  Allow variable dimensions in input shapes.
		    The given dimensions are padded upon dequeue so that tensors within a
		    batch have the same shapes.
		  allow_smaller_final_batch: (Optional) Boolean. If `True`, allow the final
		    batch to be smaller if there are insufficient items left in the queue.
		  shared_name: (Optional). If set, this queue will be shared under the given
		    name across multiple sessions.
		  name: (Optional) A name for the operations.
		
		Returns:
		  A list or dictionary of tensors with the same types as `tensors`.
		
		Raises:
		  ValueError: If the `shapes` are not specified, and cannot be
		    inferred from the elements of `tensors`.
	**/
	static public function maybe_batch(tensors:Dynamic, keep_input:Dynamic, batch_size:Dynamic, ?num_threads:Dynamic, ?capacity:Dynamic, ?enqueue_many:Dynamic, ?shapes:Dynamic, ?dynamic_pad:Dynamic, ?allow_smaller_final_batch:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Runs a list of tensors to conditionally fill a queue to create batches. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Queue-based input pipelines have been replaced by `tf.data`. Use `tf.data.Dataset.interleave(...).filter(...).batch(batch_size)` (or `padded_batch(...)` if `dynamic_pad=True`).
		
		See docstring in `batch_join` for more details.
		
		Args:
		  tensors_list: A list of tuples or dictionaries of tensors to enqueue.
		  keep_input: A `bool` Tensor.  This tensor controls whether the input is
		    added to the queue or not.  If it is a scalar and evaluates `True`, then
		    `tensors` are all added to the queue. If it is a vector and `enqueue_many`
		    is `True`, then each example is added to the queue only if the
		    corresponding value in `keep_input` is `True`. This tensor essentially
		    acts as a filtering mechanism.
		  batch_size: An integer. The new batch size pulled from the queue.
		  capacity: An integer. The maximum number of elements in the queue.
		  enqueue_many: Whether each tensor in `tensor_list_list` is a single
		    example.
		  shapes: (Optional) The shapes for each example.  Defaults to the
		    inferred shapes for `tensor_list_list[i]`.
		  dynamic_pad: Boolean.  Allow variable dimensions in input shapes.
		    The given dimensions are padded upon dequeue so that tensors within a
		    batch have the same shapes.
		  allow_smaller_final_batch: (Optional) Boolean. If `True`, allow the final
		    batch to be smaller if there are insufficient items left in the queue.
		  shared_name: (Optional) If set, this queue will be shared under the given
		    name across multiple sessions.
		  name: (Optional) A name for the operations.
		
		Returns:
		  A list or dictionary of tensors with the same number and types as
		  `tensors_list[i]`.
		
		Raises:
		  ValueError: If the `shapes` are not specified, and cannot be
		    inferred from the elements of `tensor_list_list`.
	**/
	static public function maybe_batch_join(tensors_list:Dynamic, keep_input:Dynamic, batch_size:Dynamic, ?capacity:Dynamic, ?enqueue_many:Dynamic, ?shapes:Dynamic, ?dynamic_pad:Dynamic, ?allow_smaller_final_batch:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Creates batches by randomly shuffling conditionally-enqueued tensors. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Queue-based input pipelines have been replaced by `tf.data`. Use `tf.data.Dataset.filter(...).shuffle(min_after_dequeue).batch(batch_size)`.
		
		See docstring in `shuffle_batch` for more details.
		
		Args:
		  tensors: The list or dictionary of tensors to enqueue.
		  batch_size: The new batch size pulled from the queue.
		  capacity: An integer. The maximum number of elements in the queue.
		  min_after_dequeue: Minimum number elements in the queue after a
		    dequeue, used to ensure a level of mixing of elements.
		  keep_input: A `bool` Tensor.  This tensor controls whether the input is
		    added to the queue or not.  If it is a scalar and evaluates `True`, then
		    `tensors` are all added to the queue. If it is a vector and `enqueue_many`
		    is `True`, then each example is added to the queue only if the
		    corresponding value in `keep_input` is `True`. This tensor essentially
		    acts as a filtering mechanism.
		  num_threads: The number of threads enqueuing `tensor_list`.
		  seed: Seed for the random shuffling within the queue.
		  enqueue_many: Whether each tensor in `tensor_list` is a single example.
		  shapes: (Optional) The shapes for each example.  Defaults to the
		    inferred shapes for `tensor_list`.
		  allow_smaller_final_batch: (Optional) Boolean. If `True`, allow the final
		    batch to be smaller if there are insufficient items left in the queue.
		  shared_name: (Optional) If set, this queue will be shared under the given
		    name across multiple sessions.
		  name: (Optional) A name for the operations.
		
		Returns:
		  A list or dictionary of tensors with the types as `tensors`.
		
		Raises:
		  ValueError: If the `shapes` are not specified, and cannot be
		    inferred from the elements of `tensors`.
		
		@compatibility(eager)
		Input pipelines based on Queues are not supported when eager execution is
		enabled. Please use the `tf.data` API to ingest data under eager execution.
		@end_compatibility
	**/
	static public function maybe_shuffle_batch(tensors:Dynamic, batch_size:Dynamic, capacity:Dynamic, min_after_dequeue:Dynamic, keep_input:Dynamic, ?num_threads:Dynamic, ?seed:Dynamic, ?enqueue_many:Dynamic, ?shapes:Dynamic, ?allow_smaller_final_batch:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Create batches by randomly shuffling conditionally-enqueued tensors. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Queue-based input pipelines have been replaced by `tf.data`. Use `tf.data.Dataset.interleave(...).filter(...).shuffle(min_after_dequeue).batch(batch_size)`.
		
		See docstring in `shuffle_batch_join` for more details.
		
		Args:
		  tensors_list: A list of tuples or dictionaries of tensors to enqueue.
		  batch_size: An integer. The new batch size pulled from the queue.
		  capacity: An integer. The maximum number of elements in the queue.
		  min_after_dequeue: Minimum number elements in the queue after a
		    dequeue, used to ensure a level of mixing of elements.
		  keep_input: A `bool` Tensor.  This tensor controls whether the input is
		    added to the queue or not.  If it is a scalar and evaluates `True`, then
		    `tensors` are all added to the queue. If it is a vector and `enqueue_many`
		    is `True`, then each example is added to the queue only if the
		    corresponding value in `keep_input` is `True`. This tensor essentially
		    acts as a filtering mechanism.
		  seed: Seed for the random shuffling within the queue.
		  enqueue_many: Whether each tensor in `tensor_list_list` is a single
		    example.
		  shapes: (Optional) The shapes for each example.  Defaults to the
		    inferred shapes for `tensors_list[i]`.
		  allow_smaller_final_batch: (Optional) Boolean. If `True`, allow the final
		    batch to be smaller if there are insufficient items left in the queue.
		  shared_name: (optional). If set, this queue will be shared under the given
		    name across multiple sessions.
		  name: (Optional) A name for the operations.
		
		Returns:
		  A list or dictionary of tensors with the same number and types as
		  `tensors_list[i]`.
		
		Raises:
		  ValueError: If the `shapes` are not specified, and cannot be
		    inferred from the elements of `tensors_list`.
		
		@compatibility(eager)
		Input pipelines based on Queues are not supported when eager execution is
		enabled. Please use the `tf.data` API to ingest data under eager execution.
		@end_compatibility
	**/
	static public function maybe_shuffle_batch_join(tensors_list:Dynamic, batch_size:Dynamic, capacity:Dynamic, min_after_dequeue:Dynamic, keep_input:Dynamic, ?seed:Dynamic, ?enqueue_many:Dynamic, ?shapes:Dynamic, ?allow_smaller_final_batch:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Applies natural exponential decay to the initial learning rate.
		
		When training a model, it is often recommended to lower the learning rate as
		the training progresses.  This function applies an exponential decay function
		to a provided initial learning rate.  It requires an `global_step` value to
		compute the decayed learning rate.  You can just pass a TensorFlow variable
		that you increment at each training step.
		
		The function returns the decayed learning rate.  It is computed as:
		
		```python
		decayed_learning_rate = learning_rate * exp(-decay_rate * global_step /
		decay_step)
		```
		
		or, if `staircase` is `True`, as:
		
		```python
		decayed_learning_rate = learning_rate * exp(-decay_rate * floor(global_step /
		decay_step))
		```
		
		Example: decay exponentially with a base of 0.96:
		
		```python
		...
		global_step = tf.Variable(0, trainable=False)
		learning_rate = 0.1
		decay_steps = 5
		k = 0.5
		learning_rate = tf.compat.v1.train.natural_exp_decay(learning_rate,
		global_step,
		                                           decay_steps, k)
		
		# Passing global_step to minimize() will increment it at each step.
		learning_step = (
		    tf.compat.v1.train.GradientDescentOptimizer(learning_rate)
		    .minimize(...my loss..., global_step=global_step)
		)
		```
		
		Args:
		  learning_rate: A scalar `float32` or `float64` `Tensor` or a Python number.
		    The initial learning rate.
		  global_step: A Python number. Global step to use for the decay computation.
		    Must not be negative.
		  decay_steps: How often to apply decay.
		  decay_rate: A Python number.  The decay rate.
		  staircase: Whether to apply decay in a discrete staircase, as opposed to
		    continuous, fashion.
		  name: String.  Optional name of the operation.  Defaults to
		    'ExponentialTimeDecay'.
		
		Returns:
		  A scalar `Tensor` of the same type as `learning_rate`.  The decayed
		  learning rate.
		
		Raises:
		  ValueError: if `global_step` is not supplied.
		
		@compatibility(eager)
		When eager execution is enabled, this function returns a function which in
		turn returns the decayed learning rate Tensor. This can be useful for changing
		the learning rate value across different invocations of optimizer functions.
		@end_compatibility
	**/
	static public function natural_exp_decay(learning_rate:Dynamic, global_step:Dynamic, decay_steps:Dynamic, decay_rate:Dynamic, ?staircase:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Applies noisy linear cosine decay to the learning rate.
		
		Note that linear cosine decay is more aggressive than cosine decay and
		larger initial learning rates can typically be used.
		
		When training a model, it is often recommended to lower the learning rate as
		the training progresses.  This function applies a noisy linear
		cosine decay function to a provided initial learning rate.
		It requires a `global_step` value to compute the decayed learning rate.
		You can just pass a TensorFlow variable that you increment at each
		training step.
		
		The function returns the decayed learning rate.  It is computed as:
		```python
		global_step = min(global_step, decay_steps)
		linear_decay = (decay_steps - global_step) / decay_steps)
		cosine_decay = 0.5 * (
		    1 + cos(pi * 2 * num_periods * global_step / decay_steps))
		decayed = (alpha + linear_decay + eps_t) * cosine_decay + beta
		decayed_learning_rate = learning_rate * decayed
		```
		where eps_t is 0-centered gaussian noise with variance
		initial_variance / (1 + global_step) ** variance_decay
		
		Example usage:
		```python
		decay_steps = 1000
		lr_decayed = noisy_linear_cosine_decay(
		  learning_rate, global_step, decay_steps)
		```
		
		Args:
		  learning_rate: A scalar `float32` or `float64` Tensor or a Python number.
		    The initial learning rate.
		  global_step: A scalar `int32` or `int64` `Tensor` or a Python number. Global
		    step to use for the decay computation.
		  decay_steps: A scalar `int32` or `int64` `Tensor` or a Python number. Number
		    of steps to decay over.
		  initial_variance: initial variance for the noise. See computation above.
		  variance_decay: decay for the noise's variance. See computation above.
		  num_periods: Number of periods in the cosine part of the decay. See
		    computation above.
		  alpha: See computation above.
		  beta: See computation above.
		  name: String.  Optional name of the operation.  Defaults to
		    'NoisyLinearCosineDecay'.
		
		Returns:
		  A scalar `Tensor` of the same type as `learning_rate`.  The decayed
		  learning rate.
		Raises:
		  ValueError: if `global_step` is not supplied.
		
		References:
		  Neural Optimizer Search with Reinforcement Learning:
		    [Bello et al., 2017](http://proceedings.mlr.press/v70/bello17a.html)
		    ([pdf](http://proceedings.mlr.press/v70/bello17a/bello17a.pdf))
		  Stochastic Gradient Descent with Warm Restarts:
		    [Loshchilov et al., 2017]
		    (https://openreview.net/forum?id=Skq89Scxx&noteId=Skq89Scxx)
		    ([pdf](https://openreview.net/pdf?id=Skq89Scxx))
		
		@compatibility(eager)
		When eager execution is enabled, this function returns a function which in
		turn returns the decayed learning rate Tensor. This can be useful for changing
		the learning rate value across different invocations of optimizer functions.
		@end_compatibility
	**/
	static public function noisy_linear_cosine_decay(learning_rate:Dynamic, global_step:Dynamic, decay_steps:Dynamic, ?initial_variance:Dynamic, ?variance_decay:Dynamic, ?num_periods:Dynamic, ?alpha:Dynamic, ?beta:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Piecewise constant from boundaries and interval values.
		
		Example: use a learning rate that's 1.0 for the first 100001 steps, 0.5
		  for the next 10000 steps, and 0.1 for any additional steps.
		
		```python
		global_step = tf.Variable(0, trainable=False)
		boundaries = [100000, 110000]
		values = [1.0, 0.5, 0.1]
		learning_rate = tf.compat.v1.train.piecewise_constant(global_step, boundaries,
		values)
		
		# Later, whenever we perform an optimization step, we increment global_step.
		```
		
		Args:
		  x: A 0-D scalar `Tensor`. Must be one of the following types: `float32`,
		    `float64`, `uint8`, `int8`, `int16`, `int32`, `int64`.
		  boundaries: A list of `Tensor`s or `int`s or `float`s with strictly
		    increasing entries, and with all elements having the same type as `x`.
		  values: A list of `Tensor`s or `float`s or `int`s that specifies the values
		    for the intervals defined by `boundaries`. It should have one more element
		    than `boundaries`, and all elements should have the same type.
		  name: A string. Optional name of the operation. Defaults to
		    'PiecewiseConstant'.
		
		Returns:
		  A 0-D Tensor. Its value is `values[0]` when `x <= boundaries[0]`,
		  `values[1]` when `x > boundaries[0]` and `x <= boundaries[1]`, ...,
		  and values[-1] when `x > boundaries[-1]`.
		
		Raises:
		  ValueError: if types of `x` and `boundaries` do not match, or types of all
		      `values` do not match or
		      the number of elements in the lists does not match.
		
		@compatibility(eager)
		When eager execution is enabled, this function returns a function which in
		turn returns the decayed learning rate Tensor. This can be useful for changing
		the learning rate value across different invocations of optimizer functions.
		@end_compatibility
	**/
	static public function piecewise_constant(x:Dynamic, boundaries:Dynamic, values:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Applies a polynomial decay to the learning rate.
		
		It is commonly observed that a monotonically decreasing learning rate, whose
		degree of change is carefully chosen, results in a better performing model.
		This function applies a polynomial decay function to a provided initial
		`learning_rate` to reach an `end_learning_rate` in the given `decay_steps`.
		
		It requires a `global_step` value to compute the decayed learning rate.  You
		can just pass a TensorFlow variable that you increment at each training step.
		
		The function returns the decayed learning rate.  It is computed as:
		
		```python
		global_step = min(global_step, decay_steps)
		decayed_learning_rate = (learning_rate - end_learning_rate) *
		                        (1 - global_step / decay_steps) ^ (power) +
		                        end_learning_rate
		
		```
		
		If `cycle` is True then a multiple of `decay_steps` is used, the first one
		that is bigger than `global_steps`.
		
		```python
		decay_steps = decay_steps * ceil(global_step / decay_steps)
		decayed_learning_rate = (learning_rate - end_learning_rate) *
		                        (1 - global_step / decay_steps) ^ (power) +
		                        end_learning_rate
		
		```
		
		Example: decay from 0.1 to 0.01 in 10000 steps using sqrt (i.e. power=0.5):
		
		```python
		...
		global_step = tf.Variable(0, trainable=False)
		starter_learning_rate = 0.1
		end_learning_rate = 0.01
		decay_steps = 10000
		learning_rate = tf.compat.v1.train.polynomial_decay(starter_learning_rate,
		global_step,
		                                          decay_steps, end_learning_rate,
		                                          power=0.5)
		# Passing global_step to minimize() will increment it at each step.
		learning_step = (
		    tf.compat.v1.train.GradientDescentOptimizer(learning_rate)
		    .minimize(...my loss..., global_step=global_step)
		)
		```
		
		Args:
		  learning_rate: A scalar `float32` or `float64` `Tensor` or a Python number.
		    The initial learning rate.
		  global_step: A scalar `int32` or `int64` `Tensor` or a Python number. Global
		    step to use for the decay computation.  Must not be negative.
		  decay_steps: A scalar `int32` or `int64` `Tensor` or a Python number. Must
		    be positive.  See the decay computation above.
		  end_learning_rate: A scalar `float32` or `float64` `Tensor` or a Python
		    number.  The minimal end learning rate.
		  power: A scalar `float32` or `float64` `Tensor` or a Python number.  The
		    power of the polynomial. Defaults to linear, 1.0.
		  cycle: A boolean, whether or not it should cycle beyond decay_steps.
		  name: String.  Optional name of the operation. Defaults to
		    'PolynomialDecay'.
		
		Returns:
		  A scalar `Tensor` of the same type as `learning_rate`.  The decayed
		  learning rate.
		
		Raises:
		  ValueError: if `global_step` is not supplied.
		
		@compatibility(eager)
		When eager execution is enabled, this function returns a function which in
		turn returns the decayed learning rate Tensor. This can be useful for changing
		the learning rate value across different invocations of optimizer functions.
		@end_compatibility
	**/
	static public function polynomial_decay(learning_rate:Dynamic, global_step:Dynamic, decay_steps:Dynamic, ?end_learning_rate:Dynamic, ?power:Dynamic, ?cycle:Dynamic, ?name:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Produces the integers from 0 to limit-1 in a queue. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Queue-based input pipelines have been replaced by `tf.data`. Use `tf.data.Dataset.range(limit).shuffle(limit).repeat(num_epochs)`. If `shuffle=False`, omit the `.shuffle(...)`.
		
		Note: if `num_epochs` is not `None`, this function creates local counter
		`epochs`. Use `local_variables_initializer()` to initialize local variables.
		
		Args:
		  limit: An int32 scalar tensor.
		  num_epochs: An integer (optional). If specified, `range_input_producer`
		    produces each integer `num_epochs` times before generating an
		    OutOfRange error. If not specified, `range_input_producer` can cycle
		    through the integers an unlimited number of times.
		  shuffle: Boolean. If true, the integers are randomly shuffled within each
		    epoch.
		  seed: An integer (optional). Seed used if shuffle == True.
		  capacity: An integer. Sets the queue capacity.
		  shared_name: (optional). If set, this queue will be shared under the given
		    name across multiple sessions.
		  name: A name for the operations (optional).
		
		Returns:
		  A Queue with the output integers.  A `QueueRunner` for the Queue
		  is added to the current `Graph`'s `QUEUE_RUNNER` collection.
		
		@compatibility(eager)
		Input pipelines based on Queues are not supported when eager execution is
		enabled. Please use the `tf.data` API to ingest data under eager execution.
		@end_compatibility
	**/
	static public function range_input_producer(limit:Dynamic, ?num_epochs:Dynamic, ?shuffle:Dynamic, ?seed:Dynamic, ?capacity:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Return a `device function` to use when building a Graph for replicas.
		
		Device Functions are used in `with tf.device(device_function):` statement to
		automatically assign devices to `Operation` objects as they are constructed,
		Device constraints are added from the inner-most context first, working
		outwards. The merging behavior adds constraints to fields that are yet unset
		by a more inner context. Currently the fields are (job, task, cpu/gpu).
		
		If `cluster` is `None`, and `ps_tasks` is 0, the returned function is a no-op.
		Otherwise, the value of `ps_tasks` is derived from `cluster`.
		
		By default, only Variable ops are placed on ps tasks, and the placement
		strategy is round-robin over all ps tasks. A custom `ps_strategy` may be used
		to do more intelligent placement, such as
		`tf.contrib.training.GreedyLoadBalancingStrategy`.
		
		For example,
		
		```python
		# To build a cluster with two ps jobs on hosts ps0 and ps1, and 3 worker
		# jobs on hosts worker0, worker1 and worker2.
		cluster_spec = {
		    "ps": ["ps0:2222", "ps1:2222"],
		    "worker": ["worker0:2222", "worker1:2222", "worker2:2222"]}
		with
		tf.device(tf.compat.v1.train.replica_device_setter(cluster=cluster_spec)):
		  # Build your graph
		  v1 = tf.Variable(...)  # assigned to /job:ps/task:0
		  v2 = tf.Variable(...)  # assigned to /job:ps/task:1
		  v3 = tf.Variable(...)  # assigned to /job:ps/task:0
		# Run compute
		```
		
		Args:
		  ps_tasks: Number of tasks in the `ps` job.  Ignored if `cluster` is
		    provided.
		  ps_device: String.  Device of the `ps` job.  If empty no `ps` job is used.
		    Defaults to `ps`.
		  worker_device: String.  Device of the `worker` job.  If empty no `worker`
		    job is used.
		  merge_devices: `Boolean`. If `True`, merges or only sets a device if the
		    device constraint is completely unset. merges device specification rather
		    than overriding them.
		  cluster: `ClusterDef` proto or `ClusterSpec`.
		  ps_ops: List of strings representing `Operation` types that need to be
		    placed on `ps` devices.  If `None`, defaults to `STANDARD_PS_OPS`.
		  ps_strategy: A callable invoked for every ps `Operation` (i.e. matched by
		    `ps_ops`), that takes the `Operation` and returns the ps task index to
		    use.  If `None`, defaults to a round-robin strategy across all `ps`
		    devices.
		
		Returns:
		  A function to pass to `tf.device()`.
		
		Raises:
		  TypeError if `cluster` is not a dictionary or `ClusterDef` protocol buffer,
		  or if `ps_strategy` is provided but not a callable.
	**/
	static public function replica_device_setter(?ps_tasks:Dynamic, ?ps_device:Dynamic, ?worker_device:Dynamic, ?merge_devices:Dynamic, ?cluster:Dynamic, ?ps_ops:Dynamic, ?ps_strategy:Dynamic):Dynamic;
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
	/**
		Creates batches by randomly shuffling tensors. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Queue-based input pipelines have been replaced by `tf.data`. Use `tf.data.Dataset.shuffle(min_after_dequeue).batch(batch_size)`.
		
		This function adds the following to the current `Graph`:
		
		* A shuffling queue into which tensors from `tensors` are enqueued.
		* A `dequeue_many` operation to create batches from the queue.
		* A `QueueRunner` to `QUEUE_RUNNER` collection, to enqueue the tensors
		  from `tensors`.
		
		If `enqueue_many` is `False`, `tensors` is assumed to represent a
		single example.  An input tensor with shape `[x, y, z]` will be output
		as a tensor with shape `[batch_size, x, y, z]`.
		
		If `enqueue_many` is `True`, `tensors` is assumed to represent a
		batch of examples, where the first dimension is indexed by example,
		and all members of `tensors` should have the same size in the
		first dimension.  If an input tensor has shape `[*, x, y, z]`, the
		output will have shape `[batch_size, x, y, z]`.
		
		The `capacity` argument controls the how long the prefetching is allowed to
		grow the queues.
		
		The returned operation is a dequeue operation and will throw
		`tf.errors.OutOfRangeError` if the input queue is exhausted. If this
		operation is feeding another input queue, its queue runner will catch
		this exception, however, if this operation is used in your main thread
		you are responsible for catching this yourself.
		
		For example:
		
		```python
		# Creates batches of 32 images and 32 labels.
		image_batch, label_batch = tf.compat.v1.train.shuffle_batch(
		      [single_image, single_label],
		      batch_size=32,
		      num_threads=4,
		      capacity=50000,
		      min_after_dequeue=10000)
		```
		
		*N.B.:* You must ensure that either (i) the `shapes` argument is
		passed, or (ii) all of the tensors in `tensors` must have
		fully-defined shapes. `ValueError` will be raised if neither of
		these conditions holds.
		
		If `allow_smaller_final_batch` is `True`, a smaller batch value than
		`batch_size` is returned when the queue is closed and there are not enough
		elements to fill the batch, otherwise the pending elements are discarded.
		In addition, all output tensors' static shapes, as accessed via the
		`shape` property will have a first `Dimension` value of `None`, and
		operations that depend on fixed batch_size would fail.
		
		Args:
		  tensors: The list or dictionary of tensors to enqueue.
		  batch_size: The new batch size pulled from the queue.
		  capacity: An integer. The maximum number of elements in the queue.
		  min_after_dequeue: Minimum number elements in the queue after a
		    dequeue, used to ensure a level of mixing of elements.
		  num_threads: The number of threads enqueuing `tensor_list`.
		  seed: Seed for the random shuffling within the queue.
		  enqueue_many: Whether each tensor in `tensor_list` is a single example.
		  shapes: (Optional) The shapes for each example.  Defaults to the
		    inferred shapes for `tensor_list`.
		  allow_smaller_final_batch: (Optional) Boolean. If `True`, allow the final
		    batch to be smaller if there are insufficient items left in the queue.
		  shared_name: (Optional) If set, this queue will be shared under the given
		    name across multiple sessions.
		  name: (Optional) A name for the operations.
		
		Returns:
		  A list or dictionary of tensors with the types as `tensors`.
		
		Raises:
		  ValueError: If the `shapes` are not specified, and cannot be
		    inferred from the elements of `tensors`.
		
		@compatibility(eager)
		Input pipelines based on Queues are not supported when eager execution is
		enabled. Please use the `tf.data` API to ingest data under eager execution.
		@end_compatibility
	**/
	static public function shuffle_batch(tensors:Dynamic, batch_size:Dynamic, capacity:Dynamic, min_after_dequeue:Dynamic, ?num_threads:Dynamic, ?seed:Dynamic, ?enqueue_many:Dynamic, ?shapes:Dynamic, ?allow_smaller_final_batch:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Create batches by randomly shuffling tensors. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Queue-based input pipelines have been replaced by `tf.data`. Use `tf.data.Dataset.interleave(...).shuffle(min_after_dequeue).batch(batch_size)`.
		
		The `tensors_list` argument is a list of tuples of tensors, or a list of
		dictionaries of tensors.  Each element in the list is treated similarly
		to the `tensors` argument of `tf.compat.v1.train.shuffle_batch()`.
		
		This version enqueues a different list of tensors in different threads.
		It adds the following to the current `Graph`:
		
		* A shuffling queue into which tensors from `tensors_list` are enqueued.
		* A `dequeue_many` operation to create batches from the queue.
		* A `QueueRunner` to `QUEUE_RUNNER` collection, to enqueue the tensors
		  from `tensors_list`.
		
		`len(tensors_list)` threads will be started, with thread `i` enqueuing
		the tensors from `tensors_list[i]`. `tensors_list[i1][j]` must match
		`tensors_list[i2][j]` in type and shape, except in the first dimension if
		`enqueue_many` is true.
		
		If `enqueue_many` is `False`, each `tensors_list[i]` is assumed
		to represent a single example.  An input tensor with shape `[x, y, z]`
		will be output as a tensor with shape `[batch_size, x, y, z]`.
		
		If `enqueue_many` is `True`, `tensors_list[i]` is assumed to
		represent a batch of examples, where the first dimension is indexed
		by example, and all members of `tensors_list[i]` should have the
		same size in the first dimension.  If an input tensor has shape `[*, x,
		y, z]`, the output will have shape `[batch_size, x, y, z]`.
		
		The `capacity` argument controls the how long the prefetching is allowed to
		grow the queues.
		
		The returned operation is a dequeue operation and will throw
		`tf.errors.OutOfRangeError` if the input queue is exhausted. If this
		operation is feeding another input queue, its queue runner will catch
		this exception, however, if this operation is used in your main thread
		you are responsible for catching this yourself.
		
		If `allow_smaller_final_batch` is `True`, a smaller batch value than
		`batch_size` is returned when the queue is closed and there are not enough
		elements to fill the batch, otherwise the pending elements are discarded.
		In addition, all output tensors' static shapes, as accessed via the
		`shape` property will have a first `Dimension` value of `None`, and
		operations that depend on fixed batch_size would fail.
		
		Args:
		  tensors_list: A list of tuples or dictionaries of tensors to enqueue.
		  batch_size: An integer. The new batch size pulled from the queue.
		  capacity: An integer. The maximum number of elements in the queue.
		  min_after_dequeue: Minimum number elements in the queue after a
		    dequeue, used to ensure a level of mixing of elements.
		  seed: Seed for the random shuffling within the queue.
		  enqueue_many: Whether each tensor in `tensor_list_list` is a single
		    example.
		  shapes: (Optional) The shapes for each example.  Defaults to the
		    inferred shapes for `tensors_list[i]`.
		  allow_smaller_final_batch: (Optional) Boolean. If `True`, allow the final
		    batch to be smaller if there are insufficient items left in the queue.
		  shared_name: (optional). If set, this queue will be shared under the given
		    name across multiple sessions.
		  name: (Optional) A name for the operations.
		
		Returns:
		  A list or dictionary of tensors with the same number and types as
		  `tensors_list[i]`.
		
		Raises:
		  ValueError: If the `shapes` are not specified, and cannot be
		    inferred from the elements of `tensors_list`.
		
		@compatibility(eager)
		Input pipelines based on Queues are not supported when eager execution is
		enabled. Please use the `tf.data` API to ingest data under eager execution.
		@end_compatibility
	**/
	static public function shuffle_batch_join(tensors_list:Dynamic, batch_size:Dynamic, capacity:Dynamic, min_after_dequeue:Dynamic, ?seed:Dynamic, ?enqueue_many:Dynamic, ?shapes:Dynamic, ?allow_smaller_final_batch:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Produces a slice of each `Tensor` in `tensor_list`. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Queue-based input pipelines have been replaced by `tf.data`. Use `tf.data.Dataset.from_tensor_slices(tuple(tensor_list)).shuffle(tf.shape(input_tensor, out_type=tf.int64)[0]).repeat(num_epochs)`. If `shuffle=False`, omit the `.shuffle(...)`.
		
		Implemented using a Queue -- a `QueueRunner` for the Queue
		is added to the current `Graph`'s `QUEUE_RUNNER` collection.
		
		Args:
		  tensor_list: A list of `Tensor` objects. Every `Tensor` in
		    `tensor_list` must have the same size in the first dimension.
		  num_epochs: An integer (optional). If specified, `slice_input_producer`
		    produces each slice `num_epochs` times before generating
		    an `OutOfRange` error. If not specified, `slice_input_producer` can cycle
		    through the slices an unlimited number of times.
		  shuffle: Boolean. If true, the integers are randomly shuffled within each
		    epoch.
		  seed: An integer (optional). Seed used if shuffle == True.
		  capacity: An integer. Sets the queue capacity.
		  shared_name: (optional). If set, this queue will be shared under the given
		    name across multiple sessions.
		  name: A name for the operations (optional).
		
		Returns:
		  A list of tensors, one for each element of `tensor_list`.  If the tensor
		  in `tensor_list` has shape `[N, a, b, .., z]`, then the corresponding output
		  tensor will have shape `[a, b, ..., z]`.
		
		Raises:
		  ValueError: if `slice_input_producer` produces nothing from `tensor_list`.
		
		@compatibility(eager)
		Input pipelines based on Queues are not supported when eager execution is
		enabled. Please use the `tf.data` API to ingest data under eager execution.
		@end_compatibility
	**/
	static public function slice_input_producer(tensor_list:Dynamic, ?num_epochs:Dynamic, ?shuffle:Dynamic, ?seed:Dynamic, ?capacity:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Starts all queue runners collected in the graph. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		To construct input pipelines, use the `tf.data` module.
		
		This is a companion method to `add_queue_runner()`.  It just starts
		threads for all queue runners collected in the graph.  It returns
		the list of all threads.
		
		@compatibility(TF2)
		QueueRunners are not compatible with eager execution. Instead, please
		use [tf.data](https://www.tensorflow.org/guide/data) to get data into your
		model.
		@end_compatibility
		
		Args:
		  sess: `Session` used to run the queue ops.  Defaults to the
		    default session.
		  coord: Optional `Coordinator` for coordinating the started threads.
		  daemon: Whether the threads should be marked as `daemons`, meaning
		    they don't block program exit.
		  start: Set to `False` to only create the threads, not start them.
		  collection: A `GraphKey` specifying the graph collection to
		    get the queue runners from.  Defaults to `GraphKeys.QUEUE_RUNNERS`.
		
		Raises:
		  ValueError: if `sess` is None and there isn't any default session.
		  TypeError: if `sess` is not a `tf.compat.v1.Session` object.
		
		Returns:
		  A list of threads.
		
		Raises:
		  RuntimeError: If called with eager execution enabled.
		  ValueError: If called without a default `tf.compat.v1.Session` registered.
	**/
	static public function start_queue_runners(?sess:Dynamic, ?coord:Dynamic, ?daemon:Dynamic, ?start:Dynamic, ?collection:Dynamic):Dynamic;
	/**
		Output strings (e.g. filenames) to a queue for an input pipeline. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Queue-based input pipelines have been replaced by `tf.data`. Use `tf.data.Dataset.from_tensor_slices(string_tensor).shuffle(tf.shape(input_tensor, out_type=tf.int64)[0]).repeat(num_epochs)`. If `shuffle=False`, omit the `.shuffle(...)`.
		
		Note: if `num_epochs` is not `None`, this function creates local counter
		`epochs`. Use `local_variables_initializer()` to initialize local variables.
		
		Args:
		  string_tensor: A 1-D string tensor with the strings to produce.
		  num_epochs: An integer (optional). If specified, `string_input_producer`
		    produces each string from `string_tensor` `num_epochs` times before
		    generating an `OutOfRange` error. If not specified,
		    `string_input_producer` can cycle through the strings in `string_tensor`
		    an unlimited number of times.
		  shuffle: Boolean. If true, the strings are randomly shuffled within each
		    epoch.
		  seed: An integer (optional). Seed used if shuffle == True.
		  capacity: An integer. Sets the queue capacity.
		  shared_name: (optional). If set, this queue will be shared under the given
		    name across multiple sessions. All sessions open to the device which has
		    this queue will be able to access it via the shared_name. Using this in
		    a distributed setting means each name will only be seen by one of the
		    sessions which has access to this operation.
		  name: A name for the operations (optional).
		  cancel_op: Cancel op for the queue (optional).
		
		Returns:
		  A queue with the output strings.  A `QueueRunner` for the Queue
		  is added to the current `Graph`'s `QUEUE_RUNNER` collection.
		
		Raises:
		  ValueError: If the string_tensor is a null Python list.  At runtime,
		  will fail with an assertion if string_tensor becomes a null tensor.
		
		@compatibility(eager)
		Input pipelines based on Queues are not supported when eager execution is
		enabled. Please use the `tf.data` API to ingest data under eager execution.
		@end_compatibility
	**/
	static public function string_input_producer(string_tensor:Dynamic, ?num_epochs:Dynamic, ?shuffle:Dynamic, ?seed:Dynamic, ?capacity:Dynamic, ?shared_name:Dynamic, ?name:Dynamic, ?cancel_op:Dynamic):Dynamic;
	/**
		Returns a iterator for reading `Event` protocol buffers from an event file.
		
		You can use this function to read events written to an event file. It returns
		a Python iterator that yields `Event` protocol buffers.
		
		Example: Print the contents of an events file.
		
		```python
		for e in tf.compat.v1.train.summary_iterator(path to events file):
		    print(e)
		```
		
		Example: Print selected summary values.
		
		```python
		# This example supposes that the events file contains summaries with a
		# summary value tag 'loss'.  These could have been added by calling
		# `add_summary()`, passing the output of a scalar summary op created with
		# with: `tf.compat.v1.summary.scalar('loss', loss_tensor)`.
		for e in tf.compat.v1.train.summary_iterator(path to events file):
		    for v in e.summary.value:
		        if v.tag == 'loss':
		            print(v.simple_value)
		```
		Example: Continuously check for new summary values.
		
		```python
		summaries = tf.compat.v1.train.summary_iterator(path to events file)
		while True:
		  for e in summaries:
		      for v in e.summary.value:
		          if v.tag == 'loss':
		              print(v.simple_value)
		  # Wait for a bit before checking the file for any new events
		  time.sleep(wait time)
		```
		
		See the protocol buffer definitions of
		[Event](https://www.tensorflow.org/code/tensorflow/core/util/event.proto)
		and
		[Summary](https://www.tensorflow.org/code/tensorflow/core/framework/summary.proto)
		for more information about their attributes.
		
		Args:
		  path: The path to an event file created by a `SummaryWriter`.
		
		Returns:
		  A iterator that yields `Event` protocol buffers
	**/
	static public function summary_iterator(path:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Updates the content of the 'checkpoint' file. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use `tf.train.CheckpointManager` to manage checkpoints rather than manually editing the Checkpoint proto.
		
		This updates the checkpoint file containing a CheckpointState
		proto.
		
		Args:
		  save_dir: Directory where the model was saved.
		  model_checkpoint_path: The checkpoint file.
		  all_model_checkpoint_paths: List of strings.  Paths to all not-yet-deleted
		    checkpoints, sorted from oldest to newest.  If this is a non-empty list,
		    the last element must be equal to model_checkpoint_path.  These paths
		    are also saved in the CheckpointState proto.
		  latest_filename: Optional name of the checkpoint file.  Default to
		    'checkpoint'.
		  all_model_checkpoint_timestamps: Optional list of timestamps (floats,
		    seconds since the Epoch) indicating when the checkpoints in
		    `all_model_checkpoint_paths` were created.
		  last_preserved_timestamp: A float, indicating the number of seconds since
		    the Epoch when the last preserved checkpoint was written, e.g. due to a
		    `keep_checkpoint_every_n_hours` parameter (see
		    `tf.train.CheckpointManager` for an implementation).
		Raises:
		  RuntimeError: If any of the model checkpoint paths conflict with the file
		    containing CheckpointSate.
	**/
	static public function update_checkpoint_state(save_dir:Dynamic, model_checkpoint_path:Dynamic, ?all_model_checkpoint_paths:Dynamic, ?latest_filename:Dynamic, ?all_model_checkpoint_timestamps:Dynamic, ?last_preserved_timestamp:Dynamic):Dynamic;
	/**
		Warm-starts a model using the given settings.
		
		If you are using a tf.estimator.Estimator, this will automatically be called
		during training.
		
		Args:
		  ckpt_to_initialize_from: [Required] A string specifying the directory with
		    checkpoint file(s) or path to checkpoint from which to warm-start the
		    model parameters.
		  vars_to_warm_start: [Optional] One of the following:
		
		    - A regular expression (string) that captures which variables to
		      warm-start (see tf.compat.v1.get_collection).  This expression will only
		      consider variables in the TRAINABLE_VARIABLES collection -- if you need
		      to warm-start non_TRAINABLE vars (such as optimizer accumulators or
		      batch norm statistics), please use the below option.
		    - A list of strings, each a regex scope provided to
		      tf.compat.v1.get_collection with GLOBAL_VARIABLES (please see
		      tf.compat.v1.get_collection).  For backwards compatibility reasons,
		      this is separate from the single-string argument type.
		    - A list of Variables to warm-start.  If you do not have access to the
		      `Variable` objects at the call site, please use the above option.
		    - `None`, in which case only TRAINABLE variables specified in
		      `var_name_to_vocab_info` will be warm-started.
		
		    Defaults to `'.*'`, which warm-starts all variables in the
		    TRAINABLE_VARIABLES collection.  Note that this excludes variables such
		    as accumulators and moving statistics from batch norm.
		  var_name_to_vocab_info: [Optional] Dict of variable names (strings) to
		    `tf.estimator.VocabInfo`. The variable names should be "full" variables,
		    not the names of the partitions.  If not explicitly provided, the variable
		    is assumed to have no (changes to) vocabulary.
		  var_name_to_prev_var_name: [Optional] Dict of variable names (strings) to
		    name of the previously-trained variable in `ckpt_to_initialize_from`. If
		    not explicitly provided, the name of the variable is assumed to be same
		    between previous checkpoint and current model.  Note that this has no
		    effect on the set of variables that is warm-started, and only controls
		    name mapping (use `vars_to_warm_start` for controlling what variables to
		    warm-start).
		
		Raises:
		  ValueError: If the WarmStartSettings contains prev_var_name or VocabInfo
		    configuration for variable names that are not used.  This is to ensure
		    a stronger check for variable configuration than relying on users to
		    examine the logs.
	**/
	static public function warm_start(ckpt_to_initialize_from:Dynamic, ?vars_to_warm_start:Dynamic, ?var_name_to_vocab_info:Dynamic, ?var_name_to_prev_var_name:Dynamic):Dynamic;
	/**
		Writes a graph proto to a file.
		
		The graph is written as a text proto unless `as_text` is `False`.
		
		```python
		v = tf.Variable(0, name='my_variable')
		sess = tf.compat.v1.Session()
		tf.io.write_graph(sess.graph_def, '/tmp/my-model', 'train.pbtxt')
		```
		
		or
		
		```python
		v = tf.Variable(0, name='my_variable')
		sess = tf.compat.v1.Session()
		tf.io.write_graph(sess.graph, '/tmp/my-model', 'train.pbtxt')
		```
		
		Args:
		  graph_or_graph_def: A `Graph` or a `GraphDef` protocol buffer.
		  logdir: Directory where to write the graph. This can refer to remote
		    filesystems, such as Google Cloud Storage (GCS).
		  name: Filename for the graph.
		  as_text: If `True`, writes the graph as an ASCII proto.
		
		Returns:
		  The path of the output proto file.
	**/
	static public function write_graph(graph_or_graph_def:Dynamic, logdir:Dynamic, name:Dynamic, ?as_text:Dynamic):Dynamic;
}