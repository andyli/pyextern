/* This file is generated, do not edit! */
package theano.scan_module.scan_op;
@:pythonImport("theano.scan_module.scan_op") extern class Scan_op_Module {
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
	static public var config : Dynamic;
	static public var division : Dynamic;
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
		Return an un-computable symbolic variable of type `x.type`.
		
		If any call to tensor.grad results in an expression containing this
		un-computable variable, an exception (GradUndefinedError) will be
		raised indicating that the gradient on the
		`x_pos`'th input of `op` is mathematically undefined. Likewise if
		any call to theano.function involves this variable.
		
		Optionally adds a comment to the exception explaining why this
		gradient is not defined.
	**/
	static public function grad_undefined(op:Dynamic, x_pos:Dynamic, x:Dynamic, ?comment:Dynamic):Dynamic;
	static public var integer_types : Dynamic;
	/**
		Returns the connection pattern of a subgraph defined by given
		inputs and outputs.
	**/
	static public function io_connection_pattern(inputs:Dynamic, outputs:Dynamic):Dynamic;
	/**
		Return an iterator over the (key, value) pairs of a dictionary.
	**/
	static public function iteritems(d:Dynamic, ?kw:python.KwArgs<Dynamic>):Dynamic;
	static public var print_function : Dynamic;
	static public function profile_printer(message:Dynamic, compile_time:Dynamic, fct_call_time:Dynamic, apply_time:Dynamic, apply_cimpl:Dynamic, outputs_size:Dynamic, file:Dynamic):Dynamic;
	static public function raise_from(value:Dynamic, from_value:Dynamic):Dynamic;
	/**
		Internal function that constructs a new variable from x with the same
		type, but with a different name (old name + tag). This function is used
		by gradient, or the R-op to construct new variables for the inputs of
		the inner graph such that there is no interference between the original
		graph and the newly constructed graph.
	**/
	static public function safe_new(x:Dynamic, ?tag:Dynamic, ?dtype:Dynamic):Dynamic;
	static public var string_types : Dynamic;
}