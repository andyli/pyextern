/* This file is generated, do not edit! */
package tensorflow.contrib.keras.python.keras.layers.merge;
@:pythonImport("tensorflow.contrib.keras.python.keras.layers.merge") extern class Merge_Module {
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
		Functional interface to the `Add` layer.
		
		Arguments:
		    inputs: A list of input tensors (at least 2).
		    **kwargs: Standard layer keyword arguments.
		
		Returns:
		    A tensor, the sum of the inputs.
	**/
	static public function add(inputs:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Functional interface to the `Average` layer.
		
		Arguments:
		    inputs: A list of input tensors (at least 2).
		    **kwargs: Standard layer keyword arguments.
		
		Returns:
		    A tensor, the average of the inputs.
	**/
	static public function average(inputs:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Functional interface to the `Concatenate` layer.
		
		Arguments:
		    inputs: A list of input tensors (at least 2).
		    axis: Concatenation axis.
		    **kwargs: Standard layer keyword arguments.
		
		Returns:
		    A tensor, the concatenation of the inputs alongside axis `axis`.
	**/
	static public function concatenate(inputs:Dynamic, ?axis:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var division : Dynamic;
	/**
		Functional interface to the `Dot` layer.
		
		Arguments:
		    inputs: A list of input tensors (at least 2).
		    axes: Integer or tuple of integers,
		        axis or axes along which to take the dot product.
		    normalize: Whether to L2-normalize samples along the
		        dot product axis before taking the dot product.
		        If set to True, then the output of the dot product
		        is the cosine proximity between the two samples.
		    **kwargs: Standard layer keyword arguments.
		
		Returns:
		    A tensor, the dot product of the samples from the inputs.
	**/
	static public function dot(inputs:Dynamic, axes:Dynamic, ?normalize:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Functional interface to the `Maximum` layer.
		
		Arguments:
		    inputs: A list of input tensors (at least 2).
		    **kwargs: Standard layer keyword arguments.
		
		Returns:
		    A tensor, the element-wise maximum of the inputs.
	**/
	static public function maximum(inputs:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Functional interface to the `Multiply` layer.
		
		Arguments:
		    inputs: A list of input tensors (at least 2).
		    **kwargs: Standard layer keyword arguments.
		
		Returns:
		    A tensor, the element-wise product of the inputs.
	**/
	static public function multiply(inputs:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var print_function : Dynamic;
}