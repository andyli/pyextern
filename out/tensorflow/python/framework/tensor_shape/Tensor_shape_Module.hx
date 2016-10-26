/* This file is generated, do not edit! */
package tensorflow.python.framework.tensor_shape;
@:pythonImport("tensorflow.python.framework.tensor_shape") extern class Tensor_shape_Module {
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
		Converts the given value to a Dimension.
		
		A Dimenson input will be returned unmodified.
		An input of `None` will be converted to an unknown Dimension.
		An integer input will be converted to a Dimension with that value.
		
		Args:
		  value: The value to be converted.
		
		Returns:
		  A Dimension corresponding to the given value.
	**/
	static public function as_dimension(value:Dynamic):Dynamic;
	/**
		Converts the given object to a TensorShape.
	**/
	static public function as_shape(shape:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Returns a shape representing a matrix.
		
		Args:
		  rows: The number of rows in the matrix, which may be None if unknown.
		  cols: The number of columns in the matrix, which may be None if unknown.
		
		Returns:
		  A TensorShape representing a matrix of the given size.
	**/
	static public function matrix(rows:Dynamic, cols:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Returns a shape representing a scalar.
	**/
	static public function scalar():Dynamic;
	/**
		Returns an unknown TensorShape, optionally with a known rank.
		
		Args:
		  ndims: (Optional) If specified, the number of dimensions in the shape.
		
		Returns:
		  An unknown TensorShape.
	**/
	static public function unknown_shape(?ndims:Dynamic):Dynamic;
	/**
		Returns a shape representing a vector.
		
		Args:
		  length: The length of the vector, which may be None if unknown.
		
		Returns:
		  A TensorShape representing a vector of the given length.
	**/
	static public function vector(length:Dynamic):Dynamic;
}