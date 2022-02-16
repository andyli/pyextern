/* This file is generated, do not edit! */
package tensorflow.python.training.tracking.tracking;
@:pythonImport("tensorflow.python.training.tracking.tracking") extern class Tracking_Module {
	static public var _RESOURCE_TRACKER_STACK : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		To avoid capturing loop variables.
	**/
	static public function _make_getter(captured_getter:Dynamic, captured_previous:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	/**
		A context to manage resource trackers.
		
		Use this in order to collect up all resources created within a block of code.
		Example usage:
		
		```python
		resource_tracker = ResourceTracker()
		with resource_tracker_scope(resource_tracker):
		  resource = TrackableResource()
		
		assert resource_tracker.resources == [resource]
		
		Args:
		  resource_tracker: The passed in ResourceTracker object
		
		Yields:
		  A scope in which the resource_tracker is active.
	**/
	static public function resource_tracker_scope(resource_tracker:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}