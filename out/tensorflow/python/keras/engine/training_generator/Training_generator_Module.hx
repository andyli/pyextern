/* This file is generated, do not edit! */
package tensorflow.python.keras.engine.training_generator;
@:pythonImport("tensorflow.python.keras.engine.training_generator") extern class Training_generator_Module {
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
		See docstring for `Model.evaluate_generator`.
	**/
	static public function evaluate_generator(model:Dynamic, generator:Dynamic, ?steps:Dynamic, ?max_queue_size:Dynamic, ?workers:Dynamic, ?use_multiprocessing:Dynamic, ?verbose:Dynamic):Dynamic;
	/**
		See docstring for `Model.fit_generator`.
	**/
	static public function fit_generator(model:Dynamic, generator:Dynamic, ?steps_per_epoch:Dynamic, ?epochs:Dynamic, ?verbose:Dynamic, ?callbacks:Dynamic, ?validation_data:Dynamic, ?validation_steps:Dynamic, ?class_weight:Dynamic, ?max_queue_size:Dynamic, ?workers:Dynamic, ?use_multiprocessing:Dynamic, ?shuffle:Dynamic, ?initial_epoch:Dynamic):Dynamic;
	/**
		See docstring for `Model.predict_generator`.
	**/
	static public function predict_generator(model:Dynamic, generator:Dynamic, ?steps:Dynamic, ?max_queue_size:Dynamic, ?workers:Dynamic, ?use_multiprocessing:Dynamic, ?verbose:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}