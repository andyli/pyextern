/* This file is generated, do not edit! */
package torch.fx.passes.operator_support;
@:pythonImport("torch.fx.passes.operator_support") extern class Operator_support_Module {
	static public var CALLABLE_NODE_OPS : Dynamic;
	static public function Dict(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function compatibility(is_backward_compatible:Dynamic):Dynamic;
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
}