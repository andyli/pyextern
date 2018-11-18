/* This file is generated, do not edit! */
package theano.tensor.opt;
@:pythonImport("theano.tensor.opt") extern class Opt_Module {
	static public var ALL_REDUCE : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _fill_chain(new_out:Dynamic, orig_inputs:Dynamic):Dynamic;
	static public var _logger : Dynamic;
	static public var absolute_import : Dynamic;
	static public function add_calculate(num:Dynamic, denum:Dynamic, ?aslist:Dynamic, ?out_type:Dynamic):Dynamic;
	static public function add_canonizer(fgraph:Dynamic):Dynamic;
	static public function advanced_inc_subtensor1(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function advanced_subtensor(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function advanced_subtensor1(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function apply_local_dimshuffle_lift(_var:Dynamic):Dynamic;
	/**
		Apply as many times as required the optimization local_useless_rebroadcast
		and local_rebroadcast_lift.
		
		Parameters
		----------
		rval: a Variable
		
		Returns
		-------
		A Variable (the same if no optimization can be applied)
	**/
	static public function apply_rebroadcast_opt(rval:Dynamic):Dynamic;
	static public function assert_(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function assert_op(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function attempt_distribution(factor:Dynamic, num:Dynamic, denum:Dynamic, out_type:Dynamic):Dynamic;
	/**
		Return a Variable with the same shape and dtype as the template,
		filled by broadcasting value through it. `value` will be cast as
		necessary.
	**/
	static public function broadcast_like(value:Dynamic, template:Dynamic, fgraph:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Convert x/abs(x) into sign(x). 
	**/
	static public function check_for_x_over_absX(numerators:Dynamic, denominators:Dynamic):Dynamic;
	static public var config : Dynamic;
	static public var constant_folding : Dynamic;
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
	static public function distribute_greedy(pos_pairs:Dynamic, neg_pairs:Dynamic, num:Dynamic, denum:Dynamic, out_type:Dynamic, ?minscore:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public function elemwise_max_input_fct(node:Dynamic):Dynamic;
	/**
		Parameters
		----------
		b1
		    The broadcastable attribute of a tensor type.
		b2
		    The broadcastable attribute of a tensor type.
		
		Returns
		-------
		bool
		    True if the broadcastable patterns b1 and b2 are such that b2 is
		    broadcasted to b1's shape and not the opposite.
	**/
	static public function encompasses_broadcastable(b1:Dynamic, b2:Dynamic):Dynamic;
	/**
		This function is basically a call to tensor.get_scalar_constant_value.
		
		The main difference is the behaviour in case of failure. While
		get_scalar_constant_value raises an TypeError, this function returns x,
		as a tensor if possible. If x is a ScalarVariable from a
		scalar_from_tensor, we remove the conversion. If x is just a
		ScalarVariable, we convert it to a tensor with tensor_from_scalar.
	**/
	static public function extract_constant(x:Dynamic, ?elemwise:Dynamic, ?only_process_constants:Dynamic):Dynamic;
	static public var fuse_seqopt : Dynamic;
	/**
		Given a slice [start:stop:step] transform it into a canonical form
		that respects the conventions imposed by python and numpy.
		
		In a canonical form a slice is represented by a canonical form slice,
		in which 0 <= start <= stop <= length and step > 0, and a flag which says
		if the resulting set of numbers needs to be reversed or not.
	**/
	static public function get_canonical_form_slice(theslice:Dynamic, length:Dynamic):Dynamic;
	/**
		Used by erf/erfc opt to track less frequent op.
	**/
	static public function get_clients(node:Dynamic):Dynamic;
	/**
		Used by erf/erfc opt to track less frequent op.
	**/
	static public function get_clients2(node:Dynamic):Dynamic;
	/**
		Given a list of inputs to the subtensor and its idx_list reorders
		the inputs according to the idx list to get the right values.
		
		If get_counts=True, instead returns the number of inputs consumed
		during this process.
	**/
	static public function get_idx_list(inputs:Dynamic, idx_list:Dynamic, ?get_count:Dynamic):Dynamic;
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
		Uses the TopoOptimizer from the input nodes to output nodes of the graph.
	**/
	static public function in2out(?local_opts:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function inplace_elemwise_optimizer(fgraph:Dynamic):Dynamic;
	static public var integer_types : Dynamic;
	/**
		Given two data types (as strings), check if converting to
		type2 from type1 constitutes an upcast.
		Differs from theano.scalar.upcast
	**/
	static public function is_an_upcast(type1:Dynamic, type2:Dynamic):Dynamic;
	static public function is_dimshuffle_useless(new_order:Dynamic, input:Dynamic):Dynamic;
	/**
		Given two consecutive operations, check if they are the
		provided pair of inverse functions.
	**/
	static public function is_inverse_pair(node_op:Dynamic, prev_op:Dynamic, inv_pair:Dynamic):Dynamic;
	/**
		Return an iterator over the (key, value) pairs of a dictionary.
	**/
	static public function iteritems(d:Dynamic, ?kw:python.KwArgs<Dynamic>):Dynamic;
	static public var local_0_dot_x : Dynamic;
	static public var local_IncSubtensor_serialize : Dynamic;
	static public var local_abs_lift : Dynamic;
	static public var local_abs_merge : Dynamic;
	static public var local_add_canonizer : Dynamic;
	/**
		Fuse consecutive add or mul in one such node with more inputs.
		
		It is better to fuse add/mul that way then in a Composite node as
		this make the inner graph of the Composite smaller. This allow to
		put more computation in a Composite before hitting the max
		recusion limit when pickling Composite.
	**/
	static public function local_add_mul_fusion(node:Dynamic):Dynamic;
	static public var local_add_specialize : Dynamic;
	static public var local_adv_sub1_adv_inc_sub1 : Dynamic;
	static public var local_alloc_empty_to_zeros : Dynamic;
	static public var local_alloc_unary : Dynamic;
	static public var local_canonicalize_alloc : Dynamic;
	static public var local_cast_cast : Dynamic;
	static public var local_dimshuffle_lift : Dynamic;
	static public var local_div_switch_sink : Dynamic;
	static public var local_div_to_inv : Dynamic;
	static public var local_elemwise_alloc : Dynamic;
	static public function local_elemwise_alloc_op(ElemwiseOP:Dynamic, AllocOP:Dynamic, DimShuffleOP:Dynamic):Dynamic;
	/**
		As part of specialization, we fuse two consecutive elemwise Ops of the
		same shape.
		
		For mixed dtype, we let the Composite op do the cast. It lets the C
		compiler do the cast.
		The number of dimensions is validated at call time by theano itself.
	**/
	static public function local_elemwise_fusion(node:Dynamic):Dynamic;
	/**
		We parametrize it to make it work for Elemwise and GpuElemwise op.
		
		Parameters
		----------
		OP
		    GpuElemwise or Elemwise class (the one that we want to fuse)
		max_input_fct
		    A function that returns the maximum number of inputs
		    that this elemwise can take (useful for GpuElemwise).
		    GPU kernel currently has a limit of 256 bytes for
		    the size of all parameters passed to it. As currently
		    we pass many information only by parameter, we must
		    limit how many ops we fuse together to avoid busting
		    that 256 limit.
		
		    On the CPU we limit to 32 input variables
		    since that is the maximum numpy support.
	**/
	static public function local_elemwise_fusion_op(OP:Dynamic, ?max_input_fct:Dynamic, ?maker:Dynamic):Dynamic;
	static public var local_elemwise_sub_zeros : Dynamic;
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
		    
		
		This instance does: Elemwise{add,no_inplace}(-1, Elemwise{erf,no_inplace}(x)) -> Elemwise{neg,no_inplace}(Elemwise{erfc,no_inplace}(x))
	**/
	static public var local_erf_minus_one : Dynamic;
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
		    
		
		This instance does: Elemwise{add,no_inplace}(-1, Elemwise{erfc,no_inplace}(Elemwise{neg,no_inplace}(x))) -> Elemwise{erf,no_inplace}(x)
	**/
	static public var local_erf_neg_minus_one : Dynamic;
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
		    
		
		This instance does: Elemwise{add,no_inplace}(-1, Elemwise{erfc,no_inplace}(Elemwise{mul,no_inplace}(-1, x))) -> Elemwise{erf,no_inplace}(x)
	**/
	static public var local_erf_neg_minus_one2 : Dynamic;
	static public var local_expm1 : Dynamic;
	static public var local_fill_sink : Dynamic;
	static public var local_fill_to_alloc : Dynamic;
	static public var local_flatten_lift : Dynamic;
	static public var local_func_inv : Dynamic;
	static public var local_grad_log_erfc_neg : Dynamic;
	static public var local_greedy_distributor : Dynamic;
	static public var local_incsubtensor_of_zeros : Dynamic;
	static public var local_incsubtensor_of_zeros_to_setsubtensor : Dynamic;
	static public var local_inplace_incsubtensor1 : Dynamic;
	static public var local_inplace_setsubtensor : Dynamic;
	static public var local_intdiv_by_one : Dynamic;
	static public var local_inv_canon : Dynamic;
	static public var local_join_1 : Dynamic;
	static public var local_join_empty : Dynamic;
	static public var local_join_make_vector : Dynamic;
	static public var local_lift_transpose_through_dot : Dynamic;
	static public var local_log1p : Dynamic;
	static public var local_log_add : Dynamic;
	static public var local_log_erfc : Dynamic;
	static public var local_log_sum_exp : Dynamic;
	static public var local_merge_alloc : Dynamic;
	static public var local_merge_switch_same_cond : Dynamic;
	static public var local_mul_canonizer : Dynamic;
	static public var local_mul_specialize : Dynamic;
	static public var local_mul_switch_sink : Dynamic;
	static public var local_mul_to_sqr : Dynamic;
	static public var local_mul_zero : Dynamic;
	static public var local_neg_div_neg : Dynamic;
	static public var local_neg_neg : Dynamic;
	static public var local_neg_to_mul : Dynamic;
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
		    
		
		This instance does: Elemwise{add,no_inplace}(1, Elemwise{neg,no_inplace}(Elemwise{erfc,no_inplace}(x))) -> Elemwise{erf,no_inplace}(x)
	**/
	static public var local_one_add_neg_erfc : Dynamic;
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
		    
		
		This instance does: Elemwise{sub,no_inplace}(1, Elemwise{erf,no_inplace}(x)) -> Elemwise{erfc,no_inplace}(x)
	**/
	static public var local_one_minus_erf : Dynamic;
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
		    
		
		This instance does: Elemwise{add,no_inplace}(1, Elemwise{mul,no_inplace}(-1, Elemwise{erf,no_inplace}(x))) -> Elemwise{erfc,no_inplace}(x)
	**/
	static public var local_one_minus_erf2 : Dynamic;
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
		    
		
		This instance does: Elemwise{sub,no_inplace}(1, Elemwise{erfc,no_inplace}(x)) -> Elemwise{erf,no_inplace}(x)
	**/
	static public var local_one_minus_erfc : Dynamic;
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
		    
		
		This instance does: Elemwise{add,no_inplace}(1, Elemwise{neg,no_inplace}(Elemwise{erfc,no_inplace}(x))) -> Elemwise{erf,no_inplace}(x)
	**/
	static public var local_one_minus_erfc2 : Dynamic;
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
		    
		
		This instance does: Elemwise{add,no_inplace}(1, Elemwise{mul,no_inplace}(-1, Elemwise{erfc,no_inplace}(x))) -> Elemwise{erf,no_inplace}(x)
	**/
	static public var local_one_minus_erfc3 : Dynamic;
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
		    
		
		This instance does: Elemwise{add,no_inplace}(1, Elemwise{erf,no_inplace}(x)) -> Elemwise{erfc,no_inplace}(Elemwise{neg,no_inplace}(x))
	**/
	static public var local_one_plus_erf : Dynamic;
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
		    
		
		This instance does: Elemwise{add,no_inplace}(1, Elemwise{neg,no_inplace}(Elemwise{erf,no_inplace}(x))) -> Elemwise{erfc,no_inplace}(x)
	**/
	static public var local_one_plus_neg_erf : Dynamic;
	static public var local_op_of_op : Dynamic;
	static public var local_opt_alloc : Dynamic;
	static public var local_pow_canonicalize : Dynamic;
	static public var local_pow_specialize : Dynamic;
	static public var local_pow_specialize_device : Dynamic;
	static public var local_rebroadcast_lift : Dynamic;
	static public var local_reduce_broadcastable : Dynamic;
	static public var local_reduce_join : Dynamic;
	static public var local_remove_all_assert : Dynamic;
	static public var local_remove_useless_assert : Dynamic;
	static public function local_reshape_chain(op:Dynamic):Dynamic;
	static public var local_reshape_lift : Dynamic;
	static public var local_reshape_to_dimshuffle : Dynamic;
	static public var local_scalar_tensor_scalar : Dynamic;
	static public var local_set_to_inc_subtensor : Dynamic;
	static public var local_setsubtensor_of_constants : Dynamic;
	static public var local_shape_to_shape_i : Dynamic;
	static public var local_subtensor_inc_subtensor : Dynamic;
	static public var local_subtensor_lift : Dynamic;
	static public var local_subtensor_make_vector : Dynamic;
	static public var local_subtensor_merge : Dynamic;
	static public var local_subtensor_of_alloc : Dynamic;
	static public var local_subtensor_of_dot : Dynamic;
	static public var local_subtensor_remove_broadcastable_index : Dynamic;
	static public var local_sum_prod_all_to_none : Dynamic;
	static public var local_sum_prod_div_dimshuffle : Dynamic;
	static public var local_sum_prod_mul_by_scalar : Dynamic;
	static public var local_sumsqr2dot : Dynamic;
	static public var local_tensor_scalar_tensor : Dynamic;
	static public var local_track_shape_i : Dynamic;
	static public var local_upcast_elemwise_constant_inputs : Dynamic;
	static public var local_useless_alloc : Dynamic;
	static public var local_useless_composite : Dynamic;
	static public var local_useless_dimshuffle_in_reshape : Dynamic;
	static public var local_useless_elemwise : Dynamic;
	static public var local_useless_elemwise_comparison : Dynamic;
	static public var local_useless_fill : Dynamic;
	static public var local_useless_inc_subtensor : Dynamic;
	static public var local_useless_inc_subtensor_alloc : Dynamic;
	static public var local_useless_rebroadcast : Dynamic;
	static public var local_useless_reduce : Dynamic;
	static public var local_useless_reshape : Dynamic;
	static public var local_useless_slice : Dynamic;
	static public var local_useless_split : Dynamic;
	static public var local_useless_subtensor : Dynamic;
	static public var local_useless_switch : Dynamic;
	static public var local_useless_tile : Dynamic;
	static public var local_useless_topk : Dynamic;
	static public var local_view_op : Dynamic;
	static public var local_zero_div : Dynamic;
	/**
		Convert python litterals to theano constants in subtensor arguments.
	**/
	static public function make_constant(args:Dynamic):Dynamic;
	static public function make_vector(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function merge_broadcastables(broadcastables:Dynamic):Dynamic;
	/**
		 This function merges two slices into a single slice. The code works on
		 the assumption that:
		
		 a) slice1 is actually a slice and not an index, while slice2
		    can be just an index.
		
		 b) the two slices **have been applied consecutively** on the same
		    tensor
		
		The output slice is **not** in canonical form, but actually just a slice
		that can be applied to a tensor to produce the same output as applying
		the two consecutive slices.
		``len1`` is the length of the tensor **before** applying the first slice,
		while ``len2`` is the length **after** applying the first slice.
	**/
	static public function merge_two_slices(slice1:Dynamic, len1:Dynamic, slice2:Dynamic, len2:Dynamic):Dynamic;
	static public function mul_calculate(num:Dynamic, denum:Dynamic, ?aslist:Dynamic, ?out_type:Dynamic):Dynamic;
	static public function mul_canonizer(fgraph:Dynamic):Dynamic;
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
	static public function register_canonicalize(lopt:Dynamic, ?tags:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function register_specialize(lopt:Dynamic, ?tags:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function register_specialize_device(lopt:Dynamic, ?tags:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function register_stabilize(lopt:Dynamic, ?tags:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function register_uncanonicalize(lopt:Dynamic, ?tags:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function register_useless(lopt:Dynamic, ?tags:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Partition a list of variables into two kinds:
		scalar constants, and the rest.
	**/
	static public function scalarconsts_rest(inputs:Dynamic, ?elemwise:Dynamic, ?only_process_constants:Dynamic):Dynamic;
	static public function topo_constant_folding(fgraph:Dynamic):Dynamic;
	static public function values_eq_approx_remove_inf(a:Dynamic, b:Dynamic):Dynamic;
	static public function values_eq_approx_remove_inf_nan(a:Dynamic, b:Dynamic):Dynamic;
	static public function values_eq_approx_remove_nan(a:Dynamic, b:Dynamic):Dynamic;
}