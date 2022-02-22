/* This file is generated, do not edit! */
package pyarrow.lib;
@:pythonImport("pyarrow.lib", "Schema") extern class Schema {
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
		Return self[key].
	**/
	public function __getitem__(key:Dynamic):Dynamic;
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
		Schema.__reduce__(self)
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
		Schema.__sizeof__(self)
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
		Schema._export_to_c(self, out_ptr)
		
		Export to a C ArrowSchema struct, given its pointer.
		
		Be careful: if you don't pass the ArrowSchema struct to a consumer,
		its memory will leak.  This is a low-level function intended for
		expert users.
	**/
	public function _export_to_c(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Schema._field(self, int i)
		Select a field by its numeric index.
	**/
	public function _field(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Schema._import_from_c(in_ptr)
		
		Import Schema from a C ArrowSchema struct, given its pointer.
		
		This is a low-level function intended for expert users.
	**/
	static public function _import_from_c(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Schema.add_metadata(self, metadata)
	**/
	public function add_metadata(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Schema.append(self, Field field)
		
		Append a field at the end of the schema.
		
		In contrast to Python's ``list.append()`` it does return a new
		object, leaving the original Schema unmodified.
		
		Parameters
		----------
		field: Field
		
		Returns
		-------
		schema: Schema
		    New object with appended field.
	**/
	public function append(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Schema.empty_table(self)
		
		Provide an empty table according to the schema.
		
		Returns
		-------
		table: pyarrow.Table
	**/
	public function empty_table(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Schema.equals(self, Schema other, bool check_metadata=False)
		
		Test if this schema is equal to the other
		
		Parameters
		----------
		other :  pyarrow.Schema
		check_metadata : bool, default False
		    Key/value metadata must be equal too
		
		Returns
		-------
		is_equal : bool
	**/
	public function equals(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Schema.field(self, i)
		
		Select a field by its column name or numeric index.
		
		Parameters
		----------
		i : int or string
		
		Returns
		-------
		pyarrow.Field
	**/
	public function field(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Schema.field_by_name(self, name)
		
		Access a field by its name rather than the column index.
		
		Parameters
		----------
		name: str
		
		Returns
		-------
		field: pyarrow.Field
	**/
	public function field_by_name(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Schema.from_pandas(type cls, df, preserve_index=None)
		
		Returns implied schema from dataframe
		
		Parameters
		----------
		df : pandas.DataFrame
		preserve_index : bool, default True
		    Whether to store the index as an additional column (or columns, for
		    MultiIndex) in the resulting `Table`.
		    The default of None will store the index as a column, except for
		    RangeIndex which is stored as metadata only. Use
		    ``preserve_index=True`` to force it to be stored as a column.
		
		Returns
		-------
		pyarrow.Schema
		
		Examples
		--------
		
		>>> import pandas as pd
		>>> import pyarrow as pa
		>>> df = pd.DataFrame({
		    ...     'int': [1, 2],
		    ...     'str': ['a', 'b']
		    ... })
		>>> pa.Schema.from_pandas(df)
		int: int64
		str: string
		__index_level_0__: int64
	**/
	public function from_pandas(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Schema.get_all_field_indices(self, name)
		
		Return sorted list of indices for fields with the given name
	**/
	public function get_all_field_indices(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Schema.get_field_index(self, name)
		
		Return index of field with given unique name. Returns -1 if not found
		or if duplicated
	**/
	public function get_field_index(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Schema.insert(self, int i, Field field)
		
		Add a field at position i to the schema.
		
		Parameters
		----------
		i: int
		field: Field
		
		Returns
		-------
		schema: Schema
	**/
	public function insert(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var metadata : Dynamic;
	/**
		The schema's field names.
		
		Returns
		-------
		list of str
	**/
	public var names : Dynamic;
	/**
		Return deserialized-from-JSON pandas metadata field (if it exists)
	**/
	public var pandas_metadata : Dynamic;
	/**
		Schema.remove(self, int i)
		
		Remove the field at index i from the schema.
		
		Parameters
		----------
		i: int
		
		Returns
		-------
		schema: Schema
	**/
	public function remove(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Schema.remove_metadata(self)
		
		Create new schema without metadata, if any
		
		Returns
		-------
		schema : pyarrow.Schema
	**/
	public function remove_metadata(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Schema.serialize(self, memory_pool=None)
		
		Write Schema to Buffer as encapsulated IPC message
		
		Parameters
		----------
		memory_pool : MemoryPool, default None
		    Uses default memory pool if not specified
		
		Returns
		-------
		serialized : Buffer
	**/
	public function serialize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Schema.set(self, int i, Field field)
		
		Replace a field at position i in the schema.
		
		Parameters
		----------
		i: int
		field: Field
		
		Returns
		-------
		schema: Schema
	**/
	public function set(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Schema.to_string(self, truncate_metadata=True, show_field_metadata=True, show_schema_metadata=True)
		
		Return human-readable representation of Schema
		
		Parameters
		----------
		truncate_metadata : boolean, default True
		    Limit metadata key/value display to a single line of ~80 characters
		    or less
		show_field_metadata : boolean, default True
		    Display Field-level KeyValueMetadata
		show_schema_metadata : boolean, default True
		    Display Schema-level KeyValueMetadata
		
		Returns
		-------
		str : the formatted output
	**/
	public function to_string(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		The schema's field types.
		
		Returns
		-------
		list of DataType
	**/
	public var types : Dynamic;
	/**
		Schema.with_metadata(self, metadata)
		
		Add metadata as dict of string keys and values to Schema
		
		Parameters
		----------
		metadata : dict
		    Keys and values must be string-like / coercible to bytes
		
		Returns
		-------
		schema : pyarrow.Schema
	**/
	public function with_metadata(args:haxe.extern.Rest<Dynamic>):Dynamic;
}