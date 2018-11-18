/* This file is generated, do not edit! */
package theano.sandbox.rng_mrg;
@:pythonImport("theano.sandbox.rng_mrg") extern class Rng_mrg_Module {
	static public var A1p134 : Dynamic;
	static public var A1p72 : Dynamic;
	static public var A2p134 : Dynamic;
	static public var A2p72 : Dynamic;
	static public var M1 : Dynamic;
	static public var M2 : Dynamic;
	static public var MASK12 : Dynamic;
	static public var MASK13 : Dynamic;
	static public var MASK2 : Dynamic;
	static public var MULT2 : Dynamic;
	static public var NORM : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Canonicalise inputs to get valid output sizes for Theano tensors.
		
		Parameters
		----------
		size : int_vector_like
		    Some variable that could serve as the shape for a Theano tensor.
		    This can be an int, a tuple of ints, a list of ints
		    or a Theano Variable with similar properties.
		
		Returns
		-------
		size_var : int_vector
		    A one-dimensional Theano variable encapsulating the given size.
		
		Raises
		------
		ValueError
		    If this method can not build a valid size from the input.
	**/
	static public function _check_size(size:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Return `x`, transformed into a `TensorType`.
		
		This function is often used by `make_node` methods of `Op` subclasses
		to turn ndarrays, numbers, `Scalar` instances, `Apply` instances and
		`TensorType` instances into valid input list elements.
		
		Parameters
		----------
		x : Apply instance, Variable instance, numpy.ndarray, or number
		    This thing will be transformed into a `Variable` in a sensible way. An
		    ndarray argument will not be copied, but a list of numbers will be
		    copied to make an ndarray.
		name : str or None
		    If a new `Variable` instance is created, it will be named with this
		    string.
		ndim : None or integer
		    Return a Variable with this many dimensions.
		
		Raises
		------
		ValueError
		    If an `Apply` with more than one output is fetched or
		    if `x` cannot be made into a Variable with `ndim` dimensions.
		AsTensorError
		    If `x` cannot be converted to a TensorType Variable.
	**/
	static public function as_tensor_variable(x:Dynamic, ?name:Dynamic, ?ndim:Dynamic):Dynamic;
	static public function bool_t(?name:Dynamic):Dynamic;
	/**
		Symbolically cast `x` to a Tensor of type `dtype`.
	**/
	@:native("cast")
	static public function _cast(x:Dynamic, dtype:Dynamic):Dynamic;
	static public var config : Dynamic;
	static public var division : Dynamic;
	static public function ff_2p134(rstate:Dynamic):Dynamic;
	static public function ff_2p72(rstate:Dynamic):Dynamic;
	/**
		Return a :class:`callable object <theano.compile.function_module.Function>`
		that will calculate `outputs` from `inputs`.
		
		Parameters
		----------
		inputs : list of either Variable or In instances.
		    Function parameters, these are not allowed to be shared variables.
		outputs : list or dict of Variables or Out instances.
		    If it is a dict, the keys must be strings. Expressions to compute.
		mode : string or `Mode` instance.
		    Compilation mode.
		updates : iterable over pairs (shared_variable, new_expression). List, tuple
		          or OrderedDict.
		    Updates the values for SharedVariable inputs according to these
		    expressions.
		givens : iterable over pairs (Var1, Var2) of Variables. List, tuple or dict.
		         The Var1 and Var2 in each pair must have the same Type.
		    Specific substitutions to make in the computation graph (Var2 replaces
		    Var1).
		no_default_updates: either bool or list of Variables
		    If True, do not perform any automatic update on Variables. If False
		    (default), perform them all. Else, perform automatic updates on all
		    Variables that are neither in "updates" nor in "no_default_updates".
		accept_inplace : bool
		    True iff the graph can contain inplace operations prior to the
		    optimization phase (default is False). *Note* this parameter is unsupported,
		    and its use is not recommended.
		name : str
		    An optional name for this function. The profile mode will print the time
		    spent in this function.
		rebuild_strict : bool
		    True (Default) is the safer and better tested setting, in which case
		    `givens` must substitute new variables with the same Type as the
		    variables they replace.
		    False is a you-better-know-what-you-are-doing setting, that permits
		    `givens` to replace variables with new variables of any Type.
		    The consequence of changing a Type is that all results depending on that
		    variable may have a different Type too (the graph is rebuilt from inputs
		    to outputs). If one of the new types does not make sense for one of the
		    Ops in the graph, an Exception will be raised.
		allow_input_downcast: bool or None
		    True means that the values passed as inputs when calling the function
		    can be silently down-casted to fit the dtype of the corresponding
		    Variable, which may lose precision. False means that it will only be
		    cast to a more general, or precise, type. None (default) is almost like
		    False, but allows down-casting of Python float scalars to floatX.
		profile: None, True, or ProfileStats instance
		    Accumulate profiling information into a given ProfileStats instance.
		    If argument is `True` then a new ProfileStats instance will be used.
		    If argument is a string, a new ProfileStats instance will be created
		    with that string as its ``message`` attribute.
		    This profiling object will be available via self.profile.
		on_unused_input
		    What to do if a variable in the 'inputs' list is not used in the graph.
		    Possible values are 'raise', 'warn', 'ignore' and None.
		
		Returns
		-------
		:class:`theano.compile.function_module.Function` instance
		    A callable object that will compute the outputs (given the inputs) and
		    update the implicit function arguments according to the `updates`.
		
		Notes
		-----
		Regarding givens: Be careful to make sure that these
		substitutions are independent--behaviour when Var1 of one pair
		appears in the graph leading to Var2 in another expression is
		undefined.  Replacements specified with givens are different
		from optimizations in that Var2 is not expected to be
		equivalent to Var1.
		
		
		Internal documentation:
		
		    What happens when you call theano.function?
		       1. RemoveShared: shared variables are just an abstraction to make
		    things more convenient for the user. The shared variables are
		    transformed into implicit inputs and implicit outputs. The
		    optimizations don't see which variables are shared or not.
		       2. FunctionGraph: determines whether a graph is valid. For example,
		    suppose
		    you merge the two apply nodes in our example above, ie, do the
		    addition and the tanh at the same time. If you propose a merge that
		    changes the resulting dtype or broadcastable pattern of V4, the fgraph
		    will detect this.
		                inplace optimizations: say we have an apply node that
		    does + on V1 and V2, with output V3. We can change the output to be
		    V1, to use less memory. theano must be told that this optimization is
		    happening though, so that other parts of the graph are given the
		    correct (pre + or post + ) version of V1.
		              fgraph will raise an error if any of these types of
		    modifications causes an error
		              fgraph also adds a field called "clients" to all variables.
		    clients is a list of apply nodes that use the variable. this makes it
		    possible to traverse the graph in both directions. this is useful for
		    determining whether to do some optimizations. for example, a fusion
		    operation that removes V3 is not very helpful if V3 is also needed for
		    some other apply node. fusion operations result in a composite op that
		    takes a minigraph of theano scalars and uses this to do elemwise
		    operations on theano tensors
		     3. Optimization
		           How well do optimizations apply to new ops?
		             Usually there are no optimizations for new ops. In fact, new
		    ops can disrupt patterns and break currently working optimizations.
		    Since the Print op, for example, is not known by any optimization,
		    setting a Print op in the middle of a pattern that is usually
		    optimized out will block the optimization. for example, log(1+x)
		    optimizes to log1p(x) but log(1+Print(x)) is unaffected by
		    optimizations.
		             One exception is elemwise ops. If you implement your new op
		    as a scalar op then it will automatically work with all the elemwise
		    fusion machinery.
		
		             Local optimizations try to replace some node in the graph
		    with a different node. In the case of log(1+x), we want to replace the
		    log node.
		
		             def opt_log1p(node):
		                if not isinstance(node.op,Elemwise):
		                   return
		                if not isinstance(node.op.scalar_op, log):
		                   return
		                inp = node.inputs[0]
		                if not inp.owner:
		                   return
		                if not isinstance(inp.owner.op, add):
		                   return
		                inp2 = inp.owner.inputs
		                check that this has length 2, and that one of the inputs
		    is 1. assign the other input to x
		                return log1p(x)
		
		
		     4. Linker
		           The linker uses a Python loop to execute the code associated
		           with all the Apply nodes in the graph in the correct order.
		           The C Virtual Machine (CVM) is a linker that replaces this
		           Python loop with a C loop to avoid continuously changing
		           between Python and C. The CVM is faster for 2 reasons:
		             1) Its internal logic is in C, so no Python interpreter
		                overhead.
		             2) It makes native calls from the VM logic into thunks that
		                have been compiled using the CLinker.
		           The VM is a linker that was developed to prototype the CVM. it
		    was easier to develop the VM in Python then translate it to C instead
		    of just writing it in C from scratch.
	**/
	@:native("function")
	static public function _function(inputs:Dynamic, ?outputs:Dynamic, ?mode:Dynamic, ?updates:Dynamic, ?givens:Dynamic, ?no_default_updates:Dynamic, ?accept_inplace:Dynamic, ?name:Dynamic, ?rebuild_strict:Dynamic, ?allow_input_downcast:Dynamic, ?profile:Dynamic, ?on_unused_input:Dynamic):Dynamic;
	/**
		Return the run-time length of a symbolic vector.
		
		Parameters
		----------
		v
		    A rank-1 TensorType variable.
		
		Raises
		------
		TypeError
		    `v` hasn't the proper type.
		ValueError
		    No special case applies, the length is not known.
		    In general this is not possible, but for a number of special cases
		    the length can be determined at compile / graph-construction time.
		    This function implements these special cases.
	**/
	static public function get_vector_length(v:Dynamic):Dynamic;
	/**
		Return a guess at a good number of streams.
		
		Parameters
		----------
		warn : bool, optional
		    If True, warn when a guess cannot be made (in which case we
		    return 60 * 256).
	**/
	static public function guess_n_streams(size:Dynamic, ?warn:Dynamic):Dynamic;
	static public function int_t(?name:Dynamic):Dynamic;
	static public var integer_types : Dynamic;
	static public function local_optimizer(tracks:Dynamic, ?inplace:Dynamic, ?requirements:Dynamic):Dynamic;
	static public function matVecModM(A:Dynamic, s:Dynamic, m:Dynamic):Dynamic;
	static public function mrg_next_value(rstate:Dynamic, new_rstate:Dynamic, NORM:Dynamic, mask:Dynamic, offset:Dynamic):Dynamic;
	static public var mrg_random_make_inplace : Dynamic;
	/**
		Multiply the first half of v by A with a modulo of m1 and the second half
		by B with a modulo of m2.
		
		Notes
		-----
		The parameters of dot_modulo are passed implicitly because passing them
		explicitly takes more time than running the function's C-code.
	**/
	static public function multMatVect(v:Dynamic, A:Dynamic, m1:Dynamic, B:Dynamic, m2:Dynamic):Dynamic;
	static public var np_int32_vals : Dynamic;
	static public var optdb : Dynamic;
	static public var print_function : Dynamic;
	/**
		Return a SharedVariable Variable, initialized with a copy or
		reference of `value`.
		
		This function iterates over constructor functions to find a
		suitable SharedVariable subclass.  The suitable one is the first
		constructor that accept the given value.  See the documentation of
		:func:`shared_constructor` for the definition of a constructor
		function.
		
		This function is meant as a convenient default.  If you want to use a
		specific shared variable constructor, consider calling it directly.
		
		``theano.shared`` is a shortcut to this function.
		
		.. attribute:: constructors
		
		A list of shared variable constructors that will be tried in reverse
		order.
		
		Notes
		-----
		By passing kwargs, you effectively limit the set of potential constructors
		to those that can accept those kwargs.
		
		Some shared variable have ``borrow`` as extra kwargs.
		`See <http://deeplearning.net/software/theano/tutorial/aliasing.    html#borrowing-when-creating-shared-variables>`_ for details.
		
		Some shared variable have ``broadcastable`` as extra kwargs. As shared
		variable shapes can change, all dimensions default to not being
		broadcastable, even if ``value`` has a shape of 1 along some dimension.
		This parameter allows you to create for example a `row` or `column` 2d
		tensor.
	**/
	static public function shared(value:Dynamic, ?name:Dynamic, ?strict:Dynamic, ?allow_downcast:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Consider the gradient of this variable undefined.
		
		This will generate an error message if its gradient is taken.
		
		The expression itself is unaffected, but when its gradient is
		computed, or the gradient of another expression that this
		expression is a subexpression of, an error message will be generated
		specifying such gradient is not defined.
		
		Parameters
		----------
		x: :class:`~theano.gof.graph.Variable`
		    A Theano expression whose gradient should be undefined.
		
		Returns
		-------
		:class:`~theano.gof.graph.Variable`
		    An expression equivalent to ``x``, with its gradient undefined.
	**/
	static public function undefined_grad(x:Dynamic):Dynamic;
}