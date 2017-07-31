/* This file is generated, do not edit! */
package tensorflow.python.training.evaluation;
@:pythonImport("tensorflow.python.training.evaluation") extern class Evaluation_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
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
		summaries run immedietly after the model checkpoint has been restored.
		
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
	static public function _evaluate_once(checkpoint_path:Dynamic, ?master:Dynamic, ?scaffold:Dynamic, ?eval_ops:Dynamic, ?feed_dict:Dynamic, ?final_ops:Dynamic, ?final_ops_feed_dict:Dynamic, ?hooks:Dynamic, ?config:Dynamic):Dynamic;
	/**
		Gets or creates the eval step `Tensor`.
		
		Returns:
		  A `Tensor` representing a counter for the evaluation step.
		
		Raises:
		  ValueError: If multiple `Tensors` have been added to the
		    `tf.GraphKeys.EVAL_STEP` collection.
	**/
	static public function _get_or_create_eval_step():Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}