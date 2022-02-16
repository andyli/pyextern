/* This file is generated, do not edit! */
package tensorflow.python.tpu.tpu_name_util;
@:pythonImport("tensorflow.python.tpu.tpu_name_util") extern class Tpu_name_util_Module {
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
		Returns the device name for a core in a replicated TPU computation.
		
		Args:
		  num: the virtual core number within each replica to which operators should
		  be assigned.
		Returns:
		  A device name, suitable for passing to `tf.device()`.
	**/
	static public function core(num:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}