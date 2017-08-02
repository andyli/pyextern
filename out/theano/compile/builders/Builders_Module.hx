/* This file is generated, do not edit! */
package theano.compile.builders;
@:pythonImport("theano.compile.builders") extern class Builders_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var inline_ofg_expansion : Dynamic;
	/**
		Returns the connection pattern of a subgraph defined by given
		inputs and outputs.
	**/
	static public function io_connection_pattern(inputs:Dynamic, outputs:Dynamic):Dynamic;
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
}