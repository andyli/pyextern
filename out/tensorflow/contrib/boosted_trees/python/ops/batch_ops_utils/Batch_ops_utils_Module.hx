/* This file is generated, do not edit! */
package tensorflow.contrib.boosted_trees.python.ops.batch_ops_utils;
@:pythonImport("tensorflow.contrib.boosted_trees.python.ops.batch_ops_utils") extern class Batch_ops_utils_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Moves a list of tensors to a device by concatenating/splitting them.
	**/
	static public function _move_tensors(tensors:Dynamic, device:Dynamic):Dynamic;
	/**
		Runs a batch operation on a stamped resource.
	**/
	static public function _scheduled_stamp_resource_op_runner(batch:Dynamic, stamp:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	/**
		Given a dictionary of ops for each handler, runs them in batch.
	**/
	static public function run_handler_scheduled_ops(per_handler_ops:Dynamic, stamp:Dynamic, worker_device:Dynamic):Dynamic;
}