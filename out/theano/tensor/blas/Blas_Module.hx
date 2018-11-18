/* This file is generated, do not edit! */
package theano.tensor.blas;
@:pythonImport("theano.tensor.blas") extern class Blas_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Return None or a TensorVariable whose type is in T.float_scalar_types
	**/
	static public function _as_scalar(res:Dynamic, ?dtype:Dynamic):Dynamic;
	static public function _beta_L_plus_alpha_M(beta:Dynamic, L:Dynamic, alpha:Dynamic, M:Dynamic, ?recurse_flip:Dynamic):Dynamic;
	static public var _blas_gemv_fns : Dynamic;
	static public function _dot22(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function _dot22scalar(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function _factor_canonicalized(lst:Dynamic):Dynamic;
	static public function _gemm_canonicalize(r:Dynamic, scale:Dynamic, rval:Dynamic, maxclients:Dynamic):Dynamic;
	/**
		Returns None, or a list to replace node.outputs.
	**/
	static public function _gemm_from_factored_list(lst:Dynamic):Dynamic;
	/**
		:todo: In many expressions, there are many ways to turn it into a
		    gemm.  For example dot(a,b) + c + d.  This function should
		    return all of them, so that if one version of gemm causes a
		    cycle in the graph, then another application of gemm can be
		    tried.
	**/
	static public function _gemm_from_node2(node:Dynamic):Dynamic;
	static public function _is_real_matrix(res:Dynamic):Dynamic;
	static public function _is_real_vector(res:Dynamic):Dynamic;
	static public function _ldflags(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var _logger : Dynamic;
	static public var absolute_import : Dynamic;
	static public function batched_dot(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		C header for the fortran blas interface
	**/
	static public function blas_header_text():Dynamic;
	static public function blas_header_version():Dynamic;
	static public function blas_opt_inplace(fgraph:Dynamic):Dynamic;
	static public var blas_optdb : Dynamic;
	static public function bool_t(?name:Dynamic):Dynamic;
	static public function check_init_y():Dynamic;
	static public var config : Dynamic;
	/**
		Print a computation graph as text to stdout or a file.
		
		:type obj: :class:`~theano.gof.Variable`, Apply, or Function instance
		:param obj: symbolic thing to print
		:type depth: integer
		:param depth: print graph to this depth (-1 for unlimited)
		:type print_type: boolean
		:param print_type: whether to print the type of printed objects
		:type file: None, 'str', or file-like object
		:param file: print to this file ('str' means to return a string)
		:type ids: str
		:param ids: How do we print the identifier of the variable
		            id - print the python id value
		            int - print integer character
		            CHAR - print capital character
		            "" - don't print an identifier
		:param stop_on_name: When True, if a node in the graph has a name,
		                     we don't print anything below it.
		:type done: None or dict
		:param done: A dict where we store the ids of printed node.
		    Useful to have multiple call to debugprint share the same ids.
		:type print_storage: bool
		:param print_storage: If True, this will print the storage map
		    for Theano functions. Combined with allow_gc=False, after the
		    execution of a Theano function, we see the intermediate result.
		:type print_clients: bool
		:param print_clients: If True, this will print for Apply node that
		     have more then 1 clients its clients. This help find who use
		     an Apply node.
		:type used_ids: dict or None
		:param used_ids: the id to use for some object, but maybe we only
		     referred to it yet.
		
		:returns: string if `file` == 'str', else file arg
		
		Each line printed represents a Variable in the graph.
		The indentation of lines corresponds to its depth in the symbolic graph.
		The first part of the text identifies whether it is an input
		(if a name or type is printed) or the output of some Apply (in which case
		the Op is printed).
		The second part of the text is an identifier of the Variable.
		If print_type is True, we add a part containing the type of the Variable
		
		If a Variable is encountered multiple times in the depth-first search,
		it is only printed recursively the first time. Later, just the Variable
		identifier is printed.
		
		If an Apply has multiple outputs, then a '.N' suffix will be appended
		to the Apply's identifier, to indicate which output a line corresponds to.
	**/
	static public function debugprint(obj:Dynamic, ?depth:Dynamic, ?print_type:Dynamic, ?file:Dynamic, ?ids:Dynamic, ?stop_on_name:Dynamic, ?done:Dynamic, ?print_storage:Dynamic, ?print_clients:Dynamic, ?used_ids:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public function gemm(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function gemm_inplace(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function gemm_no_inplace(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function gemv(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function gemv_inplace(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function gemv_no_inplace(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function ger(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function ger_destructive(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var have_fblas : Dynamic;
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
		Return an iterator over the (key, value) pairs of a dictionary.
	**/
	static public function iteritems(d:Dynamic, ?kw:python.KwArgs<Dynamic>):Dynamic;
	/**
		Extract a list of compilation flags from config.blas.ldflags.
		
		Depending on the options, different type of flags will be kept.
		It returns a list of libraries against which an Op's object file
		should be linked to benefit from a BLAS implementation.
		
		Parameters
		----------
		libs : bool, optional
		    Extract flags starting with "-l" (the default is True).
		libs_dir : bool, optional
		    Extract flags starting with "-L" (the default is False).
		include_dir : bool, optional
		    Extract flags starting with "-I" (the default is False).
		flags: bool, optional
		    Extract all the other flags (the default is False).
		
		Returns
		-------
		list of strings
		    Extracted flags.
	**/
	static public function ldflags(?libs:Dynamic, ?flags:Dynamic, ?libs_dir:Dynamic, ?include_dir:Dynamic):Dynamic;
	static public var local_dimshuffle_lift : Dynamic;
	static public var local_dot22_to_dot22scalar : Dynamic;
	static public var local_dot22_to_ger_or_gemv : Dynamic;
	static public var local_dot_to_dot22 : Dynamic;
	static public var local_gemm_to_gemv : Dynamic;
	static public var local_gemm_to_ger : Dynamic;
	static public var local_inplace_gemm : Dynamic;
	static public var local_inplace_gemv : Dynamic;
	static public var local_inplace_ger : Dynamic;
	static public function local_optimizer(tracks:Dynamic, ?inplace:Dynamic, ?requirements:Dynamic):Dynamic;
	static public var local_print_as_we_go_along : Dynamic;
	static public var optdb : Dynamic;
	static public function pprint(?args:python.VarArgs<Dynamic>):Dynamic;
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
	static public function res_is_a(node:Dynamic, op:Dynamic, ?maxclients:Dynamic):Dynamic;
	static public function values_eq_approx_remove_inf_nan(a:Dynamic, b:Dynamic):Dynamic;
	/**
		Utility function that returns the leaves of a search through
		consecutive view_map()s.
		
		WRITEME
	**/
	static public function view_roots(r:Dynamic):Dynamic;
}