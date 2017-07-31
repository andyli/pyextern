/* This file is generated, do not edit! */
package tensorflow.contrib.input_pipeline;
@:pythonImport("tensorflow.contrib.input_pipeline") extern class Input_pipeline_Module {
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
		Basic wrapper for the ObtainNextOp.
		
		Args:
		  string_list_tensor: A tensor that is a list of strings
		  counter: an int64 ref tensor to keep track of which element is returned.
		
		Returns:
		  An op that produces the element at counter + 1 in the list, round
		  robin style.
	**/
	static public function obtain_next(string_list_tensor:Dynamic, counter:Dynamic):Dynamic;
}