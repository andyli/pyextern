/* This file is generated, do not edit! */
package pandas.io.gbq;
@:pythonImport("pandas.io.gbq", "_Dataset") extern class _Dataset {
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
	public function ___init__(project_id:Dynamic, ?reauth:Dynamic, ?verbose:Dynamic, ?private_key:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(project_id:Dynamic, ?reauth:Dynamic, ?verbose:Dynamic, ?private_key:Dynamic):Void;
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
	public function _print(msg:Dynamic, ?end:Dynamic):Dynamic;
	public function _start_timer():Dynamic;
	/**
		Create a dataset in Google BigQuery
		
		.. versionadded:: 0.17.0
		
		Parameters
		----------
		dataset : str
		    Name of dataset to be written
	**/
	public function create(dataset_id:Dynamic):Dynamic;
	/**
		Return a list of datasets in Google BigQuery
		
		.. versionadded:: 0.17.0
		
		Parameters
		----------
		None
		
		Returns
		-------
		list
		    List of datasets under the specific project
	**/
	public function datasets():Dynamic;
	/**
		Delete a dataset in Google BigQuery
		
		.. versionadded:: 0.17.0
		
		Parameters
		----------
		dataset : str
		    Name of dataset to be deleted
	**/
	public function delete(dataset_id:Dynamic):Dynamic;
	public function delete_and_recreate_table(dataset_id:Dynamic, table_id:Dynamic, table_schema:Dynamic):Dynamic;
	/**
		Check if a dataset exists in Google BigQuery
		
		.. versionadded:: 0.17.0
		
		Parameters
		----------
		dataset_id : str
		    Name of dataset to be verified
		
		Returns
		-------
		boolean
		    true if dataset exists, otherwise false
	**/
	public function exists(dataset_id:Dynamic):Dynamic;
	/**
		This method tries to retrieve the "default application credentials".
		This could be useful for running code on Google Cloud Platform.
		
		.. versionadded:: 0.19.0
		
		Parameters
		----------
		None
		
		Returns
		-------
		- GoogleCredentials,
		    If the default application credentials can be retrieved
		    from the environment. The retrieved credentials should also
		    have access to the project (self.project_id) on BigQuery.
		- OR None,
		    If default application credentials can not be retrieved
		    from the environment. Or, the retrieved credentials do not
		    have access to the project (self.project_id) on BigQuery.
	**/
	public function get_application_default_credentials():Dynamic;
	public function get_credentials():Dynamic;
	public function get_elapsed_seconds():Dynamic;
	public function get_service():Dynamic;
	public function get_service_account_credentials():Dynamic;
	public function get_user_account_credentials():Dynamic;
	public function load_data(dataframe:Dynamic, dataset_id:Dynamic, table_id:Dynamic, chunksize:Dynamic):Dynamic;
	public function print_elapsed_seconds(?prefix:Dynamic, ?postfix:Dynamic, ?overlong:Dynamic):Dynamic;
	static public function process_http_error(ex:Dynamic):Dynamic;
	public function process_insert_errors(insert_errors:Dynamic):Dynamic;
	public function run_query(query:Dynamic):Dynamic;
	static public var scope : Dynamic;
	static public function sizeof_fmt(num:Dynamic, ?suffix:Dynamic):Dynamic;
	/**
		List tables in the specific dataset in Google BigQuery
		
		.. versionadded:: 0.17.0
		
		Parameters
		----------
		dataset : str
		    Name of dataset to list tables for
		
		Returns
		-------
		list
		    List of tables under the specific dataset
	**/
	public function tables(dataset_id:Dynamic):Dynamic;
	public function verify_schema(dataset_id:Dynamic, table_id:Dynamic, schema:Dynamic):Dynamic;
}