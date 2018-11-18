/* This file is generated, do not edit! */
package theano.scan_module.scan;
@:pythonImport("theano.scan_module.scan") extern class Scan_Module {
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
	static public var config : Dynamic;
	static public var division : Dynamic;
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
	static public var integer_types : Dynamic;
	/**
		Return an iterator over the (key, value) pairs of a dictionary.
	**/
	static public function iteritems(d:Dynamic, ?kw:python.KwArgs<Dynamic>):Dynamic;
	static public var print_function : Dynamic;
	/**
		Internal function that constructs a new variable from x with the same
		type, but with a different name (old name + tag). This function is used
		by gradient, or the R-op to construct new variables for the inputs of
		the inner graph such that there is no interference between the original
		graph and the newly constructed graph.
	**/
	static public function safe_new(x:Dynamic, ?tag:Dynamic, ?dtype:Dynamic):Dynamic;
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
		    * all past slices of the second output
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
		
		    If you use preallocate and this scan is on GPU, the speed up
		    from the scan allow_gc is small. If you are missing memory,
		    disable the scan allow_gc could help you run graph that
		    request much memory.
		
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