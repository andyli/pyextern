/* This file is generated, do not edit! */
package theano.gof.graph;
@:pythonImport("theano.gof.graph") extern class Graph_Module {
	static public var NoParams : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __docformat__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Return the variables that contribute to those in variable_list (inclusive).
		
		Parameters
		----------
		variable_list : list of `Variable` instances
		    Output `Variable` instances from which to search backward through
		    owners.
		
		Returns
		-------
		list of `Variable` instances
		    All input nodes, in the order found by a left-recursive depth-first
		    search started at the nodes in `variable_list`.
	**/
	static public function ancestors(variable_list:Dynamic, ?blockers:Dynamic):Dynamic;
	/**
		Returns a string representation of the subgraph between i and o
		
		Parameters
		----------
		i : list
		    Input `Variable` s.
		o : list
		    Output `Variable` s.
		leaf_formatter : callable
		    Takes a `Variable`  and returns a string to describe it.
		node_formatter : callable
		    Takes an `Op`  and the list of strings corresponding to its arguments
		    and returns a string to describe it.
		
		Returns
		-------
		str
		    Returns a string representation of the subgraph between i and o. If the
		    same op is used by several other ops, the first occurrence will be
		    marked as :literal:`*n -> description` and all subsequent occurrences
		    will be marked as :literal:`*n`, where n is an id number (ids are
		    attributed in an unspecified order and only exist for viewing
		    convenience).
	**/
	static public function as_string(i:Dynamic, o:Dynamic, ?leaf_formatter:Dynamic, ?node_formatter:Dynamic):Dynamic;
	/**
		Copies the subgraph contained between i and o.
		
		Parameters
		----------
		i : list
		    Input Variables.
		o : list
		    Output Variables.
		copy_inputs : bool
		    If True, the inputs will be copied (defaults to True).
		copy_orphans:
		    When None, use the copy_inputs value,
		    When True, new orphans nodes are created.
		    When False, original orphans nodes are reused in the new graph.
		
		Returns
		-------
		object
		    The inputs and outputs of that copy.
		
		Note
		----
		
		A constant, if in the ``i`` list is not an orpha. So it will be
		copied depending of the ``copy_inputs`` parameter. Otherwise it
		will be copied depending of the ``copy_orphans`` parameter.
	**/
	static public function clone(i:Dynamic, o:Dynamic, ?copy_inputs:Dynamic, ?copy_orphans:Dynamic):Dynamic;
	/**
		Return a dictionary that maps from Variable and Apply nodes in the
		original graph to a new node (a clone) in a new graph.
		
		This function works by recursively cloning inputs... rebuilding a directed
		graph from the inputs up to eventually building new outputs.
		
		Parameters
		----------
		inputs : a list of Variables
		outputs : a list of Variables
		copy_inputs : bool
		    True means to create the cloned graph from new input
		    nodes (the bottom of a feed-upward graph).
		    False means to clone a graph that is rooted at the original input
		    nodes.
		copy_orphans:
		    When True, new constant nodes are created. When False, original
		    constant nodes are reused in the new graph.
		memo : None or dict
		    Optionally start with a partly-filled dictionary for the return value.
		    If a dictionary is passed, this function will work in-place on that
		    dictionary and return it.
	**/
	static public function clone_get_equiv(inputs:Dynamic, outputs:Dynamic, ?copy_inputs:Dynamic, ?copy_orphans:Dynamic, ?memo:Dynamic):Dynamic;
	static public var config : Dynamic;
	/**
		Shallow copy operation on arbitrary Python objects.
		
		See the module's __doc__ string for more info.
	**/
	static public function copy(x:Dynamic):Dynamic;
	static public function default_node_formatter(op:Dynamic, argstrings:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var equal_computations : Dynamic;
	/**
		WRITEME
		
		Parameters
		----------
		deps
		    A python function that takes a node as input and returns its dependence.
		compute_deps_cache : optional
		    If provided deps_cache should also be provided. This is a function like
		    deps, but that also cache its results in a dict passed as deps_cache.
		deps_cache : dict
		    Must be used with compute_deps_cache.
		clients : dict
		    If a dict is passed it will be filled with a mapping of node
		    -> clients for each node in the subgraph.
		
		Notes
		-----
		    deps(i) should behave like a pure function (no funny business with
		    internal state).
		
		    deps(i) will be cached by this function (to be fast).
		
		    The order of the return value list is determined by the order of nodes
		    returned by the deps() function.
		
		    deps should be provided or can be None and the caller provides
		    compute_deps_cache and deps_cache. The second option removes a Python
		    function call, and allows for more specialized code, so it can be
		    faster.
	**/
	static public function general_toposort(outputs:Dynamic, deps:Dynamic, ?debug_print:Dynamic, ?compute_deps_cache:Dynamic, ?deps_cache:Dynamic, ?clients:Dynamic):Dynamic;
	/**
		Return the inputs required to compute the given Variables.
		
		Parameters
		----------
		variable_list : list of `Variable` instances
		    Output `Variable` instances from which to search backward through
		    owners.
		
		Returns
		-------
		list of `Variable` instances
		    Input nodes with no owner, in the order found by a left-recursive
		    depth-first search started at the nodes in `variable_list`.
	**/
	static public function inputs(variable_list:Dynamic, ?blockers:Dynamic):Dynamic;
	static public var integer_types : Dynamic;
	/**
		Returns the connection pattern of a subgraph defined by given
		inputs and outputs.
	**/
	static public function io_connection_pattern(inputs:Dynamic, outputs:Dynamic):Dynamic;
	/**
		Perform topological sort from input and output nodes
		
		Parameters
		----------
		inputs : list or tuple of Variable instances
		outputs : list or tuple of Apply instances
		orderings : dict
		    Key: Apply instance. Value: list of Apply instance.
		    It is important that the value be a container with a deterministic
		    iteration order. No sets allowed!
		clients : dict
		    If a dict is provided it will be filled with mappings of
		    node->clients for each node in the subgraph that is sorted
	**/
	static public function io_toposort(inputs:Dynamic, outputs:Dynamic, ?orderings:Dynamic, ?clients:Dynamic):Dynamic;
	/**
		Goes up in the graph and returns True if the apply node f_node is found.
		
		Use a stack implementation as the vm algo.
		We suppose all nodes are not lazy
		(i.e. for IfElse we suppose all inputs are computed)
	**/
	static public function is_in_ancestors(l_node:Dynamic, f_node:Dynamic):Dynamic;
	/**
		Return True iff Variables `var1` and `var2` perform the same computation.
		
		By 'performing the same computation', we mean that they must share the same
		graph, so that for instance this function will return False when comparing
		(x * (y * z)) with ((x * y) * z).
		
		The current implementation is not efficient since, when possible, it
		verifies equality by calling two different functions that are expected to
		return the same output. The goal is to verify this assumption, to
		eventually get rid of one of them in the future.
		
		Parameters
		----------
		var1
		    The first Variable to compare.
		var2
		    The second Variable to compare.
		givens
		    Similar to the `givens` argument of `theano.function`, it can be used
		    to perform substitutions in the computational graph of `var1` and
		    `var2`. This argument is associated to neither `var1` nor `var2`:
		    substitutions may affect both graphs if the substituted variable
		    is present in both.
		debug : bool
		    If True, then an exception is raised when we are in a situation where
		    the `equal_computations` implementation cannot be called.
		    This parameter is intended to be used in tests only, to make sure we
		    properly test both implementations.
		
		Examples
		--------
		
		    ======  ======  ======  ======
		    var1    var2    givens  output
		    ======  ======  ======  ======
		    x + 1   x + 1   {}      True
		    x + 1   y + 1   {}      False
		    x + 1   y + 1   {x: y}  True
		    ======  ======  ======  ======
	**/
	static public function is_same_graph(var1:Dynamic, var2:Dynamic, ?givens:Dynamic, ?debug:Dynamic):Dynamic;
	static public var is_same_graph_with_merge : Dynamic;
	/**
		Return an iterator over the (key, value) pairs of a dictionary.
	**/
	static public function iteritems(d:Dynamic, ?kw:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return the apply nodes of the graph between inputs and outputs.
	**/
	static public function list_of_nodes(inputs:Dynamic, outputs:Dynamic):Dynamic;
	/**
		A contextmanager that is used in inherit_stack_trace and keeps track
		of all the newly created varaible nodes inside an optimization. A list
		of new_nodes is instantiated but will be filled in a lazy manner (when
		Variable.notify_construction_observers is called).
		
		
		`observer` is the entity that updates the new_nodes list.
		construction_observers is a list inside Variable class and contains
		a list of observer functions. The observer functions inside
		construction_observers are only called when a variable node is
		instantiated (where Variable.notify_construction_observers is called).
		When the observer function is called, a new variable node is added to
		the new_nodes list.
		
		
		Parameters
		----------
		new_nodes
		    A list of all the variable nodes that are created inside the optimization.
		
		yields
		    new_nodes list.
	**/
	static public function nodes_constructed():Dynamic;
	/**
		Op to return a string representation of the subgraph
		between i and o
	**/
	static public function op_as_string(i:Dynamic, op:Dynamic, ?leaf_formatter:Dynamic, ?node_formatter:Dynamic):Dynamic;
	/**
		Set of Ops contained within the subgraph between i and o
		
		Parameters
		----------
		i : list
		    Input variables.
		o : list
		    Output variables.
		
		Returns
		-------
		object
		    The set of ops that are contained within the subgraph that lies
		    between i and o, including the owners of the variables in o and
		    intermediary ops between i and o, but not the owners of the variables
		    in i.
	**/
	static public function ops(i:Dynamic, o:Dynamic):Dynamic;
	/**
		Extracts list of variables within input and output nodes
		via dfs travesal and returns the orphans among them
		
		Parameters
		----------
		i : list
		    Input Variables.
		o : list
		    Output Variables.
		
		Returns
		-------
		object
		    The set of Variables which one or more Variables in o depend on but are
		    neither in i nor in the subgraph that lies between i and o.
		
		Examples
		--------
		orphans([x], [(x+y).out]) => [y]
	**/
	static public function orphans(i:Dynamic, o:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Search through a graph, either breadth- or depth-first.
		
		Parameters
		----------
		start : deque
		    Search from these nodes.
		expand : callable
		    When we get to a node, add expand(node) to the list of nodes to visit.
		    This function should return a list, or None.
		mode : string
		    'bfs' or 'dfs' for breath first search or depth first search.
		
		Returns
		-------
		list of `Variable` or `Apply` instances (depends on `expend`)
		    The list of nodes in order of traversal.
		
		Notes
		-----
		A node will appear at most once in the return value, even if it
		appears multiple times in the start parameter.
		
		:postcondition: every element of start is transferred to the returned list.
		:postcondition: start is empty.
	**/
	static public function stack_search(start:Dynamic, expand:Dynamic, ?mode:Dynamic, ?build_inv:Dynamic):Dynamic;
	static public var string_types : Dynamic;
	/**
		Extracts list of variables within input and output nodes via dfs travesal
		
		Parameters
		----------
		i : list
		    Input variables.
		o : list
		    Output variables.
		
		Returns
		-------
		object
		    The set of Variables that are involved in the subgraph that lies
		    between i and o. This includes i, o, orphans(i, o) and all values of
		    all intermediary steps from i to o.
	**/
	static public function variables(i:Dynamic, o:Dynamic):Dynamic;
	/**
		Extract list of variables between i and o nodes via
		dfs traversal and chooses the orphans among them
		
		Parameters
		----------
		i : list
		     Input variables.
		o : list
		     Output variables.
	**/
	static public function variables_and_orphans(i:Dynamic, o:Dynamic):Dynamic;
	/**
		Utility function that returns the leaves of a search through
		consecutive view_map()s.
		
		WRITEME
	**/
	static public function view_roots(r:Dynamic):Dynamic;
}