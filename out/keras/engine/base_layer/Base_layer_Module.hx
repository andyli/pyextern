/* This file is generated, do not edit! */
package keras.engine.base_layer;
@:pythonImport("keras.engine.base_layer") extern class Base_layer_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Collects the output shape(s) of a list of Keras tensors.
		
		# Arguments
		    input_tensors: list of input tensors (or single input tensor).
		
		# Returns
		    List of shape tuples (or single tuple), one tuple per input.
	**/
	static public function _collect_input_shape(input_tensors:Dynamic):Dynamic;
	/**
		Retrieves the output mask(s) of the previous node.
		
		# Arguments
		    input_tensors: A tensor or list of tensors.
		
		# Returns
		    A mask tensor or list of mask tensors.
	**/
	static public function _collect_previous_mask(input_tensors:Dynamic):Dynamic;
	static public function _to_snake_case(name:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Count the total number of scalars composing the weights.
		
		# Arguments
		    weights: An iterable containing the weights on which to compute params
		
		# Returns
		    The total number of scalars composing the weights
	**/
	static public function count_params(weights:Dynamic):Dynamic;
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
	static public function is_all_none(iterable_or_element:Dynamic):Dynamic;
	static public function object_list_uid(object_list:Dynamic):Dynamic;
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