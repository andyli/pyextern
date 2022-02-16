/* This file is generated, do not edit! */
package torch.fx.subgraph_rewriter;
@:pythonImport("torch.fx.subgraph_rewriter") extern class Subgraph_rewriter_Module {
	/**
		Callable type; Callable[[int], str] is a function of (int) -> str.
		
		The subscription syntax must always be used with exactly two
		values: the argument list and the return type.  The argument list
		must be a list of types or ellipsis; the return type must be a single type.
		
		There is no syntax to indicate optional or keyword arguments,
		such function types are rarely used as callback types.
	**/
	static public function Callable(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Dict(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function List(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Optional(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public function Set(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _replace_submodules(gm:Dynamic, replacement:Dynamic):Dynamic;
	static public function compatibility(is_backward_compatible:Dynamic):Dynamic;
	/**
		Matches all possible non-overlapping sets of operators and their
		data dependencies (``pattern``) in the Graph of a GraphModule
		(``gm``), then replaces each of these matched subgraphs with another
		subgraph (``replacement``).
		
		Args:
		    ``gm``: The GraphModule that wraps the Graph to operate on
		    ``pattern``: The subgraph to match in ``gm`` for replacement
		    ``replacement``: The subgraph to replace ``pattern`` with
		
		Returns:
		    List[Match]: A list of ``Match`` objects representing the places
		    in the original graph that ``pattern`` was matched to. The list
		    is empty if there are no matches. ``Match`` is defined as:
		
		    .. code-block:: python
		
		        class Match(NamedTuple):
		            # Node from which the match was found
		            anchor: Node
		            # Maps nodes in the pattern subgraph to nodes in the larger graph
		            nodes_map: Dict[Node, Node]
		
		Examples:
		
		.. code-block:: python
		
		    import torch
		    from torch.fx import symbolic_trace, subgraph_rewriter
		
		    class M(torch.nn.Module):
		        def __init__(self):
		            super().__init__()
		
		        def forward(self, x, w1, w2):
		            m1 = torch.cat([w1, w2]).sum()
		            m2 = torch.cat([w1, w2]).sum()
		            return x + torch.max(m1) + torch.max(m2)
		
		    def pattern(w1, w2):
		        return torch.cat([w1, w2]).sum()
		
		    def replacement(w1, w2):
		        return torch.stack([w1, w2])
		
		    traced_module = symbolic_trace(M())
		
		    subgraph_rewriter.replace_pattern(traced_module, pattern, replacement)
		
		The above code will first match ``pattern`` in the ``forward``
		method of ``traced_module``. Pattern-matching is done based on
		use-def relationships, not node names. For example, if you had
		``p = torch.cat([a, b])`` in ``pattern``, you could match
		``m = torch.cat([a, b])`` in the original ``forward`` function,
		despite the variable names being different (``p`` vs ``m``).
		
		The ``return`` statement in ``pattern`` is matched based on its
		value only; it may or may not match to the ``return`` statement in
		the larger graph. In other words, the pattern doesn't have to extend
		to the end of the larger graph.
		
		When the pattern is matched, it will be removed from the larger
		function and replaced by ``replacement``. If there are multiple
		matches for ``pattern`` in the larger function, each non-overlapping
		match will be replaced. In the case of a match overlap, the first
		found match in the set of overlapping matches will be replaced.
		("First" here being defined as the first in a topological ordering
		of the Nodes' use-def relationships. In most cases, the first Node
		is the parameter that appears directly after ``self``, while the
		last Node is whatever the function returns.)
		
		One important thing to note is that the parameters of the
		``pattern`` Callable must be used in the Callable itself,
		and the parameters of the ``replacement`` Callable must match
		the pattern. The first rule is why, in the above code block, the
		``forward`` function has parameters ``x, w1, w2``, but the
		``pattern`` function only has parameters ``w1, w2``. ``pattern``
		doesn't use ``x``, so it shouldn't specify ``x`` as a parameter.
		As an example of the second rule, consider replacing
		
		.. code-block:: python
		
		    def pattern(x, y):
		        return torch.neg(x) + torch.relu(y)
		
		with
		
		.. code-block:: python
		
		    def replacement(x, y):
		        return torch.relu(x)
		
		In this case, ``replacement`` needs the same number of parameters
		as ``pattern`` (both ``x`` and ``y``), even though the parameter
		``y`` isn't used in ``replacement``.
		
		After calling ``subgraph_rewriter.replace_pattern``, the generated
		Python code looks like this:
		
		.. code-block:: python
		
		    def forward(self, x, w1, w2):
		        stack_1 = torch.stack([w1, w2])
		        sum_1 = stack_1.sum()
		        stack_2 = torch.stack([w1, w2])
		        sum_2 = stack_2.sum()
		        max_1 = torch.max(sum_1)
		        add_1 = x + max_1
		        max_2 = torch.max(sum_2)
		        add_2 = add_1 + max_2
		        return add_2
		
		.. note::
		    Backwards-compatibility for this API is guaranteed.
	**/
	static public function replace_pattern(gm:Dynamic, pattern:Dynamic, replacement:Dynamic):Dynamic;
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