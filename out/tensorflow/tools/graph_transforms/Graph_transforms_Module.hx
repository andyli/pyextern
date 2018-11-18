/* This file is generated, do not edit! */
package tensorflow.tools.graph_transforms;
@:pythonImport("tensorflow.tools.graph_transforms") extern class Graph_transforms_Module {
	/**
		Python wrapper for the Graph Transform Tool.
		
		Gives access to all graph transforms available through the command line tool.
		See documentation at https://github.com/tensorflow/tensorflow/blob/master/tensorflow/tools/graph_transforms/README.md
		for full details of the options available.
		
		Args:
		  input_graph_def: GraphDef object containing a model to be transformed.
		  inputs: List of node names for the model inputs.
		  outputs: List of node names for the model outputs.
		  transforms: List of strings containing transform names and parameters.
		
		Returns:
		  New GraphDef with transforms applied.
	**/
	static public function TransformGraph(input_graph_def:Dynamic, inputs:Dynamic, outputs:Dynamic, transforms:Dynamic):Dynamic;
	static public function TransformGraphWithStringInputs(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}