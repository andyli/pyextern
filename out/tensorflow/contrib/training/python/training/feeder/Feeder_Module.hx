/* This file is generated, do not edit! */
package tensorflow.contrib.training.python.training.feeder;
@:pythonImport("tensorflow.contrib.training.python.training.feeder") extern class Feeder_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Returns a thread which stops `inner_coord` whenever `outer_coord` stops.
		
		The thread is also registered with `inner_coord`.
		
		Args:
		  inner_coord: The `Coordinator` to stop.
		  outer_coord: The `Coordinator` to watch for stopping.
		  start: Whether to start the thread before returning.
		  wait_time: The number of seconds for each `outer_coord.wait_for_stop` call.
		Returns:
		  A `Thread` which links the coordinators.
	**/
	static public function _link_coordinators(inner_coord:Dynamic, outer_coord:Dynamic, ?start:Dynamic, ?wait_time:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}