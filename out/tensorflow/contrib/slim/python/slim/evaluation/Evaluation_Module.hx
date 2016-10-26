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
	static public var division : Dynamic;
	/**
		Performs a single evaluation run.
		
		A single evaluation consists of several steps run in the following order:
		(1) an initialization op, (2) an evaluation op which is executed `num_evals`
		times (3) a finalization op and (4) the execution of a summary op which is
		written out using a summary writer.
		
		Args:
		  sess: The current TensorFlow `Session`.
		  num_evals: The number of times to execute `eval_op`.
		  init_op: An operation run at the beginning of evaluation.
		  init_op_feed_dict: A feed dictionary to use when executing `init_op`.
		  eval_op: A operation run `num_evals` times.
		  eval_op_feed_dict: The feed dictionary to use when executing the `eval_op`.
		  final_op: An operation to execute after all of the `eval_op` executions. The
		    value of `final_op` is returned.
		  final_op_feed_dict: A feed dictionary to use when executing `final_op`.
		  summary_op: A summary op executed after `eval_op` and `finalize_op`.
		  summary_op_feed_dict: An optional feed dictionary to use when executing the
		    `summary_op`.
		  summary_writer: The summery writer used if `summary_op` is provided.
		  global_step: the global step variable. If left as `None`, then
		    slim.variables.global_step() is used.
		
		Returns:
		  The value of `final_op` or `None` if `final_op` is `None`.
		
		Raises:
		  ValueError: if `summary_op` is provided but `global_step` is `None`.
	**/
	static public function evaluation(sess:Dynamic, ?num_evals:Dynamic, ?init_op:Dynamic, ?init_op_feed_dict:Dynamic, ?eval_op:Dynamic, ?eval_op_feed_dict:Dynamic, ?final_op:Dynamic, ?final_op_feed_dict:Dynamic, ?summary_op:Dynamic, ?summary_op_feed_dict:Dynamic, ?summary_writer:Dynamic, ?global_step:Dynamic):Dynamic;
	/**
		Runs TF-Slim's Evaluation Loop.
		
		Args:
		  master: The BNS address of the TensorFlow master.
		  checkpoint_dir: The directory where checkpoints are stored.
		  logdir: The directory where the TensorFlow summaries are written to.
		  num_evals: The number of times to run `eval_op`.
		  eval_op: A operation run `num_evals` times.
		  eval_op_feed_dict: The feed dictionary to use when executing the `eval_op`.
		  final_op: An operation to execute after all of the `eval_op` executions. The
		    value of `final_op` is returned.
		  final_op_feed_dict: A feed dictionary to use when executing `final_op`.
		  summary_op: The summary_op to evaluate after running TF-Slims metric ops. By
		    default the summary_op is set to tf.merge_all_summaries().
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
	**/
	static public function evaluation_loop(master:Dynamic, checkpoint_dir:Dynamic, logdir:Dynamic, ?num_evals:Dynamic, ?eval_op:Dynamic, ?eval_op_feed_dict:Dynamic, ?final_op:Dynamic, ?final_op_feed_dict:Dynamic, ?summary_op:Dynamic, ?summary_op_feed_dict:Dynamic, ?variables_to_restore:Dynamic, ?eval_interval_secs:Dynamic, ?max_number_of_evaluations:Dynamic, ?session_config:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Waits until a new checkpoint file is found.
		
		Args:
		  checkpoint_dir: The directory in which checkpoints are saved.
		  last_checkpoint: The last checkpoint path used.
		  seconds_to_sleep: The number of seconds to sleep for before looking for a
		    new checkpoint.
		  timeout: The maximum amount of time to wait. If left as `None`, then the
		    process will wait indefinitely.
		
		Returns:
		  a new checkpoint path, or None if the timeout was reached.
	**/
	static public function wait_for_new_checkpoint(checkpoint_dir:Dynamic, last_checkpoint:Dynamic, ?seconds_to_sleep:Dynamic, ?timeout:Dynamic):Dynamic;
}