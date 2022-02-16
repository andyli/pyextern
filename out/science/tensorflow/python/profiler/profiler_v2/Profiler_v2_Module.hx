/* This file is generated, do not edit! */
package tensorflow.python.profiler.profiler_v2;
@:pythonImport("tensorflow.python.profiler.profiler_v2") extern class Profiler_v2_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _profiler : Dynamic;
	static public var _profiler_lock : Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	/**
		Start profiling TensorFlow performance.
		
		Args:
		  logdir: Profiling results log directory.
		  options: `ProfilerOptions` namedtuple to specify miscellaneous profiler
		    options. See example usage below.
		
		Raises:
		  AlreadyExistsError: If a profiling session is already running.
		
		Example usage:
		```python
		options = tf.profiler.experimental.ProfilerOptions(host_tracer_level = 3,
		                                                   python_tracer_level = 1,
		                                                   device_tracer_level = 1)
		tf.profiler.experimental.start('logdir_path', options = options)
		# Training code here
		tf.profiler.experimental.stop()
		```
		
		To view the profiling results, launch TensorBoard and point it to `logdir`.
		Open your browser and go to `localhost:6006/#profile` to view profiling
		results.
	**/
	static public function start(logdir:Dynamic, ?options:Dynamic):Dynamic;
	/**
		Start a profiler grpc server that listens to given port.
		
		The profiler server will exit when the process finishes. The service is
		defined in tensorflow/core/profiler/profiler_service.proto.
		
		Args:
		  port: port profiler server listens to.
		Example usage: ```python tf.profiler.experimental.server.start(6009) # do
		  your training here.
	**/
	static public function start_server(port:Dynamic):Dynamic;
	/**
		Stops the current profiling session.
		
		The profiler session will be stopped and profile results can be saved.
		
		Args:
		  save: An optional variable to save the results to TensorBoard. Default True.
		
		Raises:
		  UnavailableError: If there is no active profiling session.
	**/
	static public function stop(?save:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Warm-up the profiler session.
		
		The profiler session will set up profiling context, including loading CUPTI
		library for GPU profiling. This is used for improving the accuracy of
		the profiling results.
	**/
	static public function warmup():Dynamic;
}