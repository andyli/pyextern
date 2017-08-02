/* This file is generated, do not edit! */
package keras.legacy.layers;
@:pythonImport("keras.legacy.layers") extern class Layers_Module {
	static public function AtrousConvolution1D(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function AtrousConvolution2D(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Serializes a user defined function.
		
		# Arguments
		    func: the function to serialize.
		
		# Returns
		    A tuple `(code, defaults, closure)`.
	**/
	static public function func_dump(func:Dynamic):Dynamic;
	/**
		Deserializes a user defined function.
		
		# Arguments
		    code: bytecode of the function.
		    defaults: defaults of the function.
		    closure: closure of the function.
		    globs: dictionary of global objects.
		
		# Returns
		    A function object.
	**/
	static public function func_load(code:Dynamic, ?defaults:Dynamic, ?closure:Dynamic, ?globs:Dynamic):Dynamic;
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
	/**
		Functional merge, to apply to Keras tensors (NOT layers).
		Returns a Keras tensor.
		# Example
		```python
		tensor_a = Input(shape=(32,))
		tensor_b = Input(shape=(32,))
		merged_tensor = merge([tensor_a, tensor_b], mode='concat', concat_axis=1)
		```
		# Arguments
		    mode: String or lambda/function. If string, must be one
		        of: 'sum', 'mul', 'concat', 'ave', 'cos', 'dot', 'max'.
		        If lambda/function, it should take as input a list of tensors
		        and return a single tensor.
		    concat_axis: Integer, axis to use in mode `concat`.
		    dot_axes: Integer or tuple of integers,
		        axes to use in mode `dot` or `cos`.
		    output_shape: Shape tuple (tuple of integers), or lambda/function
		        to compute output_shape (only if merge mode is a lambda/function).
		        If the latter case, it should take as input a list of shape tuples
		        (1:1 mapping to input tensors) and return a single shape tuple,
		        including the batch size
		        (same convention as the `compute_output_shape` method of layers).
		    node_indices: Optional list of integers containing
		        the output node index for each input layer
		        (in case some input layers have multiple output nodes).
		        will default to an array of 0s if not provided.
		    tensor_indices: Optional list of indices of output tensors
		        to consider for merging
		        (in case some input layer node returns multiple tensors).
	**/
	static public function merge(inputs:Dynamic, ?mode:Dynamic, ?concat_axis:Dynamic, ?dot_axes:Dynamic, ?output_shape:Dynamic, ?output_mask:Dynamic, ?arguments:Dynamic, ?name:Dynamic):Dynamic;
}