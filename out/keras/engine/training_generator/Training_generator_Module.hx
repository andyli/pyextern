/* This file is generated, do not edit! */
package keras.engine.training_generator;
@:pythonImport("keras.engine.training_generator") extern class Training_generator_Module {
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
		Iterate indefinitely over a Sequence.
		
		# Arguments
		    seq: Sequence object
		
		# Returns
		    Generator yielding batches.
	**/
	static public function iter_sequence_infinite(seq:Dynamic):Dynamic;
	/**
		See docstring for `Model.predict_generator`.
	**/
	static public function predict_generator(model:Dynamic, generator:Dynamic, ?steps:Dynamic, ?max_queue_size:Dynamic, ?workers:Dynamic, ?use_multiprocessing:Dynamic, ?verbose:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Normalizes a list/tensor into a list.
		
		If a tensor is passed, we return
		a list of size 1 containing the tensor.
		
		# Arguments
		    x: target object to be normalized.
		    allow_tuple: If False and x is a tuple,
		        it will be converted into a list
		        with a single element (the tuple).
		        Else converts the tuple to a list.
		
		# Returns
		    A list.
	**/
	static public function to_list(x:Dynamic, ?allow_tuple:Dynamic):Dynamic;
	/**
		Gets the first element if the iterable has only one value.
		
		Otherwise return the iterable.
		
		# Argument:
		    x: A list or tuple.
		
		# Returns:
		    The same iterable or the first element.
	**/
	static public function unpack_singleton(x:Dynamic):Dynamic;
}