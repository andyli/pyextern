/* This file is generated, do not edit! */
package tensorflow.python.ops.linalg.linear_operator_kronecker;
@:pythonImport("tensorflow.python.ops.linalg.linear_operator_kronecker") extern class Linear_operator_kronecker_Module {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Concatenate a shape with a list of integers as statically as possible.
		
		Args:
		  first_shape: `TensorShape` or `Tensor` instance. If a `TensorShape`,
		    `first_shape.is_fully_defined()` must return `True`.
		  second_shape_int_list: `list` of scalar integer `Tensor`s.
		
		Returns:
		  `Tensor` representing concatenating `first_shape` and
		    `second_shape_int_list` as statically as possible.
	**/
	static public function _prefer_static_concat_shape(first_shape:Dynamic, second_shape_int_list:Dynamic):Dynamic;
	static public function _prefer_static_shape(x:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}