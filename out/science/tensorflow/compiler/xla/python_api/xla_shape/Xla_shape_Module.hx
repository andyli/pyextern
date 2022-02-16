/* This file is generated, do not edit! */
package tensorflow.compiler.xla.python_api.xla_shape;
@:pythonImport("tensorflow.compiler.xla.python_api.xla_shape") extern class Xla_shape_Module {
	/**
		Create a shape from a Numpy dtype and a sequence of nonnegative integers.
		
		Args:
		  dtype: a numpy dtype, e.g. np.dtype('int32').
		  shape_tuple: a sequence of nonnegative integers.
		
		Returns:
		  A Shape object.
	**/
	static public function CreateShapeFromDtypeAndTuple(dtype:Dynamic, shape_tuple:Dynamic):Dynamic;
	/**
		Create a Shape from a Numpy array or a nested tuple structure thereof.
		
		Args:
		  value: Numpy array or (possibly nested) tuple structure that bottoms out in
		    Numpy arrays.
		
		Returns:
		  A Shape object.
	**/
	static public function CreateShapeFromNumpy(value:Dynamic):Dynamic;
	/**
		Create a Shape from a given Numpy array.
		
		Args:
		  ndarray: Numpy array.
		
		Returns:
		  A Shape object.
	**/
	static public function _CreateShapeFromNumpy(ndarray:Dynamic):Dynamic;
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
	static public var print_function : Dynamic;
}