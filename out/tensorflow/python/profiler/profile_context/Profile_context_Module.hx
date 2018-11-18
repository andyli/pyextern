/* This file is generated, do not edit! */
package tensorflow.python.profiler.profile_context;
@:pythonImport("tensorflow.python.profiler.profile_context") extern class Profile_context_Module {
	static public var MAX_TRACED_STEPS : Dynamic;
	static public var WARMUP_STEPS : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Overwrites the session.__init__.
	**/
	static public function _profiled_init(self:Dynamic, ?target:Dynamic, ?graph:Dynamic, ?config:Dynamic):Dynamic;
	/**
		Overwrites the session.run().
	**/
	static public function _profiled_run(self:Dynamic, fetches:Dynamic, ?feed_dict:Dynamic, ?options:Dynamic, ?run_metadata:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}