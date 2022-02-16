/* This file is generated, do not edit! */
package torch.autograd.profiler_legacy;
@:pythonImport("torch.autograd.profiler_legacy") extern class Profiler_legacy_Module {
	static public var MEMORY_EVENT_NAME : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		_disable_profiler_legacy(profiler_disable_options: Optional[torch._C._autograd._ProfilerDisableOptions] = <torch._C._autograd._ProfilerDisableOptions object at 0x7ff7d9d693f0>) -> List[List[torch._C._autograd.ProfilerEvent]]
	**/
	static public function _disable_profiler_legacy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_enable_profiler_legacy(arg0: torch._C._autograd.ProfilerConfig) -> None
	**/
	static public function _enable_profiler_legacy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _filter_name(name:Dynamic):Dynamic;
	static public function _filter_stack_entry(entry:Dynamic):Dynamic;
	static public function _parse_legacy_records(thread_records:Dynamic):Dynamic;
	static public function _rewrite_name(name:Dynamic, ?with_wildcard:Dynamic):Dynamic;
	/**
		Issue a warning, or maybe ignore it or raise an exception.
	**/
	static public function warn(message:Dynamic, ?category:Dynamic, ?stacklevel:Dynamic, ?source:Dynamic):Dynamic;
}