/* This file is generated, do not edit! */
package tensorflow.python.training.monitored_session;
@:pythonImport("tensorflow.python.training.monitored_session") extern class Monitored_session_Module {
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
	static public var USE_DEFAULT : Dynamic;
	static public var _PREEMPTION_ERRORS : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _create_monitored_session_with_worker_context(worker_context:Dynamic, scaffold:Dynamic, ?checkpoint_dir:Dynamic, ?hooks:Dynamic, ?chief_only_hooks:Dynamic, ?save_checkpoint_secs:Dynamic, ?save_summaries_steps:Dynamic, ?save_summaries_secs:Dynamic, ?config:Dynamic, ?stop_grace_period_secs:Dynamic, ?log_step_count_steps:Dynamic, ?max_wait_secs:Dynamic, ?save_checkpoint_steps:Dynamic, ?summary_dir:Dynamic, ?save_graph_def:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}