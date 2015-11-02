/* This file is generated, do not edit! */
package pandas.io.gbq;
@:pythonImport("pandas.io.gbq", "_Table") extern class _Table {
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
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(project_id:Dynamic, dataset_id:Dynamic, ?reauth:Dynamic):Dynamic;
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
		Create a table in Google BigQuery given a table and schema
		
		.. versionadded:: 0.17.0
		
		Parameters
		----------
		table : str
		    Name of table to be written
		schema : str
		    Use the generate_bq_schema to generate your table schema from a dataframe.
	**/
	public function create(table_id:Dynamic, schema:Dynamic):Dynamic;
	/**
		Delete a table in Google BigQuery
		
		.. versionadded:: 0.17.0
		
		Parameters
		----------
		table : str
		    Name of table to be deleted
	**/
	public function delete(table_id:Dynamic):Dynamic;
	public function delete_and_recreate_table(dataset_id:Dynamic, table_id:Dynamic, table_schema:Dynamic, verbose:Dynamic):Dynamic;
	/**
		Check if a table exists in Google BigQuery
		
		.. versionadded:: 0.17.0
		
		Parameters
		----------
		table : str
		    Name of table to be verified
		
		Returns
		-------
		boolean
		    true if table exists, otherwise false
	**/
	public function exists(table_id:Dynamic):Dynamic;
	public function get_credentials():Dynamic;
	static public function get_service(credentials:Dynamic):Dynamic;
	public function load_data(dataframe:Dynamic, dataset_id:Dynamic, table_id:Dynamic, chunksize:Dynamic, verbose:Dynamic):Dynamic;
	static public function process_http_error(ex:Dynamic):Dynamic;
	static public function process_insert_errors(insert_errors:Dynamic, verbose:Dynamic):Dynamic;
	public function run_query(query:Dynamic, ?verbose:Dynamic):Dynamic;
	public function test_google_api_imports():Dynamic;
	public function verify_schema(dataset_id:Dynamic, table_id:Dynamic, schema:Dynamic):Dynamic;
}