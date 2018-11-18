/* This file is generated, do not edit! */
package tensorflow.python.framework.function_def_to_graph;
@:pythonImport("tensorflow.python.framework.function_def_to_graph") extern class Function_def_to_graph_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _get_num_args(arg_def:Dynamic, node_def:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Converts a FunctionDef to a function.FuncGraph (sub-class Graph).
		
		The returned FuncGraph's `name`, `inputs` and `outputs` fields will be set.
		The input tensors are represented as placeholders.
		
		Note: `FuncGraph.inputs` and `FuncGraph.captures` are not set and may be set
		by the caller.
		
		Args:
		  fdef: FunctionDef.
		  input_shapes: Optional. A list of TensorShape objects of the shapes of
		    function inputs. If specified, its length must match length of
		    `fdef.signature.input_arg`. If a shape is None, the corresponding input
		    placeholder will have unknown shape.
		
		Returns:
		  A FuncGraph.
	**/
	static public function function_def_to_graph(fdef:Dynamic, ?input_shapes:Dynamic):Dynamic;
	/**
		Convert a FunctionDef to a GraphDef.
		
		Steps:
		1. Creates placeholder nodes corresponding to inputs in
		   `FunctionDef.signature.input_arg`.
		2. Adds NodeDefs in `FunctionDef.node_def` to `GraphDef.node`.
		3. Renames inputs of all nodes to use the convention of GraphDef instead of
		   FunctionDef. See comment on `FunctionDef.node_def` on how the tensor naming
		   in FunctionDefs is different from GraphDefs.
		
		Args:
		  fdef: FunctionDef.
		  input_shapes: Optional. A list of TensorShape objects of the shapes of
		    function inputs. If specified, its length must match length of
		    `fdef.signature.input_arg`. If a shape is None, the corresponding input
		    placeholder will have unknown shape.
		
		Returns:
		  A tuple of (GraphDef, dict<string, string>). The dict contains a mapping
		  from nested tensor names (in FunctionDef) to flattened names (in GraphDef).
		
		Raises:
		  ValueError: If the length of input_shapes does not match the number of
		    input_args or if the FunctionDef is invalid.
	**/
	static public function function_def_to_graph_def(fdef:Dynamic, ?input_shapes:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}