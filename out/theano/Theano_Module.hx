/* This file is generated, do not edit! */
package theano;
@:pythonImport("theano") extern class Theano_Module {
	/**
		Computes the L operation on `f` wrt to `wrt` evaluated at points given
		in `eval_points`. Mathematically this stands for the jacobian of `f` wrt
		to `wrt` left muliplied by the eval points.
		
		:type f: Variable or list of Variables
		    `f` stands for the output of the computational graph to which you
		    want to apply the L operator
		:type wrt: Variable or list of `Variables`s
		    variables for which you compute the L operator of the expression
		    described by `f`
		:type eval_points: Variable or list of Variables
		                    evalutation points for each of the variables in `f`
		
		:rtype: :class:`~theano.gof.Variable` or list/tuple of Variables depending on type of f
		:return: symbolic expression such that
		    L_op[i] = sum_i ( d f[i] / d wrt[j]) eval_point[i]
		    where the indices in that expression are magic multidimensional
		    indices that specify both the position within a list and all
		    coordinates of the tensor element in the last
		    If `f` is a list/tuple, then return a list/tuple with the results.
	**/
	static public function Lop(f:Dynamic, wrt:Dynamic, eval_points:Dynamic, ?consider_constant:Dynamic, ?disconnected_inputs:Dynamic):Dynamic;
	/**
		Computes the R operation on `f` wrt to `wrt` evaluated at points given
		in `eval_points`. Mathematically this stands for the jacobian of `f` wrt
		to `wrt` right muliplied by the eval points.
		
		:type f: Variable or list of Variables
		         `f` stands for the output of the computational graph to which you
		         want to apply the R operator
		:type wrt: Variable or list of `Variables`s
		           variables for which you compute the R operator of the expression
		           described by `f`
		:type eval_points: Variable or list of Variables
		                   evalutation points for each of the variables in `wrt`
		:rtype: :class:`~theano.gof.Variable` or list/tuple of Variables depending on type of f
		:return: symbolic expression such that
		    R_op[i] = sum_j ( d f[i] / d wrt[j]) eval_point[j]
		    where the indices in that expression are magic multidimensional
		    indices that specify both the position within a list and all
		    coordinates of the tensor element in the last.
		    If `wrt` is a list/tuple, then return a list/tuple with the results.
	**/
	static public function Rop(f:Dynamic, wrt:Dynamic, eval_points:Dynamic):Dynamic;
	static public var __api_version__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __docformat__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var __version__ : Dynamic;
	/**
		Convert the input to a Numpy array.
		
		This function is almost identical to ``numpy.asarray``, but it should be
		used instead of its numpy counterpart when a data type is provided in
		order to perform type conversion if required.
		The reason is that ``numpy.asarray`` may not actually update the array's
		data type to the user-provided type. For more information see ticket
		http://projects.scipy.org/numpy/ticket/870.
		
		In that case, we check that both dtype have the same string
		description (byte order, basic type, and number of bytes), and
		return a view with the desired dtype.
		
		This function's name starts with a '_' to indicate that it is meant to be
		used internally. It is imported so as to be available directly through
		    theano._asarray
	**/
	static public function _asarray(a:Dynamic, dtype:Dynamic, ?order:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Decorator that converts a function into a basic Theano op that will call
		the supplied function as its implementation.
		
		It takes an optional infer_shape parameter that should be a callable with
		this signature:
		
		    def infer_shape(node, input_shapes):
		        ...
		        return output_shapes
		
		Here `input_shapes` and `output_shapes` are lists of tuples that represent
		the shape of the corresponding inputs/outputs.
		
		This should not be used when performance is a concern since the very basic
		nature of the resulting Op may interfere with certain graph optimizations.
		
		Examples
		--------
		@as_op(itypes=[theano.tensor.fmatrix, theano.tensor.fmatrix],
		       otypes=[theano.tensor.fmatrix])
		def numpy_dot(a, b):
		    return numpy.dot(a, b)
	**/
	static public function as_op(itypes:Dynamic, otypes:Dynamic, ?infer_shape:Dynamic):Dynamic;
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
	static public var config : Dynamic;
	static public var division : Dynamic;
	/**
		Return a symbolic matrix/dot product between l and r 
	**/
	static public function dot(l:Dynamic, r:Dynamic):Dynamic;
	/**
		Similar behaviour as haskell's foldl.
		
		Parameters
		----------
		fn
		    The function that ``foldl`` applies at each iteration step
		    (see ``scan`` for more info).
		sequences
		    List of sequences over which ``foldl`` iterates
		    (see ``scan`` for more info).
		outputs_info
		    List of dictionaries describing the outputs of reduce
		    (see ``scan`` for more info).
		non_sequences
		    List of arguments passed to `fn`. ``foldl`` will not iterate over
		    these arguments (see ``scan`` for more info).
		mode
		    See ``scan``.
		name
		    See ``scan``.
	**/
	static public function foldl(fn:Dynamic, sequences:Dynamic, outputs_info:Dynamic, ?non_sequences:Dynamic, ?mode:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Similar behaviour as haskell' foldr.
		
		Parameters
		----------
		fn
		    The function that ``foldr`` applies at each iteration step
		    (see ``scan`` for more info).
		sequences
		    List of sequences over which ``foldr`` iterates
		    (see ``scan`` for more info).
		outputs_info
		    List of dictionaries describing the outputs of reduce
		    (see ``scan`` for more info).
		non_sequences
		    List of arguments passed to `fn`. ``foldr`` will not iterate over these
		    arguments (see ``scan`` for more info).
		mode
		    See ``scan``.
		name
		    See ``scan``.
	**/
	static public function foldr(fn:Dynamic, sequences:Dynamic, outputs_info:Dynamic, ?non_sequences:Dynamic, ?mode:Dynamic, ?name:Dynamic):Dynamic;
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
		This is helpful to make a reproducible case for problems during Theano
		compilation.
		
		Ex:
		
		replace `theano.function(...)` by
		`theano.function_dump('filename.pkl', ...)`.
		
		If you see this, you were probably asked to use this function to
		help debug a particular case during the compilation of a Theano
		function. `function_dump` allows you to easily reproduce your
		compilation without generating any code. It pickles all the objects and
		parameters needed to reproduce a call to `theano.function()`. This
		includes shared variables and their values. If you do not want
		that, you can choose to replace shared variables values with zeros by
		calling set_value(...) on them before calling `function_dump`.
		
		To load such a dump and do the compilation:
		
		>>> from six.moves import cPickle
		>>> import theano
		>>> d = cPickle.load(open("func_dump.bin", "rb"))  # doctest: +SKIP
		>>> f = theano.function(**d)  # doctest: +SKIP
		
		Note:
		The parameter `extra_tag_to_remove` is passed to the StripPickler used.
		To pickle graph made by Blocks, it must be:
		`['annotations', 'replacement_of', 'aggregation_scheme', 'roles']`
	**/
	static public function function_dump(filename:Dynamic, inputs:Dynamic, ?outputs:Dynamic, ?mode:Dynamic, ?updates:Dynamic, ?givens:Dynamic, ?no_default_updates:Dynamic, ?accept_inplace:Dynamic, ?name:Dynamic, ?rebuild_strict:Dynamic, ?allow_input_downcast:Dynamic, ?profile:Dynamic, ?on_unused_input:Dynamic, ?extra_tag_to_remove:Dynamic):Dynamic;
	static public function generic(?name:Dynamic):Dynamic;
	/**
		return the constant scalar(0-D) value underlying variable `v`
		
		If v is the output of dimshuffles, fills, allocs, rebroadcasts, cast
		this function digs through them.
		
		If theano.sparse is also there, we will look over CSM op.
		
		If `v` is not some view of constant data, then raise a
		tensor.basic.NotScalarConstantError.
	**/
	static public function get_scalar_constant_value(v:Dynamic):Dynamic;
	/**
		Return symbolic gradients for one or more variables with respect to some
		cost.
		
		For more information about how automatic differentiation works in Theano,
		see :mod:`gradient`. For information on how to implement the gradient of
		a certain Op, see :func:`grad`.
		
		Parameters
		----------
		cost : :class:`~theano.gof.Variable` scalar (0-dimensional) tensor variable or None
		    Value with respect to which we are differentiating.  May be
		    `None` if known_grads is provided.
		wrt : :class:`~theano.gof.Variable` or list of Variables
		    term[s] for which we want gradients
		consider_constant : list of variables
		    expressions not to backpropagate through
		disconnected_inputs : {'ignore', 'warn', 'raise'}
		    Defines the behaviour if some of the variables in `wrt` are
		    not part of the computational graph computing `cost` (or if
		    all links are non-differentiable). The possible values are:
		
		    - 'ignore': considers that the gradient on these parameters is zero.
		    - 'warn': consider the gradient zero, and print a warning.
		    - 'raise': raise DisconnectedInputError.
		add_names : bool
		    If True, variables generated by grad will be named
		    (d<cost.name>/d<wrt.name>) provided that both cost and wrt
		    have names
		known_grads : OrderedDict, optional
		    A ordered dictionary mapping variables to their gradients. This is
		    useful in the case where you know the gradient on some
		    variables but do not know the original cost.
		return_disconnected : {'zero', 'None', 'Disconnected'}
		    - 'zero' : If wrt[i] is disconnected, return value i will be
		               wrt[i].zeros_like()
		    - 'None' : If wrt[i] is disconnected, return value i will be
		               None
		    - 'Disconnected' : returns variables of type DisconnectedType
		null_gradients : {'raise', 'return'}
		    Defines the behaviour if some of the variables in `wrt` have a
		    null gradient. The possibles values are:
		
		    - 'raise' : raise a NullTypeGradError exception
		    - 'return' : return the null gradients
		
		Returns
		-------
		variable or list/tuple of variables (matches `wrt`)
		    symbolic expression of gradient of `cost` with respect to each
		    of the `wrt` terms.  If an element of `wrt` is not
		    differentiable with respect to the output, then a zero
		    variable is returned.
	**/
	static public function grad(cost:Dynamic, wrt:Dynamic, ?consider_constant:Dynamic, ?disconnected_inputs:Dynamic, ?add_names:Dynamic, ?known_grads:Dynamic, ?return_disconnected:Dynamic, ?null_gradients:Dynamic):Dynamic;
	static public var logging_default_formatter : Dynamic;
	static public var logging_default_handler : Dynamic;
	/**
		Similar behaviour as python's map.
		
		Parameters
		----------
		fn
		    The function that ``map`` applies at each iteration step
		    (see ``scan`` for more info).
		sequences
		    List of sequences over which ``map`` iterates 
		    (see ``scan`` for more info).
		non_sequences
		    List of arguments passed to ``fn``. ``map`` will not iterate over
		    these arguments (see ``scan`` for more info).
		truncate_gradient
		    See ``scan``.
		go_backwards : bool
		    Decides the direction of iteration. True means that sequences are parsed
		    from the end towards the begining, while False is the other way around.
		mode
		    See ``scan``.
		name
		    See ``scan``.
	**/
	static public function map(fn:Dynamic, sequences:Dynamic, ?non_sequences:Dynamic, ?truncate_gradient:Dynamic, ?go_backwards:Dynamic, ?mode:Dynamic, ?name:Dynamic):Dynamic;
	static public function pp(?args:python.VarArgs<Dynamic>):Dynamic;
	static public function pprint(?args:python.VarArgs<Dynamic>):Dynamic;
	static public var predefined_linkers : Dynamic;
	static public var predefined_modes : Dynamic;
	static public var predefined_optimizers : Dynamic;
	static public var print_function : Dynamic;
	/**
		Similar behaviour as python's reduce.
		
		Parameters
		----------
		fn
		    The function that ``reduce`` applies at each iteration step
		    (see ``scan``  for more info).
		sequences
		    List of sequences over which ``reduce`` iterates
		    (see ``scan`` for more info).
		outputs_info
		    List of dictionaries describing the outputs of
		    reduce (see ``scan`` for more info).
		non_sequences
		    List of arguments passed to ``fn``. ``reduce`` will
		                      not iterate over these arguments (see ``scan`` for
		                      more info).
		go_backwards : bool 
		    Decides the direction of iteration. True means that sequences are parsed
		    from the end towards the begining, while False is the other way around.
		mode
		    See ``scan``.
		name
		    See ``scan``.
	**/
	static public function reduce(fn:Dynamic, sequences:Dynamic, outputs_info:Dynamic, ?non_sequences:Dynamic, ?go_backwards:Dynamic, ?mode:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This function constructs and applies a Scan op to the provided
		arguments.
		
		Parameters
		----------
		fn
		    ``fn`` is a function that describes the operations involved in one
		    step of ``scan``. ``fn`` should construct variables describing the
		    output of one iteration step. It should expect as input theano
		    variables representing all the slices of the input sequences
		    and previous values of the outputs, as well as all other arguments
		    given to scan as ``non_sequences``. The order in which scan passes
		    these variables to ``fn``  is the following :
		
		    * all time slices of the first sequence
		    * all time slices of the second sequence
		    * ...
		    * all time slices of the last sequence
		    * all past slices of the first output
		    * all past slices of the second otuput
		    * ...
		    * all past slices of the last output
		    * all other arguments (the list given as `non_sequences` to
		        scan)
		
		    The order of the sequences is the same as the one in the list
		    `sequences` given to scan. The order of the outputs is the same
		    as the order of ``outputs_info``. For any sequence or output the
		    order of the time slices is the same as the one in which they have
		    been given as taps. For example if one writes the following :
		
		    .. code-block:: python
		
		        scan(fn, sequences = [ dict(input= Sequence1, taps = [-3,2,-1])
		                             , Sequence2
		                             , dict(input =  Sequence3, taps = 3) ]
		               , outputs_info = [ dict(initial =  Output1, taps = [-3,-5])
		                                , dict(initial = Output2, taps = None)
		                                , Output3 ]
		               , non_sequences = [ Argument1, Argument2])
		
		    ``fn`` should expect the following arguments in this given order:
		
		    #. ``Sequence1[t-3]``
		    #. ``Sequence1[t+2]``
		    #. ``Sequence1[t-1]``
		    #. ``Sequence2[t]``
		    #. ``Sequence3[t+3]``
		    #. ``Output1[t-3]``
		    #. ``Output1[t-5]``
		    #. ``Output3[t-1]``
		    #. ``Argument1``
		    #. ``Argument2``
		
		    The list of ``non_sequences`` can also contain shared variables
		    used in the function, though ``scan`` is able to figure those
		    out on its own so they can be skipped. For the clarity of the
		    code we recommend though to provide them to scan. To some extend
		    ``scan`` can also figure out other ``non sequences`` (not shared)
		    even if not passed to scan (but used by `fn`). A simple example of
		    this would be :
		
		    .. code-block:: python
		
		        import theano.tensor as TT
		        W   = TT.matrix()
		        W_2 = W**2
		        def f(x):
		            return TT.dot(x,W_2)
		
		    The function is expected to return two things. One is a list of
		    outputs ordered in the same order as ``outputs_info``, with the
		    difference that there should be only one output variable per
		    output initial state (even if no tap value is used). Secondly
		    `fn` should return an update dictionary (that tells how to
		    update any shared variable after each iteration step). The
		    dictionary can optionally be given as a list of tuples. There is
		    no constraint on the order of these two list, ``fn`` can return
		    either ``(outputs_list, update_dictionary)`` or
		    ``(update_dictionary, outputs_list)`` or just one of the two (in
		    case the other is empty).
		
		    To use ``scan`` as a while loop, the user needs to change the
		    function ``fn`` such that also a stopping condition is returned.
		    To do so, he/she needs to wrap the condition in an ``until`` class.
		    The condition should be returned as a third element, for example:
		
		    .. code-block:: python
		
		        ...
		        return [y1_t, y2_t], {x:x+1}, theano.scan_module.until(x < 50)
		
		    Note that a number of steps (considered in here as the maximum
		    number of steps ) is still required even though a condition is
		    passed (and it is used to allocate memory if needed). = {}):
		
		sequences
		    ``sequences`` is the list of Theano variables or dictionaries
		    describing the sequences ``scan`` has to iterate over. If a
		    sequence is given as wrapped in a dictionary, then a set of optional
		    information can be provided about the sequence. The dictionary
		    should have the following keys:
		
		    * ``input`` (*mandatory*) -- Theano variable representing the
		      sequence.
		
		    * ``taps`` -- Temporal taps of the sequence required by ``fn``.
		      They are provided as a list of integers, where a value ``k``
		      impiles that at iteration step ``t`` scan will pass to ``fn``
		      the slice ``t+k``. Default value is ``[0]``
		
		    Any Theano variable in the list ``sequences`` is automatically
		    wrapped into a dictionary where ``taps`` is set to ``[0]``
		
		outputs_info
		    ``outputs_info`` is the list of Theano variables or dictionaries
		    describing the initial state of the outputs computed
		    recurrently. When this initial states are given as dictionary
		    optional information can be provided about the output corresponding
		    to these initial states. The dictionary should have the following
		    keys:
		
		    * ``initial`` -- Theano variable that represents the initial
		      state of a given output. In case the output is not computed
		      recursively (think of a map) and does not require an initial
		      state this field can be skipped. Given that (only) the previous
		      time step of the output is used by ``fn``, the initial state
		      **should have the same shape** as the output and **should not
		      involve a downcast** of the data type of the output. If multiple
		      time taps are used, the initial state should have one extra
		      dimension that should cover all the possible taps. For example
		      if we use ``-5``, ``-2`` and ``-1`` as past taps, at step 0,
		      ``fn`` will require (by an abuse of notation) ``output[-5]``,
		      ``output[-2]`` and ``output[-1]``. This will be given by
		      the initial state, which in this case should have the shape
		      (5,)+output.shape. If this variable containing the initial
		      state is called ``init_y`` then ``init_y[0]`` *corresponds to*
		      ``output[-5]``. ``init_y[1]`` *correponds to* ``output[-4]``,
		      ``init_y[2]`` corresponds to ``output[-3]``, ``init_y[3]``
		      coresponds to ``output[-2]``, ``init_y[4]`` corresponds to
		      ``output[-1]``. While this order might seem strange, it comes
		      natural from splitting an array at a given point. Assume that
		      we have a array ``x``, and we choose ``k`` to be time step
		      ``0``. Then our initial state would be ``x[:k]``, while the
		      output will be ``x[k:]``. Looking at this split, elements in
		      ``x[:k]`` are ordered exactly like those in ``init_y``.
		    * ``taps`` -- Temporal taps of the output that will be pass to
		      ``fn``. They are provided as a list of *negative* integers,
		      where a value ``k`` implies that at iteration step ``t`` scan
		      will pass to ``fn`` the slice ``t+k``.
		
		    ``scan`` will follow this logic if partial information is given:
		
		    * If an output is not wrapped in a dictionary, ``scan`` will wrap
		      it in one assuming that you use only the last step of the output
		      (i.e. it makes your tap value list equal to [-1]).
		    * If you wrap an output in a dictionary and you do not provide any
		      taps but you provide an initial state it will assume that you are
		      using only a tap value of -1.
		    * If you wrap an output in a dictionary but you do not provide any
		      initial state, it assumes that you are not using any form of
		      taps.
		    * If you provide a ``None`` instead of a variable or a empty
		      dictionary ``scan`` assumes that you will not use any taps for
		      this output (like for example in case of a map)
		
		    If ``outputs_info`` is an empty list or None, ``scan`` assumes
		    that no tap is used for any of the outputs. If information is
		    provided just for a subset of the outputs an exception is
		    raised (because there is no convention on how scan should map
		    the provided information to the outputs of ``fn``)
		
		non_sequences
		    ``non_sequences`` is the list of arguments that are passed to
		    ``fn`` at each steps. One can opt to exclude variable
		    used in ``fn`` from this list as long as they are part of the
		    computational graph, though for clarity we encourage not to do so.
		
		n_steps
		    ``n_steps`` is the number of steps to iterate given as an int
		    or Theano scalar. If any of the input sequences do not have
		    enough elements, scan will raise an error. If the *value is 0* the
		    outputs will have *0 rows*. If n_steps is not provided, ``scan`` will
		    figure out the amount of steps it should run given its input
		    sequences. ``n_steps`` < 0 is not supported anymore.
		
		truncate_gradient
		    ``truncate_gradient`` is the number of steps to use in truncated
		    BPTT.  If you compute gradients through a scan op, they are
		    computed using backpropagation through time. By providing a
		    different value then -1, you choose to use truncated BPTT instead
		    of classical BPTT, where you go for only ``truncate_gradient``
		    number of steps back in time.
		
		go_backwards
		    ``go_backwards`` is a flag indicating if ``scan`` should go
		    backwards through the sequences. If you think of each sequence
		    as indexed by time, making this flag True would mean that
		    ``scan`` goes back in time, namely that for any sequence it
		    starts from the end and goes towards 0.
		
		name
		    When profiling ``scan``, it is crucial to provide a name for any
		    instance of ``scan``. The profiler will produce an overall
		    profile of your code as well as profiles for the computation of
		    one step of each instance of ``scan``. The ``name`` of the instance
		    appears in those profiles and can greatly help to disambiguate
		    information.
		
		mode
		    It is recommended to leave this argument to None, especially
		    when profiling ``scan`` (otherwise the results are not going to
		    be accurate). If you prefer the computations of one step of
		    ``scan`` to be done differently then the entire function, you
		    can use this parameter to describe how the computations in this
		    loop are done (see ``theano.function`` for details about
		    possible values and their meaning).
		
		profile
		    Flag or string. If true, or different from the empty string, a
		    profile object will be created and attached to the inner graph of
		    scan. In case ``profile`` is True, the profile object will have the
		    name of the scan instance, otherwise it will have the passed string.
		    Profile object collect (and print) information only when running the
		    inner graph with the new cvm linker ( with default modes,
		    other linkers this argument is useless)
		
		allow_gc
		    Set the value of allow gc for the internal graph of scan.  If
		    set to None, this will use the value of config.scan.allow_gc.
		
		    The full scan behavior related to allocation is determined by
		    this value and the Theano flag allow_gc. If the flag allow_gc
		    is True (default) and this scan parameter allow_gc is False
		    (default), then we let scan allocate all intermediate memory
		    on the first iteration, those are not garbage collected them
		    during that first iteration (this is determined by the scan
		    allow_gc). This speed up allocation of the following
		    iteration. But we free all those temp allocation at the end of
		    all iterations (this is what the Theano flag allow_gc mean).
		
		    If you use cnmem and this scan is on GPU, the speed up from
		    the scan allow_gc is small. If you are missing memory, disable
		    the scan allow_gc could help you run graph that request much
		    memory.
		
		strict
		    If true, all the shared variables used in ``fn`` must be provided as a
		    part of ``non_sequences`` or ``sequences``.
		
		return_list
		    If True, will always return a list, even if there is only 1 output.
		
		Returns
		-------
		tuple
		    Tuple of the form (outputs, updates); ``outputs`` is either a
		    Theano variable or a list of Theano variables representing the
		    outputs of ``scan`` (in the same order as in ``outputs_info``).
		    ``updates`` is a subclass of dictionary specifying the update rules for
		    all shared variables used in scan.
		    This dictionary should be passed to ``theano.function`` when you compile
		    your function. The change compared to a normal dictionary is that we
		    validate that keys are SharedVariable and addition of those dictionary
		    are validated to be consistent.
	**/
	static public function scan(fn:Dynamic, ?sequences:Dynamic, ?outputs_info:Dynamic, ?non_sequences:Dynamic, ?n_steps:Dynamic, ?truncate_gradient:Dynamic, ?go_backwards:Dynamic, ?mode:Dynamic, ?name:Dynamic, ?profile:Dynamic, ?allow_gc:Dynamic, ?strict:Dynamic, ?return_list:Dynamic):Dynamic;
	/**
		Scan function that uses less memory, but is more restrictive.
		
		In :func:`~theano.scan`, if you compute the gradient of the output
		with respect to the input, you will have to store the intermediate
		results at each time step, which can be prohibitively huge. This
		function allows to do ``save_every_N`` steps of forward computations
		without storing the intermediate results, and to recompute them during
		the gradient computation.
		
		Notes
		-----
		Current assumptions:
		
		* Every sequence has the same length.
		* If ``n_steps`` is specified, it has the same value as the length of
		  any sequence.
		* The value of ``save_every_N`` divides the number of steps the scan
		  will run without remainder.
		* Only singly-recurrent and non-recurrent outputs are used.
		  No multiple recurrences.
		* Only the last timestep of any output will ever be used.
		
		Parameters
		----------
		fn
		    ``fn`` is a function that describes the operations involved in one
		    step of ``scan``. See the documentation of :func:`~theano.scan`
		    for more information.
		
		sequences
		    ``sequences`` is the list of Theano variables or dictionaries
		    describing the sequences ``scan`` has to iterate over. All
		    sequences must be the same length in this version of ``scan``.
		
		outputs_info
		    ``outputs_info`` is the list of Theano variables or dictionaries
		    describing the initial state of the outputs computed
		    recurrently.
		
		non_sequences
		    ``non_sequences`` is the list of arguments that are passed to
		    ``fn`` at each steps. One can opt to exclude variable
		    used in ``fn`` from this list as long as they are part of the
		    computational graph, though for clarity we encourage not to do so.
		
		n_steps
		    ``n_steps`` is the number of steps to iterate given as an int
		    or Theano scalar (> 0). If any of the input sequences do not have
		    enough elements, scan will raise an error. If n_steps is not provided,
		    ``scan`` will figure out the amount of steps it should run given its
		    input sequences.
		
		save_every_N
		    ``save_every_N`` is the number of steps to go without storing
		    the computations of ``scan`` (ie they will have to be recomputed
		    during the gradient computation).
		
		padding
		    If the length of the sequences is not a multiple of ``save_every_N``,
		    the sequences will be zero padded to make this version of ``scan``
		    work properly, but will also result in a memory copy. It can be
		    avoided by setting ``padding`` to False, but you need to make
		    sure the length of the sequences is a multple of ``save_every_N``.
		
		Returns
		-------
		tuple
		    Tuple of the form ``(outputs, updates)`` as in :func:`~theano.scan`, but
		    with a small change: It only contain the output at each
		    ``save_every_N`` step. The time steps that are not returned by
		    this function will be recomputed during the gradient computation
		    (if any).
		
		See Also
		--------
		:func:`~theano.scan`: Looping in Theano.
	**/
	static public function scan_checkpoints(fn:Dynamic, ?sequences:Dynamic, ?outputs_info:Dynamic, ?non_sequences:Dynamic, ?name:Dynamic, ?n_steps:Dynamic, ?save_every_N:Dynamic, ?padding:Dynamic):Dynamic;
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
		This function return a new variable whose gradient will be
		stored in a sparse format instead of dense.
		
		Currently only variable created by AdvancedSubtensor1 is supported.
		i.e. a_tensor_var[an_int_vector].
		
		.. versionadded:: 0.6rc4
	**/
	static public function sparse_grad(_var:Dynamic):Dynamic;
	/**
		With respect to `wrt`, computes gradients of cost and/or from
		existing `start` gradients, up to the `end` variables of a
		symbolic digraph.  In other words, computes gradients for a
		subgraph of the symbolic theano function. Ignores all disconnected
		inputs.
		
		This can be useful when one needs to perform the gradient descent
		iteratively (e.g. one layer at a time in an MLP), or when a
		particular operation is not differentiable in theano
		(e.g. stochastic sampling from a multinomial). In the latter case,
		the gradient of the non-differentiable process could be
		approximated by user-defined formula, which could be calculated
		using the gradients of a cost with respect to samples (0s and
		1s). These gradients are obtained by performing a subgraph_grad
		from the `cost` or previously known gradients (`start`) up to the
		outputs of the stochastic process (`end`).  A dictionary mapping
		gradients obtained from the user-defined differentiation of the
		process, to variables, could then be fed into another
		subgraph_grad as `start` with any other `cost` (e.g. weight
		decay).
		
		In an MLP, we could use subgraph_grad to iteratively backpropagate:
		
		.. code-block:: python
		
		    x, t = theano.tensor.fvector('x'), theano.tensor.fvector('t')
		    w1 = theano.shared(np.random.randn(3,4))
		    w2 = theano.shared(np.random.randn(4,2))
		    a1 = theano.tensor.tanh(theano.tensor.dot(x,w1))
		    a2 = theano.tensor.tanh(theano.tensor.dot(a1,w2))
		    cost2 = theano.tensor.sqr(a2 - t).sum()
		    cost2 += theano.tensor.sqr(w2.sum())
		    cost1 = theano.tensor.sqr(w1.sum())
		
		    params = [[w2],[w1]]
		    costs = [cost2,cost1]
		    grad_ends = [[a1], [x]]
		
		    next_grad = None
		    param_grads = []
		    for i in xrange(2):
		        param_grad, next_grad = theano.subgraph_grad(
		            wrt=params[i], end=grad_ends[i],
		            start=next_grad, cost=costs[i]
		        )
		        next_grad = dict(zip(grad_ends[i], next_grad))
		        param_grads.extend(param_grad)
		
		:type wrt: list of variables
		:param wrt:
		  Gradients are computed with respect to `wrt`.
		
		:type end: list of variables
		:param end:
		  Theano variables at which to end gradient descent (they are
		  considered constant in theano.grad).  For convenience, the
		  gradients with respect to these variables are also returned.
		
		:type start: dictionary of variables
		:param start:
		  If not None, a dictionary mapping variables to their
		  gradients. This is useful when the gradient on some variables
		  are known. These are used to compute the gradients backwards up
		  to the variables in `end` (they are used as known_grad in
		  theano.grad).
		
		:type cost: :class:`~theano.gof.Variable` scalar (0-dimensional) variable
		:param cost:
		  Additional costs for which to compute the gradients.  For
		  example, these could be weight decay, an l1 constraint, MSE,
		  NLL, etc. May optionally be None if start is provided.  Warning
		  : If the gradients of `cost` with respect to any of the `start`
		  variables is already part of the `start` dictionary, then it may
		  be counted twice with respect to `wrt` and `end`.
		
		  .. warning::
		
		    If the gradients of `cost` with respect to any of the `start`
		    variables is already part of the `start` dictionary, then it
		    may be counted twice with respect to `wrt` and `end`.
		
		
		:type details: bool
		:param details:
		  When True, additionally returns the list of gradients from
		  `start` and of `cost`, respectively, with respect to `wrt` (not
		  `end`).
		
		:rtype: Tuple of 2 or 4 Lists of Variables
		
		:return: Returns lists of gradients with respect to `wrt` and `end`,
		        respectively.
		
		.. versionadded:: 0.7
	**/
	static public function subgraph_grad(wrt:Dynamic, end:Dynamic, ?start:Dynamic, ?cost:Dynamic, ?details:Dynamic):Dynamic;
	/**
		Run tests for module using nose.
		
		:type verbose: int
		:param verbose: Verbosity value for test outputs, in the range 1-10.
		                Default is 1.
		
		:type extra_argv: list
		:param extra_argv: List with any extra arguments to pass to nosetests.
		
		:type coverage: bool
		:param coverage: If True, report coverage of Theano
		                 code. Default is False.
		
		:type capture: bool
		:param capture: If True, capture the standard output of the tests, like
		                nosetests does in command-line. The output of failing
		                tests will be displayed at the end. Default is True.
		
		:type knownfailure: bool
		:param knownfailure: If True, tests raising KnownFailureTest will
		        not be considered Errors nor Failure, but reported as
		        "known failures" and treated quite like skipped tests.
		        Default is True.
		
		:returns: Returns the result of running the tests as a
		          ``nose.result.TextTestResult`` object.
	**/
	static public function test(?verbose:Dynamic, ?extra_argv:Dynamic, ?coverage:Dynamic, ?capture:Dynamic, ?knownfailure:Dynamic):Dynamic;
	static public var theano_logger : Dynamic;
}