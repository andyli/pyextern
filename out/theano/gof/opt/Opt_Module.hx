/* This file is generated, do not edit! */
package theano.gof.opt;
@:pythonImport("theano.gof.opt") extern class Opt_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		WRITEME
	**/
	static public function _check_chain(r:Dynamic, chain:Dynamic):Dynamic;
	static public function _list_of_nodes(fgraph:Dynamic):Dynamic;
	static public var _logger : Dynamic;
	static public var _optimizer_idx : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		WRITEME
	**/
	static public function check_chain(r:Dynamic, ?chain:python.VarArgs<Dynamic>):Dynamic;
	/**
		This function checks if the outputs of specific ops of a compiled graph
		have a stack.
		
		Parameters
		----------
		f_or_fgraph: theano.compile.function_module.Function or
		      theano.gof.fg.FunctionGraph
		    The compiled function or the function graph to be analysed.
		ops_to_check: it can be of four different types:
		      - classes or instances inheriting from theano.gof.Op
		      - tuple/list of classes or instances inheriting from theano.gof.Op
		      - string
		      - function returning a boolean and taking as input an instance of
		        theano.gof.Op.
		    - if ops_to_check is a string, it should be either 'last' or 'all'.
		      'last' will check only the last op of the graph while 'all' will
		      check all the ops of the graph.
		    - if ops_to_check is an op or a tuple/list of ops, the function will
		      check that all the outputs of their occurrences in the graph have a
		      stack trace.
		    - if ops_to_check is a function, it should take as input a
		      theano.gof.Op and return a boolean indicating if the input op should
		      be checked or not.
		bug_print: string belonging to {'raise', 'warn', 'ignore'}
		    You can specify the behaviour of the function when the specified
		    ops_to_check are not in the graph of f_or_fgraph: it can either raise
		    an exception, write a warning or simply ignore it.
		
		Returns
		-------
		boolean
		    True if the outputs of the specified ops have a stack, False otherwise.
	**/
	static public function check_stack_trace(f_or_fgraph:Dynamic, ?ops_to_check:Dynamic, ?bug_print:Dynamic):Dynamic;
	static public var config : Dynamic;
	/**
		Copies the stack trace from one or more tensor variables to
		one or more tensor variables and returns the destination variables.
		
		Parameters
		----------
		from_var
		    Tensor variable or list of tensor variables to copy stack traces from.
		to_var
		    Tensor variable or list of tensor variables to copy stack traces to.
		
		Notes
		-----
		The stacktrace is assumed to be of the form of a list of lists
		of tuples. Each tuple contains the filename, line number, function name
		and so on. Each list of tuples contains the truples belonging to a
		particular variable.
	**/
	static public function copy_stack_trace(from_var:Dynamic, to_var:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Uses the TopoOptimizer from the input nodes to output nodes of the graph.
	**/
	static public function in2out(?local_opts:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Contextmanager that copies the stack trace from one or more variable nodes to all
		variable nodes constructed in the body. new_nodes is the list of all the newly created
		variable nodes inside an optimization that is managed by graph.nodes_constructed().
		
		Parameters
		----------
		from_var
		    Variable node or a list of variable nodes to copy stack traces from.
	**/
	static public function inherit_stack_trace(from_var:Dynamic):Dynamic;
	/**
		Decorator for FromFunctionOptimizer.
	**/
	static public function inplace_optimizer(f:Dynamic):Dynamic;
	static public var integer_types : Dynamic;
	/**
		Merge-based implementation of `theano.gof.graph.is_same_graph`.
		
		See help on `theano.gof.graph.is_same_graph` for additional documentation.
	**/
	static public function is_same_graph_with_merge(var1:Dynamic, var2:Dynamic, ?givens:Dynamic):Dynamic;
	/**
		Return an iterator over the (key, value) pairs of a dictionary.
	**/
	static public function iteritems(d:Dynamic, ?kw:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return an iterator over the values of a dictionary.
	**/
	static public function itervalues(d:Dynamic, ?kw:python.KwArgs<Dynamic>):Dynamic;
	static public function local_optimizer(tracks:Dynamic, ?inplace:Dynamic, ?requirements:Dynamic):Dynamic;
	/**
		merge 2 dicts by adding the values.
	**/
	static public function merge_dict(d1:Dynamic, d2:Dynamic):Dynamic;
	/**
		Decorator for FromFunctionOptimizer.
	**/
	static public function optimizer(f:Dynamic):Dynamic;
	/**
		Uses the TopoOptimizer from the output nodes to input nodes of the graph.
	**/
	static public function out2in(?local_opts:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Merge constants in the subgraph used to compute nodes in `vars`.
		
		`vars` is a list of nodes, and we want to merge together nodes
		that are constant inputs used to compute nodes in that list.
		
		Notes
		-----
		This function will ignore nodes that are in an fgraph.
		It is used to pre-merge nodes generated inside an optimization,
		before it is inserted in the fgraph.
		It is useful if there are many such replacements to make,
		so that DebugMode will not check each of them.
	**/
	static public function pre_constant_merge(vars:Dynamic):Dynamic;
	/**
		This function traverses the computation graph described by all
		``node`` in the graph before the variable out but that are not in the
		fgraph. It applies each of the local_optimizations on the traversed graph.
		
		Its main use is to apply locally constant folding when generating
		the graph of the indices of a subtensor.
		
		We should not apply optimizations on node that are in fgraph.
		So we don't optimize node that have an attribute fgraph.
		
		Notes
		-----
		This doesn't do an equilibrium... So if there is optimization
		like local_upcast_elemwise_constant_inputs in the list, that
		adds additional node to the inputs of the node, it can
		be needed to call this function multiple times.
	**/
	static public function pre_greedy_local_optimizer(list_optimizations:Dynamic, out:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		reduce(function, sequence[, initial]) -> value
		
		Apply a function of two arguments cumulatively to the items of a sequence,
		from left to right, so as to reduce the sequence to a single value.
		For example, reduce(lambda x, y: x+y, [1, 2, 3, 4, 5]) calculates
		((((1+2)+3)+4)+5).  If initial is present, it is placed before the items
		of the sequence in the calculation, and serves as a default when the
		sequence is empty.
	**/
	static public function reduce(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var string_types : Dynamic;
}