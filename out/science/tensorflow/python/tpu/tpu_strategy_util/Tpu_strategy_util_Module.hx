/* This file is generated, do not edit! */
package tensorflow.python.tpu.tpu_strategy_util;
@:pythonImport("tensorflow.python.tpu.tpu_strategy_util") extern class Tpu_strategy_util_Module {
	static public var _INITIALIZED_TPU_SYSTEMS : Dynamic;
	static public var _LOCAL_MASTERS : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Returns all currently initialized tpu systems.
		
		Returns:
		   A dictionary, with tpu name as the key and the tpu topology as the value.
	**/
	static public function get_initialized_tpu_systems():Dynamic;
	/**
		Initialize the TPU devices.
		
		Args:
		  cluster_resolver: A tf.distribute.cluster_resolver.TPUClusterResolver,
		      which provides information about the TPU cluster.
		Returns:
		  The tf.tpu.Topology object for the topology of the TPU cluster. If called
		  inside tf.function, it returns the serialized topology object instead.
		
		Raises:
		  RuntimeError: If running inside a tf.function.
		  NotFoundError: If no TPU devices found in eager mode.
	**/
	static public function initialize_tpu_system(?cluster_resolver:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Shuts down the TPU devices.
		
		This will clear all caches, even those that are maintained through sequential
		calls to tf.tpu.experimental.initialize_tpu_system, such as the compilation
		cache.
		
		Args:
		  cluster_resolver: A tf.distribute.cluster_resolver.TPUClusterResolver,
		      which provides information about the TPU cluster.
		
		Raises:
		  RuntimeError: If no TPU devices found for eager execution or if run in a
		      tf.function.
	**/
	static public function shutdown_tpu_system(?cluster_resolver:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}