/* This file is generated, do not edit! */
package tensorflow.contrib.input_pipeline.ops.gen_input_pipeline_ops;
@:pythonImport("tensorflow.contrib.input_pipeline.ops.gen_input_pipeline_ops") extern class Gen_input_pipeline_ops_Module {
	static public function _InitOpDefLibrary():Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _op_def_lib : Dynamic;
	/**
		Takes a list and returns the next based on a counter in a round-robin fashion.
		
		Returns the element in the list at the new position of the counter, so if you
		want to circle the list around start by setting the counter value = -1.
		
		Args:
		  list: A `Tensor` of type `string`. A list of strings
		  counter: A `Tensor` of type mutable `int64`.
		    A reference to an int64 variable
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `string`.
	**/
	static public function obtain_next(list:Dynamic, counter:Dynamic, ?name:Dynamic):Dynamic;
}