/* This file is generated, do not edit! */
package tensorflow.python.framework.auto_control_deps_utils;
@:pythonImport("tensorflow.python.framework.auto_control_deps_utils") extern class Auto_control_deps_utils_Module {
	static public var COLLECTIVE_MANAGER_IDS : Dynamic;
	static public var READ_ONLY_RESOURCE_INPUTS_ATTR : Dynamic;
	static public var RESOURCE_READ_OPS : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Returns sorted list of read-only resource indices in op.inputs.
	**/
	static public function _get_read_only_resource_input_indices_op(op:Dynamic):Dynamic;
	/**
		Returns the index of `handle` in `op.inputs`.
		
		Args:
		  op: Operation.
		  handle: Resource handle.
		
		Returns:
		  Index in `op.inputs` receiving the resource `handle`.
		
		Raises:
		  ValueError: If handle and its replicated input are both not found in
		  `op.inputs`.
	**/
	static public function _input_index(op:Dynamic, handle:Dynamic):Dynamic;
	/**
		Returns whether op writes to resource handle.
		
		Args:
		  handle: Resource handle. Must be an input of `op`.
		  op: Operation.
		
		Returns:
		  Returns False if op is a read-only op registered using
		  `register_read_only_resource_op` or if `handle` is an input at one of
		  the indices in the `READ_ONLY_RESOURCE_INPUTS_ATTR` attr of the op, True
		  otherwise.
		
		Raises:
		  ValueError: if `handle` is not an input of `op`.
	**/
	static public function _op_writes_to_resource(handle:Dynamic, op:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Returns sorted list of read-only resource indices in func_graph.inputs.
	**/
	static public function get_read_only_resource_input_indices_graph(func_graph:Dynamic):Dynamic;
	/**
		Returns a tuple of resource reads, writes in op.inputs.
		
		Args:
		  op: Operation
		
		Returns:
		  A 2-tuple of ObjectIdentitySets, the first entry containing read-only
		  resource handles and the second containing read-write resource handles in
		  `op.inputs`.
	**/
	static public function get_read_write_resource_inputs(op:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Declares that `op_type` does not update its touched resource.
	**/
	static public function register_read_only_resource_op(op_type:Dynamic):Dynamic;
}