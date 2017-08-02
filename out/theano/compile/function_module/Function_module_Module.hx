/* This file is generated, do not edit! */
package theano.compile.function_module;
@:pythonImport("theano.compile.function_module") extern class Function_module_Module {
	static public var DUPLICATE : Dynamic;
	static public var NODEFAULT : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __checkers : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __docformat__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _constructor_Function(maker:Dynamic, input_storage:Dynamic, inputs_data:Dynamic):Dynamic;
	static public function _constructor_FunctionMaker(kwargs:Dynamic):Dynamic;
	static public var _logger : Dynamic;
	static public function _pickle_Function(f:Dynamic):Dynamic;
	static public function _pickle_FunctionMaker(self:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Return the variable to which v is aliased by view_maps and destroy_maps.
	**/
	static public function alias_root(v:Dynamic):Dynamic;
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
	/**
		Reconstruct the full "updates" dictionary, mapping from FunctionGraph input
		variables to the fgraph outputs that will replace their values.
		
		Returns
		-------
		dict variable -> variable
	**/
	static public function fgraph_updated_vars(fgraph:Dynamic, expanded_inputs:Dynamic):Dynamic;
	/**
		Return a human-readable description of named and un-named inputs.
	**/
	static public function get_info_on_inputs(named_inputs:Dynamic, n_unnamed_inputs:Dynamic):Dynamic;
	/**
		Given an fgraph and a list of variables, returns the list or set
		of all variables which may share the same underlying data storage
		as any of the specified variables. Used internally by function,
		FunctionMaker.
		
		This list (or set) is also refered to as no_recycling sometimes,
		especially by linker code.
	**/
	static public function infer_reuse_pattern(fgraph:Dynamic, outputs_to_disown:Dynamic):Dynamic;
	/**
		Insert deepcopy in the fgraph to break aliasing of outputs
	**/
	static public function insert_deepcopy(fgraph:Dynamic, wrapped_inputs:Dynamic, wrapped_outputs:Dynamic):Dynamic;
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
	static public var ops_with_inner_function : Dynamic;
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
	static public var print_function : Dynamic;
	static public function register_checker(checker:Dynamic):Dynamic;
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