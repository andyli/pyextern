/* This file is generated, do not edit! */
package tensorflow.contrib.data.python.ops.threadpool;
@:pythonImport("tensorflow.contrib.data.python.ops.threadpool") extern class Threadpool_Module {
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
		Returns a new dataset that uses the given thread pool for its operations.
		
		Args:
		  dataset: A `tf.data.Dataset` object.
		  thread_pool: A `PrivateThreadPool` object.
		
		Returns:
		  A dataset containing the same values as `dataset`, but which uses
		  `thread_pool` to compute any of its parallel operations (such as
		  `tf.data.Dataset.map`).
	**/
	static public function override_threadpool(dataset:Dynamic, thread_pool:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}