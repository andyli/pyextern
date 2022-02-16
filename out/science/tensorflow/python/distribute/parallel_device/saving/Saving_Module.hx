/* This file is generated, do not edit! */
package tensorflow.python.distribute.parallel_device.saving;
@:pythonImport("tensorflow.python.distribute.parallel_device.saving") extern class Saving_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Wraps intercepted variables to add parallel saving.
	**/
	static public function _variable_creator(next_creator:Dynamic, parallel_device:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Context manager which saves parallel buffers independently.
		
		Creates a ParallelDevice-aware variable subclass which saves buffers for each
		device separately.
		
		Args:
		  parallel_device: A ParallelDevice object on which variables are placed.
		
		Yields:
		  Nothing.
	**/
	static public function independent_buffers(parallel_device:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}