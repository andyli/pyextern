/* This file is generated, do not edit! */
package tensorflow.contrib.learn.python.learn.dataframe.transforms.unary_transforms;
@:pythonImport("tensorflow.contrib.learn.python.learn.dataframe.transforms.unary_transforms") extern class Unary_transforms_Module {
	static public var DOC_FORMAT_STRING : Dynamic;
	static public var UNARY_TRANSFORMS : Dynamic;
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
	/**
		Creates a `Transform` that wraps a unary tensorflow operation.
		
		If `registered_name` is specified, the `Transform` is registered as a member
		function of `Series`.
		
		Args:
		  registered_name: the name of the member function of `Series` corresponding
		    to the returned `Transform`.
		  operation: a unary TensorFlow operation.
		  ignore_dtype: an optional dtype, not used here but needed for symmetry with
		    test.
	**/
	static public function register_unary_op(registered_name:Dynamic, operation:Dynamic, ?ignore_dtype:Dynamic):Dynamic;
}