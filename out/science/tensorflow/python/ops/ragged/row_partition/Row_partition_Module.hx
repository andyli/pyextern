/* This file is generated, do not edit! */
package tensorflow.python.ops.ragged.row_partition;
@:pythonImport("tensorflow.python.ops.ragged.row_partition") extern class Row_partition_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _assert_monotonic_increasing(tensor:Dynamic, ?message:Dynamic):Dynamic;
	static public function _assert_zero(tensor:Dynamic, ?message:Dynamic):Dynamic;
	static public function _cast_if_not_none(tensor:Dynamic, dtype:Dynamic):Dynamic;
	/**
		Merge two optional Tensors with equal values into a single Tensor.
		
		Args:
		  t1: tf.Tensor or None
		  t2: tf.Tensor or None
		  name: A name for the tensors (for error messages)
		  validate: If true, then check that `t1` is compatible with `t2` (if both are
		    non-None).
		
		Returns:
		  A pair `(merged_value, validated)`:
		    * `merged_value` is `t1` if it is not None; or `t2` otherwise.
		    * `validated` is true if we validated that t1 and t2 are equal (either
		      by adding a check, or because t1 is t2).
	**/
	static public function _merge_tensors(t1:Dynamic, t2:Dynamic, name:Dynamic, validate:Dynamic):Dynamic;
	static public var _row_partition_factory_key : Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}