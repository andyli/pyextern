/* This file is generated, do not edit! */
package theano.gof.destroyhandler;
@:pythonImport("theano.gof.destroyhandler") extern class Destroyhandler_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _build_droot_impact(destroy_handler:Dynamic):Dynamic;
	/**
		Function to check if the given graph contains a cycle
		
		Parameters
		----------
		fgraph
		    The FunctionGraph to check for cycles.
		orderings
		    Dictionary specifying extra dependencies besides those encoded in
		    Variable.owner / Apply.inputs.
		
		    If orderings[my_apply] == dependencies, then my_apply is an Apply
		    instance, dependencies is a set of Apply instances, and every member
		    of dependencies must be executed before my_apply.
		
		    The dependencies are typically used to prevent
		    inplace apply nodes from destroying their input before
		    other apply nodes with the same input access it.
		
		Returns
		-------
		bool
		    True if the graph contains a cycle, False otherwise.
	**/
	static public function _contains_cycle(fgraph:Dynamic, orderings:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var config : Dynamic;
	static public var division : Dynamic;
	/**
		Return the variables in inputs that are posible candidate for as inputs of
		inplace operation.
		
		Parameters
		----------
		inputs : list
		    Inputs Variable that you want to use as inplace destination.
	**/
	static public function fast_inplace_check(inputs:Dynamic):Dynamic;
	/**
		Return an iterator over the (key, value) pairs of a dictionary.
	**/
	static public function iteritems(d:Dynamic, ?kw:python.KwArgs<Dynamic>):Dynamic;
	static public var print_function : Dynamic;
}