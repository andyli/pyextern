/* This file is generated, do not edit! */
package tensorflow.python.distribute.values;
@:pythonImport("tensorflow.python.distribute.values") extern class Values_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _apply_aggregation(strategy:Dynamic, value:Dynamic, aggregation:Dynamic, destinations:Dynamic):Dynamic;
	static public function _assert_replica_context():Dynamic;
	static public function _assign_on_device(device:Dynamic, variable:Dynamic, tensor:Dynamic):Dynamic;
	static public function _devices_match(d1:Dynamic, d2:Dynamic):Dynamic;
	static public function _enclosing_tpu_context():Dynamic;
	/**
		Divide a batch-ed dataset's batches into smaller batches.
	**/
	static public function _split_dataset_batch(dataset:Dynamic, split_batch_by:Dynamic):Dynamic;
	static public function _tensor_conversion_aggregate(_var:Dynamic, ?dtype:Dynamic, ?name:Dynamic, ?as_ref:Dynamic):Dynamic;
	static public function _tensor_conversion_mirrored(_var:Dynamic, ?dtype:Dynamic, ?name:Dynamic, ?as_ref:Dynamic):Dynamic;
	static public function _tensor_conversion_replica_local(_var:Dynamic, ?dtype:Dynamic, ?name:Dynamic, ?as_ref:Dynamic):Dynamic;
	static public function _tensor_conversion_tpu_mirrored(_var:Dynamic, ?dtype:Dynamic, ?name:Dynamic, ?as_ref:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	/**
		Makes device->nest map into a nest of PerReplica/Mirrored values.
	**/
	static public function regroup(per_replica:Dynamic, ?wrap_class:Dynamic):Dynamic;
	/**
		Specialize a nest of regular & per-replica values for one device.
	**/
	static public function select_device(device:Dynamic, structured:Dynamic):Dynamic;
	/**
		Specialize a nest of regular & mirrored values for one device.
	**/
	static public function select_device_mirrored(device:Dynamic, structured:Dynamic):Dynamic;
	/**
		Regroup for an update, with dependencies to ensure all updates execute.
	**/
	static public function update_regroup(extended:Dynamic, updates:Dynamic, group:Dynamic):Dynamic;
	/**
		Returns the container that this per-replica `value` belongs to.
		
		Args:
		  val: A value returned by `call_for_each_replica()` or a variable
		    created in `scope()`.
		
		Returns:
		  A container that `value` belongs to.
		  If value does not belong to any container (including the case of
		  container having been destroyed), returns the value itself.
	**/
	static public function value_container(val:Dynamic):Dynamic;
}