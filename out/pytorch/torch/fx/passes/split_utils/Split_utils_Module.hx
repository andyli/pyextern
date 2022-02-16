/* This file is generated, do not edit! */
package torch.fx.passes.split_utils;
@:pythonImport("torch.fx.passes.split_utils") extern class Split_utils_Module {
	static public function Dict(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function List(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function NodeList(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function NodeSet(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Optional(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
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
		Return an object to identify dataclass fields.
		
		default is the default value of the field.  default_factory is a
		0-argument function called to initialize a field's value.  If init
		is True, the field will be a parameter to the class's __init__()
		function.  If repr is True, the field will be included in the
		object's repr().  If hash is True, the field will be included in
		the object's hash().  If compare is True, the field will be used
		in comparison functions.  metadata, if specified, must be a
		mapping which is stored but not otherwise examined by dataclass.
		
		It is an error to specify both default and default_factory.
	**/
	static public function field(?_default:Dynamic, ?default_factory:Dynamic, ?init:Dynamic, ?repr:Dynamic, ?hash:Dynamic, ?compare:Dynamic, ?metadata:Dynamic):Dynamic;
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