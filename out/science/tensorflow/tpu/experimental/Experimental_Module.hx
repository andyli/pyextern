/* This file is generated, do not edit! */
package tensorflow.tpu.experimental;
@:pythonImport("tensorflow.tpu.experimental") extern class Experimental_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
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
}