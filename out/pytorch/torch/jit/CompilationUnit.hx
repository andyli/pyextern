/* This file is generated, do not edit! */
package torch.jit;
@:pythonImport("torch.jit", "CompilationUnit") extern class CompilationUnit {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	/**
		Default dir() implementation.
	**/
	public function __dir__():Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		Default object formatter.
	**/
	public function __format__(format_spec:Dynamic):Dynamic;
	/**
		Return self>=value.
	**/
	public function __ge__(value:Dynamic):Dynamic;
	/**
		__getattr__(self: torch._C.CompilationUnit, arg0: str) -> torch::jit::StrongFunctionPtr
	**/
	public function __getattr__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		__init__(self: torch._C.CompilationUnit, lang: str = '', _frames_up: int = 0) -> None
	**/
	@:native("__init__")
	public function ___init__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		__init__(self: torch._C.CompilationUnit, lang: str = '', _frames_up: int = 0) -> None
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
		Helper for pickle.
	**/
	public function __reduce__():Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce_ex__(protocol:Dynamic):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		Size of object in memory, in bytes.
	**/
	public function __sizeof__():Dynamic;
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
		create_function(self: torch._C.CompilationUnit, qualified_name: str, graph: torch._C.Graph, should_mangle: bool = False) -> torch::jit::StrongFunctionPtr
	**/
	public function create_function(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		define(self: torch._C.CompilationUnit, src: str, rcb: Callable[[str], object] = None, _frames_up: int = 0) -> None
	**/
	public function define(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		find_function(self: torch._C.CompilationUnit, arg0: str) -> Optional[torch::jit::StrongFunctionPtr]
	**/
	public function find_function(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		get_class(self: torch._C.CompilationUnit, arg0: str) -> torch._C.ClassType
	**/
	public function get_class(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		get_functions(self: torch._C.CompilationUnit) -> List[torch::jit::StrongFunctionPtr]
	**/
	public function get_functions(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		get_interface(self: torch._C.CompilationUnit, arg0: str) -> torch._C.InterfaceType
	**/
	public function get_interface(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		set_optimized(self: torch._C.CompilationUnit, arg0: bool) -> None
	**/
	public function set_optimized(args:haxe.extern.Rest<Dynamic>):Dynamic;
}