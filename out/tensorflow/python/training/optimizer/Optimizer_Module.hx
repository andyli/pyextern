/* This file is generated, do not edit! */
package tensorflow.python.training.optimizer;
@:pythonImport("tensorflow.python.training.optimizer") extern class Optimizer_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Sums `values` associated with any non-unique `indices`.
		
		Args:
		  values: A `Tensor` with rank >= 1.
		  indices: A one-dimensional integer `Tensor`, indexing into the first
		    dimension of `values` (as in an IndexedSlices object).
		Returns:
		  A tuple of (`summed_values`, `unique_indices`) where `unique_indices` is a
		  de-duplicated version of `indices` and `summed_values` contains the sum of
		  `values` slices associated with each unique index.
	**/
	static public function _deduplicate_indexed_slices(values:Dynamic, indices:Dynamic):Dynamic;
	/**
		The processor of v.
	**/
	static public function _get_processor(v:Dynamic):Dynamic;
	/**
		Returns the ResourceVariable responsible for v, or v if not necessary.
	**/
	static public function _get_variable_for(v:Dynamic):Dynamic;
	static public function _var_key(_var:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}