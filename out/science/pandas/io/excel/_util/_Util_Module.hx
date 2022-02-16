/* This file is generated, do not edit! */
package pandas.io.excel._util;
@:pythonImport("pandas.io.excel._util") extern class _Util_Module {
	static public function Any(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Callable type; Callable[[int], str] is a function of (int) -> str.
		
		The subscription syntax must always be used with exactly two
		values: the argument list and the return type.  The argument list
		must be a list of types or ellipsis; the return type must be a single type.
		
		There is no syntax to indicate optional or keyword arguments,
		such function types are rarely used as callback types.
	**/
	static public function Callable(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Hashable(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Iterable(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Literal(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public function MutableMapping(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Sequence(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var TYPE_CHECKING : Dynamic;
	static public var __annotations__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Convert Excel column name like 'AB' to 0-based column index.
		
		Parameters
		----------
		x : str
		    The Excel column name to convert to a 0-based column index.
		
		Returns
		-------
		num : int
		    The column index corresponding to the name.
		
		Raises
		------
		ValueError
		    Part of the Excel column name was invalid.
	**/
	static public function _excel2num(x:Dynamic):Int;
	/**
		Convert comma separated list of column names and ranges to indices.
		
		Parameters
		----------
		areas : str
		    A string containing a sequence of column ranges (or areas).
		
		Returns
		-------
		cols : list
		    A list of 0-based column indices.
		
		Examples
		--------
		>>> _range2cols('A:E')
		[0, 1, 2, 3, 4]
		>>> _range2cols('A,C,Z:AB')
		[0, 2, 25, 26, 27]
	**/
	static public function _range2cols(areas:Dynamic):Array<Dynamic>;
	static public var _writers : Dynamic;
	static public var annotations : Dynamic;
	/**
		Used to combine two sources of kwargs for the backend engine.
		
		Use of kwargs is deprecated, this function is solely for use in 1.3 and should
		be removed in 1.4/2.0. Also _base.ExcelWriter.__new__ ensures either engine_kwargs
		or kwargs must be None or empty respectively.
		
		Parameters
		----------
		engine_kwargs: dict
		    kwargs to be passed through to the engine.
		kwargs: dict
		    kwargs to be psased through to the engine (deprecated)
		
		Returns
		-------
		engine_kwargs combined with kwargs
	**/
	static public function combine_kwargs(engine_kwargs:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Forward fill blank entries in row but only inside the same parent index.
		
		Used for creating headers in Multiindex.
		
		Parameters
		----------
		row : list
		    List of items in a single row.
		control_row : list of bool
		    Helps to determine if particular column is in same parent index as the
		    previous value. Used to stop propagation of empty cells between
		    different indexes.
		
		Returns
		-------
		Returns changed row and control_row
	**/
	static public function fill_mi_header(row:Dynamic, control_row:Dynamic):Dynamic;
	/**
		Return the default reader/writer for the given extension.
		
		Parameters
		----------
		ext : str
		    The excel file extension for which to get the default engine.
		mode : str {'reader', 'writer'}
		    Whether to get the default engine for reading or writing.
		    Either 'reader' or 'writer'
		
		Returns
		-------
		str
		    The default engine for the extension.
	**/
	static public function get_default_engine(ext:Dynamic, ?mode:Dynamic):Dynamic;
	static public function get_writer(engine_name:Dynamic):Dynamic;
	/**
		Import an optional dependency.
		
		By default, if a dependency is missing an ImportError with a nice
		message will be raised. If a dependency is present, but too old,
		we raise.
		
		Parameters
		----------
		name : str
		    The module name.
		extra : str
		    Additional text to include in the ImportError message.
		errors : str {'raise', 'warn', 'ignore'}
		    What to do when a dependency is not found or its version is too old.
		
		    * raise : Raise an ImportError
		    * warn : Only applicable when a module's version is to old.
		      Warns that the version is too old and returns None
		    * ignore: If the module is not installed, return None, otherwise,
		      return the module, even if the version is too old.
		      It's expected that users validate the version locally when
		      using ``errors="ignore"`` (see. ``io/html.py``)
		min_version : str, default None
		    Specify a minimum version that is different from the global pandas
		    minimum version required.
		Returns
		-------
		maybe_module : Optional[ModuleType]
		    The imported module, when found and the version is correct.
		    None is returned when the package is not found and `errors`
		    is False, or when the package's version is too old and `errors`
		    is ``'warn'``.
	**/
	static public function import_optional_dependency(name:Dynamic, ?extra:Dynamic, ?errors:Dynamic, ?min_version:Dynamic):Dynamic;
	/**
		Return True if given object is integer.
		
		Returns
		-------
		bool
	**/
	static public function is_integer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Check if the object is list-like.
		
		Objects that are considered list-like are for example Python
		lists, tuples, sets, NumPy arrays, and Pandas Series.
		
		Strings and datetime objects, however, are not considered list-like.
		
		Parameters
		----------
		obj : object
		    Object to check.
		allow_sets : bool, default True
		    If this parameter is False, sets will not be considered list-like.
		
		Returns
		-------
		bool
		    Whether `obj` has list-like properties.
		
		Examples
		--------
		>>> import datetime
		>>> is_list_like([1, 2, 3])
		True
		>>> is_list_like({1, 2, 3})
		True
		>>> is_list_like(datetime.datetime(2017, 1, 1))
		False
		>>> is_list_like("foo")
		False
		>>> is_list_like(1)
		False
		>>> is_list_like(np.array([2]))
		True
		>>> is_list_like(np.array(2))
		False
	**/
	static public function is_list_like(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Convert `usecols` into a compatible format for parsing in `parsers.py`.
		
		Parameters
		----------
		usecols : object
		    The use-columns object to potentially convert.
		
		Returns
		-------
		converted : object
		    The compatible format of `usecols`.
	**/
	static public function maybe_convert_usecols(usecols:Dynamic):Dynamic;
	/**
		Decorator for overloaded functions/methods.
		
		In a stub file, place two or more stub definitions for the same
		function in a row, each decorated with @overload.  For example:
		
		  @overload
		  def utf8(value: None) -> None: ...
		  @overload
		  def utf8(value: bytes) -> bytes: ...
		  @overload
		  def utf8(value: str) -> bytes: ...
		
		In a non-stub file (i.e. a regular .py file), do the same but
		follow it with an implementation.  The implementation should *not*
		be decorated with @overload.  For example:
		
		  @overload
		  def utf8(value: None) -> None: ...
		  @overload
		  def utf8(value: bytes) -> bytes: ...
		  @overload
		  def utf8(value: str) -> bytes: ...
		  def utf8(value):
		      # implementation goes here
	**/
	@:native("overload")
	static public function _overload(func:Dynamic):Dynamic;
	/**
		Pop the header name for MultiIndex parsing.
		
		Parameters
		----------
		row : list
		    The data row to parse for the header name.
		index_col : int, list
		    The index columns for our data. Assumed to be non-null.
		
		Returns
		-------
		header_name : str
		    The extracted header name.
		trimmed_row : list
		    The original data row with the header name removed.
	**/
	static public function pop_header_name(row:Dynamic, index_col:Dynamic):String;
	/**
		Add engine to the excel writer registry.io.excel.
		
		You must use this method to integrate with ``to_excel``.
		
		Parameters
		----------
		klass : ExcelWriter
	**/
	static public function register_writer(klass:Dynamic):Dynamic;
	static public function validate_freeze_panes(freeze_panes:Dynamic):Dynamic;
}