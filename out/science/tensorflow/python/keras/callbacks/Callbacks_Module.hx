/* This file is generated, do not edit! */
package tensorflow.python.keras.callbacks;
@:pythonImport("tensorflow.python.keras.callbacks") extern class Callbacks_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Checks if data is a generator, Sequence, or Iterator.
	**/
	static public function _is_generator_like(data:Dynamic):Dynamic;
	/**
		Configures callbacks for use in various training loops.
		
		Args:
		    callbacks: List of Callbacks.
		    model: Model being trained.
		    do_validation: Whether or not validation loop will be run.
		    batch_size: Number of samples per batch.
		    epochs: Number of epoch to train.
		    steps_per_epoch: Number of batches to run per training epoch.
		    samples: Number of training samples.
		    verbose: int, 0 or 1. Keras logging verbosity to pass to ProgbarLogger.
		    count_mode: One of 'steps' or 'samples'. Per-batch or per-sample count.
		    mode: String. One of ModeKeys.TRAIN, ModeKeys.TEST, or ModeKeys.PREDICT.
		      Which loop mode to configure callbacks for.
		
		Returns:
		    Instance of CallbackList used to control all Callbacks.
	**/
	static public function configure_callbacks(callbacks:Dynamic, model:Dynamic, ?do_validation:Dynamic, ?batch_size:Dynamic, ?epochs:Dynamic, ?steps_per_epoch:Dynamic, ?samples:Dynamic, ?verbose:Dynamic, ?count_mode:Dynamic, ?mode:Dynamic):Dynamic;
	static public function keras_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Writes a Keras model as JSON to as a Summary.
		
		Writing the Keras model configuration allows the TensorBoard graph plugin to
		render a conceptual graph, as opposed to graph of ops. In case the model fails
		to serialize as JSON, it ignores and returns False.
		
		Args:
		  name: A name for this summary. The summary tag used for TensorBoard will be
		    this name prefixed by any active name scopes.
		  data: A Keras Model to write.
		  step: Explicit `int64`-castable monotonic step value for this summary. If
		    omitted, this defaults to `tf.summary.experimental.get_step()`, which must
		    not be None.
		
		Returns:
		  True on success, or False if no summary was written because no default
		  summary writer was available.
		
		Raises:
		  ValueError: if a default writer exists, but no step was provided and
		    `tf.summary.experimental.get_step()` is None.
	**/
	static public function keras_model_summary(name:Dynamic, data:Dynamic, ?step:Dynamic):Dynamic;
	/**
		Computes logs for sending to `on_batch_end` methods.
	**/
	static public function make_logs(model:Dynamic, logs:Dynamic, outputs:Dynamic, mode:Dynamic, ?prefix:Dynamic):Dynamic;
	/**
		Convert `PathLike` objects to their string representation.
		
		If given a non-string typed path object, converts it to its string
		representation.
		
		If the object passed to `path` is not among the above, then it is
		returned unchanged. This allows e.g. passthrough of file objects
		through this function.
		
		Args:
		  path: `PathLike` object that represents a path
		
		Returns:
		  A string representation of the path argument, if Python support exists.
	**/
	static public function path_to_string(path:Dynamic):Dynamic;
	/**
		Sets callback parameters.
		
		Args:
		    callback_list: CallbackList instance.
		    model: Model being trained.
		    do_validation: Whether or not validation loop will be run.
		    batch_size: Number of samples per batch.
		    epochs: Number of epoch to train.
		    steps_per_epoch: Number of batches to run per training epoch.
		    samples: Number of training samples.
		    verbose: int, 0 or 1. Keras logging verbosity to pass to ProgbarLogger.
		    mode: String. One of ModeKeys.TRAIN, ModeKeys.TEST, or ModeKeys.PREDICT.
		      Which loop mode to configure callbacks for.
	**/
	static public function set_callback_parameters(callback_list:Dynamic, model:Dynamic, ?do_validation:Dynamic, ?batch_size:Dynamic, ?epochs:Dynamic, ?steps_per_epoch:Dynamic, ?samples:Dynamic, ?verbose:Dynamic, ?mode:Dynamic):Dynamic;
}