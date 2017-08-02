/* This file is generated, do not edit! */
package theano.scan_module.scan_utils;
@:pythonImport("theano.scan_module.scan_utils") extern class Scan_utils_Module {
	static public var DEPRECATED_ARG : Dynamic;
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
	static public function _map_variables_inner(replacer:Dynamic, inner_inputs:Dynamic, outer_inputs:Dynamic, inner_outputs:Dynamic, containing_op:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Function that allows replacing subgraphs of a computational graph.
		
		It returns a copy of the initial subgraph with the corresponding
		substitutions.
		
		Parameters
		----------
		output : Theano Variables (or Theano expressions)
		    Theano expression that represents the computational graph.
		replace : dict
		    Dictionary describing which subgraphs should be replaced by what.
		share_inputs : bool
		    If True, use the same inputs (and shared variables) as the original
		    graph. If False, clone them. Note that cloned shared variables still
		    use the same underlying storage, so they will always have the same
		    value.
		copy_inputs
		    Deprecated, use share_inputs.
	**/
	static public function clone(output:Dynamic, ?replace:Dynamic, ?strict:Dynamic, ?share_inputs:Dynamic, ?copy_inputs:Dynamic):Dynamic;
	/**
		Helpful function that gets a Scan op, a list of indices indicating
		which outputs are not required anymore and should be removed, and
		a list of inputs to the apply node corresponding to the scan op and
		produces the list of inputs and outputs and the info dictionary where
		the indicated outputs are eliminated. Note that eliminating an output
		means removing its inputs from the inner funciton and from the
		node inputs, and changing the dictionary.
	**/
	static public function compress_outs(op:Dynamic, not_required:Dynamic, inputs:Dynamic):Dynamic;
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
		Transforms the shape of a tensor from (d1, d2 ... ) to ( d1+size, d2, ..)
		by adding uninitialized memory at the end of the tensor.
	**/
	static public function expand_empty(tensor_var:Dynamic, size:Dynamic):Dynamic;
	/**
		Goes up in the graph and returns True if a node in nodes is found.
	**/
	static public function find_up(l_node:Dynamic, f_node:Dynamic):Dynamic;
	/**
		Check all internal values of the graph that compute the variable ``out``
		for occurrences of values identical with ``x``. If such occurrences are
		encountered then they are replaced with variable ``y``.
		
		Parameters
		----------
		out : Theano Variable
		x : Theano Variable
		y : Theano Variable
		
		Examples
		--------
		out := sigmoid(wu)*(1-sigmoid(wu))
		x := sigmoid(wu)
		forced_replace(out, x, y) := y*(1-y)
		
		Note
		----
		When it find a match, it don't continue on the corresponding inputs.
	**/
	static public function forced_replace(out:Dynamic, x:Dynamic, y:Dynamic):Dynamic;
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
		This function tries to recognize the updates OrderedDict, the
		list of outputs and the stopping condition returned by the
		lambda expression and arrange them in a predefined order.
		
		WRITEME: what is the type of ls? how is it formatted?
		        if it's not in the predefined order already, how does
		        this function know how to put it in that order?
	**/
	static public function get_updates_and_outputs(ls:Dynamic):Dynamic;
	static public function hash_listsDictsTuples(x:Dynamic):Dynamic;
	/**
		Compute the shape of the outputs given the shape of the inputs of a theano
		graph.
		
		We do it this way to avoid compiling the inner function just to get
		the shape. Changes to ShapeFeature could require changes in this function.
	**/
	static public function infer_shape(outs:Dynamic, inputs:Dynamic, input_shapes:Dynamic):Dynamic;
	static public function isNaN_or_Inf_or_None(x:Dynamic):Dynamic;
	/**
		Return an iterator over the (key, value) pairs of a dictionary.
	**/
	static public function iteritems(d:Dynamic, ?kw:python.KwArgs<Dynamic>):Dynamic;
	/**
		Construct new graphs based on 'graphs' with some variables replaced
		according to 'replacer'.
		
		:param replacer: function that takes a variable and returns its
		     replacement.
		:param graphs: an iterable of graphs in which to replace variables
		:param additional_inputs: an iterable of graph inputs not used in any
		     of 'graphs' but possibly used in the graphs returned by `replacer`
		:return: the new graphs, in the same order as 'graphs'
		
		Example:
		
		.. code-block:: python
		
		    tag = "replaceme"
		
		    a = tensor.scalar("a")
		    b = tensor.scalar("b")
		    c = tensor.scalar("c")
		
		    ab = a + b
		    ab.tag.replacement = a * b
		
		    u = ab + c
		    v, = map_variables(lambda graph:
		        return getattr(graph.tag, "replacement", graph),
		        [u])
		
		    # v is now equal to a * b + c
	**/
	static public function map_variables(replacer:Dynamic, graphs:Dynamic, ?additional_inputs:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Function that allows replacing subgraphs of a computational graph.
		
		It returns a set of dictionaries and lists which collect (partial?)
		different information about shared variables. This info is required by
		`pfunc`.
		
		Parameters
		----------
		outputs : list of Theano Variables (or Theano expressions)
		    List of Theano variables or expressions representing the outputs of the
		    computational graph.
		inputs : list of Theano Variables (or Theano expressions)
		    List of Theano variables or expressions representing the inputs of the
		    computational graph (or None).
		replace : dict
		    Dictionary describing which subgraphs should be replaced by what.
		    orig_value => new_value
		updates : dict
		    Dictionary describing updates expressions for shared variables.
		rebuild_strict : bool
		    Flag, if true the type of all inputs should be the same as the one for
		    the current node.
		copy_inputs_over : bool
		    Flag; if False it will clone inputs.
		no_default_updates : either bool or list of Variables
		    If True, do not perform any automatic update on Variables.
		    If False (default), perform them all.
		    Else, perform automatic updates on all Variables that are neither in
		    "updates" nor in "no_default_updates".
	**/
	static public function rebuild_collect_shared(outputs:Dynamic, ?inputs:Dynamic, ?replace:Dynamic, ?updates:Dynamic, ?rebuild_strict:Dynamic, ?copy_inputs_over:Dynamic, ?no_default_updates:Dynamic):Dynamic;
	/**
		Different interface to clone, that allows you to pass inputs.
		Compared to clone, this method always replaces the inputs with
		new variables of the same type, and returns those (in the same
		order as the original inputs).
	**/
	static public function reconstruct_graph(inputs:Dynamic, outputs:Dynamic, ?tag:Dynamic):Dynamic;
	/**
		Internal function that constructs a new variable from x with the same
		type, but with a different name (old name + tag). This function is used
		by gradient, or the R-op to construct new variables for the inputs of
		the inner graph such that there is no interference between the original
		graph and the newly constructed graph.
	**/
	static public function safe_new(x:Dynamic, ?tag:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Looks at all outputs defined by indices ``out_idxs`` and see whom can be
		removed from the scan op without affecting the rest. Return two lists,
		the first one with the indices of outs that can be removed, the second
		with the outputs that can not be removed.
	**/
	static public function scan_can_remove_outs(op:Dynamic, out_idxs:Dynamic):Dynamic;
	static public var string_types : Dynamic;
	/**
		Function used by scan to parse the tree and figure out which nodes
		it needs to replace.
		
		There are two options :
		    1) x and x_copy or on host, then you would replace x with x_copy
		    2) x is on gpu, x_copy on host, then you need to replace
		    host_from_gpu(x) with x_copy
		This happens because initially shared variables are on GPU... which is
		fine for the main computational graph but confuses things a bit for the
		inner graph of scan.
	**/
	static public function traverse(out:Dynamic, x:Dynamic, x_copy:Dynamic, d:Dynamic, ?visited:Dynamic):Dynamic;
}