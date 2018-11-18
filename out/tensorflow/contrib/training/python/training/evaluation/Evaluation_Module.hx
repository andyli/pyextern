/* This file is generated, do not edit! */
package tensorflow.contrib.training.python.training.evaluation;
@:pythonImport("tensorflow.contrib.training.python.training.evaluation") extern class Evaluation_Module {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Creates a scaffold that loads the given checkpoint using an init_fn.
		
		Args:
		  scaffold: The scaffold to copy.
		  saver: The saver to use when restoring the checkpoint.
		  checkpoint_path: An absolute path to a checkpoint.
		
		Returns:
		  A scaffold with an init_fn that loads the given checkpoint. If the scaffold
		  provided already has an init_fn, the scaffold is returned unchanged.
	**/
	static public function _scaffold_with_init(scaffold:Dynamic, saver:Dynamic, checkpoint_path:Dynamic):Dynamic;
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
		
		During a single evaluation, the `eval_ops` is run until the session is
		interrupted or requested to finish. This is typically requested via a
		`tf.contrib.training.StopAfterNEvalsHook` which results in `eval_ops` running
		the requested number of times.
		
		Optionally, a user can pass in `final_ops`, a single `Tensor`, a list of
		`Tensors` or a dictionary from names to `Tensors`. The `final_ops` is
		evaluated a single time after `eval_ops` has finished running and the fetched
		values of `final_ops` are returned. If `final_ops` is left as `None`, then
		`None` is returned.
		
		One may also consider using a `tf.contrib.training.SummaryAtEndHook` to record
		summaries after the `eval_ops` have run. If `eval_ops` is `None`, the
		summaries run immediately after the model checkpoint has been restored.
		
		Note that `evaluate_once` creates a local variable used to track the number of
		evaluations run via `tf.contrib.training.get_or_create_eval_step`.
		Consequently, if a custom local init op is provided via a `scaffold`, the
		caller should ensure that the local init op also initializes the eval step.
		
		Args:
		  checkpoint_path: The path to a checkpoint to use for evaluation.
		  master: The BNS address of the TensorFlow master.
		  scaffold: An tf.train.Scaffold instance for initializing variables and
		    restoring variables. Note that `scaffold.init_fn` is used by the function
		    to restore the checkpoint. If you supply a custom init_fn, then it must
		    also take care of restoring the model from its checkpoint.
		  eval_ops: A single `Tensor`, a list of `Tensors` or a dictionary of names
		    to `Tensors`, which is run until the session is requested to stop,
		    commonly done by a `tf.contrib.training.StopAfterNEvalsHook`.
		  feed_dict: The feed dictionary to use when executing the `eval_ops`.
		  final_ops: A single `Tensor`, a list of `Tensors` or a dictionary of names
		    to `Tensors`.
		  final_ops_feed_dict: A feed dictionary to use when evaluating `final_ops`.
		  hooks: List of `tf.train.SessionRunHook` callbacks which are run inside the
		    evaluation loop.
		  config: An instance of `tf.ConfigProto` that will be used to
		    configure the `Session`. If left as `None`, the default will be used.
		
		Returns:
		  The fetched values of `final_ops` or `None` if `final_ops` is `None`.
	**/
	static public function evaluate_once(checkpoint_path:Dynamic, ?master:Dynamic, ?scaffold:Dynamic, ?eval_ops:Dynamic, ?feed_dict:Dynamic, ?final_ops:Dynamic, ?final_ops_feed_dict:Dynamic, ?hooks:Dynamic, ?config:Dynamic):Dynamic;
	/**
		Repeatedly searches for a checkpoint in `checkpoint_dir` and evaluates it.
		
		During a single evaluation, the `eval_ops` is run until the session is
		interrupted or requested to finish. This is typically requested via a
		`tf.contrib.training.StopAfterNEvalsHook` which results in `eval_ops` running
		the requested number of times.
		
		Optionally, a user can pass in `final_ops`, a single `Tensor`, a list of
		`Tensors` or a dictionary from names to `Tensors`. The `final_ops` is
		evaluated a single time after `eval_ops` has finished running and the fetched
		values of `final_ops` are returned. If `final_ops` is left as `None`, then
		`None` is returned.
		
		One may also consider using a `tf.contrib.training.SummaryAtEndHook` to record
		summaries after the `eval_ops` have run. If `eval_ops` is `None`, the
		summaries run immediately after the model checkpoint has been restored.
		
		Note that `evaluate_once` creates a local variable used to track the number of
		evaluations run via `tf.contrib.training.get_or_create_eval_step`.
		Consequently, if a custom local init op is provided via a `scaffold`, the
		caller should ensure that the local init op also initializes the eval step.
		
		Args:
		  checkpoint_dir: The directory where checkpoints are stored.
		  master: The address of the TensorFlow master.
		  scaffold: An tf.train.Scaffold instance for initializing variables and
		    restoring variables. Note that `scaffold.init_fn` is used by the function
		    to restore the checkpoint. If you supply a custom init_fn, then it must
		    also take care of restoring the model from its checkpoint.
		  eval_ops: A single `Tensor`, a list of `Tensors` or a dictionary of names
		    to `Tensors`, which is run until the session is requested to stop,
		    commonly done by a `tf.contrib.training.StopAfterNEvalsHook`.
		  feed_dict: The feed dictionary to use when executing the `eval_ops`.
		  final_ops: A single `Tensor`, a list of `Tensors` or a dictionary of names
		    to `Tensors`.
		  final_ops_feed_dict: A feed dictionary to use when evaluating `final_ops`.
		  eval_interval_secs: The minimum number of seconds between evaluations.
		  hooks: List of `tf.train.SessionRunHook` callbacks which are run inside the
		    evaluation loop.
		  config: An instance of `tf.ConfigProto` that will be used to
		    configure the `Session`. If left as `None`, the default will be used.
		  max_number_of_evaluations: The maximum times to run the evaluation. If left
		    as `None`, then evaluation runs indefinitely.
		  timeout: The maximum amount of time to wait between checkpoints. If left as
		    `None`, then the process will wait indefinitely.
		  timeout_fn: Optional function to call after a timeout.  If the function
		    returns True, then it means that no new checkpoints will be generated and
		    the iterator will exit.  The function is called with no arguments.
		
		Returns:
		  The fetched values of `final_ops` or `None` if `final_ops` is `None`.
	**/
	static public function evaluate_repeatedly(checkpoint_dir:Dynamic, ?master:Dynamic, ?scaffold:Dynamic, ?eval_ops:Dynamic, ?feed_dict:Dynamic, ?final_ops:Dynamic, ?final_ops_feed_dict:Dynamic, ?eval_interval_secs:Dynamic, ?hooks:Dynamic, ?config:Dynamic, ?max_number_of_evaluations:Dynamic, ?timeout:Dynamic, ?timeout_fn:Dynamic):Dynamic;
	/**
		Gets or creates the eval step `Tensor`.
		
		Returns:
		  A `Tensor` representing a counter for the evaluation step.
		
		Raises:
		  ValueError: If multiple `Tensors` have been added to the
		    `tf.GraphKeys.EVAL_STEP` collection.
	**/
	static public function get_or_create_eval_step():Dynamic;
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