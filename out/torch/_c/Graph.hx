/* This file is generated, do not edit! */
package torch._c;
@:pythonImport("torch._C", "Graph") extern class Graph {
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
		__init__(self: torch._C.Graph) -> None
	**/
	@:native("__init__")
	public function ___init__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		__init__(self: torch._C.Graph) -> None
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
		__repr__(self: torch._C.Graph) -> str
	**/
	public function __repr__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		_export_onnx(self: torch._C.Graph, initializers: List[at::Tensor], onnx_opset_version: int = 0, defer_weight_export: bool = False, operator_export_type: torch._C._onnx.OperatorExportTypes = OperatorExportTypes.ONNX) -> Tuple[bytes, Dict[str, bytes]]
	**/
	public function _export_onnx(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_pretty_print_onnx(self: torch._C.Graph, initializers: List[at::Tensor], onnx_opset_version: int = 0, defer_weight_export: bool = False, operator_export_type: torch._C._onnx.OperatorExportTypes = OperatorExportTypes.ONNX, google_printer: bool = False) -> str
	**/
	public function _pretty_print_onnx(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		addInput(self: torch._C.Graph) -> torch::jit::Value
	**/
	public function addInput(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		appendNode(self: torch._C.Graph, arg0: torch::jit::Node) -> torch::jit::Node
	**/
	public function appendNode(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		copy(self: torch._C.Graph) -> torch._C.Graph
	**/
	public function copy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		create(*args, **kwargs)
		Overloaded function.
		
		1. create(self: torch._C.Graph, arg0: str) -> torch::jit::Node
		
		2. create(self: torch._C.Graph, arg0: str, arg1: int) -> torch::jit::Node
		
		3. create(self: torch._C.Graph, arg0: str, arg1: List[torch::jit::Value]) -> torch::jit::Node
		
		4. create(self: torch._C.Graph, arg0: str, arg1: List[torch::jit::Value], arg2: int) -> torch::jit::Node
	**/
	public function create(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		createClone(self: torch._C.Graph, arg0: torch::jit::Node, arg1: object) -> torch::jit::Node
	**/
	public function createClone(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		createFusionGroup(self: torch._C.Graph) -> torch::jit::Node
	**/
	public function createFusionGroup(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		eraseInput(self: torch._C.Graph, arg0: int) -> None
	**/
	public function eraseInput(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		inputs(self: torch._C.Graph) -> iterator
	**/
	public function inputs(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		insertNode(self: torch._C.Graph, arg0: torch::jit::Node) -> torch::jit::Node
	**/
	public function insertNode(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		lint(self: torch._C.Graph) -> None
	**/
	public function lint(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		nodes(self: torch._C.Graph) -> iterator
	**/
	public function nodes(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		outputs(self: torch._C.Graph) -> iterator
	**/
	public function outputs(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		param_node(self: torch._C.Graph) -> torch::jit::Node
	**/
	public function param_node(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		prependNode(self: torch._C.Graph, arg0: torch::jit::Node) -> torch::jit::Node
	**/
	public function prependNode(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		pretty_print(self: torch._C.Graph) -> str
	**/
	public function pretty_print(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		propagate_shapes(self: torch._C.Graph, arg0: List[at::Tensor], arg1: bool) -> None
	**/
	public function propagate_shapes(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		registerOutput(self: torch._C.Graph, arg0: torch::jit::Value) -> int
	**/
	public function registerOutput(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		return_node(self: torch._C.Graph) -> torch::jit::Node
	**/
	public function return_node(args:haxe.extern.Rest<Dynamic>):Dynamic;
}