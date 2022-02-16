/* This file is generated, do not edit! */
package tensorflow.python.training.quantize_training;
@:pythonImport("tensorflow.python.training.quantize_training") extern class Quantize_training_Module {
	/**
		DoQuantizeTrainingOnGraphDefHelper(arg0: object, arg1: int) -> object
	**/
	static public function DoQuantizeTrainingOnGraphDefHelper(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		A general quantization scheme is being developed in `tf.contrib.quantize`. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		GraphDef quantized training rewriter is deprecated in the long term.
		
		Consider using that instead, though since it is in the tf.contrib namespace,
		it is not subject to backward compatibility guarantees.
		
		Args:
		  input_graph: A `GraphDef`.
		  num_bits: The number of bits for quantize training.
		
		Returns:
		  The graph with quantize training done.
	**/
	static public function do_quantize_training_on_graphdef(input_graph:Dynamic, num_bits:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}