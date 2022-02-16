/* This file is generated, do not edit! */
package torch.fx.experimental.merge_matmul;
@:pythonImport("torch.fx.experimental.merge_matmul") extern class Merge_matmul_Module {
	static public function Dict(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function List(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Check if all of the given nodes are pairwise-data independent.
		
		Arguments:
		    nodes: The nodes to check for data dependencies.
		
		Returns:
		    True if any pair in nodes has a data dependency.
	**/
	static public function are_nodes_independent(nodes:Dynamic):Dynamic;
	/**
		A free function primarily for use in the merge_matmul graph transformation below
		that returns the first dimension of a Tensor. This is necessary because torch.Tensor.shape
		is an attribute (and cannot be the target of a call_function node) and also helps save
		a getitem op in the graph.
		
		Arguments:
		    t: The tensor to get the first dimension of.
		
		Returns:
		    The first dimension of t.
	**/
	static public function get_first_dim(t:Dynamic):Dynamic;
	/**
		Replace the graph of the given GraphModule with one that contains the same nodes as the
		original, but in topologically sorted order.
		
		This is used by the merge_matmul transformation below, which disturbs the topologically sorted
		order of its input GraphModule, so that this order is restored before further transformation.
		
		Arguments:
		    gm: The graph module to topologically sort. It is modified in-place.
	**/
	static public function legalize_graph(gm:Dynamic):Dynamic;
	/**
		Determine if one node depends on another in a torch.fx.Graph.
		
		Arguments:
		    a: The node that may have a dependency on b.
		    b: The node that a may have a dependency on.
		    search_depth: In the case of an indirect dependency, this function
		                    searches upto this many nodes away in search of a
		                    data dependency. If none is found, the function
		                    makes the conservative assumption that there is a
		                    dependency.
		
		Returns:
		    True if a may depend on b, False if it definitely does not.
	**/
	static public function may_depend_on(a:Dynamic, b:Dynamic, ?search_depth:Dynamic):Dynamic;
	/**
		A graph transformation that merges matrix multiplication operations that share the same right-hand
		side operand into one large matrix multiplication.
		           ____      _________        _________
		  ----    |    |    |         |     M|  A * C  |
		M| A  |  T| B  | * K|    C    | =    |---------|
		  ---- ,  |    |    |         |     T|  B * C  |
		   K       ----      ---------        ---------
		            K            R                R
	**/
	static public function merge_matmul(in_mod:Dynamic):Dynamic;
	/**
		Symbolic tracing API
		
		Given an ``nn.Module`` or function instance ``root``, this function will return a ``GraphModule``
		constructed by recording operations seen while tracing through ``root``.
		
		``concrete_args`` allows you to partially specialize your function, whether it's to remove control flow or data structures.
		
		For example::
		
		    def f(a, b):
		        if b == True:
		            return a
		        else:
		            return a*2
		
		FX can typically not trace through this due to the presence of control
		flow. However, we can use `concrete_args` to specialize on the value of
		`b` to trace through this.
		
		    f = fx.symbolic_trace(f, concrete_args={'b': False})
		    assert f(3, False)  == 6
		
		Note that although you can still pass in different values of `b`, they will be ignored.
		
		We can also use `concrete_args` to eliminate data-structure handling from
		our function. This will use pytrees to flatten your input. To avoid
		overspecializing, pass in `fx.PH` for values that shouldn't be
		specialized. For example::
		
		    def f(x):
		        out = 0
		        for v in x.values():
		            out += v
		        return out
		    f = fx.symbolic_trace(f, concrete_args={'x': {'a': fx.PH, 'b': fx.PH, 'c': fx.PH}})
		    assert f({'a': 1, 'b': 2, 'c': 4}) == 7
		
		
		Args:
		    root (Union[torch.nn.Module, Callable]): Module or function to be traced and converted
		        into a Graph representation.
		    concrete_args (Optional[Dict[str, any]]): Inputs to be partially specialized
		    enable_cpatching: Enables C-level patching of functions (captures things like `torch.randn`)
		
		Returns:
		    GraphModule: a Module created from the recorded operations from ``root``.
		
		.. note::
		    Backwards-compatibility for this API is guaranteed.
	**/
	static public function symbolic_trace(root:Dynamic, ?concrete_args:Dynamic, ?enable_cpatching:Dynamic):Dynamic;
}