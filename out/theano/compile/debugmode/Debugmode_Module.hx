/* This file is generated, do not edit! */
package theano.compile.debugmode;
@:pythonImport("theano.compile.debugmode") extern class Debugmode_Module {
	static public var _NODEFAULT : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __docformat__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Raise BadDestroyMap if necessary, update dr_vals.
		
		Returns a list of output variables that actually worked inplace
		(their value is aliased to the value of at least one input).
		
		It modify the storage_map to remove node.inputs variable that have
		been destroyed.
	**/
	static public function _check_inputs(node:Dynamic, storage_map:Dynamic, r_vals:Dynamic, dr_vals:Dynamic, active_nodes:Dynamic, ?clobber_dr_vals:Dynamic, ?perform:Dynamic, ?warn_input_not_reused:Dynamic):Dynamic;
	/**
		Try to apply thunk() on different output storages.
	**/
	static public function _check_preallocated_output(node:Dynamic, thunk:Dynamic, prealloc_modes:Dynamic, def_val:Dynamic, storage_map:Dynamic, r_vals:Dynamic, dr_vals:Dynamic, perform:Dynamic, active_order_set:Dynamic, inplace_outs:Dynamic, init_outputs:Dynamic):Dynamic;
	/**
		Parameters
		----------
		warn_err
		    If 0, no warning, if 1 warning, if 2 error.
	**/
	static public function _check_strides_match(a:Dynamic, b:Dynamic, warn_err:Dynamic, op:Dynamic):Dynamic;
	/**
		This functions raises a BadViewMap exception when it detects the
		following:
		- Output node storages aliased to input storage, with no declaration
		  in view_map.
		- If not aliased to an input, check if two outputs are aliased together
		  and used subsequently in the graph.
	**/
	static public function _check_viewmap(node:Dynamic, storage_map:Dynamic):Dynamic;
	/**
		Use a simple algorithm to find broken optimizations.
		
		This algorithm is simple to understand, but sometimes when there's
		a problem it identifies the wrong optimization as the culprit.
		The problem stems from the fact that results are not evaluated in
		chronological order (looking at when they were introduced to the
		graph).
	**/
	static public function _find_bad_optimizations(order:Dynamic, reasons:Dynamic, r_vals:Dynamic):Dynamic;
	/**
		Use a simple algorithm to find broken optimizations.
		
		This algorithm is simple to understand, but sometimes when there's
		a problem it identifies the wrong optimization as the culprit.
		The problem stems from the fact that results are not evaluated in
		chronological order (looking at when they were introduced to the
		graph).
	**/
	static public function _find_bad_optimizations0(order:Dynamic, reasons:Dynamic, r_vals:Dynamic):Dynamic;
	static public function _find_bad_optimizations1(order:Dynamic, reasons:Dynamic, r_vals:Dynamic):Dynamic;
	/**
		Use a simple algorithm to find broken optimizations.
		
		This algorithm is simple to understand, but sometimes when there's
		a problem it identifies the wrong optimization as the culprit.
		The problem stems from the fact that results are not evaluated in
		chronological order (looking at when they were introduced to the
		graph).
	**/
	static public function _find_bad_optimizations2(order:Dynamic, reasons:Dynamic, r_vals:Dynamic):Dynamic;
	/**
		Preallocate outputs in different memory layouts.
	**/
	static public function _get_preallocated_maps(node:Dynamic, thunk:Dynamic, prealloc_modes:Dynamic, def_val:Dynamic, storage_map:Dynamic, r_vals:Dynamic, dr_vals:Dynamic, perform:Dynamic, active_order_set:Dynamic, inplace_outs:Dynamic, init_outputs:Dynamic):Dynamic;
	/**
		Returns
		-------
		bool
		    True if `var` is used by another node in the graph.
	**/
	static public function _is_used_in_graph(_var:Dynamic):Dynamic;
	/**
		Parameters
		----------
		a
		    Any object
		
		Returns
		-------
		object
		    A copy of `a` that shares no internal storage with the original
		    (a deep copy). This function handles numpy arrays specially, because
		    copy.deepcopy() called on a 0-d array will return a numpy scalar,
		    not an array.
	**/
	static public function _lessbroken_deepcopy(a:Dynamic):Dynamic;
	static public var _logger : Dynamic;
	/**
		Create a FunctionGraph for debugging.
		
		Parameters
		----------
		input_specs: WRITEME
		    fgraph inputs.
		output_specs: WRITEME
		    fgraph outputs.
		accept_inplace : bool
		    Are inplace ops permitted in the original graph?
		
		Returns
		-------
		FunctionGraph
		    A new FunctionGraph with a cloned graph, with debugging `Feature`
		    instances already installed.
	**/
	static public function _optcheck_fgraph(input_specs:Dynamic, output_specs:Dynamic, ?accept_inplace:Dynamic):Dynamic;
	static public function _pickle_DebugMode_Maker(maker:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Converts number to string by rendering it in base 26 using
		capital letters as digits.
	**/
	static public function char_from_number(number:Dynamic):Dynamic;
	static public function check_eq(_var:Dynamic, val1:Dynamic, val2:Dynamic):Dynamic;
	static public var config : Dynamic;
	static public var data_destroyed : Dynamic;
	/**
		Print the graph leading to `r` to given depth.
		
		Parameters
		----------
		r
		    Variable instance.
		prefix
		    Prefix to each line (typically some number of spaces).
		depth
		    Maximum recursion depth (Default -1 for unlimited).
		done
		    Internal. Used to pass information when recursing.
		    Dict of Apply instances that have already been printed and their
		    associated printed ids.
		print_type
		    Whether to print the Variable type after the other infos.
		file
		    File-like object to which to print.
		print_destroy_map
		    Whether to print the op destroy_map after other info.
		print_view_map
		    Whether to print the op view_map after other info.
		order
		    If not empty will print the index in the toposort.
		ids
		    How do we print the identifier of the variable :
		    id - print the python id value,
		    int - print integer character,
		    CHAR - print capital character,
		    "" - don't print an identifier.
		stop_on_name
		    When True, if a node in the graph has a name, we don't print anything
		    below it.
		scan_ops
		    Scan ops in the graph will be added inside this list for later printing
		    purposes.
		scan_inner_to_outer_inputs
		    A dictionary mapping a scan ops inner function inputs to the scan op
		    inputs (outer inputs) for printing purposes.
		smap
		    None or the storage_map when printing an Theano function.
		used_ids
		    Internal. Used to pass information when recursing.
		    It is a dict from obj to the id used for it.
		    It wasn't always printed, but at least a reference to it was printed.
		print_clients
		    If True, we will print the clients of nodes when they have more then one clients.
	**/
	static public function debugprint(r:Dynamic, ?prefix:Dynamic, ?depth:Dynamic, ?done:Dynamic, ?print_type:Dynamic, ?file:Dynamic, ?print_destroy_map:Dynamic, ?print_view_map:Dynamic, ?order:Dynamic, ?ids:Dynamic, ?stop_on_name:Dynamic, ?prefix_child:Dynamic, ?scan_ops:Dynamic, ?profile:Dynamic, ?scan_inner_to_outer_inputs:Dynamic, ?smap:Dynamic, ?used_ids:Dynamic, ?print_clients:Dynamic):Dynamic;
	static public var default_make_thunk : Dynamic;
	static public var division : Dynamic;
	static public function get_unbound_function(unbound:Dynamic):Dynamic;
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
		Return an iterator over the (key, value) pairs of a dictionary.
	**/
	static public function iteritems(d:Dynamic, ?kw:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return an iterator over the values of a dictionary.
	**/
	static public function itervalues(d:Dynamic, ?kw:python.KwArgs<Dynamic>):Dynamic;
	static public var ops_with_inner_function : Dynamic;
	static public var print_function : Dynamic;
	/**
		Re-raise an exception while annotating the exception object with
		debug info.
		
		Parameters
		----------
		node : Apply node
		    The Apply node object that resulted in the raised exception.
		exc_info : tuple, optional
		    A tuple containing the exception type, exception object and
		    associated traceback, as would be returned by a call to
		    `sys.exc_info()` (which is done if `None` is passed).
		storage_map: dict, optional
		    storage map of the theano function that resulted in the
		    raised exception.
		
		Notes
		-----
		This re-raises the exception described by `exc_info` (or the last
		one raised, if `exc_info` is omitted) and annotates the exception
		object with several new members which may be helpful for debugging
		Theano graphs. They are:
		
		 * __op_instance__: The Op that is responsible for the exception
		   being raised.
		 * __thunk_trace__: A traceback corresponding to the code that
		   actually generated the exception, if it is available.
		 * __applynode_index__: The index of the Apply node corresponding
		   to this op in `op.fgraph.toposort()`.
		
		The exception is not annotated if it is of type `KeyboardInterrupt`.
	**/
	static public function raise_with_op(node:Dynamic, ?thunk:Dynamic, ?exc_info:Dynamic, ?storage_map:Dynamic):Dynamic;
	/**
		Add a `Mode` which can be referred to by `name` in `function`.
	**/
	static public function register_mode(name:Dynamic, mode:Dynamic):Dynamic;
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
}