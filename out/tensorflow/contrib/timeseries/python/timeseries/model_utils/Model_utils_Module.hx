/* This file is generated, do not edit! */
package tensorflow.contrib.timeseries.python.timeseries.model_utils;
@:pythonImport("tensorflow.contrib.timeseries.python.timeseries.model_utils") extern class Model_utils_Module {
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
		Canonicalizes either relative or absolute times, with error checking.
	**/
	static public function canonicalize_times_or_steps_from_output(times:Dynamic, steps:Dynamic, previous_model_output:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Helper method to create a fully connected hidden layer.
	**/
	static public function fully_connected(inp:Dynamic, inp_size:Dynamic, layer_size:Dynamic, name:Dynamic, ?activation:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Create a function which chooses between overridden and model parameters.
		
		Args:
		  parameter_overrides: A dictionary with explicit overrides of model
		      parameters, mapping from Tensors to their overridden values.
		Returns:
		  A function which takes a Tensor and returns the override if it is specified,
		      or otherwise the evaluated value (given current Variable values).
	**/
	static public function parameter_switch(parameter_overrides:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}