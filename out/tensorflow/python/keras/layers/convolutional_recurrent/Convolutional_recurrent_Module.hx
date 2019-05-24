/* This file is generated, do not edit! */
package tensorflow.python.keras.layers.convolutional_recurrent;
@:pythonImport("tensorflow.python.keras.layers.convolutional_recurrent") extern class Convolutional_recurrent_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _generate_dropout_mask(ones:Dynamic, rate:Dynamic, ?training:Dynamic, ?count:Dynamic):Dynamic;
	/**
		Standardizes `__call__` to a single list of tensor inputs.
		
		When running a model loaded from a file, the input tensors
		`initial_state` and `constants` can be passed to `RNN.__call__()` as part
		of `inputs` instead of by the dedicated keyword arguments. This method
		makes sure the arguments are separated and that `initial_state` and
		`constants` are lists of tensors (or None).
		
		Arguments:
		    inputs: Tensor or list/tuple of tensors. which may include constants
		      and initial states. In that case `num_constant` must be specified.
		    initial_state: Tensor or list of tensors or None, initial states.
		    constants: Tensor or list of tensors or None, constant tensors.
		    num_constants: Expected number of constants (if constants are passed as
		      part of the `inputs` list.
		    num_inputs: Expected number of real input tensors (exclude initial_states
		      and constants).
		
		Returns:
		    inputs: Single tensor or tuple of tensors.
		    initial_state: List of tensors or None.
		    constants: List of tensors or None.
	**/
	static public function _standardize_args(inputs:Dynamic, initial_state:Dynamic, constants:Dynamic, num_constants:Dynamic, ?num_inputs:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}