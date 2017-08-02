/* This file is generated, do not edit! */
package theano.gof.sched;
@:pythonImport("theano.gof.sched") extern class Sched_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Topological sort algorithm by Kahn [1] - O(nodes + vertices).
		
		Parameters
		----------
		edges
		    A dict of the form {a: {b, c}} where b and c depend on a.
		
		Returns
		-------
		L : list
		    An ordered list of nodes that satisfy the dependencies of edges.
		
		Closely follows the wikipedia page [2]
		
		References
		----------
		[1] Kahn, Arthur B. (1962), "Topological sorting of large networks",
		Communications of the ACM
		[2] http://en.wikipedia.org/wiki/Toposort#Algorithms
		
		Examples
		--------
		>>> _toposort({1: {2, 3}, 2: (3, )})
		[1, 2, 3]
	**/
	static public function _toposort(edges:Dynamic):Array<Dynamic>;
	static public var absolute_import : Dynamic;
	/**
		Return -1 if x < y, 0 if x == y, 1 if x > y.
	**/
	static public function cmp(x:Dynamic, y:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Return an iterator over the (key, value) pairs of a dictionary.
	**/
	static public function iteritems(d:Dynamic, ?kw:python.KwArgs<Dynamic>):Dynamic;
	/**
		comparator function based on "key" function
	**/
	static public function key_to_cmp(key:Dynamic):Dynamic;
	/**
		Return the apply nodes of the graph between inputs and outputs.
	**/
	static public function list_of_nodes(inputs:Dynamic, outputs:Dynamic):Dynamic;
	/**
		Create a comparator to represent the dependence of nodes in a graph.
	**/
	static public function make_dependence_cmp():Dynamic;
	static public function make_depends():Dynamic;
	/**
		Memoization decorator for a function taking a single argument.
	**/
	static public function memodict(f:Dynamic):Dynamic;
	/**
		Partially ordered sort with multiple comparators.
		
		Given a list of comparators, orders the elements in l so that the
		comparators are satisfied as much as possible giving precedence to
		earlier comparators.
		
		Parameters
		----------
		l
		    An iterable of nodes in a graph.
		cmps
		    A sequence of comparator functions that describe which nodes should
		    come before which others.
		
		Returns
		-------
		list
		    A list of nodes which satisfy the comparators as much as possible.
		
		Notes
		-----
		Implemented with _toposort.
		
		Examples
		--------
		>>> lower_tens = lambda a, b: a/10 - b/10 # prefer lower numbers div 10
		>>> prefer evens = lambda a, b: a%2 - b%2 # prefer even numbers
		>>> posort(list(range(20)), lower_tens, prefer_evens)
		[0, 8, 2, 4, 6, 1, 3, 5, 7, 9, 16, 18, 10, 12, 14, 17, 19, 11, 13, 15]
	**/
	static public function posort(l:Dynamic, ?cmps:python.VarArgs<Dynamic>):Dynamic;
	static public var print_function : Dynamic;
	/**
		Reverses direction of dependence dict.
		
		Notes
		-----
		dict order is not deterministic. As we iterate on the
		input dict, it makes the output of this function depend on the
		dict order. So this function output order should be considered
		as undeterministic.
		
		Examples
		--------
		>>> d = {'a': (1, 2), 'b': (2, 3), 'c':()}
		>>> reverse_dict(d)
		{1: ('a',), 2: ('a', 'b'), 3: ('b',)}
	**/
	static public function reverse_dict(d:Dynamic):Dynamic;
	/**
		Order a graph of apply nodes according to a list of comparators.
		
		The following example sorts first by dependence of nodes (this is a
		topological sort) and then by lexicographical ordering (nodes that start
		with 'E' come before nodes that start with 'I' if there is no dependence.
		
		Examples
		--------
		>>> from theano.gof.graph import sort_apply_nodes, dependence
		>>> from theano.tensor import matrix, dot
		>>> x = matrix('x')
		>>> y = dot(x*2, x+1)
		>>> str_cmp = lambda a, b: cmp(str(a), str(b)) # lexicographical sort
		>>> sort_apply_nodes([x], [y], cmps=[dependence, str_cmp])
		[Elemwise{add,no_inplace}(x, InplaceDimShuffle{x,x}.0),
		 InplaceDimShuffle{x,x}(TensorConstant{2}),
		 Elemwise{mul,no_inplace}(x, InplaceDimShuffle{x,x}.0),
		 InplaceDimShuffle{x,x}(TensorConstant{1}),
		 dot(Elemwise{mul,no_inplace}.0, Elemwise{add,no_inplace}.0)]
	**/
	static public function sort_apply_nodes(inputs:Dynamic, outputs:Dynamic, cmps:Dynamic):Dynamic;
	/**
		Make a schedule function from comparators.
		
		See Also
		--------
		sort_apply_nodes
	**/
	static public function sort_schedule_fn(?cmps:python.VarArgs<Dynamic>):Dynamic;
}