/* This file is generated, do not edit! */
package tensorflow.python.autograph.pyct.static_analysis.type_inference;
@:pythonImport("tensorflow.python.autograph.pyct.static_analysis.type_inference", "Resolver") extern class Resolver {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
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
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	/**
		Resolves the type of a (possibly annotated) function argument.
		
		Args:
		  ns: namespace
		  types_ns: types namespace
		  f_name: str, the function name
		  name: str, the argument name
		  type_anno: the type annotating the argument, if any
		  f_is_local: bool, whether the function is a local function
		Returns:
		  Set of the argument types.
	**/
	public function res_arg(ns:Dynamic, types_ns:Dynamic, f_name:Dynamic, name:Dynamic, type_anno:Dynamic, f_is_local:Dynamic):Dynamic;
	/**
		Resolves the return type of a binary operation.
	**/
	public function res_binop(ns:Dynamic, types_ns:Dynamic, node:Dynamic, left:Dynamic, right:Dynamic):Dynamic;
	/**
		Resolves the return type an external function or method call.
		
		Args:
		  ns: namespace
		  types_ns: types namespace
		  node: str, the function name
		  f_type: types of the actual function being called, if known
		  args: types of each respective argument in node.args
		  keywords: types of each respective argument in node.keywords
		
		Returns:
		  Tuple (return_type, side_effect_types). The first element is just the
		  return types of the function. The second element is a map from
		  argument names to sets of types, and allow modelling side effects of
		  functions (for example via global or nonlocal).
	**/
	public function res_call(ns:Dynamic, types_ns:Dynamic, node:Dynamic, f_type:Dynamic, args:Dynamic, keywords:Dynamic):Dynamic;
	/**
		Resolves the return type of a unary operation.
	**/
	public function res_compare(ns:Dynamic, types_ns:Dynamic, node:Dynamic, left:Dynamic, right:Dynamic):Dynamic;
	/**
		Resolves the type of a list literal from its elements.
	**/
	public function res_list_literal(ns:Dynamic, elt_types:Dynamic):Dynamic;
	/**
		Resolves the type/value an external (e.g. closure, global) variable.
		
		Args:
		  ns: namespace
		  types_ns: types namespace
		  name: symbol name
		Returns:
		  Tuple (type, static_value). The first element is the type to use for
		  inferrence. The second is the static value to use. Return None to treat it
		  as unknown.
	**/
	public function res_name(ns:Dynamic, types_ns:Dynamic, name:Dynamic):Dynamic;
	/**
		Resolves the return type of slice operation.
	**/
	public function res_slice(ns:Dynamic, types_ns:Dynamic, node_or_slice:Dynamic, value:Dynamic, slice_:Dynamic):Dynamic;
	/**
		Resolves the return type of a unary operation.
	**/
	public function res_unop(ns:Dynamic, types_ns:Dynamic, node:Dynamic, opnd:Dynamic):Dynamic;
	/**
		Resolves the type a literal or static value.
	**/
	public function res_value(ns:Dynamic, value:Dynamic):Dynamic;
}