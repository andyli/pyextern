/* This file is generated, do not edit! */
package torch.autograd.profiler;
@:pythonImport("torch.autograd.profiler") extern class Profiler_Module {
	static public function Any(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public function Dict(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function List(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var MEMORY_EVENT_NAME : Dynamic;
	static public function Optional(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		_disable_profiler() -> torch._C._autograd._ProfilerResult
	**/
	static public function _disable_profiler(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_enable_profiler(config: torch._C._autograd.ProfilerConfig, activities: Set[torch._C._autograd.ProfilerActivity], scopes: Set[at::RecordScope] = set()) -> None
	**/
	static public function _enable_profiler(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _filter_name(name:Dynamic):Dynamic;
	static public function _filter_stack_entry(entry:Dynamic):Dynamic;
	/**
		_prepare_profiler(arg0: torch._C._autograd.ProfilerConfig, arg1: Set[torch._C._autograd.ProfilerActivity]) -> None
	**/
	static public function _prepare_profiler(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _rewrite_name(name:Dynamic, ?with_wildcard:Dynamic):Dynamic;
	/**
		_supported_activities() -> Set[torch._C._autograd.ProfilerActivity]
	**/
	static public function _supported_activities(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		kineto_available() -> bool
	**/
	static public function kineto_available(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Opens an nvprof trace file and parses autograd annotations.
		
		Args:
		    path (str): path to nvprof trace
	**/
	static public function load_nvprof(path:Dynamic):Dynamic;
	static public function parse_nvprof_trace(path:Dynamic):Dynamic;
	/**
		Issue a warning, or maybe ignore it or raise an exception.
	**/
	static public function warn(message:Dynamic, ?category:Dynamic, ?stacklevel:Dynamic, ?source:Dynamic):Dynamic;
}