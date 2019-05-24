/* This file is generated, do not edit! */
package torch._c;
@:pythonImport("torch._C", "Node") extern class Node {
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
		__repr__(self: torch._C.Node) -> str
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
		addBlock(self: torch._C.Node) -> torch._C.Block
	**/
	public function addBlock(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		addInput(self: torch._C.Node, arg0: torch._C.Value) -> torch._C.Value
	**/
	public function addInput(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		addOutput(self: torch._C.Node) -> torch._C.Value
	**/
	public function addOutput(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		attributeNames(self: torch._C.Node) -> List[str]
	**/
	public function attributeNames(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		blocks(self: torch._C.Node) -> iterator
	**/
	public function blocks(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		cconv(self: torch._C.Node) -> str
	**/
	public function cconv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		copyAttributes(self: torch._C.Node, arg0: torch::jit::Attributes<torch::jit::Node>) -> None
	**/
	public function copyAttributes(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		destroy(self: torch._C.Node) -> None
	**/
	public function destroy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		eraseOutput(self: torch._C.Node, arg0: int) -> None
	**/
	public function eraseOutput(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		f(self: torch._C.Node, arg0: str) -> float
	**/
	public function f(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		f_(self: torch._C.Node, arg0: str, arg1: float) -> torch._C.Node
	**/
	public function f_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		fs(self: torch._C.Node, arg0: str) -> List[float]
	**/
	public function fs(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		fs_(self: torch._C.Node, arg0: str, arg1: List[float]) -> torch._C.Node
	**/
	public function fs_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		g(self: torch._C.Node, arg0: str) -> torch._C.Graph
	**/
	public function g(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		g_(self: torch._C.Node, arg0: str, arg1: torch._C.Graph) -> torch._C.Node
	**/
	public function g_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		getSourceLocation(self: torch._C.Node) -> object
	**/
	public function getSourceLocation(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		gs(self: torch._C.Node, arg0: str) -> List[torch._C.Graph]
	**/
	public function gs(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		gs_(self: torch._C.Node, arg0: str, arg1: List[torch._C.Graph]) -> torch._C.Node
	**/
	public function gs_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		hasAttribute(self: torch._C.Node, arg0: str) -> bool
	**/
	public function hasAttribute(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		hasAttributes(self: torch._C.Node) -> bool
	**/
	public function hasAttributes(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		hasMultipleOutputs(self: torch._C.Node) -> bool
	**/
	public function hasMultipleOutputs(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		hasUses(self: torch._C.Node) -> bool
	**/
	public function hasUses(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		i(self: torch._C.Node, arg0: str) -> int
	**/
	public function i(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		i_(self: torch._C.Node, arg0: str, arg1: int) -> torch._C.Node
	**/
	public function i_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		inputs(self: torch._C.Node) -> iterator
	**/
	public function inputs(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		insertAfter(self: torch._C.Node, arg0: torch._C.Node) -> torch._C.Node
	**/
	public function insertAfter(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		insertBefore(self: torch._C.Node, arg0: torch._C.Node) -> torch._C.Node
	**/
	public function insertBefore(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		is(self: torch._C.Node, arg0: str) -> List[int]
	**/
	@:native("is")
	public function _is(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		isNondeterministic(self: torch._C.Node) -> bool
	**/
	public function isNondeterministic(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		is_(self: torch._C.Node, arg0: str, arg1: List[int]) -> torch._C.Node
	**/
	public function is_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		kind(self: torch._C.Node) -> Symbol
	**/
	public function kind(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		kindOf(self: torch._C.Node, arg0: str) -> AttributeKind
	**/
	public function kindOf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		moveAfter(self: torch._C.Node, arg0: torch._C.Node) -> None
	**/
	public function moveAfter(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		moveBefore(self: torch._C.Node, arg0: torch._C.Node) -> None
	**/
	public function moveBefore(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		output(self: torch._C.Node) -> torch._C.Value
	**/
	public function output(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		outputs(self: torch._C.Node) -> iterator
	**/
	public function outputs(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		outputsSize(self: torch._C.Node) -> int
	**/
	public function outputsSize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		pyname(self: torch._C.Node) -> str
	**/
	public function pyname(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		pyobj(self: torch._C.Node) -> object
	**/
	public function pyobj(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		removeAllInputs(self: torch._C.Node) -> None
	**/
	public function removeAllInputs(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		removeAttribute(self: torch._C.Node, arg0: str) -> torch._C.Node
	**/
	public function removeAttribute(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		removeInput(self: torch._C.Node, arg0: int) -> None
	**/
	public function removeInput(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		replaceAllUsesWith(self: torch._C.Node, arg0: torch._C.Node) -> None
	**/
	public function replaceAllUsesWith(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		replaceInput(self: torch._C.Node, arg0: int, arg1: torch._C.Value) -> torch._C.Value
	**/
	public function replaceInput(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		replaceInputWith(self: torch._C.Node, arg0: torch._C.Value, arg1: torch._C.Value) -> None
	**/
	public function replaceInputWith(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		s(self: torch._C.Node, arg0: str) -> str
	**/
	public function s(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		s_(self: torch._C.Node, arg0: str, arg1: str) -> torch._C.Node
	**/
	public function s_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		scalar_args(self: torch._C.Node) -> list
	**/
	public function scalar_args(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		scopeName(self: torch._C.Node) -> str
	**/
	public function scopeName(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ss(self: torch._C.Node, arg0: str) -> List[str]
	**/
	public function ss(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ss_(self: torch._C.Node, arg0: str, arg1: List[str]) -> torch._C.Node
	**/
	public function ss_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		t(self: torch._C.Node, arg0: str) -> torch::autograd::Variable
	**/
	public function t(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		t_(self: torch._C.Node, arg0: str, arg1: torch::autograd::Variable) -> torch._C.Node
	**/
	public function t_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ts(self: torch._C.Node, arg0: str) -> List[torch::autograd::Variable]
	**/
	public function ts(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ts_(self: torch._C.Node, arg0: str, arg1: List[torch::autograd::Variable]) -> torch._C.Node
	**/
	public function ts_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		z(self: torch._C.Node, arg0: str) -> at::Tensor
	**/
	public function z(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		z_(self: torch._C.Node, arg0: str, arg1: at::Tensor) -> torch._C.Node
	**/
	public function z_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		zs(self: torch._C.Node, arg0: str) -> List[at::Tensor]
	**/
	public function zs(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		zs_(self: torch._C.Node, arg0: str, arg1: List[at::Tensor]) -> torch._C.Node
	**/
	public function zs_(args:haxe.extern.Rest<Dynamic>):Dynamic;
}