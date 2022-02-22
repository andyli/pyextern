/* This file is generated, do not edit! */
package pyarrow.lib;
@:pythonImport("pyarrow.lib", "ExtensionType") extern class ExtensionType {
	/**
		ExtensionType.__arrow_ext_class__(self)
		Return an extension array class to be used for building or
		        deserializing arrays with this extension type.
		
		        This method should return a subclass of the ExtensionArray class. By
		        default, if not specialized in the extension implementation, an
		        extension type array will be a built-in ExtensionArray instance.
		        
	**/
	public function __arrow_ext_class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ExtensionType.__arrow_ext_deserialize__(type self, storage_type, serialized)
		
		Return an extension type instance from the storage type and serialized
		metadata.
		
		This method should return an instance of the ExtensionType subclass
		that matches the passed storage type and serialized metadata (the
		return value of ``__arrow_ext_serialize__``).
	**/
	public function __arrow_ext_deserialize__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ExtensionType.__arrow_ext_serialize__(self)
		
		Serialized representation of metadata to reconstruct the type object.
		
		This method should return a bytes object, and those serialized bytes
		are stored in the custom metadata of the Field holding an extension
		type in an IPC message.
		The bytes are passed to ``__arrow_ext_deserialize`` and should hold
		sufficient information to reconstruct the data type instance.
	**/
	public function __arrow_ext_serialize__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public var __hash__ : Dynamic;
	/**
		Initialize an extension type instance.
		
		This should be called at the end of the subclass'
		``__init__`` method.
	**/
	@:native("__init__")
	public function ___init__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Initialize an extension type instance.
		
		This should be called at the end of the subclass'
		``__init__`` method.
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
		DataType.__reduce__(self)
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
		DataType._export_to_c(self, out_ptr)
		
		Export to a C ArrowSchema struct, given its pointer.
		
		Be careful: if you don't pass the ArrowSchema struct to a consumer,
		its memory will leak.  This is a low-level function intended for
		expert users.
	**/
	public function _export_to_c(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		DataType._import_from_c(in_ptr)
		
		Import DataType from a C ArrowSchema struct, given its pointer.
		
		This is a low-level function intended for expert users.
	**/
	static public function _import_from_c(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var bit_width : Dynamic;
	/**
		DataType.equals(self, other)
		
		Return true if type is equivalent to passed value.
		
		Parameters
		----------
		other : DataType or string convertible to DataType
		
		Returns
		-------
		is_equal : bool
	**/
	public function equals(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		The extension type name.
	**/
	public var extension_name : Dynamic;
	public var id : Dynamic;
	/**
		Number of data buffers required to construct Array type
		excluding children.
	**/
	public var num_buffers : Dynamic;
	/**
		The number of child fields.
	**/
	public var num_children : Dynamic;
	/**
		The number of child fields.
	**/
	public var num_fields : Dynamic;
	/**
		The underlying storage type.
	**/
	public var storage_type : Dynamic;
	/**
		DataType.to_pandas_dtype(self)
		
		Return the equivalent NumPy / Pandas dtype.
	**/
	public function to_pandas_dtype(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		BaseExtensionType.wrap_array(self, storage)
		
		Wrap the given storage array as an extension array.
		
		Parameters
		----------
		storage : Array or ChunkedArray
		
		Returns
		-------
		array : Array or ChunkedArray
		    Extension array wrapping the storage array
	**/
	public function wrap_array(args:haxe.extern.Rest<Dynamic>):Dynamic;
}