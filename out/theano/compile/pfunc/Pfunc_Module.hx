/* This file is generated, do not edit! */
package theano.compile.pfunc;
@:pythonImport("theano.compile.pfunc") extern class Pfunc_Module {
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
	static public function _pfunc_param_to_in(param:Dynamic, ?strict:Dynamic, ?allow_downcast:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var config : Dynamic;
	static public var division : Dynamic;
	/**
		Return an iterator over pairs present in the 'pairs' input.
		
		Parameters
		----------
		pairs : dictionary or iterable
		    The pairs to iterate upon. These may be stored either as (key, value)
		    items in a dictionary, or directly as pairs in any kind of iterable
		    structure.
		
		Returns
		-------
		iterable
		    An iterable yielding pairs.
	**/
	static public function iter_over_pairs(pairs:Dynamic):Dynamic;
	/**
		Return an iterator over the (key, value) pairs of a dictionary.
	**/
	static public function iteritems(d:Dynamic, ?kw:python.KwArgs<Dynamic>):Dynamic;
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
}