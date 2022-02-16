/* This file is generated, do not edit! */
package tensorflow.python.debug.cli.profile_analyzer_cli;
@:pythonImport("tensorflow.python.debug.cli.profile_analyzer_cli", "ProfileDataTableView") extern class ProfileDataTableView {
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
		Constructor.
		
		Args:
		  profile_datum_list: List of `ProfileDatum` objects.
		  time_unit: must be in cli_shared.TIME_UNITS.
	**/
	@:native("__init__")
	public function ___init__(profile_datum_list:Dynamic, ?time_unit:Dynamic):Dynamic;
	/**
		Constructor.
		
		Args:
		  profile_datum_list: List of `ProfileDatum` objects.
		  time_unit: must be in cli_shared.TIME_UNITS.
	**/
	public function new(profile_datum_list:Dynamic, ?time_unit:Dynamic):Void;
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
	public function column_count():Dynamic;
	public function column_names():Dynamic;
	public function column_sort_id(col:Dynamic):Dynamic;
	public function row_count():Dynamic;
	/**
		Get the content of a cell of the table.
		
		Args:
		  row: (int) row index.
		  col: (int) column index.
		  device_name_filter: Regular expression to filter by device name.
		  node_name_filter: Regular expression to filter by node name.
		  op_type_filter: Regular expression to filter by op type.
		
		Returns:
		  A debuggre_cli_common.RichLine object representing the content of the
		  cell, potentially with a clickable MenuItem.
		
		Raises:
		  IndexError: if row index is out of range.
	**/
	public function value(row:Dynamic, col:Dynamic, ?device_name_filter:Dynamic, ?node_name_filter:Dynamic, ?op_type_filter:Dynamic):Dynamic;
}