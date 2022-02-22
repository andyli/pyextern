/* This file is generated, do not edit! */
package pyarrow.lib;
@:pythonImport("pyarrow.lib", "StructScalar") extern class StructScalar {
	static public var __abstractmethods__ : Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return key in self.
	**/
	public function __contains__(key:Dynamic):Dynamic;
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
		Return the child value for the given field.
		
		Parameters
		----------
		index : Union[int, str]
		    Index / position or name of the field.
		
		Returns
		-------
		result : Scalar
	**/
	public function __getitem__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Implement iter(self).
	**/
	public function __iter__():Dynamic;
	/**
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
	/**
		Return len(self).
	**/
	public function __len__():Dynamic;
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
	static public var __pyx_vtable__ : Dynamic;
	/**
		Scalar.__reduce__(self)
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
	static public var __reversed__ : Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		Size of object in memory, in bytes.
	**/
	public function __sizeof__():Dynamic;
	static public var __slots__ : Dynamic;
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
	static public function __subclasshook__(C:Dynamic):Dynamic;
	static public var _abc_impl : Dynamic;
	/**
		StructScalar._as_py_tuple(self)
	**/
	public function _as_py_tuple(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		StructScalar.as_py(self)
		
		Return this value as a Python dict.
	**/
	public function as_py(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Scalar.cast(self, target_type)
		
		Attempt a safe cast to target data type.
	**/
	@:native("cast")
	public function _cast(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Scalar.equals(self, Scalar other)
	**/
	public function equals(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		D.get(k[,d]) -> D[k] if k in D, else d.  d defaults to None.
	**/
	public function get(key:Dynamic, ?_default:Dynamic):Dynamic;
	/**
		Holds a valid (non-null) value.
	**/
	public var is_valid : Dynamic;
	/**
		StructScalar.items(self)
	**/
	public function items(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		D.keys() -> a set-like object providing a view on D's keys
	**/
	public function keys():Dynamic;
	/**
		Data type of the Scalar object.
	**/
	public var type : Dynamic;
	/**
		D.values() -> an object providing a view on D's values
	**/
	public function values():Dynamic;
}