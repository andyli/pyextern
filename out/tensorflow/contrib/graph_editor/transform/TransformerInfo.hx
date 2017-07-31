/* This file is generated, do not edit! */
package tensorflow.contrib.graph_editor.transform;
@:pythonImport("tensorflow.contrib.graph_editor.transform", "TransformerInfo") extern class TransformerInfo {
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Constructor.
		
		Args:
		  info: an instance of Transformer._TmpInfo containing various internal
		    information about the transform operation.
	**/
	@:native("__init__")
	public function ___init__(info:Dynamic):Dynamic;
	/**
		Constructor.
		
		Args:
		  info: an instance of Transformer._TmpInfo containing various internal
		    information about the transform operation.
	**/
	public function new(info:Dynamic):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	static public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	/**
		Return the correct container depending on the type of `top`.
	**/
	public function _get_transformed_map(top:Dynamic):Dynamic;
	/**
		Return the original op/tensor corresponding to the transformed one.
		
		Args:
		  transformed_top: the transformed tensor/operation.
		  missing_fn: function handling the case where the counterpart
		    cannot be found. By default, None is returned.
		Returns:
		  the original tensor/operation (or None if no match is found).
	**/
	public function _original_elem(transformed_top:Dynamic, ?missing_fn:Dynamic):Dynamic;
	/**
		Return the transformed op/tensor corresponding to the original one.
		
		Args:
		  original_top: the original tensor/operation.
		  missing_fn: function handling the case where the counterpart
		    cannot be found. By default, None is returned.
		Returns:
		  the transformed tensor/operation (or None if no match is found).
	**/
	public function _transformed_elem(original_top:Dynamic, ?missing_fn:Dynamic):Dynamic;
	/**
		Return the original op/tensor corresponding to the transformed one.
		
		Note that the output of this function mimics the hierarchy
		of its input argument `transformed`.
		Given an iterable, it returns a list. Given an operation or a tensor,
		it will return an operation or a tensor.
		
		Args:
		  transformed: the transformed tensor/operation.
		  missing_fn: function handling the case where the counterpart
		    cannot be found. By default, None is returned.
		Returns:
		  the original tensor/operation (or None if no match is found).
	**/
	public function original(transformed:Dynamic, ?missing_fn:Dynamic):Dynamic;
	/**
		Return the transformed op/tensor corresponding to the original one.
		
		Note that the output of this function mimics the hierarchy
		of its input argument `original`.
		Given an iterable, it returns a list. Given an operation or a tensor,
		it will return an operation or a tensor.
		
		Args:
		  original: the original tensor/operation.
		  missing_fn: function handling the case where the counterpart
		    cannot be found. By default, None is returned.
		Returns:
		  the transformed tensor/operation (or None if no match is found).
	**/
	public function transformed(original:Dynamic, ?missing_fn:Dynamic):Dynamic;
}