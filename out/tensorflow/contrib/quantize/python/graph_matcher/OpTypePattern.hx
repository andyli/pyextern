/* This file is generated, do not edit! */
package tensorflow.contrib.quantize.python.graph_matcher;
@:pythonImport("tensorflow.contrib.quantize.python.graph_matcher", "OpTypePattern") extern class OpTypePattern {
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
		Initializes an OpTypePattern.
		
		Args:
		  op_type: string that specifies the allowed types of the root. It can be
		    (1) an op type, e.g. 'Conv2D',
		    (2) '*', i.e. wildcard, or
		    (3) multiple op types separated by '|', e.g., 'Relu|Relu6'.
		    We could use regex strings, which might be worthwhile when we have many
		    similar TF op types.
		  name: Optional string. The name of the pattern that can be looked up in
		    MatchResult.
		  inputs: Optional list of `Pattern`s or strings that specify the
		    patterns for the inputs of a matching op. If None, this pattern accepts
		    any inputs of a matching op.
		  ordered_inputs: Defaults to True. If False, will match any op that
		    matches a permutation of the inputs.
		
		Raises:
		  ValueError: if too many inputs are provided when order_inputs is False.
	**/
	@:native("__init__")
	public function ___init__(op_type:Dynamic, ?name:Dynamic, ?inputs:Dynamic, ?ordered_inputs:Dynamic):Dynamic;
	/**
		Initializes an OpTypePattern.
		
		Args:
		  op_type: string that specifies the allowed types of the root. It can be
		    (1) an op type, e.g. 'Conv2D',
		    (2) '*', i.e. wildcard, or
		    (3) multiple op types separated by '|', e.g., 'Relu|Relu6'.
		    We could use regex strings, which might be worthwhile when we have many
		    similar TF op types.
		  name: Optional string. The name of the pattern that can be looked up in
		    MatchResult.
		  inputs: Optional list of `Pattern`s or strings that specify the
		    patterns for the inputs of a matching op. If None, this pattern accepts
		    any inputs of a matching op.
		  ordered_inputs: Defaults to True. If False, will match any op that
		    matches a permutation of the inputs.
		
		Raises:
		  ValueError: if too many inputs are provided when order_inputs is False.
	**/
	public function new(op_type:Dynamic, ?name:Dynamic, ?inputs:Dynamic, ?ordered_inputs:Dynamic):Void;
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
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	/**
		Returns the result of matching op/tensor against this pattern.
	**/
	public function match(op:Dynamic, tensor:Dynamic):Dynamic;
	public var name : Dynamic;
}