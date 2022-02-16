/* This file is generated, do not edit! */
package tensorflow.python.tpu.topology;
@:pythonImport("tensorflow.python.tpu.topology") extern class Topology_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Returns the device name for the TPU `device` on `task` of `job`.
	**/
	static public function _tpu_device_name(job:Dynamic, task:Dynamic, device:Dynamic):Dynamic;
	/**
		Returns the device name for the CPU device on `task` of `job`.
	**/
	static public function _tpu_host_device_name(job:Dynamic, task:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}