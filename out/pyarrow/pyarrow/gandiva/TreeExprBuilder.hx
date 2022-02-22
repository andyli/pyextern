/* This file is generated, do not edit! */
package pyarrow.gandiva;
@:pythonImport("pyarrow.gandiva", "TreeExprBuilder") extern class TreeExprBuilder {
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
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		TreeExprBuilder.__reduce_cython__(self)
	**/
	public function __reduce__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		TreeExprBuilder.__setstate_cython__(self, __pyx_state)
	**/
	public function __setstate__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		TreeExprBuilder._make_in_expression_binary(self, Node node, values)
	**/
	public function _make_in_expression_binary(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TreeExprBuilder._make_in_expression_date32(self, Node node, values)
	**/
	public function _make_in_expression_date32(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TreeExprBuilder._make_in_expression_date64(self, Node node, values)
	**/
	public function _make_in_expression_date64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TreeExprBuilder._make_in_expression_int32(self, Node node, values)
	**/
	public function _make_in_expression_int32(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TreeExprBuilder._make_in_expression_int64(self, Node node, values)
	**/
	public function _make_in_expression_int64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TreeExprBuilder._make_in_expression_string(self, Node node, values)
	**/
	public function _make_in_expression_string(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TreeExprBuilder._make_in_expression_time32(self, Node node, values)
	**/
	public function _make_in_expression_time32(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TreeExprBuilder._make_in_expression_time64(self, Node node, values)
	**/
	public function _make_in_expression_time64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TreeExprBuilder._make_in_expression_timestamp(self, Node node, values)
	**/
	public function _make_in_expression_timestamp(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TreeExprBuilder.make_and(self, children)
	**/
	public function make_and(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TreeExprBuilder.make_condition(self, Node condition)
	**/
	public function make_condition(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TreeExprBuilder.make_expression(self, Node root_node, Field return_field)
	**/
	public function make_expression(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TreeExprBuilder.make_field(self, Field field)
	**/
	public function make_field(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TreeExprBuilder.make_function(self, name, children, DataType return_type)
	**/
	public function make_function(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TreeExprBuilder.make_if(self, Node condition, Node this_node, Node else_node, DataType return_type)
	**/
	public function make_if(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TreeExprBuilder.make_in_expression(self, Node node, values, dtype)
	**/
	public function make_in_expression(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TreeExprBuilder.make_literal(self, value, dtype)
	**/
	public function make_literal(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TreeExprBuilder.make_or(self, children)
	**/
	public function make_or(args:haxe.extern.Rest<Dynamic>):Dynamic;
}