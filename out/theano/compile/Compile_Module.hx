/* This file is generated, do not edit! */
package theano.compile;
@:pythonImport("theano.compile") extern class Compile_Module {
	static public var DUPLICATE : Dynamic;
	static public var FAST_COMPILE : Dynamic;
	static public var FAST_RUN : Dynamic;
	static public var NODEFAULT : Dynamic;
	static public var OPT_FAST_COMPILE : Dynamic;
	static public var OPT_FAST_RUN : Dynamic;
	static public var OPT_FAST_RUN_STABLE : Dynamic;
	static public var OPT_MERGE : Dynamic;
	static public var OPT_NONE : Dynamic;
	static public var OPT_O2 : Dynamic;
	static public var OPT_O3 : Dynamic;
	static public var OPT_STABILIZE : Dynamic;
	static public var OPT_UNSAFE : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Return the variable to which v is aliased by view_maps and destroy_maps.
	**/
	static public function alias_root(v:Dynamic):Dynamic;
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
	static public function check_equal(x:Dynamic, y:Dynamic):Dynamic;
	static public var config : Dynamic;
	/**
		Upgrade a input shortcut to an In instance.
		
		The rules for upgrading are as follows:
		
		- a `Variable` instance r will be upgraded like `In`(r)
		
		- a tuple (name, r) will be `In`(r, name=name)
		
		- a tuple (r, val) will be `In`(r, value=value, autoname=True)
		
		- a tuple ((r,up), val) will be
		  `In`(r, value=value, update=up, autoname=True)
		
		- a tuple (name, r, val) will be `In`(r, name=name, value=value)
		
		- a tuple (name, (r,up), val) will be
		  `In`(r, name=name, value=val, update=up, autoname=True)
	**/
	static public function convert_function_input(input:Dynamic):Dynamic;
	static public function deep_copy_op(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var division : Dynamic;
	static public var exclude : Dynamic;
	/**
		Reconstruct the full "updates" dictionary, mapping from FunctionGraph input
		variables to the fgraph outputs that will replace their values.
		
		Returns
		-------
		dict variable -> variable
	**/
	static public function fgraph_updated_vars(fgraph:Dynamic, expanded_inputs:Dynamic):Dynamic;
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
	static public function get_default_mode():Dynamic;
	/**
		Return a human-readable description of named and un-named inputs.
	**/
	static public function get_info_on_inputs(named_inputs:Dynamic, n_unnamed_inputs:Dynamic):Dynamic;
	static public function get_mode(orig_string:Dynamic):Dynamic;
	/**
		Given an fgraph and a list of variables, returns the list or set
		of all variables which may share the same underlying data storage
		as any of the specified variables. Used internally by function,
		FunctionMaker.
		
		This list (or set) is also referred to as no_recycling sometimes,
		especially by linker code.
	**/
	static public function infer_reuse_pattern(fgraph:Dynamic, outputs_to_disown:Dynamic):Dynamic;
	static public var inline_ofg_expansion : Dynamic;
	/**
		Insert deepcopy in the fgraph to break aliasing of outputs
	**/
	static public function insert_deepcopy(fgraph:Dynamic, wrapped_inputs:Dynamic, wrapped_outputs:Dynamic):Dynamic;
	static public var instantiated_default_mode : Dynamic;
	/**
		Returns the connection pattern of a subgraph defined by given
		inputs and outputs.
	**/
	static public function io_connection_pattern(inputs:Dynamic, outputs:Dynamic):Dynamic;
	/**
		Return True iff Variables `var1` and `var2` perform the same computation.
		
		By 'performing the same computation', we mean that they must share the same
		graph, so that for instance this function will return False when comparing
		(x * (y * z)) with ((x * y) * z).
		
		The current implementation is not efficient since, when possible, it
		verifies equality by calling two different functions that are expected to
		return the same output. The goal is to verify this assumption, to
		eventually get rid of one of them in the future.
		
		Parameters
		----------
		var1
		    The first Variable to compare.
		var2
		    The second Variable to compare.
		givens
		    Similar to the `givens` argument of `theano.function`, it can be used
		    to perform substitutions in the computational graph of `var1` and
		    `var2`. This argument is associated to neither `var1` nor `var2`:
		    substitutions may affect both graphs if the substituted variable
		    is present in both.
		debug : bool
		    If True, then an exception is raised when we are in a situation where
		    the `equal_computations` implementation cannot be called.
		    This parameter is intended to be used in tests only, to make sure we
		    properly test both implementations.
		
		Examples
		--------
		
		    ======  ======  ======  ======
		    var1    var2    givens  output
		    ======  ======  ======  ======
		    x + 1   x + 1   {}      True
		    x + 1   y + 1   {}      False
		    x + 1   y + 1   {x: y}  True
		    ======  ======  ======  ======
	**/
	static public function is_same_graph(var1:Dynamic, var2:Dynamic, ?givens:Dynamic, ?debug:Dynamic):Dynamic;
	/**
		Return an iterator over the (key, value) pairs of a dictionary.
	**/
	static public function iteritems(d:Dynamic, ?kw:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return an iterator over the keys of a dictionary.
	**/
	static public function iterkeys(d:Dynamic, ?kw:python.KwArgs<Dynamic>):Dynamic;
	static public var local_useless : Dynamic;
	static public var ops_with_inner_function : Dynamic;
	static public var optdb : Dynamic;
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
	static public var predefined_linkers : Dynamic;
	static public var predefined_modes : Dynamic;
	static public var predefined_optimizers : Dynamic;
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
		reduce(function, sequence[, initial]) -> value
		
		Apply a function of two arguments cumulatively to the items of a sequence,
		from left to right, so as to reduce the sequence to a single value.
		For example, reduce(lambda x, y: x+y, [1, 2, 3, 4, 5]) calculates
		((((1+2)+3)+4)+5).  If initial is present, it is placed before the items
		of the sequence in the calculation, and serves as a default when the
		sequence is empty.
	**/
	static public function reduce(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function register_checker(checker:Dynamic):Dynamic;
	/**
		Tell DeepCopyOp how to generate C code for a Theano Type.
		
		Parameters
		----------
		typ : Theano type
		    It must be the Theano class itself and not an instance of the class.
		code: C code
		    Deep copies the Theano type 'typ'. Use %(iname)s and %(oname)s for the
		    input and output C variable names respectively.
		version
		    A number indicating the version of the code, for cache.
	**/
	static public function register_deep_copy_op_c_code(typ:Dynamic, code:Dynamic, ?version:Dynamic):Dynamic;
	/**
		Add a `Linker` which can be referred to by `name` in `Mode`.
	**/
	static public function register_linker(name:Dynamic, linker:Dynamic):Dynamic;
	/**
		Add a `Mode` which can be referred to by `name` in `function`.
	**/
	static public function register_mode(name:Dynamic, mode:Dynamic):Dynamic;
	/**
		Add a `Optimizer` which can be referred to by `name` in `Mode`.
	**/
	static public function register_optimizer(name:Dynamic, opt:Dynamic):Dynamic;
	/**
		Tell Rebroadcast how to generate C code for a Theano Type.
		
		typ : Theano type
		    It must be the Theano class itself and not an instance of the class.
		code : C code
		    That checks if the dimension %(axis)s is of shape 1 for the Theano type
		    'typ'. Use %(iname)s and %(oname)s for the input and output C variable
		    names respectively, and %(axis)s for the axis that we need to check.
		    This code is put in a loop for all axes.
		version
		    A number indicating the version of the code, for cache.
	**/
	static public function register_rebroadcast_c_code(typ:Dynamic, code:Dynamic, ?version:Dynamic):Dynamic;
	/**
		Tell Shape Op how to generate C code for a Theano Type.
		
		Parameters
		----------
		typ : Theano type
		    It must be the Theano class itself and not an instance of the class.
		code : C code
		    Returns a vector representing the shape for the Theano type 'typ'.
		    Use %(iname)s and %(oname)s for the input and output C variable names
		    respectively.
		version
		    A number indicating the version of the code, for cache.
	**/
	static public function register_shape_c_code(type:Dynamic, code:Dynamic, ?version:Dynamic):Dynamic;
	/**
		Tell Shape_i how to generate C code for a Theano Type.
		
		Parameters
		----------
		typ : Theano type
		    It must be the Theano class itself and not an instance of the class.
		code : C code
		    Gets the shape of dimensions %(i)s for the Theano type 'typ'.
		    Use %(iname)s and %(oname)s for the input and output C variable names
		    respectively.
		version
		    A number indicating the version of the code, for cache.
	**/
	static public function register_shape_i_c_code(typ:Dynamic, code:Dynamic, check_input:Dynamic, ?version:Dynamic):Dynamic;
	/**
		Tell SpecifyShape how to generate C code for a Theano Type.
		
		Parameters
		----------
		typ : Theano type
		    It must be the Theano class itself and not an instance of the class.
		code : C code
		    Checks the shape and returns a view for the Theano type 'typ'.
		    Use %(iname)s and %(oname)s for the input and output C variable names
		    respectively. %(shape)s is the vector of shape of %(iname)s.
		    Check that its length is good.
		version
		    A number indicating the version of the code, for cache.
		c_support_code_apply
		    Extra code.
	**/
	static public function register_specify_shape_c_code(typ:Dynamic, code:Dynamic, ?version:Dynamic, ?c_support_code_apply:Dynamic):Dynamic;
	/**
		Tell ViewOp how to generate C code for a Theano Type.
		
		Parameters
		----------
		type : Theano type
		    It must be the Theano class itself and not an instance of the class.
		code : C code
		    Returns a view for the Theano type 'type'. Use %(iname)s and %(oname)s
		    for the input and output C variable names respectively.
		version
		    A number indicating the version of the code, for cache.
	**/
	static public function register_view_op_c_code(type:Dynamic, code:Dynamic, ?version:Dynamic):Dynamic;
	static public function shape(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
	static public function shared_constructor(ctor:Dynamic, ?remove:Dynamic):Dynamic;
	static public function specify_shape(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Makes an FunctionGraph corresponding to the input specs and the output
		specs.  Any SymbolicInput in the input_specs, if its update field
		is not None, will add an output to the FunctionGraph corresponding to that
		update. The return value is the FunctionGraph as well as a list of
		SymbolicOutput instances corresponding to the updates.
		
		If accept_inplace is False, the graph will be checked for inplace
		operations and an exception will be raised if it has any. If
		accept_inplace is True, a DestroyHandler will be added to the FunctionGraph
		if there are any inplace operations.
		
		The returned FunctionGraph is a clone of the graph between the provided
		inputs and outputs.
	**/
	static public function std_fgraph(input_specs:Dynamic, output_specs:Dynamic, ?accept_inplace:Dynamic):Dynamic;
	static public var string_types : Dynamic;
	static public function view_op(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Add to `treeset` all variables that are views of v, given that v is
		not a view.
	**/
	static public function view_tree_set(v:Dynamic, treeset:Dynamic):Dynamic;
}