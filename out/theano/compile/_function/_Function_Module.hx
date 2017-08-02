/* This file is generated, do not edit! */
package theano.compile._function;
@:pythonImport("theano.compile.function") extern class _Function_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __docformat__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _logger : Dynamic;
	static public var absolute_import : Dynamic;
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
	/**
		Return a Function that will calculate the outputs from the inputs.
		
		Parameters
		----------
		inputs : list of `SymbolicInput` or `In` instances
		outputs : a SymbolicOutput or a list of `SymbolicOutput` or `Out` instances
		    The return value of the returned function will match the format of this
		    argument (either the value itself or a list of one or more return
		    values).
		mode : descriptive string or Mode instance
		    Default of None means to use `config.mode` (see below for descriptive
		    string list).
		name : str
		    An optional name for this function. If used, the profile mode will print the
		    time spent in this function.
		accept_inplace : bool
		    True iff the graph can contain inplace operations prior to the
		    optimization phase (default is False).
		profile : None or ProfileStats instance
		on_unused_input : {'raise', 'warn', 'ignore', None}
		    What to do if a variable in the 'inputs' list is not used in the graph.
		output_keys :
		    If the outputs were provided to theano.function as a list, then
		    output_keys is None. Otherwise, if outputs were provided as a dict,
		    output_keys is the sorted list of keys from the outputs.
		
		Notes
		-----
		Currently, the library provides the following mode strings:
		
		- FAST_RUN (default) (optimize without too much time)
		
		- FAST_COMPILE (minimal optimization)
		
		- DebugMode: verify many internal conditions that are normally assumed
		  (slow)
	**/
	static public function orig_function(inputs:Dynamic, outputs:Dynamic, ?mode:Dynamic, ?accept_inplace:Dynamic, ?name:Dynamic, ?profile:Dynamic, ?on_unused_input:Dynamic, ?output_keys:Dynamic):Dynamic;
	/**
		Function-constructor for graphs with shared variables.
		
		Parameters
		----------
		params : list of either Variable or In instances
		    Function parameters, these are not allowed to be shared variables.
		outputs : list of Variables or Out instances
		    Expressions to compute.
		mode : string or `theano.compile.Mode` instance
		    Compilation mode.
		updates : iterable over pairs (shared_variable, new_expression). List, tuple or dict.
		    Update the values for SharedVariable inputs according to these
		    expressions
		givens : iterable over pairs (Var1, Var2) of Variables. List, tuple or dict.
		    The Var1 and Var2 in each pair must have the same Type. Specific
		    substitutions to make in the computation graph (Var2 replaces Var1).
		no_default_updates : either bool or list of Variables
		    If True, do not perform any automatic update on Variables.
		    If False (default), perform them all. Else, perform automatic updates
		    on all Variables that are neither in "updates" nor in
		    "no_default_updates".
		accept_inplace : bool
		    True iff the graph can contain inplace operations prior to the
		    optimization phase (default is False). *Note* this parameter is unsupported,
		    and its use is not recommended.
		name : None or string
		    Attaches a name to the profiling result of this function.
		allow_input_downcast : bool
		    True means that the values passed as inputs when calling the function
		    can be silently downcasted to fit the dtype of the corresponding
		    Variable, which may lose precision. False means that it will only be cast to a more
		    general, or precise, type. None (default) is almost like
		    False, but allows downcasting of Python float scalars to
		    floatX.
		profile : None, True, str, or ProfileStats instance
		    Accumulate profiling information into a given ProfileStats instance.
		    None is the default, and means to use the value of config.profile.
		    If argument is `True` then a new ProfileStats instance will be used.
		    If argument is a string, a new ProfileStats instance will be created
		    with that string as its `message` attribute. This profiling object will
		    be available via self.profile.
		on_unused_input : {'raise', 'warn','ignore', None}
		    What to do if a variable in the 'inputs' list is not used in the graph.
		
		Returns
		-------
		theano.compile.Function
		    A callable object that will compute the outputs (given the inputs) and
		    update the implicit function arguments according to the `updates`.
		
		Notes
		-----
		Regarding givens: Be careful to make sure that these substitutions are
		independent--behaviour when Var1 of one pair appears in the graph leading
		to Var2 in another expression is undefined. Replacements specified with
		givens are different from optimizations in that Var2 is not expected to be
		equivalent to Var1.
	**/
	static public function pfunc(params:Dynamic, ?outputs:Dynamic, ?mode:Dynamic, ?updates:Dynamic, ?givens:Dynamic, ?no_default_updates:Dynamic, ?accept_inplace:Dynamic, ?name:Dynamic, ?rebuild_strict:Dynamic, ?allow_input_downcast:Dynamic, ?profile:Dynamic, ?on_unused_input:Dynamic, ?output_keys:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public var string_types : Dynamic;
}