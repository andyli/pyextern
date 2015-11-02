/* This file is generated, do not edit! */
package pandas.io.pytables;
@:pythonImport("pandas.io.pytables", "HDFStore") extern class HDFStore {
	/**
		Return a string representation for a particular object.
		
		Invoked by bytes(obj) in py3 only.
		Yields a bytestring in both py2/py3.
	**/
	public function __bytes__():Dynamic;
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		check for existance of this key
		can match the exact pathname or the pathnm w/o the leading '/'
	**/
	public function __contains__(key:Dynamic):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	public function __delitem__(key:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		__dir__() -> list
		default dir() implementation
	**/
	public function __dir__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __doc__ : Dynamic;
	public function __enter__():Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	public function __exit__(exc_type:Dynamic, exc_value:Dynamic, traceback:Dynamic):Dynamic;
	/**
		default object formatter
	**/
	public function __format__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self>=value.
	**/
	public function __ge__(value:Dynamic):Dynamic;
	/**
		allow attribute access to get stores 
	**/
	public function __getattr__(name:Dynamic):Dynamic;
	/**
		Return getattr(self, name).
	**/
	public function __getattribute__(name:Dynamic):Dynamic;
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
	public function ___init__(path:Dynamic, ?mode:Dynamic, ?complevel:Dynamic, ?complib:Dynamic, ?fletcher32:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
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
	/**
		helper for pickle
	**/
	public function __reduce__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce_ex__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return a string representation for a particular object.
		
		Yields Bytestring in Py2, Unicode String in py3.
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	public function __setitem__(key:Dynamic, value:Dynamic):Dynamic;
	/**
		__sizeof__() -> int
		size of object in memory, in bytes
	**/
	public function __sizeof__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return a string representation for a particular Object
		
		Invoked by str(df) in both py2/py3.
		Yields Bytestring in Py2, Unicode String in py3.
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
	public function __unicode__():Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	public function _check_if_open():Dynamic;
	/**
		return a suitable class to operate 
	**/
	public function _create_storer(group:Dynamic, ?format:Dynamic, ?value:Dynamic, ?append:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function _read_group(group:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		validate / deprecate formats; return the new kwargs 
	**/
	public function _validate_format(format:Dynamic, kwargs:Dynamic):Dynamic;
	public function _write_to_group(key:Dynamic, value:Dynamic, format:Dynamic, ?index:Dynamic, ?append:Dynamic, ?complib:Dynamic, ?encoding:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Append to Table in file. Node must already exist and be Table
		format.
		
		Parameters
		----------
		key : object
		value : {Series, DataFrame, Panel, Panel4D}
		format: 'table' is the default
		    table(t) : table format
		               Write as a PyTables Table structure which may perform
		               worse but allow more flexible operations like searching
		               / selecting subsets of the data
		append       : boolean, default True, append the input data to the
		    existing
		data_columns : list of columns to create as data columns, or True to
		    use all columns
		min_itemsize : dict of columns that specify minimum string sizes
		nan_rep      : string to use as string nan represenation
		chunksize    : size to chunk the writing
		expectedrows : expected TOTAL row size of this table
		encoding     : default None, provide an encoding for strings
		dropna       : boolean, default False, do not write an ALL nan row to
		    the store settable by the option 'io.hdf.dropna_table'
		Notes
		-----
		Does *not* check if data being appended overlaps with existing
		data in the table, so be careful
	**/
	public function append(key:Dynamic, value:Dynamic, ?format:Dynamic, ?append:Dynamic, ?columns:Dynamic, ?dropna:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Append to multiple tables
		
		Parameters
		----------
		d : a dict of table_name to table_columns, None is acceptable as the
		    values of one node (this will get all the remaining columns)
		value : a pandas object
		selector : a string that designates the indexable table; all of its
		    columns will be designed as data_columns, unless data_columns is
		    passed, in which case these are used
		data_columns : list of columns to create as data columns, or True to
		    use all columns
		dropna : if evaluates to True, drop rows from all tables if any single
		         row in each table has all NaN. Default False.
		
		Notes
		-----
		axes parameter is currently not accepted
	**/
	public function append_to_multiple(d:Dynamic, value:Dynamic, selector:Dynamic, ?data_columns:Dynamic, ?axes:Dynamic, ?dropna:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Close the PyTables file handle
	**/
	public function close():Dynamic;
	/**
		copy the existing store to a new file, upgrading in place
		
		Parameters
		----------
		propindexes: restore indexes in copied file (defaults to True)
		keys       : list of keys to include in the copy (defaults to all)
		overwrite  : overwrite (remove and replace) existing nodes in the
		    new store (default is True)
		mode, complib, complevel, fletcher32 same as in HDFStore.__init__
		
		Returns
		-------
		open file handle of the new store
	**/
	public function copy(file:Dynamic, ?mode:Dynamic, ?propindexes:Dynamic, ?keys:Dynamic, ?complib:Dynamic, ?complevel:Dynamic, ?fletcher32:Dynamic, ?overwrite:Dynamic):Dynamic;
	/**
		Create a pytables index on the table
		Paramaters
		----------
		key : object (the node to index)
		
		Exceptions
		----------
		raises if the node is not a table
	**/
	public function create_table_index(key:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public var filename : Dynamic;
	/**
		Force all buffered modifications to be written to disk.
		
		Parameters
		----------
		fsync : bool (default False)
		  call ``os.fsync()`` on the file handle to force writing to disk.
		
		Notes
		-----
		Without ``fsync=True``, flushing may not guarantee that the OS writes
		to disk. With fsync, the operation will block until the OS claims the
		file has been written; however, other caching layers may still
		interfere.
	**/
	public function flush(?fsync:Dynamic):Dynamic;
	/**
		Retrieve pandas object stored in file
		
		Parameters
		----------
		key : object
		
		Returns
		-------
		obj : type of object stored in file
	**/
	public function get(key:Dynamic):Dynamic;
	/**
		return the node with the key or None if it does not exist 
	**/
	public function get_node(key:Dynamic):Dynamic;
	/**
		return the storer object for a key, raise if not in the file 
	**/
	public function get_storer(key:Dynamic):Dynamic;
	/**
		return a list of all the top-level nodes (that are not themselves a
		pandas storage object)
	**/
	public function groups():Dynamic;
	/**
		return a boolean indicating whether the file is open
	**/
	public var is_open : Dynamic;
	/**
		iterate on key->group
	**/
	public function items():Dynamic;
	/**
		iterate on key->group
	**/
	public function iteritems():Dynamic;
	/**
		Return a (potentially unordered) list of the keys corresponding to the
		objects stored in the HDFStore. These are ABSOLUTE path-names (e.g.
		have the leading '/'
	**/
	public function keys():Dynamic;
	/**
		Open the file in the specified mode
		
		Parameters
		----------
		mode : {'a', 'w', 'r', 'r+'}, default 'a'
		    See HDFStore docstring or tables.open_file for info about modes
	**/
	public function open(?mode:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Store object in HDFStore
		
		Parameters
		----------
		key      : object
		value    : {Series, DataFrame, Panel}
		format   : 'fixed(f)|table(t)', default is 'fixed'
		    fixed(f) : Fixed format
		               Fast writing/reading. Not-appendable, nor searchable
		    table(t) : Table format
		               Write as a PyTables Table structure which may perform
		               worse but allow more flexible operations like searching
		               / selecting subsets of the data
		append   : boolean, default False
		    This will force Table format, append the input data to the
		    existing.
		encoding : default None, provide an encoding for strings
		dropna   : boolean, default False, do not write an ALL nan row to
		    the store settable by the option 'io.hdf.dropna_table'
	**/
	public function put(key:Dynamic, value:Dynamic, ?format:Dynamic, ?append:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Remove pandas object partially by specifying the where condition
		
		Parameters
		----------
		key : string
		    Node to remove or delete rows from
		where : list of Term (or convertable) objects, optional
		start : integer (defaults to None), row number to start selection
		stop  : integer (defaults to None), row number to stop selection
		
		Returns
		-------
		number of rows removed (or None if not a Table)
		
		Exceptions
		----------
		raises KeyError if key is not a valid store
	**/
	public function remove(key:Dynamic, ?where:Dynamic, ?start:Dynamic, ?stop:Dynamic):Dynamic;
	/**
		return the root node 
	**/
	public var root : Dynamic;
	/**
		Retrieve pandas object stored in file, optionally based on where
		criteria
		
		Parameters
		----------
		key : object
		where : list of Term (or convertable) objects, optional
		start : integer (defaults to None), row number to start selection
		stop  : integer (defaults to None), row number to stop selection
		columns : a list of columns that if not None, will limit the return
		    columns
		iterator : boolean, return an iterator, default False
		chunksize : nrows to include in iteration, return an iterator
		auto_close : boolean, should automatically close the store when
		    finished, default is False
		
		Returns
		-------
		The selected object
	**/
	public function select(key:Dynamic, ?where:Dynamic, ?start:Dynamic, ?stop:Dynamic, ?columns:Dynamic, ?iterator:Dynamic, ?chunksize:Dynamic, ?auto_close:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		return the selection as an Index
		
		Parameters
		----------
		key : object
		where : list of Term (or convertable) objects, optional
		start : integer (defaults to None), row number to start selection
		stop  : integer (defaults to None), row number to stop selection
	**/
	public function select_as_coordinates(key:Dynamic, ?where:Dynamic, ?start:Dynamic, ?stop:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Retrieve pandas objects from multiple tables
		
		Parameters
		----------
		keys : a list of the tables
		selector : the table to apply the where criteria (defaults to keys[0]
		    if not supplied)
		columns : the columns I want back
		start : integer (defaults to None), row number to start selection
		stop  : integer (defaults to None), row number to stop selection
		iterator : boolean, return an iterator, default False
		chunksize : nrows to include in iteration, return an iterator
		
		Exceptions
		----------
		raises KeyError if keys or selector is not found or keys is empty
		raises TypeError if keys is not a list or tuple
		raises ValueError if the tables are not ALL THE SAME DIMENSIONS
	**/
	public function select_as_multiple(keys:Dynamic, ?where:Dynamic, ?selector:Dynamic, ?columns:Dynamic, ?start:Dynamic, ?stop:Dynamic, ?iterator:Dynamic, ?chunksize:Dynamic, ?auto_close:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		return a single column from the table. This is generally only useful to
		select an indexable
		
		Parameters
		----------
		key : object
		column: the column of interest
		
		Exceptions
		----------
		raises KeyError if the column is not found (or key is not a valid
		    store)
		raises ValueError if the column can not be extracted individually (it
		    is part of a data block)
	**/
	public function select_column(key:Dynamic, column:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}