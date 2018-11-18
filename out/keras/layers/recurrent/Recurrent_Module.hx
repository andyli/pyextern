/* This file is generated, do not edit! */
package keras.layers.recurrent;
@:pythonImport("keras.layers.recurrent") extern class Recurrent_Module {
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
		Standardize `__call__` to a single list of tensor inputs.
		
		When running a model loaded from file, the input tensors
		`initial_state` and `constants` can be passed to `RNN.__call__` as part
		of `inputs` instead of by the dedicated keyword arguments. This method
		makes sure the arguments are separated and that `initial_state` and
		`constants` are lists of tensors (or None).
		
		# Arguments
		    inputs: tensor or list/tuple of tensors
		    initial_state: tensor or list of tensors or None
		    constants: tensor or list of tensors or None
		
		# Returns
		    inputs: tensor
		    initial_state: list of tensors or None
		    constants: list of tensors or None
	**/
	static public function _standardize_args(inputs:Dynamic, initial_state:Dynamic, constants:Dynamic, num_constants:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Checks if a callable accepts a given keyword argument.
		
		For Python 2, checks if there is an argument with the given name.
		
		For Python 3, checks if there is an argument with the given name, and
		also whether this argument can be called with a keyword (i.e. if it is
		not a positional-only argument).
		
		# Arguments
		    fn: Callable to inspect.
		    name: Check if `fn` can be called with `name` as a keyword argument.
		    accept_all: What to return if there is no parameter called `name`
		                but the function accepts a `**kwargs` argument.
		
		# Returns
		    bool, whether `fn` accepts a `name` keyword argument.
	**/
	static public function has_arg(fn:Dynamic, name:Dynamic, ?accept_all:Dynamic):Dynamic;
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
}