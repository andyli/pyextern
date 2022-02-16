/* This file is generated, do not edit! */
package tensorflow.python.distribute.values_util;
@:pythonImport("tensorflow.python.distribute.values_util") extern class Values_util_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	static public var aggregation_error_msg : Dynamic;
	static public function apply_aggregation(strategy:Dynamic, value:Dynamic, aggregation:Dynamic, destinations:Dynamic):Dynamic;
	static public function assert_replica_context(strategy:Dynamic):Dynamic;
	static public function assign_add_on_device(device:Dynamic, variable:Dynamic, tensor:Dynamic):Dynamic;
	static public function assign_on_device(device:Dynamic, variable:Dynamic, tensor:Dynamic):Dynamic;
	/**
		Update the variable on each replica with the given assign_func and value.
	**/
	static public function assign_on_each_device(_var:Dynamic, assign_func:Dynamic, value:Dynamic, read_value:Dynamic):Dynamic;
	static public function assign_sub_on_device(device:Dynamic, variable:Dynamic, tensor:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Returns the current replica ID as an integer, or `None`.
	**/
	static public function get_current_replica_id_as_int():Dynamic;
	/**
		Return restore ops for ON_READ variables.
	**/
	static public function get_on_read_restore_ops(_var:Dynamic, tensor:Dynamic, aggregation:Dynamic):Dynamic;
	/**
		Return saveables for ON_READ variable.
	**/
	static public function get_on_read_saveable(_var:Dynamic, primary_var:Dynamic, name:Dynamic):Dynamic;
	/**
		Return restore ops for AUTO and ON_WRITE variables.
	**/
	static public function get_on_write_restore_ops(_var:Dynamic, tensor:Dynamic):Dynamic;
	/**
		Return saveable spec for AUTO and ON_WRITE variables.
	**/
	static public function get_on_write_saveable(_var:Dynamic, primary_var:Dynamic, name:Dynamic):Dynamic;
	static public function in_replica_update_context():Dynamic;
	/**
		Returns whether we're saving a non-distributed version of the model.
		
		It returns True iff we are in saving context and are saving a non-distributed
		version of the model. That is, SaveOptions.experimental_variable_policy is
		NONE.
		
		Returns:
		  A boolean.
	**/
	static public function is_saving_non_distributed():Dynamic;
	/**
		Marks the function as unsaveable if not inside save context.
	**/
	static public function mark_as_unsaveable():Dynamic;
	static public function on_read_assign_add_cross_replica(_var:Dynamic, value:Dynamic, ?read_value:Dynamic):Dynamic;
	/**
		Return the value of the variable in cross replica context.
	**/
	static public function on_read_assign_cross_replica(_var:Dynamic, value:Dynamic, ?read_value:Dynamic):Dynamic;
	static public function on_read_assign_sub_cross_replica(_var:Dynamic, value:Dynamic, ?read_value:Dynamic):Dynamic;
	static public function on_write_assign(_var:Dynamic, value:Dynamic, ?use_locking:Dynamic, ?name:Dynamic, ?read_value:Dynamic):Dynamic;
	static public function on_write_assign_add(_var:Dynamic, value:Dynamic, ?use_locking:Dynamic, ?name:Dynamic, ?read_value:Dynamic):Dynamic;
	static public function on_write_assign_sub(_var:Dynamic, value:Dynamic, ?use_locking:Dynamic, ?name:Dynamic, ?read_value:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public function scatter_add(_var:Dynamic, sparse_delta:Dynamic, ?use_locking:Dynamic, ?name:Dynamic):Dynamic;
	static public function scatter_div(_var:Dynamic, sparse_delta:Dynamic, ?use_locking:Dynamic, ?name:Dynamic):Dynamic;
	static public var scatter_error_msg : Dynamic;
	static public function scatter_max(_var:Dynamic, sparse_delta:Dynamic, ?use_locking:Dynamic, ?name:Dynamic):Dynamic;
	static public function scatter_min(_var:Dynamic, sparse_delta:Dynamic, ?use_locking:Dynamic, ?name:Dynamic):Dynamic;
	static public function scatter_mul(_var:Dynamic, sparse_delta:Dynamic, ?use_locking:Dynamic, ?name:Dynamic):Dynamic;
	static public function scatter_sub(_var:Dynamic, sparse_delta:Dynamic, ?use_locking:Dynamic, ?name:Dynamic):Dynamic;
	static public function scatter_update(_var:Dynamic, sparse_delta:Dynamic, ?use_locking:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Update a SavedObject proto for the caller.
		
		If a DistributedVariable object supports this method, it will be called when
		saving with a pre-built `SavedObject` proto representing the object, plus an
		instance of `SaveOptions`. This method is then free to modify that proto
		instance.
		
		`DistributedVariable` with `AUTO` or `ON_WRITE` synchronization optionally
		 write out information about their components to the
		 `experimental_distributed_variable_components` field of a
		 `SavedVariable` (depending on the `SaveOptions` variable policy).
		
		Args:
		  var: The DistributedVariable object.
		  proto: A pre-built `SavedObject` proto for this object. It is assumed this
		    will be a `SavedVariable` instance.
		  options: A `SaveOptions` instance.
	**/
	static public function write_object_proto(_var:Dynamic, proto:Dynamic, options:Dynamic):Dynamic;
}