/* This file is generated, do not edit! */
package pandas.io.pytables;
@:pythonImport("pandas.io.pytables", "HDFStore") extern class HDFStore {
	static public var __annotations__ : Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		check for existence of this key
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
		Default dir() implementation.
	**/
	public function __dir__():Dynamic;
	static public var __doc__ : Dynamic;
	public function __enter__():Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	public function __exit__(exc_type:Dynamic, exc_value:Dynamic, traceback:Dynamic):Dynamic;
	/**
		Default object formatter.
	**/
	public function __format__(format_spec:Dynamic):Dynamic;
	public function __fspath__():Dynamic;
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
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(path:Dynamic, ?mode:Dynamic, ?complevel:Dynamic, ?complib:Dynamic, ?fletcher32:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __iter__():Dynamic;
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
	public function __setitem__(key:Dynamic, value:Dynamic):Dynamic;
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
	public function _check_if_open():Dynamic;
	/**
		Create nodes from key and return group name.
	**/
	public function _create_nodes_and_group(key:Dynamic):Dynamic;
	/**
		return a suitable class to operate
	**/
	public function _create_storer(group:Dynamic, ?format:Dynamic, ?value:Dynamic, ?encoding:Dynamic, ?errors:Dynamic):Dynamic;
	/**
		Identify HDF5 group based on key, delete/create group if needed.
	**/
	public function _identify_group(key:Dynamic, append:Dynamic):Dynamic;
	public function _read_group(group:Dynamic):Dynamic;
	/**
		validate / deprecate formats
	**/
	public function _validate_format(format:Dynamic):Dynamic;
	public function _write_to_group(key:Dynamic, value:Dynamic, format:Dynamic, ?axes:Dynamic, ?index:Dynamic, ?append:Dynamic, ?complib:Dynamic, ?complevel:Dynamic, ?fletcher32:Dynamic, ?min_itemsize:Dynamic, ?chunksize:Dynamic, ?expectedrows:Dynamic, ?dropna:Dynamic, ?nan_rep:Dynamic, ?data_columns:Dynamic, ?encoding:Dynamic, ?errors:Dynamic, ?track_times:Dynamic):Dynamic;
	/**
		Append to Table in file. Node must already exist and be Table
		format.
		
		Parameters
		----------
		key : str
		value : {Series, DataFrame}
		format : 'table' is the default
		    Format to use when storing object in HDFStore.  Value can be one of:
		
		    ``'table'``
		        Table format. Write as a PyTables Table structure which may perform
		        worse but allow more flexible operations like searching / selecting
		        subsets of the data.
		append       : bool, default True
		    Append the input data to the existing.
		data_columns : list of columns, or True, default None
		    List of columns to create as indexed data columns for on-disk
		    queries, or True to use all columns. By default only the axes
		    of the object are indexed. See `here
		    <https://pandas.pydata.org/pandas-docs/stable/user_guide/io.html#query-via-data-columns>`__.
		min_itemsize : dict of columns that specify minimum str sizes
		nan_rep      : str to use as str nan representation
		chunksize    : size to chunk the writing
		expectedrows : expected TOTAL row size of this table
		encoding     : default None, provide an encoding for str
		dropna : bool, default False
		    Do not write an ALL nan row to the store settable
		    by the option 'io.hdf.dropna_table'.
		
		Notes
		-----
		Does *not* check if data being appended overlaps with existing
		data in the table, so be careful
	**/
	public function append(key:Dynamic, value:Dynamic, ?format:Dynamic, ?axes:Dynamic, ?index:Dynamic, ?append:Dynamic, ?complib:Dynamic, ?complevel:Dynamic, ?columns:Dynamic, ?min_itemsize:Dynamic, ?nan_rep:Dynamic, ?chunksize:Dynamic, ?expectedrows:Dynamic, ?dropna:Dynamic, ?data_columns:Dynamic, ?encoding:Dynamic, ?errors:Dynamic):Dynamic;
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
		Copy the existing store to a new file, updating in place.
		
		Parameters
		----------
		propindexes : bool, default True
		    Restore indexes in copied file.
		keys : list, optional
		    List of keys to include in the copy (defaults to all).
		overwrite : bool, default True
		    Whether to overwrite (remove and replace) existing nodes in the new store.
		mode, complib, complevel, fletcher32 same as in HDFStore.__init__
		
		Returns
		-------
		open file handle of the new store
	**/
	public function copy(file:Dynamic, ?mode:Dynamic, ?propindexes:Dynamic, ?keys:Dynamic, ?complib:Dynamic, ?complevel:Dynamic, ?fletcher32:Dynamic, ?overwrite:Dynamic):Dynamic;
	/**
		Create a pytables index on the table.
		
		Parameters
		----------
		key : str
		columns : None, bool, or listlike[str]
		    Indicate which columns to create an index on.
		
		    * False : Do not create any indexes.
		    * True : Create indexes on all columns.
		    * None : Create indexes on all columns.
		    * listlike : Create indexes on the given columns.
		
		optlevel : int or None, default None
		    Optimization level, if None, pytables defaults to 6.
		kind : str or None, default None
		    Kind of index, if None, pytables defaults to "medium".
		
		Raises
		------
		TypeError: raises if the node is not a table
	**/
	public function create_table_index(key:Dynamic, ?columns:Dynamic, ?optlevel:Dynamic, ?kind:Dynamic):Dynamic;
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
		Retrieve pandas object stored in file.
		
		Parameters
		----------
		key : str
		
		Returns
		-------
		object
		    Same type as object stored in file.
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
		Return a list of all the top-level nodes.
		
		Each node returned is not a pandas storage object.
		
		Returns
		-------
		list
		    List of objects.
	**/
	public function groups():Dynamic;
	/**
		Print detailed information on the store.
		
		Returns
		-------
		str
	**/
	public function info():Dynamic;
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
		Return a list of keys corresponding to objects stored in HDFStore.
		
		Parameters
		----------
		
		include : str, default 'pandas'
		        When kind equals 'pandas' return pandas objects.
		        When kind equals 'native' return native HDF5 Table objects.
		
		        .. versionadded:: 1.1.0
		
		Returns
		-------
		list
		    List of ABSOLUTE path-names (e.g. have the leading '/').
		
		Raises
		------
		raises ValueError if kind has an illegal value
	**/
	public function keys(?include:Dynamic):Dynamic;
	/**
		Open the file in the specified mode
		
		Parameters
		----------
		mode : {'a', 'w', 'r', 'r+'}, default 'a'
		    See HDFStore docstring or tables.open_file for info about modes
		**kwargs
		    These parameters will be passed to the PyTables open_file method.
	**/
	public function open(?mode:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Store object in HDFStore.
		
		Parameters
		----------
		key : str
		value : {Series, DataFrame}
		format : 'fixed(f)|table(t)', default is 'fixed'
		    Format to use when storing object in HDFStore. Value can be one of:
		
		    ``'fixed'``
		        Fixed format.  Fast writing/reading. Not-appendable, nor searchable.
		    ``'table'``
		        Table format.  Write as a PyTables Table structure which may perform
		        worse but allow more flexible operations like searching / selecting
		        subsets of the data.
		append : bool, default False
		    This will force Table format, append the input data to the existing.
		data_columns : list of columns or True, default None
		    List of columns to create as data columns, or True to use all columns.
		    See `here
		    <https://pandas.pydata.org/pandas-docs/stable/user_guide/io.html#query-via-data-columns>`__.
		encoding : str, default None
		    Provide an encoding for strings.
		track_times : bool, default True
		    Parameter is propagated to 'create_table' method of 'PyTables'.
		    If set to False it enables to have the same h5 files (same hashes)
		    independent on creation time.
		
		    .. versionadded:: 1.1.0
	**/
	public function put(key:Dynamic, value:Dynamic, ?format:Dynamic, ?index:Dynamic, ?append:Dynamic, ?complib:Dynamic, ?complevel:Dynamic, ?min_itemsize:Dynamic, ?nan_rep:Dynamic, ?data_columns:Dynamic, ?encoding:Dynamic, ?errors:Dynamic, ?track_times:Dynamic, ?dropna:Dynamic):Dynamic;
	/**
		Remove pandas object partially by specifying the where condition
		
		Parameters
		----------
		key : str
		    Node to remove or delete rows from
		where : list of Term (or convertible) objects, optional
		start : integer (defaults to None), row number to start selection
		stop  : integer (defaults to None), row number to stop selection
		
		Returns
		-------
		number of rows removed (or None if not a Table)
		
		Raises
		------
		raises KeyError if key is not a valid store
	**/
	public function remove(key:Dynamic, ?where:Dynamic, ?start:Dynamic, ?stop:Dynamic):Dynamic;
	/**
		return the root node
	**/
	public var root : Dynamic;
	/**
		Retrieve pandas object stored in file, optionally based on where criteria.
		
		.. warning::
		
		   Pandas uses PyTables for reading and writing HDF5 files, which allows
		   serializing object-dtype data with pickle when using the "fixed" format.
		   Loading pickled data received from untrusted sources can be unsafe.
		
		   See: https://docs.python.org/3/library/pickle.html for more.
		
		Parameters
		----------
		key : str
		    Object being retrieved from file.
		where : list or None
		    List of Term (or convertible) objects, optional.
		start : int or None
		    Row number to start selection.
		stop : int, default None
		    Row number to stop selection.
		columns : list or None
		    A list of columns that if not None, will limit the return columns.
		iterator : bool or False
		    Returns an iterator.
		chunksize : int or None
		    Number or rows to include in iteration, return an iterator.
		auto_close : bool or False
		    Should automatically close the store when finished.
		
		Returns
		-------
		object
		    Retrieved object from file.
	**/
	public function select(key:Dynamic, ?where:Dynamic, ?start:Dynamic, ?stop:Dynamic, ?columns:Dynamic, ?iterator:Dynamic, ?chunksize:Dynamic, ?auto_close:Dynamic):Dynamic;
	/**
		return the selection as an Index
		
		.. warning::
		
		   Pandas uses PyTables for reading and writing HDF5 files, which allows
		   serializing object-dtype data with pickle when using the "fixed" format.
		   Loading pickled data received from untrusted sources can be unsafe.
		
		   See: https://docs.python.org/3/library/pickle.html for more.
		
		
		Parameters
		----------
		key : str
		where : list of Term (or convertible) objects, optional
		start : integer (defaults to None), row number to start selection
		stop  : integer (defaults to None), row number to stop selection
	**/
	public function select_as_coordinates(key:Dynamic, ?where:Dynamic, ?start:Dynamic, ?stop:Dynamic):Dynamic;
	/**
		Retrieve pandas objects from multiple tables.
		
		.. warning::
		
		   Pandas uses PyTables for reading and writing HDF5 files, which allows
		   serializing object-dtype data with pickle when using the "fixed" format.
		   Loading pickled data received from untrusted sources can be unsafe.
		
		   See: https://docs.python.org/3/library/pickle.html for more.
		
		Parameters
		----------
		keys : a list of the tables
		selector : the table to apply the where criteria (defaults to keys[0]
		    if not supplied)
		columns : the columns I want back
		start : integer (defaults to None), row number to start selection
		stop  : integer (defaults to None), row number to stop selection
		iterator : bool, return an iterator, default False
		chunksize : nrows to include in iteration, return an iterator
		auto_close : bool, default False
		    Should automatically close the store when finished.
		
		Raises
		------
		raises KeyError if keys or selector is not found or keys is empty
		raises TypeError if keys is not a list or tuple
		raises ValueError if the tables are not ALL THE SAME DIMENSIONS
	**/
	public function select_as_multiple(keys:Dynamic, ?where:Dynamic, ?selector:Dynamic, ?columns:Dynamic, ?start:Dynamic, ?stop:Dynamic, ?iterator:Dynamic, ?chunksize:Dynamic, ?auto_close:Dynamic):Dynamic;
	/**
		return a single column from the table. This is generally only useful to
		select an indexable
		
		.. warning::
		
		   Pandas uses PyTables for reading and writing HDF5 files, which allows
		   serializing object-dtype data with pickle when using the "fixed" format.
		   Loading pickled data received from untrusted sources can be unsafe.
		
		   See: https://docs.python.org/3/library/pickle.html for more.
		
		Parameters
		----------
		key : str
		column : str
		    The column of interest.
		start : int or None, default None
		stop : int or None, default None
		
		Raises
		------
		raises KeyError if the column is not found (or key is not a valid
		    store)
		raises ValueError if the column can not be extracted individually (it
		    is part of a data block)
	**/
	public function select_column(key:Dynamic, column:Dynamic, ?start:Dynamic, ?stop:Dynamic):Dynamic;
	/**
		Walk the pytables group hierarchy for pandas objects.
		
		This generator will yield the group path, subgroups and pandas object
		names for each group.
		
		Any non-pandas PyTables objects that are not a group will be ignored.
		
		The `where` group itself is listed first (preorder), then each of its
		child groups (following an alphanumerical order) is also traversed,
		following the same procedure.
		
		Parameters
		----------
		where : str, default "/"
		    Group where to start walking.
		
		Yields
		------
		path : str
		    Full path to a group (without trailing '/').
		groups : list
		    Names (strings) of the groups contained in `path`.
		leaves : list
		    Names (strings) of the pandas objects contained in `path`.
	**/
	public function walk(?where:Dynamic):Dynamic;
}