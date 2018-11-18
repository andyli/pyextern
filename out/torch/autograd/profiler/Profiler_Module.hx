/* This file is generated, do not edit! */
package torch.autograd.profiler;
@:pythonImport("torch.autograd.profiler") extern class Profiler_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function attr_formatter(name:Dynamic):Dynamic;
	/**
		Prints a summary of events (which can be a list of FunctionEvent or FunctionEventAvg).
	**/
	static public function build_table(events:Dynamic, ?sort_by:Dynamic, ?header:Dynamic):Dynamic;
	/**
		Demangle a C++ identifier using c++filt
	**/
	static public function demangle(name:Dynamic):Dynamic;
	/**
		Defines how to format time in FunctionEvent
	**/
	static public function format_time(time_us:Dynamic):Dynamic;
	/**
		Opens an nvprof trace file and parses autograd annotations.
		
		Arguments:
		    path (str): path to nvprof trace
	**/
	static public function load_nvprof(path:Dynamic):Dynamic;
	static public function parse_cpu_trace(thread_records:Dynamic):Dynamic;
	static public function parse_nvprof_trace(path:Dynamic):Dynamic;
}