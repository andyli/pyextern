/* This file is generated, do not edit! */
package tensorflow.python.data.util.traverse;
@:pythonImport("tensorflow.python.data.util.traverse") extern class Traverse_Module {
	static public var OP_TYPES_ALLOWLIST : Dynamic;
	static public var TENSOR_TYPES_ALLOWLIST : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Traverse a dataset graph, returning nodes matching `op_filter_fn`.
	**/
	static public function _traverse(dataset:Dynamic, op_filter_fn:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Given an input dataset, finds all dataset ops used for construction.
		
		A series of transformations would have created this dataset with each
		transformation including zero or more Dataset ops, each producing a dataset
		variant tensor. This method outputs all of them.
		
		Args:
		  dataset: Dataset to find variant tensors for.
		
		Returns:
		  A list of variant_tensor producing dataset ops used to construct this
		  dataset.
	**/
	static public function obtain_all_variant_tensor_ops(dataset:Dynamic):Dynamic;
	/**
		Given an input dataset, finds all allowlisted ops used for construction.
		
		Allowlisted ops are stateful ops which are known to be safe to capture by
		value.
		
		Args:
		  dataset: Dataset to find allowlisted stateful ops for.
		
		Returns:
		  A list of variant_tensor producing dataset ops used to construct this
		  dataset.
	**/
	static public function obtain_capture_by_value_ops(dataset:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}