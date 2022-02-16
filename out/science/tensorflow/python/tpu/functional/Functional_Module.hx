/* This file is generated, do not edit! */
package tensorflow.python.tpu.functional;
@:pythonImport("tensorflow.python.tpu.functional") extern class Functional_Module {
	/**
		Calls a function placed on a specified TPU device.
		
		Args:
		  args: A list of `Tensor` objects. The arguments to the function.
		  device_ordinal: A `Tensor` of type `int32`.
		    The TPU device ordinal to run the function on.
		  Tout: A list of `tf.DTypes`. The types of the outputs of the function.
		  f: A function decorated with @Defun. The function to call.
		  autotuner_thresh: An optional `int`. Defaults to `0`.
		  name: A name for the operation (optional).
		
		Returns:
		  A list of `Tensor` objects of type `Tout`.
	**/
	static public function TPUPartitionedCall(args:Dynamic, device_ordinal:Dynamic, Tout:Dynamic, f:Dynamic, ?autotuner_thresh:Dynamic, ?name:Dynamic):Dynamic;
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
	static public var print_function : Dynamic;
}