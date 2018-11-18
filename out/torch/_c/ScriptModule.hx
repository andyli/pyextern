/* This file is generated, do not edit! */
package torch._c;
@:pythonImport("torch._C", "ScriptModule") extern class ScriptModule {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
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
		__init__(self: torch._C.ScriptModule) -> None
	**/
	@:native("__init__")
	public function ___init__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		__init__(self: torch._C.ScriptModule) -> None
	**/
	public function new(args:haxe.extern.Rest<Dynamic>):Void;
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
		_create_method_from_graph(self: torch._C.ScriptModule, arg0: str, arg1: torch._C.Graph) -> None
	**/
	public function _create_method_from_graph(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_create_method_from_trace(self: torch._C.ScriptModule, arg0: str, arg1: function, arg2: List[torch::autograd::Variable]) -> None
	**/
	public function _create_method_from_trace(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_create_methods(self: torch._C.ScriptModule, arg0: List[torch._C._jit_tree_views.Def], arg1: List[Callable[[str], function]]) -> None
	**/
	public function _create_methods(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_define(self: torch._C.ScriptModule, arg0: str, arg1: Callable[[str], function], arg2: bool) -> None
	**/
	public function _define(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_get_method(self: torch._C.ScriptModule, arg0: str) -> torch::jit::script::Method
	**/
	public function _get_method(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_get_module(self: torch._C.ScriptModule, arg0: str) -> torch._C.ScriptModule
	**/
	public function _get_module(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_get_modules(self: torch._C.ScriptModule) -> tuple
	**/
	public function _get_modules(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_get_parameter(self: torch._C.ScriptModule, arg0: str) -> torch::autograd::Variable
	**/
	public function _get_parameter(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_get_parameters(self: torch._C.ScriptModule) -> tuple
	**/
	public function _get_parameters(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_has_buffer(self: torch._C.ScriptModule, arg0: str) -> bool
	**/
	public function _has_buffer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_has_method(self: torch._C.ScriptModule, arg0: str) -> bool
	**/
	public function _has_method(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_has_module(self: torch._C.ScriptModule, arg0: str) -> bool
	**/
	public function _has_module(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_has_parameter(self: torch._C.ScriptModule, arg0: str) -> bool
	**/
	public function _has_parameter(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_method_names(self: torch._C.ScriptModule) -> List[str]
	**/
	public function _method_names(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_register_module(self: torch._C.ScriptModule, arg0: str, arg1: torch._C.ScriptModule) -> None
	**/
	public function _register_module(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_register_parameter(self: torch._C.ScriptModule, arg0: str, arg1: torch::autograd::Variable, arg2: bool) -> None
	**/
	public function _register_parameter(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_set_optimized(self: torch._C.ScriptModule, arg0: bool) -> None
	**/
	public function _set_optimized(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_set_parameter(self: torch._C.ScriptModule, arg0: str, arg1: at::Tensor) -> None
	**/
	public function _set_parameter(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		forward(self: torch._C.ScriptModule, *args) -> object
	**/
	public function forward(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		graph_for(self: torch._C.ScriptModule, *args) -> torch._C.Graph
	**/
	public function graph_for(args:haxe.extern.Rest<Dynamic>):Dynamic;
}