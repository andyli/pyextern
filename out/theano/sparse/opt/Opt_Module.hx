/* This file is generated, do not edit! */
package theano.sparse.opt;
@:pythonImport("theano.sparse.opt") extern class Opt_Module {
	static public function CSC(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function CSR(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Returns
		-------
		boolean
		    True unless x is a L{scipy.sparse.spmatrix} (and not a
		    L{numpy.ndarray}).
	**/
	static public function _is_dense(x:Dynamic):Dynamic;
	/**
		Returns
		-------
		boolean
		    True iff x is a L{SparseVariable} (and not a L{tensor.TensorType},
		    for instance).
	**/
	static public function _is_sparse_variable(x:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Return the data field of the sparse variable.
	**/
	static public function csm_data(csm:Dynamic):Dynamic;
	static public function csm_grad_c(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return the indices field of the sparse variable.
	**/
	static public function csm_indices(csm:Dynamic):Dynamic;
	/**
		Return the indptr field of the sparse variable.
	**/
	static public function csm_indptr(csm:Dynamic):Dynamic;
	static public function csm_properties(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var division : Dynamic;
	static public var local_addsd_ccode : Dynamic;
	static public var local_csm_grad_c : Dynamic;
	static public var local_csm_properties_csm : Dynamic;
	static public var local_dense_from_sparse_sparse_from_dense : Dynamic;
	static public var local_inplace_addsd_ccode : Dynamic;
	static public var local_inplace_remove0 : Dynamic;
	static public var local_mul_s_d : Dynamic;
	static public var local_mul_s_v : Dynamic;
	static public var local_sampling_dot_csr : Dynamic;
	static public var local_structured_add_s_v : Dynamic;
	static public var local_structured_dot : Dynamic;
	/**
		    @todo update
		
		    Replaces all occurrences of the input pattern by the output pattern:
		
		    input_pattern ::= (op, <sub_pattern1>, <sub_pattern2>, ...)
		    input_pattern ::= dict(pattern = <input_pattern>,
		                            constraint = <constraint>)
		    sub_pattern ::= input_pattern
		    sub_pattern ::= string
		    sub_pattern ::= a Constant instance
		    sub_pattern ::= int
		    sub_pattern ::= float
		    constraint ::= lambda fgraph, expr: additional matching condition
		
		    output_pattern ::= (op, <output_pattern1>, <output_pattern2>, ...)
		    output_pattern ::= string
		    output_pattern ::= int
		    output_pattern ::= float
		
		    Each string in the input pattern is a variable that will be set to
		    whatever expression is found in its place. If the same string is
		    used more than once, the same expression must be found in those
		    places. If a string used in the input pattern is used in the
		    output pattern, the matching expression will be inserted in its
		    place. The input pattern cannot just be a string but the output
		    pattern can.
		
		    If you put a constant variable in the input pattern, there will be a
		    match iff a constant variable with the same value and the same type
		    is found in its place.
		
		    You can add a constraint to the match by using the dict(...)  form
		    described above with a 'constraint' key. The constraint must be a
		    function that takes the fgraph and the current Variable that we are
		    trying to match and returns True or False according to an
		    arbitrary criterion.
		
		    The constructor creates a PatternSub that replaces occurrences of
		    in_pattern by occurrences of out_pattern.
		
		    Parameters
		    ----------
		    in_pattern
		        The input pattern that we want to replace.
		    out_pattern
		        The replacement pattern.
		    allow_multiple_clients : bool
		        If False, the pattern matching will fail if one of the subpatterns has
		        more than one client.
		    skip_identities_fn : TODO
		    name
		        Allows to override this optimizer name.
		    pdb : bool
		        If True, we invoke pdb when the first node in the pattern matches.
		    tracks : optional
		        The values that self.tracks() will return. Useful to speed up
		        optimization sometimes.
		    get_nodes : optional
		        If you provide `tracks`, you must provide this parameter. It must be a
		        function that takes the tracked node and returns a list of nodes on
		        which we will try this optimizer.
		
		    Notes
		    -----
		    `tracks` and `get_nodes` can be used to make this optimizer track a less
		    frequent Op, so this will make this optimizer tried less frequently.
		
		    Examples
		    --------
		    PatternSub((add, 'x', 'y'), (add, 'y', 'x'))
		    PatternSub((multiply, 'x', 'x'), (square, 'x'))
		    PatternSub((subtract, (add, 'x', 'y'), 'y'), 'x')
		    PatternSub((power, 'x', Constant(double, 2.0)), (square, 'x'))
		    PatternSub((boggle, {'pattern': 'x',
		                         'constraint': lambda expr: expr.type == scrabble}),
		               (scrabble, 'x'))
		    
		
		This instance does: Elemwise{sub,no_inplace}(z, Elemwise{mul,no_inplace}(alpha subject to <function <lambda> at 0x7f2876602510>, SparseDot(x, y))) -> Usmm{no_inplace}(Elemwise{neg,no_inplace}(alpha), x, y, z)
	**/
	static public var local_usmm : Dynamic;
	static public var local_usmm_csc_dense_inplace : Dynamic;
	static public var local_usmm_csx : Dynamic;
	static public function mul_s_d_csc(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function mul_s_d_csr(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function mul_s_v_csr(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var print_function : Dynamic;
	static public function register_canonicalize(lopt:Dynamic, ?tags:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function register_specialize(lopt:Dynamic, ?tags:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function sampling_dot_csr(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function sd_csc(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function sd_csr(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function structured_add_s_v_csr(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function usmm(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function usmm_csc_dense(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function usmm_csc_dense_inplace(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}