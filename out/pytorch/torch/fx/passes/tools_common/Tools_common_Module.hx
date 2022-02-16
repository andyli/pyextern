/* This file is generated, do not edit! */
package torch.fx.passes.tools_common;
@:pythonImport("torch.fx.passes.tools_common") extern class Tools_common_Module {
	static public function Any(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var CALLABLE_NODE_OPS : Dynamic;
	static public function Dict(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function List(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Names(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function NodeList(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function NodeSet(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Set(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function TensorOrTensors(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Tensors(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Tuple type; Tuple[X, Y] is the cross-product type of X and Y.
		
		Example: Tuple[T1, T2] is a tuple of two elements corresponding
		to type variables T1 and T2.  Tuple[int, float, str] is a tuple
		of an int, a float and a string.
		
		To specify a variable-length tuple of homogeneous type, use Tuple[T, ...].
	**/
	static public function Tuple(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Union(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _get_qualified_name(func:Dynamic):Dynamic;
	static public function compatibility(is_backward_compatible:Dynamic):Dynamic;
	/**
		Returns the same class as was passed in, with dunder methods
		added based on the fields defined in the class.
		
		Examines PEP 526 __annotations__ to determine fields.
		
		If init is true, an __init__() method is added to the class. If
		repr is true, a __repr__() method is added. If order is true, rich
		comparison dunder methods are added. If unsafe_hash is true, a
		__hash__() method function is added. If frozen is true, fields may
		not be assigned to after instance creation.
	**/
	static public function dataclass(?cls:Dynamic, ?init:Dynamic, ?repr:Dynamic, ?eq:Dynamic, ?order:Dynamic, ?unsafe_hash:Dynamic, ?frozen:Dynamic):Dynamic;
	/**
		Given a `node` returns its target typename.
		
		For "call_method" node, return node.target which is the name of that method being called.
		This could potential lead to conflict but should be okay because normally it's on a tensor.
		
		For "call_function" node, return typename of node.target.
		
		For "call_module" node, return typename of the module that node.target point to.
		
		If seeing "_VariableFunctionsClass" in the target name string, it will be replaced by
		"torch". e.g. _VariableFunctionsClass.relu would become torch.relu.
		
		.. warning::
		    This API is experimental and is *NOT* backward-compatible.
	**/
	static public function get_node_target(submodules:Dynamic, node:Dynamic):Dynamic;
	/**
		Checks if the node output produces a Tensor or not.
		
		    NOTE: This requires to run `ShapeProp` on the containing fx graph before
		    calling this function. This is because it works by checking the `type`
		    metadata on the node. This metadata is produced by the `ShapeProp`.
		
		.. warning::
		    This API is experimental and is *NOT* backward-compatible.
	**/
	static public function is_node_output_tensor(node:Dynamic):Dynamic;
}