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
		Rotate the last dimension either left or right.
	**/
	static public function _rotate_last_dim(x:Dynamic, ?rotate_right:Dynamic):Dynamic;
	/**
		Unstack vector to form a matrix, with a specified amount of columns.
	**/
	static public function _unvec_by(y:Dynamic, num_col:Dynamic):Dynamic;
	/**
		Stacks column of matrix to form a single column.
	**/
	static public function _vec(x:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}