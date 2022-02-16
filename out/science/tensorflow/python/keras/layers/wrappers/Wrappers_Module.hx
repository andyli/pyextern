/* This file is generated, do not edit! */
package tensorflow.python.keras.layers.wrappers;
@:pythonImport("tensorflow.python.keras.layers.wrappers") extern class Wrappers_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Standardizes `__call__` to a single list of tensor inputs.
		
		When running a model loaded from a file, the input tensors
		`initial_state` and `constants` can be passed to `RNN.__call__()` as part
		of `inputs` instead of by the dedicated keyword arguments. This method
		makes sure the arguments are separated and that `initial_state` and
		`constants` are lists of tensors (or None).
		
		Args:
		  inputs: Tensor or list/tuple of tensors. which may include constants
		    and initial states. In that case `num_constant` must be specified.
		  initial_state: Tensor or list of tensors or None, initial states.
		  constants: Tensor or list of tensors or None, constant tensors.
		  num_constants: Expected number of constants (if constants are passed as
		    part of the `inputs` list.
		
		Returns:
		  inputs: Single tensor or tuple of tensors.
		  initial_state: List of tensors or None.
		  constants: List of tensors or None.
	**/
	static public function _standardize_args(inputs:Dynamic, initial_state:Dynamic, constants:Dynamic, num_constants:Dynamic):Dynamic;
	static public function keras_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}