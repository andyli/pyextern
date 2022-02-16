/* This file is generated, do not edit! */
package tensorflow.python.distribute.distribute_utils;
@:pythonImport("tensorflow.python.distribute.distribute_utils") extern class Distribute_utils_Module {
	static public var TPU_VARIABLE_CLASS_MAPPING : Dynamic;
	static public var TPU_VARIABLE_POLICY_MAPPING : Dynamic;
	static public var VARIABLE_CLASS_MAPPING : Dynamic;
	static public var VARIABLE_POLICY_MAPPING : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _validate_aggregation(kwargs:Dynamic):Dynamic;
	static public function _validate_colocate_extended(v:Dynamic, extended:Dynamic):Dynamic;
	/**
		Validate that given synchronization value is valid.
	**/
	static public function _validate_synchronization(kwargs:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Raises if the structured is not composed of mirrored or regular values.
	**/
	static public function assert_mirrored(structured:Dynamic):Dynamic;
	/**
		Scope for caching variable reads for AggregatingVariable.
		
		The variable reads for AggregatingVariable inside this scope are cached. i.e.
		the first read of variable reads the value from possibly remote handle, but
		subsequent reads are returned using local cached value.
		
		For example:
		strategy = ParameterServerStrategy...
		with strategy.scope():
		  # Variable v is of AggregatingVariable type with actual variable residing
		  # on PS.
		  v = tf.Variable(1.0)
		
		with distribute_utils.cache_variable_reads():
		  v.read_value()  # Reads value 1.0
		  v.assign(constant_op.constant(5.0))  # v changes to 5.0
		  t1 = v.read_value()
		  t2 = v.read_value()  # Both t1 & t2 return cached value 1.0 from local CPU.
		
		Notes about cache_variable_reads scope:
		1. Nesting of scope cache_variable_reads() is not supported
		2. And when caching scope is enabled, the thread enabling the cache and
		  mirrored_run._MirroredReplicaThread threads spawned from it will have
		  caching enabled.
		
		Yields:
		  A context for caching variables.
	**/
	static public function cache_variable_reads():Dynamic;
	static public var caching_scope_local : Dynamic;
	/**
		Create distributed variables with given synchronization and aggregation.
	**/
	static public function create_mirrored_variable(strategy:Dynamic, real_mirrored_creator:Dynamic, class_mapping:Dynamic, policy_mapping:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var division : Dynamic;
	/**
		Determine if an object is a DistributedTable.
	**/
	static public function is_distributed_table(v:Dynamic):Dynamic;
	/**
		Determine if a variable is ds variable or TPU mirrored variable.
	**/
	static public function is_distributed_variable(v:Dynamic):Dynamic;
	static public function is_mirrored(val:Dynamic):Dynamic;
	static public function is_sync_on_read(val:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Makes a nest per-replica into a nest of PerReplica/Mirrored values.
		
		Args:
		  values: Values to regroup
		  wrap_class: Class that `values` be wrapped in.
		  always_wrap: Always wrap the `values` in `wrap_class` even if the values
		      are the same except for DistributeVariable.
		Returns:
		  Wrapped `values`.
	**/
	static public function regroup(values:Dynamic, ?wrap_class:Dynamic, ?always_wrap:Dynamic):Dynamic;
	/**
		Specialize a nest of regular & per-replica values for one replica.
	**/
	static public function select_replica(replica_id:Dynamic, structured:Dynamic):Dynamic;
	/**
		Specialize a nest of regular & mirrored values for one replica.
	**/
	static public function select_replica_mirrored(replica_id:Dynamic, structured:Dynamic):Dynamic;
	/**
		Regroup for an update, with dependencies to ensure all updates execute.
	**/
	static public function update_regroup(extended:Dynamic, updates:Dynamic, group:Dynamic):Dynamic;
	static public function validate_colocate(v:Dynamic, extended:Dynamic):Dynamic;
	static public function validate_colocate_distributed_variable(v:Dynamic, extended:Dynamic):Dynamic;
	/**
		Returns the container that this per-replica `value` belongs to.
		
		Args:
		  val: A value returned by `call_for_each_replica()` or a variable created in
		    `scope()`.
		
		Returns:
		  A container that `value` belongs to.
		  If value does not belong to any container (including the case of
		  container having been destroyed), returns the value itself.
	**/
	static public function value_container(val:Dynamic):Dynamic;
}