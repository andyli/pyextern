/* This file is generated, do not edit! */
package torch.fx.graph;
@:pythonImport("torch.fx.graph", "Graph") extern class Graph {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Explicitly implement __deepcopy__ to prevent excessive recursion depth
		from the default implementation. This uses graph_copy to copy the nodes
		in an iterative way, rather than recursive. It also populates the
		memoization table to prevent unnecessary copies (e.g. references to
		nodes or other parts of the Graph from a custom GraphModule implementation.
	**/
	public function __deepcopy__(?memo:Dynamic):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		Default dir() implementation.
	**/
	public function __dir__():Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		Default object formatter.
	**/
	public function __format__(format_spec:Dynamic):Dynamic;
	/**
		Return self>=value.
	**/
	public function __ge__(value:Dynamic):Dynamic;
	/**
		Return getattr(self, name).
	**/
	public function __getattribute__(name:Dynamic):Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
	/**
		Construct an empty Graph.
		
		.. note::
		    Backwards-compatibility for this API is guaranteed.
	**/
	@:native("__init__")
	public function ___init__(?owning_module:Dynamic, ?tracer_cls:Dynamic):Dynamic;
	/**
		Construct an empty Graph.
		
		.. note::
		    Backwards-compatibility for this API is guaranteed.
	**/
	public function new(?owning_module:Dynamic, ?tracer_cls:Dynamic):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
	/**
		Return self<value.
	**/
	public function __lt__(value:Dynamic):Dynamic;
	static public var __module__ : Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce__():Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce_ex__(protocol:Dynamic):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		Size of object in memory, in bytes.
	**/
	public function __sizeof__():Dynamic;
	/**
		Return a human-readable (not machine-readable) string representation
		of this Graph
	**/
	public function __str__():Dynamic;
	/**
		Abstract classes can override this to customize issubclass().
		
		This is invoked early on by abc.ABCMeta.__subclasscheck__().
		It should return True, False or NotImplemented.  If it returns
		NotImplemented, the normal algorithm is used.  Otherwise, it
		overrides the normal algorithm (and the outcome is cached).
	**/
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	public function _python_code(root_module:Dynamic, namespace:Dynamic):Dynamic;
	public function _target_to_str(target:Dynamic):Dynamic;
	/**
		Insert a ``call_function`` ``Node`` into the ``Graph``. A ``call_function`` node
		represents a call to a Python callable, specified by ``the_function``. ``the_function``
		can be
		
		Args:
		
		    the_function (Callable[..., Any]): The function to be called. Can be any PyTorch
		        operator, Python function, or member of the ``builtins`` or ``operator``
		        namespaces.
		
		    args (Optional[Tuple[Argument, ...]]): The positional arguments to be passed
		        to the called function.
		
		    kwargs (Optional[Dict[str, Argument]]): The keyword arguments to be passed
		        to the called function
		
		    type_expr (Optional[Any]): an optional type annotation representing the
		        Python type the output of this node will have.
		
		Returns
		
		    The newly created and inserted ``call_function`` node.
		
		.. note::
		    The same insertion point and type expression rules apply for this method
		    as :meth:`Graph.create_node`.
		
		.. note::
		    Backwards-compatibility for this API is guaranteed.
	**/
	public function call_function(the_function:Dynamic, ?args:Dynamic, ?kwargs:Dynamic, ?type_expr:Dynamic):Dynamic;
	/**
		Insert a ``call_method`` ``Node`` into the ``Graph``. A ``call_method`` node
		represents a call to a given method on the 0th element of ``args``.
		
		Args:
		
		    method_name (str): The name of the method to apply to the self argument.
		        For example, if args[0] is a ``Node`` representing a ``Tensor``,
		        then to call ``relu()`` on that ``Tensor``, pass ``relu`` to ``method_name``.
		
		    args (Optional[Tuple[Argument, ...]]): The positional arguments to be passed
		        to the called method. Note that this *should* include a ``self`` argument.
		
		    kwargs (Optional[Dict[str, Argument]]): The keyword arguments to be passed
		        to the called method
		
		    type_expr (Optional[Any]): an optional type annotation representing the
		        Python type the output of this node will have.
		
		Returns:
		
		    The newly created and inserted ``call_method`` node.
		
		.. note::
		    The same insertion point and type expression rules apply for this method
		    as :meth:`Graph.create_node`.
		
		.. note::
		    Backwards-compatibility for this API is guaranteed.
	**/
	public function call_method(method_name:Dynamic, ?args:Dynamic, ?kwargs:Dynamic, ?type_expr:Dynamic):Dynamic;
	/**
		Insert a ``call_module`` ``Node`` into the ``Graph``. A ``call_module`` node
		represents a call to the forward() function of a ``Module`` in the ``Module``
		hierarchy.
		
		Args:
		
		    module_name (str): The qualified name of the ``Module`` in the ``Module``
		        hierarchy to be called. For example, if the traced ``Module`` has a
		        submodule named ``foo``, which has a submodule named ``bar``, the
		        qualified name ``foo.bar`` should be passed as ``module_name`` to
		        call that module.
		
		    args (Optional[Tuple[Argument, ...]]): The positional arguments to be passed
		        to the called method. Note that this should *not* include a ``self`` argument.
		
		    kwargs (Optional[Dict[str, Argument]]): The keyword arguments to be passed
		        to the called method
		
		    type_expr (Optional[Any]): an optional type annotation representing the
		        Python type the output of this node will have.
		
		Returns:
		
		    The newly-created and inserted ``call_module`` node.
		
		.. note::
		    The same insertion point and type expression rules apply for this method
		    as :meth:`Graph.create_node`.
		
		.. note::
		    Backwards-compatibility for this API is guaranteed.
	**/
	public function call_module(module_name:Dynamic, ?args:Dynamic, ?kwargs:Dynamic, ?type_expr:Dynamic):Dynamic;
	/**
		Create a ``Node`` and add it to the ``Graph`` at the current insert-point.
		Note that the current insert-point can be set via :meth:`Graph.inserting_before`
		and :meth:`Graph.inserting_after`.
		
		Args:
		    op (str): the opcode for this Node. One of 'call_function', 'call_method', 'get_attr',
		        'call_module', 'placeholder', or 'output'. The semantics of these opcodes are
		        described in the ``Graph`` docstring.
		
		    args (Optional[Tuple[Argument, ...]]): is a tuple of arguments to this node.
		
		    kwargs (Optional[Dict[str, Argument]]): the kwargs of this Node
		
		    name (Optional[str]): an optional string name for the ``Node``.
		        This will influence the name of the value assigned to in the
		        Python generated code.
		
		    type_expr (Optional[Any]): an optional type annotation representing the
		        Python type the output of this node will have.
		
		Returns:
		
		    The newly-created and inserted node.
		
		.. note::
		    Backwards-compatibility for this API is guaranteed.
	**/
	public function create_node(op:Dynamic, target:Dynamic, ?args:Dynamic, ?kwargs:Dynamic, ?name:Dynamic, ?type_expr:Dynamic):Dynamic;
	/**
		Remove all dead code from the graph, based on each node's number of
		users, and whether the nodes have any side effects. The graph must be
		topologically sorted before calling.
		
		Returns:
		  bool: Whether the graph was changed as a result of the pass.
		
		Example:
		
		Before dead code is eliminated, `a` from `a = x + 1` below has no users
		and thus can be eliminated from the graph without having an effect.
		
		.. code-block:: python
		
		    def forward(self, x):
		        a = x + 1
		        return x + self.attr_1
		
		After dead code is eliminated, `a = x + 1` has been removed, and the rest
		of `forward` remains.
		
		.. code-block:: python
		
		    def forward(self, x):
		        return x + self.attr_1
		
		.. note::
		    Backwards-compatibility for this API is guaranteed.
	**/
	public function eliminate_dead_code():Dynamic;
	/**
		Erases a ``Node`` from the ``Graph``. Throws an exception if
		there are still users of that node in the ``Graph``.
		
		Args:
		
		    to_erase (Node): The ``Node`` to erase from the ``Graph``.
		
		.. note::
		    Backwards-compatibility for this API is guaranteed.
	**/
	public function erase_node(to_erase:Dynamic):Dynamic;
	/**
		.. warning::
		    This API is experimental and is *NOT* backward-compatible.
	**/
	public function flatten_inps(?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		Insert a ``get_attr`` node into the Graph. A ``get_attr`` ``Node`` represents the
		fetch of an attribute from the ``Module`` hierarchy.
		
		Args:
		
		    qualified_name (str): the fully-qualified name of the attribute to be retrieved.
		        For example, if the traced Module has a submodule named ``foo``, which has a
		        submodule named ``bar``, which has an attribute named ``baz``, the qualified
		        name ``foo.bar.baz`` should be passed as ``qualified_name``.
		
		    type_expr (Optional[Any]): an optional type annotation representing the
		        Python type the output of this node will have.
		
		
		Returns:
		
		    The newly-created and inserted ``get_attr`` node.
		
		.. note::
		    The same insertion point and type expression rules apply for this method
		    as ``Graph.create_node``.
		
		.. note::
		    Backwards-compatibility for this API is guaranteed.
	**/
	public function get_attr(qualified_name:Dynamic, ?type_expr:Dynamic):Dynamic;
	/**
		Copy all nodes from a given graph into ``self``.
		
		Args:
		
		    g (Graph): The source graph from which to copy Nodes.
		
		    val_map (Dict[Node, Node]): a dictionary that will be populated with a mapping
		        from nodes in ``g`` to nodes in ``self``. Note that ``val_map`` can be passed
		        in with values in it already to override copying of certain values.
		
		Returns:
		
		    The value in ``self`` that is now equivalent to the output value in ``g``,
		    if ``g`` had an ``output`` node. ``None`` otherwise.
		
		.. note::
		    Backwards-compatibility for this API is guaranteed.
	**/
	public function graph_copy(g:Dynamic, val_map:Dynamic, ?return_output_node:Dynamic):Dynamic;
	/**
		Set the point at which create_node and companion methods will insert into the graph.
		        When used within a 'with' statement, this will temporary set the insert point and
		        then restore it when the with statement exits::
		
		            with g.inserting_after(n):
		                ... # inserting after node n
		            ... # insert point restored to what it was previously
		            g.inserting_after(n) #  set the insert point permanently
		
		        Args:
		            n (Optional[Node]): The node before which to insert. If None this will insert after
		              the beginning of the entire graph.
		
		        Returns:
		            A resource manager that will restore the insert point on ``__exit__``.
		
		.. note::
		    Backwards-compatibility for this API is guaranteed.
	**/
	public function inserting_after(?n:Dynamic):Dynamic;
	/**
		Set the point at which create_node and companion methods will insert into the graph.
		        When used within a 'with' statement, this will temporary set the insert point and
		        then restore it when the with statement exits::
		
		            with g.inserting_before(n):
		                ... # inserting before node n
		            ... # insert point restored to what it was previously
		            g.inserting_before(n) #  set the insert point permanently
		
		        Args:
		            n (Optional[Node]): The node before which to insert. If None this will insert before
		              the beginning of the entire graph.
		
		        Returns:
		            A resource manager that will restore the insert point on ``__exit__``.
		
		.. note::
		    Backwards-compatibility for this API is guaranteed.
	**/
	public function inserting_before(?n:Dynamic):Dynamic;
	/**
		Runs various checks on this Graph to make sure it is well-formed. In
		particular:
		- Checks Nodes have correct ownership (owned by this graph)
		- Checks Nodes appear in topological order
		- If this Graph has an owning GraphModule, checks that targets
		exist in that GraphModule
		
		.. note::
		    Backwards-compatibility for this API is guaranteed.
	**/
	public function lint():Dynamic;
	/**
		Copy a node from one graph into another. ``arg_transform`` needs to transform arguments from
		the graph of node to the graph of self. Example::
		
		    # Copying all the nodes in `g` into `new_graph`
		    g : torch.fx.Graph = ...
		    new_graph = torch.fx.graph()
		    value_remap = {}
		    for node in g.nodes:
		        value_remap[node] = new_graph.node_copy(node, lambda n : value_remap[n])
		
		Args:
		
		    node (Node): The node to copy into ``self``.
		
		    arg_transform (Callable[[Node], Argument]): A function that transforms
		        ``Node`` arguments in node's ``args`` and ``kwargs`` into the
		        equivalent argument in ``self``. In the simplest case, this should
		        retrieve a value out of a table mapping Nodes in the original
		        graph to ``self``.
		
		.. note::
		    Backwards-compatibility for this API is guaranteed.
	**/
	public function node_copy(node:Dynamic, ?arg_transform:Dynamic):Dynamic;
	/**
		Get the list of Nodes that constitute this Graph.
		
		Note that this ``Node`` list representation is a doubly-linked list. Mutations
		during iteration (e.g. delete a Node, add a Node) are safe.
		
		Returns:
		
		    A doubly-linked list of Nodes. Note that ``reversed`` can be called on
		    this list to switch iteration order.
	**/
	public var nodes : Dynamic;
	/**
		Insert an ``output`` ``Node`` into the ``Graph``. An ``output`` node represents
		a ``return`` statement in Python code. ``result`` is the value that should
		be returned.
		
		Args:
		
		    result (Argument): The value to be returned.
		
		    type_expr (Optional[Any]): an optional type annotation representing the
		        Python type the output of this node will have.
		
		.. note::
		
		    The same insertion point and type expression rules apply for this method
		    as ``Graph.create_node``.
		
		.. note::
		    Backwards-compatibility for this API is guaranteed.
	**/
	public function output(result:Dynamic, ?type_expr:Dynamic):Dynamic;
	/**
		Return the module that owns this ``GraphModule``, if there is one,
		``None`` if there is no owning module or if there are multiple owning
		modules.
	**/
	public var owning_module : Dynamic;
	/**
		Insert a ``placeholder`` node into the Graph. A ``placeholder`` represents
		a function input.
		
		Args:
		
		    name (str): A name for the input value. This corresponds to the name
		        of the positional argument to the function this ``Graph`` represents.
		
		    type_expr (Optional[Any]): an optional type annotation representing the
		        Python type the output of this node will have. This is needed in some
		        cases for proper code generation (e.g. when the function is used
		        subsequently in TorchScript compilation).
		
		.. note::
		    The same insertion point and type expression rules apply for this method
		    as ``Graph.create_node``.
		
		.. note::
		    Backwards-compatibility for this API is guaranteed.
	**/
	public function placeholder(name:Dynamic, ?type_expr:Dynamic):Dynamic;
	/**
		Prints the intermediate representation of the graph in tabular
		format. Note that this API requires the ``tabulate`` module to be
		installed.
		
		.. note::
		    Backwards-compatibility for this API is guaranteed.
	**/
	public function print_tabular():Dynamic;
	/**
		Turn this ``Graph`` into valid Python code.
		
		Args:
		
		    root_module (str): The name of the root module on which to look-up
		        qualified name targets. This is usually 'self'.
		
		Returns:
		
		    A PythonCode object, consisting of two fields:
		        src: the Python source code representing the object
		        globals: a dictionary of global names in `src` -> the objects that they reference.
		
		.. note::
		    Backwards-compatibility for this API is guaranteed.
	**/
	public function python_code(root_module:Dynamic):Dynamic;
	/**
		.. warning::
		    This API is experimental and is *NOT* backward-compatible.
	**/
	public function unflatten_outs(out:Dynamic):Dynamic;
}