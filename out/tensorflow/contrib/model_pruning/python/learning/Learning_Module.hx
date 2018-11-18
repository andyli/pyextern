/* This file is generated, do not edit! */
package tensorflow.contrib.model_pruning.python.learning;
@:pythonImport("tensorflow.contrib.model_pruning.python.learning") extern class Learning_Module {
	static public var _USE_DEFAULT : Dynamic;
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
	/**
		Wrapper around tf-slim's train function.
		
		Runs a training loop using a TensorFlow supervisor.
		When the sync_optimizer is supplied, gradient updates are applied
		synchronously. Otherwise, gradient updates are applied asynchronous.
		
		Args:
		  train_op: A `Tensor` that, when executed, will apply the gradients and
		    return the loss value.
		  logdir: The directory where training logs are written to. If None, model
		    checkpoints and summaries will not be written.
		  mask_update_op: Operation that upon execution updates the weight masks and
		    thresholds.
		  train_step_fn: The function to call in order to execute a single gradient
		    step. The function must have take exactly four arguments: the current
		    session, the `train_op` `Tensor`, a global step `Tensor` and a dictionary.
		  train_step_kwargs: A dictionary which is passed to the `train_step_fn`. By
		    default, two `Boolean`, scalar ops called "should_stop" and "should_log"
		    are provided.
		  log_every_n_steps: The frequency, in terms of global steps, that the loss
		    and global step and logged.
		  graph: The graph to pass to the supervisor. If no graph is supplied the
		    default graph is used.
		  master: The address of the tensorflow master.
		  is_chief: Specifies whether or not the training is being run by the primary
		    replica during replica training.
		  global_step: The `Tensor` representing the global step. If left as `None`,
		    then slim.variables.get_or_create_global_step() is used.
		  number_of_steps: The max number of gradient steps to take during training,
		    as measured by 'global_step': training will stop if global_step is
		    greater than 'number_of_steps'. If the value is left as None, training
		    proceeds indefinitely.
		  init_op: The initialization operation. If left to its default value, then
		    the session is initialized by calling `tf.global_variables_initializer()`.
		  init_feed_dict: A feed dictionary to use when executing the `init_op`.
		  local_init_op: The local initialization operation. If left to its default
		    value, then the session is initialized by calling
		    `tf.local_variables_initializer()` and `tf.tables_initializer()`.
		  init_fn: An optional callable to be executed after `init_op` is called. The
		    callable must accept one argument, the session being initialized.
		  ready_op: Operation to check if the model is ready to use. If left to its
		    default value, then the session checks for readiness by calling
		    `tf.report_uninitialized_variables()`.
		  summary_op: The summary operation.
		  save_summaries_secs: How often, in seconds, to save summaries.
		  summary_writer: `SummaryWriter` to use.  Can be `None`
		    to indicate that no summaries should be written. If unset, we
		    create a SummaryWriter.
		  startup_delay_steps: The number of steps to wait for before beginning. Note
		    that this must be 0 if a sync_optimizer is supplied.
		  saver: Saver to save checkpoints. If None, a default one will be created
		    and used.
		  save_interval_secs: How often, in seconds, to save the model to `logdir`.
		  sync_optimizer: an instance of tf.train.SyncReplicasOptimizer, or a list of
		    them. If the argument is supplied, gradient updates will be synchronous.
		    If left as `None`, gradient updates will be asynchronous.
		  session_config: An instance of `tf.ConfigProto` that will be used to
		    configure the `Session`. If left as `None`, the default will be used.
		  trace_every_n_steps: produce and save a `Timeline` in Chrome trace format
		    and add it to the summaries every `trace_every_n_steps`. If None, no trace
		    information will be produced or saved.
		
		Returns:
		  the value of the loss function after training.
		
		Raises:
		  ValueError: if `train_op` is empty or if `startup_delay_steps` is
		    non-zero when `sync_optimizer` is supplied, if `number_of_steps` is
		    negative, or if `trace_every_n_steps` is not `None` and no `logdir` is
		    provided.
	**/
	static public function train(train_op:Dynamic, logdir:Dynamic, mask_update_op:Dynamic, ?train_step_fn:Dynamic, ?train_step_kwargs:Dynamic, ?log_every_n_steps:Dynamic, ?graph:Dynamic, ?master:Dynamic, ?is_chief:Dynamic, ?global_step:Dynamic, ?number_of_steps:Dynamic, ?init_op:Dynamic, ?init_feed_dict:Dynamic, ?local_init_op:Dynamic, ?init_fn:Dynamic, ?ready_op:Dynamic, ?summary_op:Dynamic, ?save_summaries_secs:Dynamic, ?summary_writer:Dynamic, ?startup_delay_steps:Dynamic, ?saver:Dynamic, ?save_interval_secs:Dynamic, ?sync_optimizer:Dynamic, ?session_config:Dynamic, ?trace_every_n_steps:Dynamic):Dynamic;
	/**
		Function that takes a gradient step and specifies whether to stop.
		
		Args:
		  sess: The current session.
		  train_op: An `Operation` that evaluates the gradients and returns the
		    total loss.
		  global_step: A `Tensor` representing the global training step.
		  train_step_kwargs: A dictionary of keyword arguments.
		
		Returns:
		  The total loss and a boolean indicating whether or not to stop training.
		
		Raises:
		  ValueError: if 'should_trace' is in `train_step_kwargs` but `logdir` is not.
	**/
	static public function train_step(sess:Dynamic, train_op:Dynamic, global_step:Dynamic, train_step_kwargs:Dynamic):Dynamic;
}