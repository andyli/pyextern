/* This file is generated, do not edit! */
package torch.fx.passes.splitter_base;
@:pythonImport("torch.fx.passes.splitter_base") extern class Splitter_base_Module {
	static public var CALLABLE_NODE_OPS : Dynamic;
	static public function Dict(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function List(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function NodeList(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function NodeSet(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Optional(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public function Tensors(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Tuple type; Tuple[X, Y] is the cross-product type of X and Y.
		
		Example: Tuple[T1, T2] is a tuple of two elements corresponding
		to type variables T1 and T2.  Tuple[int, float, str] is a tuple
		of an int, a float and a string.
		
		To specify a variable-length tuple of homogeneous type, use Tuple[T, ...].
	**/
	static public function Tuple(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var _LOGGER : Dynamic;
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
		Given a node with node.dtype and node.shape, return its total size and its output size.
		    total_size = weights + bias + output_size
		
		.. warning::
		    This API is experimental and is *NOT* backward-compatible.
	**/
	static public function get_size_of_node(fx_module:Dynamic, node:Dynamic):Dynamic;
	/**
		Checks if the node output produces a Tensor or not.
		
		    NOTE: This requires to run `ShapeProp` on the containing fx graph before
		    calling this function. This is because it works by checking the `type`
		    metadata on the node. This metadata is produced by the `ShapeProp`.
		
		.. warning::
		    This API is experimental and is *NOT* backward-compatible.
	**/
	static public function is_node_output_tensor(node:Dynamic):Dynamic;
	/**
		Apply fn to each Node appearing arg. arg may be a list, tuple, slice, or dict with string keys.
		
		.. note::
		    Backwards-compatibility for this API is guaranteed.
	**/
	static public function map_arg(a:Dynamic, fn:Dynamic):Dynamic;
	/**
		Splits a GraphModule using tags on its graph nodes. We honor the order of
		tags. For example, we have tags = ["a", "b", "c"], the function will create
		the initial submodules in the order of "a_0", "b_1", "c_2".
		
		To set a tag:
		gm.graph.nodes[idx].tag = "mytag"
		
		This will result in all nodes with the same tag being extracted and placed in their
		own submodule. For placeholder, output and get_attr node, the tag is ignored. placeholder
		and output nodes are created when needed while get_attr nodes get copied to submodules
		where they are used.
		
		Given the following module def:
		
		class SimpleModule(torch.nn.Module):
		    def __init__(self):
		        super().__init__()
		        self.linear1 = torch.nn.Linear(...)
		        self.linear2 = torch.nn.Linear(...)
		        self.linear3 = torch.nn.Linear(...)
		
		    def forward(self, in1, in2):
		        r1 = self.linear1(in1)
		        r2 = self.linear2(in2)
		        r3 = torch.cat([r1, r2])
		        return self.linear3(r3)
		
		Marking the node corresponding to in1 with the tag sc.REQUEST_ONLY.lower() results in the following split:
		
		ro_0:
		def forward(self, in1):
		    self = self.root
		    linear1 = self.linear1(in1)
		    return linear1
		
		main_1:
		def forward(self, in2, linear1):
		    self = self.root
		    linear2 = self.linear2(in2)
		    cat_1 = torch.cat([linear1, linear2])
		    linear3 = self.linear3(cat_1)
		    return linear3
		
		main_0:
		def forward(self, in1, in2):
		    self = self.root
		    ro_0 = self.ro_0(in1)
		    main_1 = self.main_1(in2, ro_0)
		    return main_1
		
		.. warning::
		    This API is experimental and is *NOT* backward-compatible.
	**/
	static public function split_by_tags(gm:Dynamic, tags:Dynamic):Dynamic;
}