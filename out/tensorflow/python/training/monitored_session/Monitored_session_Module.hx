/* This file is generated, do not edit! */
package tensorflow.python.training.monitored_session;
@:pythonImport("tensorflow.python.training.monitored_session") extern class Monitored_session_Module {
	/**
		Creates a `MonitoredSession` for training.
		
		For a chief, this utility sets proper session initializer/restorer. It also
		creates hooks related to checkpoint and summary saving. For workers, this
		utility sets proper session creator which waits for the chief to
		initialize/restore.
		
		
		Args:
		  master: `String` the TensorFlow master to use.
		  is_chief: If `True`, it will take care of initialization and recovery the
		    underlying TensorFlow session. If `False`, it will wait on a chief to
		    initialize or recover the TensorFlow session.
		  checkpoint_dir: A string.  Optional path to a directory where to restore
		    variables.
		  scaffold: A `Scaffold` used for gathering or building supportive ops. If
		    not specified, a default one is created. It's used to finalize the graph.
		  hooks: Optional list of `SessionRunHook` objects.
		  chief_only_hooks: list of `SessionRunHook` objects. Activate these hooks if
		    `is_chief==True`, ignore otherwise.
		  save_checkpoint_secs: The frequency, in seconds, that a checkpoint is saved
		    using a default checkpoint saver. If `save_checkpoint_secs` is set to
		    `None`, then the default checkpoint saver isn't used.
		  save_summaries_steps: The frequency, in number of global steps, that the
		    summaries are written to disk using a default summary saver. If both
		    `save_summaries_steps` and `save_summaries_secs` are set to `None`, then
		    the default summary saver isn't used.
		  save_summaries_secs: The frequency, in secs, that the summaries are written
		    to disk using a default summary saver.  If both `save_summaries_steps` and
		    `save_summaries_secs` are set to `None`, then the default summary saver
		    isn't used.
		  config: an instance of `tf.ConfigProto` proto used to configure the session.
		    It's the `config` argument of constructor of `tf.Session`.
		  stop_grace_period_secs: Number of seconds given to threads to stop after
		    `close()` has been called.
		  log_step_count_steps: The frequency, in number of global steps, that the
		    global step/sec is logged.
		
		Returns:
		  A `MonitoredSession` object.
	**/
	static public function MonitoredTrainingSession(?master:Dynamic, ?is_chief:Dynamic, ?checkpoint_dir:Dynamic, ?scaffold:Dynamic, ?hooks:Dynamic, ?chief_only_hooks:Dynamic, ?save_checkpoint_secs:Dynamic, ?save_summaries_steps:Dynamic, ?save_summaries_secs:Dynamic, ?config:Dynamic, ?stop_grace_period_secs:Dynamic, ?log_step_count_steps:Dynamic):Dynamic;
	static public var _PREEMPTION_ERRORS : Dynamic;
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
}