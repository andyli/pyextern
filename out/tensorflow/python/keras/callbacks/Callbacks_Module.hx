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
	static public var absolute_import : Dynamic;
	/**
		Configures callbacks for use in various training loops.
		
		Arguments:
		    callbacks: List of Callbacks.
		    model: Model being trained.
		    do_validation: Whether or not validation loop will be run.
		    val_inputs: Inputs to Model for validation loop. Can be any
		      data format Keras accepts.
		    val_targets: Targets for Model for validation loop. Can be any
		      data format Keras accepts.
		    val_sample_weights: Sample weights for Model for validation loop.
		      Can be any data format Keras accepts.
		    batch_size: Number of samples per batch.
		    epochs: Number of epoch to train.
		    steps_per_epoch: Number of batches to run per training epoch.
		    samples: Number of training samples.
		    validation_steps: Number of batches to run per validation epoch.
		    verbose: int, 0 or 1. Keras logging verbosity to pass to ProgbarLogger.
		    count_mode: One of 'steps' or 'samples'. Per-batch or per-sample count.
		
		Returns:
		    Instance of CallbackList used to control all Callbacks.
	**/
	static public function configure_callbacks(callbacks:Dynamic, model:Dynamic, ?do_validation:Dynamic, ?val_inputs:Dynamic, ?val_targets:Dynamic, ?val_sample_weights:Dynamic, ?batch_size:Dynamic, ?epochs:Dynamic, ?steps_per_epoch:Dynamic, ?samples:Dynamic, ?validation_steps:Dynamic, ?verbose:Dynamic, ?count_mode:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	static public var requests : Dynamic;
	/**
		Normalizes inputs and targets provided by users.
		
		Users may pass data as a list of arrays, dictionary of arrays,
		or as a single array. We normalize this to an ordered list of
		arrays (same order as `names`), while checking that the provided
		arrays have shapes that match the network's expectations.
		
		Arguments:
		    data: User-provided input data (polymorphic).
		    names: List of expected array names.
		    shapes: Optional list of expected array shapes.
		    check_batch_axis: Boolean; whether to check that
		        the batch axis of the arrays matches the expected
		        value found in `shapes`.
		    exception_prefix: String prefix used for exception formatting.
		
		Returns:
		    List of standardized input arrays (one array per model input).
		
		Raises:
		    ValueError: in case of improperly formatted user-provided data.
	**/
	static public function standardize_input_data(data:Dynamic, names:Dynamic, ?shapes:Dynamic, ?check_batch_axis:Dynamic, ?exception_prefix:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}