/* This file is generated, do not edit! */
package torch._c;
@:pythonImport("torch._C", "ScriptMethod") extern class ScriptMethod {
	/**
		__call__(*args, **kwargs) -> object
	**/
	public function __call__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		__dir__() -> list
		default dir() implementation
	**/
	public function __dir__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		default object formatter
	**/
	public function __format__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self>=value.
	**/
	public function __ge__(value:Dynamic):Dynamic;
	/**
		Return getattr(self, name).
	**/
	public function __getattribute__(name:Dynamic):Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
	/**
		Return self<value.
	**/
	public function __lt__(value:Dynamic):Dynamic;
	static public var __module__ : Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce_ex__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		__sizeof__() -> int
		size of object in memory, in bytes
	**/
	public function __sizeof__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return str(self).
	**/
	public function __str__():Dynamic;
	/**
		Abstract classes can override this to customize issubclass().
		
		This is invoked early on by abc.ABCMeta.__subclasscheck__().
		It should return True, False or NotImplemented.  If it returns
		NotImplemented, the normal algorithm is used.  Otherwise, it
		overrides the normal algorithm (and the outcome is cached).
	**/
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		debug_disable_autodiff_subgraph_inlining(self: torch._C.ScriptMethod) -> None
	**/
	public function debug_disable_autodiff_subgraph_inlining(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var graph : Dynamic;
	/**
		graph_for(*args, **kwargs) -> torch._C.Graph
	**/
	public function graph_for(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		params(self: torch._C.ScriptMethod) -> List[at::Tensor]
	**/
	public function params(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		pretty_print_schema(self: torch._C.ScriptMethod) -> str
	**/
	public function pretty_print_schema(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		propagate_and_assign_input_and_output_shapes(self: torch._C.ScriptMethod, arg0: List[at::Tensor], arg1: List[at::Tensor], arg2: bool, arg3: bool) -> torch._C.Graph
	**/
	public function propagate_and_assign_input_and_output_shapes(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		propagate_shapes(self: torch._C.ScriptMethod, arg0: List[at::Tensor], arg1: bool) -> torch._C.Graph
	**/
	public function propagate_shapes(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		python_print(self: torch._C.ScriptMethod) -> Tuple[str, List[at::Tensor]]
	**/
	public function python_print(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		schema(self: torch._C.ScriptMethod) -> torch._C.FunctionSchema
	**/
	public function schema(args:haxe.extern.Rest<Dynamic>):Dynamic;
}