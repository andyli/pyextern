/* This file is generated, do not edit! */
package tensorflow.contrib.slim.python.slim.evaluation;
@:pythonImport("tensorflow.contrib.slim.python.slim.evaluation") extern class Evaluation_Module {
	static public var _USE_DEFAULT : Dynamic;
	static public var __all__ : Dynamic;
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
		Continuously yield new checkpoint files as they appear.
		
		The iterator only checks for new checkpoints when control flow has been
		reverted to it. This means it can miss checkpoints if your code takes longer
		to run between iterations than `min_interval_secs` or the interval at which
		new checkpoints are written.
		
		The `timeout` argument is the maximum number of seconds to block waiting for
		a new checkpoint.  It is used in combination with the `timeout_fn` as
		follows:
		
		* If the timeout expires and no `timeout_fn` was specified, the iterator
		  stops yielding.
		* If a `timeout_fn` was specified, that function is called and if it returns
		  a true boolean value the iterator stops yielding.
		* If the function returns a false boolean value then the iterator resumes the
		  wait for new checkpoints.  At this point the timeout logic applies again.
		
		This behavior gives control to callers on what to do if checkpoints do not
		come fast enough or stop being generated.  For example, if callers have a way
		to detect that the training has stopped and know that no new checkpoints
		will be generated, they can provide a `timeout_fn` that returns `True` when
		the training has stopped.  If they know that the training is still going on
		they return `False` instead.
		
		Args:
		  checkpoint_dir: The directory in which checkpoints are saved.
		  min_interval_secs: The minimum number of seconds between yielding
		    checkpoints.
		  timeout: The maximum amount of time to wait between checkpoints. If left as
		    `None`, then the process will wait indefinitely.
		  timeout_fn: Optional function to call after a timeout.  If the function
		    returns True, then it means that no new checkpoints will be generated and
		    the iterator will exit.  The function is called with no arguments.
		
		Yields:
		  String paths to latest checkpoint files as they arrive.
	**/
	static public function checkpoints_iterator(checkpoint_dir:Dynamic, ?min_interval_secs:Dynamic, ?timeout:Dynamic, ?timeout_fn:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Evaluates the model at the given checkpoint path.
		
		Args:
		  master: The BNS address of the TensorFlow master.
		  checkpoint_path: The path to a checkpoint to use for evaluation.
		  logdir: The directory where the TensorFlow summaries are written to.
		  num_evals: The number of times to run `eval_op`.
		  initial_op: An operation run at the beginning of evaluation.
		  initial_op_feed_dict: A feed dictionary to use when executing `initial_op`.
		  eval_op: A operation run `num_evals` times.
		  eval_op_feed_dict: The feed dictionary to use when executing the `eval_op`.
		  final_op: An operation to execute after all of the `eval_op` executions. The
		    value of `final_op` is returned.
		  final_op_feed_dict: A feed dictionary to use when executing `final_op`.
		  summary_op: The summary_op to evaluate after running TF-Slims metric ops. By
		    default the summary_op is set to tf.summary.merge_all().
		  summary_op_feed_dict: An optional feed dictionary to use when running the
		    `summary_op`.
		  variables_to_restore: A list of TensorFlow variables to restore during
		    evaluation. If the argument is left as `None` then
		    slim.variables.GetVariablesToRestore() is used.
		  session_config: An instance of `tf.ConfigProto` that will be used to
		    configure the `Session`. If left as `None`, the default will be used.
		  hooks: A list of additional `SessionRunHook` objects to pass during the
		    evaluation.
		
		Returns:
		  The value of `final_op` or `None` if `final_op` is `None`.
	**/
	static public function evaluate_once(master:Dynamic, checkpoint_path:Dynamic, logdir:Dynamic, ?num_evals:Dynamic, ?initial_op:Dynamic, ?initial_op_feed_dict:Dynamic, ?eval_op:Dynamic, ?eval_op_feed_dict:Dynamic, ?final_op:Dynamic, ?final_op_feed_dict:Dynamic, ?summary_op:Dynamic, ?summary_op_feed_dict:Dynamic, ?variables_to_restore:Dynamic, ?session_config:Dynamic, ?hooks:Dynamic):Dynamic;
	/**
		Runs TF-Slim's Evaluation Loop.
		
		Args:
		  master: The BNS address of the TensorFlow master.
		  checkpoint_dir: The directory where checkpoints are stored.
		  logdir: The directory where the TensorFlow summaries are written to.
		  num_evals: The number of times to run `eval_op`.
		  initial_op: An operation run at the beginning of evaluation.
		  initial_op_feed_dict: A feed dictionary to use when executing `initial_op`.
		  init_fn: An optional callable to be executed after `init_op` is called. The
		    callable must accept one argument, the session being initialized.
		  eval_op: A operation run `num_evals` times.
		  eval_op_feed_dict: The feed dictionary to use when executing the `eval_op`.
		  final_op: An operation to execute after all of the `eval_op` executions. The
		    value of `final_op` is returned.
		  final_op_feed_dict: A feed dictionary to use when executing `final_op`.
		  summary_op: The summary_op to evaluate after running TF-Slims metric ops. By
		    default the summary_op is set to tf.summary.merge_all().
		  summary_op_feed_dict: An optional feed dictionary to use when running the
		    `summary_op`.
		  variables_to_restore: A list of TensorFlow variables to restore during
		    evaluation. If the argument is left as `None` then
		    slim.variables.GetVariablesToRestore() is used.
		  eval_interval_secs: The minimum number of seconds between evaluations.
		  max_number_of_evaluations: the max number of iterations of the evaluation.
		    If the value is left as 'None', the evaluation continues indefinitely.
		  session_config: An instance of `tf.ConfigProto` that will be used to
		    configure the `Session`. If left as `None`, the default will be used.
		  timeout: The maximum amount of time to wait between checkpoints. If left as
		    `None`, then the process will wait indefinitely.
		  timeout_fn: Optional function to call after a timeout.  If the function
		    returns True, then it means that no new checkpoints will be generated and
		    the iterator will exit.  The function is called with no arguments.
		  hooks: A list of additional `SessionRunHook` objects to pass during
		    repeated evaluations.
		
		Returns:
		  The value of `final_op` or `None` if `final_op` is `None`.
	**/
	static public function evaluation_loop(master:Dynamic, checkpoint_dir:Dynamic, logdir:Dynamic, ?num_evals:Dynamic, ?initial_op:Dynamic, ?initial_op_feed_dict:Dynamic, ?init_fn:Dynamic, ?eval_op:Dynamic, ?eval_op_feed_dict:Dynamic, ?final_op:Dynamic, ?final_op_feed_dict:Dynamic, ?summary_op:Dynamic, ?summary_op_feed_dict:Dynamic, ?variables_to_restore:Dynamic, ?eval_interval_secs:Dynamic, ?max_number_of_evaluations:Dynamic, ?session_config:Dynamic, ?timeout:Dynamic, ?timeout_fn:Dynamic, ?hooks:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Waits until a new checkpoint file is found.
		
		Args:
		  checkpoint_dir: The directory in which checkpoints are saved.
		  last_checkpoint: The last checkpoint path used or `None` if we're expecting
		    a checkpoint for the first time.
		  seconds_to_sleep: The number of seconds to sleep for before looking for a
		    new checkpoint.
		  timeout: The maximum amount of time to wait. If left as `None`, then the
		    process will wait indefinitely.
		
		Returns:
		  a new checkpoint path, or None if the timeout was reached.
	**/
	static public function wait_for_new_checkpoint(checkpoint_dir:Dynamic, ?last_checkpoint:Dynamic, ?seconds_to_sleep:Dynamic, ?timeout:Dynamic):Dynamic;
}