/* This file is generated, do not edit! */
package tensorflow.python.training.queue_runner;
@:pythonImport("tensorflow.python.training.queue_runner") extern class Queue_runner_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Adds a `QueueRunner` to a collection in the graph. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		To construct input pipelines, use the `tf.data` module.
		
		When building a complex model that uses many queues it is often difficult to
		gather all the queue runners that need to be run.  This convenience function
		allows you to add a queue runner to a well known collection in the graph.
		
		The companion method `start_queue_runners()` can be used to start threads for
		all the collected queue runners.
		
		@compatibility(TF2)
		QueueRunners are not compatible with eager execution. Instead, please
		use [tf.data](https://www.tensorflow.org/guide/data) to get data into your
		model.
		@end_compatibility
		
		Args:
		  qr: A `QueueRunner`.
		  collection: A `GraphKey` specifying the graph collection to add
		    the queue runner to.  Defaults to `GraphKeys.QUEUE_RUNNERS`.
	**/
	static public function add_queue_runner(qr:Dynamic, ?collection:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	/**
		Starts all queue runners collected in the graph. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		To construct input pipelines, use the `tf.data` module.
		
		This is a companion method to `add_queue_runner()`.  It just starts
		threads for all queue runners collected in the graph.  It returns
		the list of all threads.
		
		@compatibility(TF2)
		QueueRunners are not compatible with eager execution. Instead, please
		use [tf.data](https://www.tensorflow.org/guide/data) to get data into your
		model.
		@end_compatibility
		
		Args:
		  sess: `Session` used to run the queue ops.  Defaults to the
		    default session.
		  coord: Optional `Coordinator` for coordinating the started threads.
		  daemon: Whether the threads should be marked as `daemons`, meaning
		    they don't block program exit.
		  start: Set to `False` to only create the threads, not start them.
		  collection: A `GraphKey` specifying the graph collection to
		    get the queue runners from.  Defaults to `GraphKeys.QUEUE_RUNNERS`.
		
		Raises:
		  ValueError: if `sess` is None and there isn't any default session.
		  TypeError: if `sess` is not a `tf.compat.v1.Session` object.
		
		Returns:
		  A list of threads.
		
		Raises:
		  RuntimeError: If called with eager execution enabled.
		  ValueError: If called without a default `tf.compat.v1.Session` registered.
	**/
	static public function start_queue_runners(?sess:Dynamic, ?coord:Dynamic, ?daemon:Dynamic, ?start:Dynamic, ?collection:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}