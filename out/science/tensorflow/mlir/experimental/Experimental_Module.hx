/* This file is generated, do not edit! */
package tensorflow.mlir.experimental;
@:pythonImport("tensorflow.mlir.experimental") extern class Experimental_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Import a ConcreteFunction and convert it to a textual MLIR module.
		
		This API is only intended for inspecting the internals of TensorFlow and the
		string returned is at the moment intended for debugging purposes.
		
		A [tf.function](https://www.tensorflow.org/api_docs/python/tf/function) can be
		imported and converted from TensorFlow to TensorFlow MLIR with this API by
		extracting its ConcreteFunction (eagerly-executing wrapper around a
		[tf.Graph](https://www.tensorflow.org/api_docs/python/tf/Graph)).
		
		For example:
		>>> @tf.function
		... def add(a, b):
		...   return a + b
		
		>>> concrete_function = add.get_concrete_function(
		...     tf.TensorSpec(None, tf.dtypes.float32),
		...     tf.TensorSpec(None, tf.dtypes.float32))
		>>> tf.mlir.experimental.convert_function(concrete_function)
		'...module attributes {...} {...}...'
		
		Args:
		  concrete_function: An object of type ConcreteFunction.
		  pass_pipeline: A textual description of an MLIR Pass Pipeline to run on the
		    module, see MLIR documentation for the
		    [textual pass pipeline syntax](https://mlir.llvm.org/docs/PassManagement/#textual-pass-pipeline-specification).
		  show_debug_info: Whether to include locations in the emitted textual form.
		
		Returns:
		  A textual representation of the MLIR module corresponding to the
		  ConcreteFunction.
		
		Raises:
		  InvalidArgumentError: if concrete_function is invalid or cannot be converted
		    to MLIR.
	**/
	static public function convert_function(concrete_function:Dynamic, ?pass_pipeline:Dynamic, ?show_debug_info:Dynamic):Dynamic;
	/**
		Import a GraphDef and convert it to a textual MLIR module.
		
		This API is only intended for inspecting the internals of TensorFlow and the
		string returned is at the moment intended for debugging purposes.
		
		Args:
		  graph_def: An object of type graph_pb2.GraphDef or a textual proto
		    representation of a valid GraphDef.
		  pass_pipeline: A textual description of an MLIR Pass Pipeline to run on the
		    module, see MLIR documentation for the
		    [textual pass pipeline syntax](https://mlir.llvm.org/docs/PassManagement/#textual-pass-pipeline-specification).
		  show_debug_info: Whether to include locations in the emitted textual form.
		
		Returns:
		  A textual representation of the MLIR module corresponding to the graphdef.
		
		Raises:
		  InvalidArgumentError: if graph_def is invalid or cannot be converted to
		    MLIR.
	**/
	static public function convert_graph_def(graph_def:Dynamic, ?pass_pipeline:Dynamic, ?show_debug_info:Dynamic):Dynamic;
}