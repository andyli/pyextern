/* This file is generated, do not edit! */
package tensorflow.python.keras.optimizer_v2.optimizer_v2;
@:pythonImport("tensorflow.python.keras.optimizer_v2.optimizer_v2") extern class Optimizer_v2_Module {
	static public var _DEFAULT_VALID_DTYPES : Dynamic;
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
		Get the slot key for the variable: var_name/slot_name.
	**/
	static public function _get_slot_key_from_var(_var:Dynamic, slot_name:Dynamic):Dynamic;
	/**
		Key for representing a primary variable, for looking up slots.
		
		In graph mode the name is derived from the var shared name.
		In eager mode the name is derived from the var unique id.
		If distribution strategy exists, get the primary variable first.
		
		Args:
		  var: the variable.
		
		Returns:
		  the unique name of the variable.
	**/
	static public function _var_key(_var:Dynamic):Dynamic;
	static public function keras_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Internal-only entry point for `name_scope*`.
		
		Enters a compat.v1.name_scope only when in a function or graph,
		not when running fully eagerly.
		
		Args:
		  name: The name argument that is passed to the op function.
		
		Returns:
		  `name_scope*` context manager.
	**/
	static public function name_scope_only_in_function_or_graph(name:Dynamic):Dynamic;
}