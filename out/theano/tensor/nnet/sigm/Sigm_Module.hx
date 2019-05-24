/* This file is generated, do not edit! */
package theano.tensor.nnet.sigm;
@:pythonImport("theano.tensor.nnet.sigm") extern class Sigm_Module {
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
		bool
		    True iff expr is a constant close to 1.
	**/
	static public function _is_1(expr:Dynamic):Dynamic;
	static public function _skip_mul_1(r:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Compute the Variable that is the output of a multiplication tree.
		
		This is the inverse of the operation performed by `parse_mul_tree`, i.e.
		compute_mul(parse_mul_tree(tree)) == tree.
		
		Parameters
		----------
		tree
		    A multiplication tree (as output by `parse_mul_tree`).
		
		Returns
		-------
		object
		    A Variable that computes the multiplication represented by the tree.
	**/
	static public function compute_mul(tree:Dynamic):Dynamic;
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
		An approximation of sigmoid.
		
		More approximate and faster than ultra_fast_sigmoid.
		
		Approx in 3 parts: 0, scaled linear, 1.
		
		Removing the slope and shift does not make it faster.
	**/
	static public function hard_sigmoid(x:Dynamic):Dynamic;
	/**
		Returns
		-------
		object
		    If 't' is of the form (1+exp(x)), return (False, x).
		    Else return None.
	**/
	static public function is_1pexp(t:Dynamic, ?only_process_constants:Dynamic):Dynamic;
	/**
		Match a variable with either of the `exp(x)` or `-exp(x)` patterns.
		
		Parameters
		----------
		var
		    The Variable to analyze.
		
		Returns
		-------
		tuple
		    A pair (b, x) with `b` a boolean set to True if `var` is of the
		    form `-exp(x)` and False if `var` is of the form `exp(x)`. If `var`
		    cannot be cast into either form, then return `None`.
	**/
	static public function is_exp(_var:Dynamic):Dynamic;
	/**
		Match a variable with `x * y * z * ...`.
		
		Parameters
		----------
		var
		    The Variable to analyze.
		
		Returns
		-------
		object
		    A list [x, y, z, ...] if `var` is of the form `x * y * z * ...`,
		    or None if `var` cannot be cast into this form.
	**/
	static public function is_mul(_var:Dynamic):Dynamic;
	/**
		Match a variable with the `-x` pattern.
		
		Parameters
		----------
		var
		    The Variable to analyze.
		
		Returns
		-------
		object
		    `x` if `var` is of the form `-x`, or None otherwise.
	**/
	static public function is_neg(_var:Dynamic):Dynamic;
	static public var local_1msigmoid : Dynamic;
	static public var local_exp_over_1_plus_exp : Dynamic;
	static public var local_hard_sigmoid : Dynamic;
	static public var local_inv_1_plus_exp : Dynamic;
	static public var local_sigm_times_exp : Dynamic;
	static public var local_ultra_fast_sigmoid : Dynamic;
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
		    
		
		This instance does: Elemwise{log,no_inplace}(Elemwise{sub,no_inplace}(y subject to <function _is_1 at 0x7f2876a60620>, sigmoid(x))) -> Elemwise{neg,no_inplace}(softplus(x))
	**/
	static public var log1msigm_to_softplus : Dynamic;
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
		    
		
		This instance does: Elemwise{log1p,no_inplace}(Elemwise{neg,no_inplace}(sigmoid(x))) -> Elemwise{neg,no_inplace}(softplus(x))
	**/
	static public var log1p_neg_sigmoid : Dynamic;
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
		    
		
		This instance does: Elemwise{log1p,no_inplace}(Elemwise{exp,no_inplace}(x)) -> softplus(x)
	**/
	static public var log1pexp_to_softplus : Dynamic;
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
		    
		
		This instance does: Elemwise{log,no_inplace}(sigmoid(x)) -> Elemwise{neg,no_inplace}(softplus(Elemwise{neg,no_inplace}(x)))
	**/
	static public var logsigm_to_softplus : Dynamic;
	/**
		Parse a tree of multiplications starting at the given root.
		
		Parameters
		----------
		root
		    The variable at the root of the tree.
		
		Returns
		-------
		object
		    A tree where each non-leaf node corresponds to a multiplication
		    in the computation of `root`, represented by the list of its inputs.
		    Each input is a pair [n, x] with `n` a boolean value indicating whether
		    sub-tree `x` should be negated.
		
		Examples
		--------
		    x * y               -> [False, [[False, x], [False, y]]]
		    -(x * y)            -> [True, [[False, x], [False, y]]]
		    -x * y              -> [False, [[True, x], [False, y]]]
		    -x                  -> [True, x]
		    (x * y) * -z        -> [False, [[False, [[False, x], [False, y]]],
		                                    [True, z]]]
	**/
	static public function parse_mul_tree(root:Dynamic):Dynamic;
	static public function partition_num_or_denom(r:Dynamic, f:Dynamic):Dynamic;
	/**
		Core processing of the `local_sigm_times_exp` optimization.
		
		This recursive function operates on a multiplication tree as output by
		`parse_mul_tree`. It walks through the tree and modifies it in-place
		by replacing matching pairs (exp, sigmoid) with the desired optimized
		version.
		
		Parameters
		----------
		tree
		    The sub-tree to operate on.
		exp_x
		    List of arguments x so that `exp(x)` exists somewhere in the whole
		    multiplication tree. Each argument is a pair (x, leaf) with `x` the
		    argument of the exponential, and `leaf` the corresponding leaf in the
		    multiplication tree (of the form [n, exp(x)] -- see `parse_mul_tree`).
		    If None, this argument is initialized to an empty list.
		exp_minus_x
		    Similar to `exp_x`, but for `exp(-x)`.
		sigm_x
		    Similar to `exp_x`, but for `sigmoid(x)`.
		sigm_minus_x
		    Similar to `exp_x`, but for `sigmoid(-x)`.
		parent
		    Parent of `tree` (None if `tree` is the global root).
		child_idx
		    Index of `tree` in its parent's inputs (None if `tree` is the global
		    root).
		full_tree
		    The global multiplication tree (should not be set except by recursive
		    calls to this function). Used for debugging only.
		
		Returns
		-------
		bool
		    True if a modification was performed somewhere in the whole multiplication
		    tree, or False otherwise.
	**/
	static public function perform_sigm_times_exp(tree:Dynamic, ?exp_x:Dynamic, ?exp_minus_x:Dynamic, ?sigm_x:Dynamic, ?sigm_minus_x:Dynamic, ?parent:Dynamic, ?child_idx:Dynamic, ?full_tree:Dynamic):Dynamic;
	static public function pprint(?args:python.VarArgs<Dynamic>):Dynamic;
	static public var print_function : Dynamic;
	static public var register_local_1msigmoid : Dynamic;
	/**
		Attempt to replace a leaf of a multiplication tree.
		
		We search for a leaf in `leaves` whose argument is `arg`, and if we find
		one, we remove it from `leaves` and add to `new_leaves` a leaf with
		argument `arg` and variable `op(arg)`.
		
		Parameters
		----------
		arg
		    The argument of the leaf we are looking for.
		leaves
		    List of leaves to look into. Each leaf should be a pair
		    (x, l) with `x` the argument of the Op found in the leaf, and `l` the
		    actual leaf as found in a multiplication tree output by `parse_mul_tree`
		    (i.e. a pair [boolean, variable]).
		new_leaves
		    If a replacement occurred, then the leaf is removed from `leaves`
		    and added to the list `new_leaves` (after being modified by `op`).
		op
		    A function that, when applied to `arg`, returns the Variable
		    we want to replace the original leaf variable with.
		neg : bool
		    If True, then the boolean value associated to the leaf should
		    be swapped. If False, then this value should remain unchanged.
		
		Returns
		-------
		bool
		    True if a replacement occurred, or False otherwise.
	**/
	static public function replace_leaf(arg:Dynamic, leaves:Dynamic, new_leaves:Dynamic, op:Dynamic, neg:Dynamic):Dynamic;
	static public function scalar_sigmoid(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function scalar_softplus(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function sigmoid(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function sigmoid_inplace(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Simplify a multiplication tree.
		
		Parameters
		----------
		tree
		    A multiplication tree (as output by `parse_mul_tree`).
		
		Returns
		-------
		object
		    A multiplication tree computing the same output as `tree` but without
		    useless multiplications by 1 nor -1 (identified by leaves of the form
		    [False, None] or [True, None] respectively). Useless multiplications
		    (with less than two inputs) are also removed from the tree.
	**/
	static public function simplify_mul(tree:Dynamic):Dynamic;
	static public function softplus(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function ultra_fast_scalar_sigmoid(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function ultra_fast_sigmoid(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function ultra_fast_sigmoid_inplace(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function values_eq_approx_remove_inf(a:Dynamic, b:Dynamic):Dynamic;
}