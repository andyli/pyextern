/* This file is generated, do not edit! */
package pyarrow.lib;
@:pythonImport("pyarrow.lib", "Field") extern class Field {
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
	static public var __pyx_vtable__ : Dynamic;
	/**
		Field.__reduce__(self)
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
		Field._export_to_c(self, out_ptr)
		
		Export to a C ArrowSchema struct, given its pointer.
		
		Be careful: if you don't pass the ArrowSchema struct to a consumer,
		its memory will leak.  This is a low-level function intended for
		expert users.
	**/
	public function _export_to_c(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Field._import_from_c(in_ptr)
		
		Import Field from a C ArrowSchema struct, given its pointer.
		
		This is a low-level function intended for expert users.
	**/
	static public function _import_from_c(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Field.add_metadata(self, metadata)
	**/
	public function add_metadata(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Field.equals(self, Field other, bool check_metadata=False)
		
		Test if this field is equal to the other
		
		Parameters
		----------
		other : pyarrow.Field
		check_metadata : bool, default False
		    Whether Field metadata equality should be checked as well.
		
		Returns
		-------
		is_equal : bool
	**/
	public function equals(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Field.flatten(self)
		
		Flatten this field.  If a struct field, individual child fields
		will be returned with their names prefixed by the parent's name.
		
		Returns
		-------
		fields : List[pyarrow.Field]
	**/
	public function flatten(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var metadata : Dynamic;
	public var name : Dynamic;
	public var nullable : Dynamic;
	/**
		Field.remove_metadata(self)
		
		Create new field without metadata, if any
		
		Returns
		-------
		field : pyarrow.Field
	**/
	public function remove_metadata(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var type : Dynamic;
	/**
		Field.with_metadata(self, metadata)
		
		Add metadata as dict of string keys and values to Field
		
		Parameters
		----------
		metadata : dict
		    Keys and values must be string-like / coercible to bytes
		
		Returns
		-------
		field : pyarrow.Field
	**/
	public function with_metadata(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Field.with_name(self, name)
		
		A copy of this field with the replaced name
		
		Parameters
		----------
		name : str
		
		Returns
		-------
		field : pyarrow.Field
	**/
	public function with_name(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Field.with_nullable(self, nullable)
		
		A copy of this field with the replaced nullability
		
		Parameters
		----------
		nullable : bool
		
		Returns
		-------
		field: pyarrow.Field
	**/
	public function with_nullable(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Field.with_type(self, DataType new_type)
		
		A copy of this field with the replaced type
		
		Parameters
		----------
		new_type : pyarrow.DataType
		
		Returns
		-------
		field : pyarrow.Field
	**/
	public function with_type(args:haxe.extern.Rest<Dynamic>):Dynamic;
}