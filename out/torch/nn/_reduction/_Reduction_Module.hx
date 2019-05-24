/* This file is generated, do not edit! */
package torch.nn._reduction;
@:pythonImport("torch.nn._reduction") extern class _Reduction_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function get_enum(reduction:Dynamic):Dynamic;
	static public function legacy_get_enum(size_average:Dynamic, reduce:Dynamic, ?emit_warning:Dynamic):Dynamic;
	static public function legacy_get_string(size_average:Dynamic, reduce:Dynamic, ?emit_warning:Dynamic):Dynamic;
	/**
		Marks a function as a weak script function. When used in a script function
		or ScriptModule, the weak script function will be lazily compiled and
		inlined in the graph. When not used in a script function, the weak script
		annotation has no effect.
	**/
	static public function weak_script(fn:Dynamic, ?_frames_up:Dynamic):Dynamic;
}