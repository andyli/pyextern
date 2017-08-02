/* This file is generated, do not edit! */
package theano.scan_module.scan_opt;
@:pythonImport("theano.scan_module.scan_opt") extern class Scan_opt_Module {
	static public var __authors__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __contact__ : Dynamic;
	static public var __copyright__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __docformat__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _logger : Dynamic;
	static public var absolute_import : Dynamic;
	static public function deep_copy_op(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var division : Dynamic;
	/**
		Checks if Theano graphs represent the same computations.
		
		The two lists `xs`, `ys` should have the same number of entries. The
		function checks if for any corresponding pair `(x,y)` from `zip(xs,ys)`
		`x` and `y` represent the same computations on the same variables
		(unless equivalences are provided using `in_xs`, `in_ys`).
		
		If `in_xs` and `in_ys` are provided, then when comparing a node `x` with
		a node `y` they are automatically considered as equal if there is some
		index `i` such that `x == in_xs[i]` and `y == in_ys[i]`(and they both
		have the same type). Note that `x` and `y` can be in the list `xs` and
		`ys`, but also represent subgraphs of a computational graph in `xs`
		or `ys`.
	**/
	static public function equal_computations(xs:Dynamic, ys:Dynamic, ?in_xs:Dynamic, ?in_ys:Dynamic):Dynamic;
	/**
		Goes up in the graph and returns True if a node in nodes is found.
	**/
	static public function find_up(l_node:Dynamic, f_node:Dynamic):Dynamic;
	/**
		Return the constant scalar(0-D) value underlying variable `v`.
		
		If `v` is the output of dimshuffles, fills, allocs, rebroadcasts,
		cast, OutputGuard, DeepCopyOp, ScalarFromTensor, ScalarOp, Elemwise
		and some pattern with Subtensor, this function digs through them.
		
		If `v` is not some view of constant scalar data, then raise a
		NotScalarConstantError.
		
		Parameters
		----------
		elemwise : bool
		    If False, we won't try to go into elemwise. So this call is faster.
		    But we still investigate in Second Elemwise (as this is a substitute
		    for Alloc)
		only_process_constants : bool
		    If True, we only attempt to obtain the value of `orig_v` if it's
		    directly constant and don't try to dig through dimshuffles, fills,
		    allocs, and other to figure out its value.
		max_recur : int
		    The maximum number of recursion.
		
		Notes
		-----
		    There may be another function similar to this one in the code,
		    but I'm not sure where it is.
	**/
	static public function get_scalar_constant_value(orig_v:Dynamic, ?elemwise:Dynamic, ?only_process_constants:Dynamic, ?max_recur:Dynamic):Dynamic;
	/**
		Returns true if l has any duplicates (according to __eq__).
	**/
	static public function has_duplicates(l:Dynamic):Dynamic;
	static public function info(?msg:python.VarArgs<Dynamic>):Dynamic;
	static public var integer_types : Dynamic;
	/**
		Return an iterator over the (key, value) pairs of a dictionary.
	**/
	static public function iteritems(d:Dynamic, ?kw:python.KwArgs<Dynamic>):Dynamic;
	static public var list_opt_slice : Dynamic;
	/**
		Builds a dictionary of equivalences between inner inputs based on
		the equivalence of their corresponding outer inputs.
	**/
	static public function make_equiv(lo:Dynamic, li:Dynamic):Dynamic;
	static public var maxsize : Dynamic;
	static public var optdb : Dynamic;
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
	static public var remove_constants_and_unused_inputs_scan : Dynamic;
	static public var scan_eqopt1 : Dynamic;
	static public var scan_eqopt2 : Dynamic;
	static public var scan_merge_inouts : Dynamic;
	static public var scan_seqopt1 : Dynamic;
	static public function warning(?msg:python.VarArgs<Dynamic>):Dynamic;
}