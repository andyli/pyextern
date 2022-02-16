/* This file is generated, do not edit! */
package tensorflow.python.keras.engine.compile_utils;
@:pythonImport("tensorflow.python.keras.engine.compile_utils") extern class Compile_utils_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Creates pseudo {input | output} names for subclassed Models.
		
		Warning: this function should only be used to define default
		names for `Metics` and `SavedModel`. No other use cases should
		rely on a `Model`'s input or output names.
		
		Example with dict:
		
		`{'a': [x1, x2], 'b': x3}` becomes:
		`['a_1', 'a_2', 'b']`
		
		Example with list:
		
		`[x, y]` becomes:
		`['output_1', 'output_2']`
		
		Args:
		  tensors: `Model`'s outputs or inputs.
		  prefix: 'output_' for outputs, 'input_' for inputs.
		
		Returns:
		  Flattened list of pseudo names.
	**/
	static public function _create_pseudo_names(tensors:Dynamic, prefix:Dynamic):Dynamic;
	/**
		Applies any mask on predictions to sample weights.
	**/
	static public function apply_mask(y_p:Dynamic, sw:Dynamic, mask:Dynamic):Dynamic;
	/**
		Create pseudo input names for a subclassed Model.
	**/
	static public function create_pseudo_input_names(inputs:Dynamic):Dynamic;
	/**
		Create pseudo output names for a subclassed Model.
	**/
	static public function create_pseudo_output_names(outputs:Dynamic):Dynamic;
	/**
		Returns the name to use for a custom loss or metric callable.
		
		Args:
		  obj: Custom loss of metric callable
		
		Returns:
		  Name to use, or `None` if the object was not recognized.
	**/
	static public function get_custom_object_name(obj:Dynamic):Dynamic;
	/**
		Returns Keras mask from tensor.
	**/
	static public function get_mask(y_p:Dynamic):Dynamic;
	/**
		Replaces missing dict keys in `struct` with `None` placeholders.
	**/
	static public function map_missing_dict_keys(y_pred:Dynamic, struct:Dynamic):Dynamic;
	/**
		Maps a dict to a list using `output_names` as keys.
		
		This is a convenience feature only. When a `Model`'s outputs
		are a list, you can specify per-output losses and metrics as
		a dict, where the keys are the output names. If you specify
		per-output losses and metrics via the same structure as the
		`Model`'s outputs (recommended), no mapping is performed.
		
		For the Functional API, the output names are the names of the
		last layer of each output. For the Subclass API, the output names
		are determined by `create_pseudo_output_names` (For example:
		`['output_1', 'output_2']` for a list of outputs).
		
		This mapping preserves backwards compatibility for `compile` and
		`fit`.
		
		Args:
		  y_pred: Sample outputs of the Model, to determine if this convenience
		    feature should be applied (`struct` is returned unmodified if `y_pred`
		    isn't a flat list).
		  output_names: List. The names of the outputs of the Model.
		  struct: The structure to map.
		
		Returns:
		  `struct` mapped to a list in same order as `output_names`.
	**/
	static public function map_to_output_names(y_pred:Dynamic, output_names:Dynamic, struct:Dynamic):Dynamic;
	/**
		Match dtype and rank of predictions.
	**/
	static public function match_dtype_and_rank(y_t:Dynamic, y_p:Dynamic, sw:Dynamic):Dynamic;
}