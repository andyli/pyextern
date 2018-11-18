/* This file is generated, do not edit! */
package theano.tensor.opt_uncanonicalize;
@:pythonImport("theano.tensor.opt_uncanonicalize") extern class Opt_uncanonicalize_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _logger : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Copies the stack trace from one or more tensor variables to
		one or more tensor variables and returns the destination variables.
		
		Parameters
		----------
		from_var
		    Tensor variable or list of tensor variables to copy stack traces from.
		to_var
		    Tensor variable or list of tensor variables to copy stack traces to.
		
		Notes
		-----
		The stacktrace is assumed to be of the form of a list of lists
		of tuples. Each tuple contains the filename, line number, function name
		and so on. Each list of tuples contains the truples belonging to a
		particular variable.
	**/
	static public function copy_stack_trace(from_var:Dynamic, to_var:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var local_alloc_dimshuffle : Dynamic;
	static public var local_dimshuffle_alloc : Dynamic;
	static public var local_dimshuffle_subtensor : Dynamic;
	static public var local_max_and_argmax : Dynamic;
	static public var local_max_to_min : Dynamic;
	static public var local_reshape_dimshuffle : Dynamic;
	static public var print_function : Dynamic;
	static public function register_uncanonicalize(lopt:Dynamic, ?tags:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}