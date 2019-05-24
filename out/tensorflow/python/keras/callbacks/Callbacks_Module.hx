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
		    batch_size: Number of samples per batch.
		    epochs: Number of epoch to train.
		    steps_per_epoch: Number of batches to run per training epoch.
		    samples: Number of training samples.
		    verbose: int, 0 or 1. Keras logging verbosity to pass to ProgbarLogger.
		    count_mode: One of 'steps' or 'samples'. Per-batch or per-sample count.
		    mode: String. One of 'train', 'test', or 'predict'. Which loop mode to
		      configure callbacks for.
		
		Returns:
		    Instance of CallbackList used to control all Callbacks.
	**/
	static public function configure_callbacks(callbacks:Dynamic, model:Dynamic, ?do_validation:Dynamic, ?batch_size:Dynamic, ?epochs:Dynamic, ?steps_per_epoch:Dynamic, ?samples:Dynamic, ?verbose:Dynamic, ?count_mode:Dynamic, ?mode:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	static public var requests : Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}