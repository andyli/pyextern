/* This file is generated, do not edit! */
package theano.compile.profiling;
@:pythonImport("theano.compile.profiling") extern class Profiling_Module {
	static public var __authors__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __contact__ : Dynamic;
	static public var __copyright__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __docformat__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __license__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __reviewer__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Print ProfileStat objects in _atexit_print_list to _atexit_print_file.
	**/
	static public function _atexit_print_fn():Dynamic;
	static public var _atexit_print_list : Dynamic;
	static public var _atexit_registered : Dynamic;
	static public var _profiler_printers : Dynamic;
	static public var absolute_import : Dynamic;
	static public var config : Dynamic;
	static public var division : Dynamic;
	/**
		Return an iterator over the (key, value) pairs of a dictionary.
	**/
	static public function iteritems(d:Dynamic, ?kw:python.KwArgs<Dynamic>):Dynamic;
	static public var logger : Dynamic;
	static public var print_function : Dynamic;
	/**
		Print the following stats:
		  -- Time elapsed since Theano was imported
		  -- Time spent inside Theano functions
		  -- Time spent in compiling Theano functions
		       -- on graph optimization
		       -- on linker
	**/
	static public function print_global_stats():Dynamic;
	static public function register_profiler_printer(fct:Dynamic):Dynamic;
	static public var theano_imported_time : Dynamic;
	static public var total_fct_exec_time : Dynamic;
	static public var total_graph_opt_time : Dynamic;
	static public var total_time_linker : Dynamic;
}