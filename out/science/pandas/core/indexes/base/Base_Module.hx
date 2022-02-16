/* This file is generated, do not edit! */
package pandas.core.indexes.base;
@:pythonImport("pandas.core.indexes.base") extern class Base_Module {
	static public function Any(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public function AnyArrayLike(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function ArrayLike(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Callable type; Callable[[int], str] is a function of (int) -> str.
		
		The subscription syntax must always be used with exactly two
		values: the argument list and the return type.  The argument list
		must be a list of types or ellipsis; the return type must be a single type.
		
		There is no syntax to indicate optional or keyword arguments,
		such function types are rarely used as callback types.
	**/
	static public function Callable(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Dtype(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function DtypeObj(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var F : Dynamic;
	static public function Hashable(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Literal(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var NaT : Dynamic;
	static public function Sequence(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Shape(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var TYPE_CHECKING : Dynamic;
	static public var _IndexT : Dynamic;
	static public var __all__ : Dynamic;
	static public var __annotations__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _cast_depr_msg : Dynamic;
	static public var _dtype_obj : Dynamic;
	static public var _index_doc_kwargs : Dynamic;
	static public var _index_shared_docs : Dynamic;
	/**
		If we have an arraylike input but no passed dtype, try to infer
		a supported dtype.
		
		Parameters
		----------
		subarr : np.ndarray[object]
		cast_numeric_deprecated : bool, default True
		    Whether to issue a FutureWarning when inferring numeric dtypes.
		
		Returns
		-------
		np.ndarray or ExtensionArray
	**/
	static public function _maybe_cast_data_without_dtype(subarr:Dynamic, ?cast_numeric_deprecated:Dynamic):Dynamic;
	/**
		Decorator to simplify 'return_indexers' checks in Index.join.
	**/
	static public function _maybe_return_indexers(meth:Dynamic):Dynamic;
	static public function _maybe_try_sort(result:Dynamic, sort:Dynamic):Dynamic;
	/**
		This is called upon unpickling, rather than the default which doesn't
		have arguments and breaks __new__.
	**/
	static public function _new_Index(cls:Dynamic, d:Dynamic):Dynamic;
	static public var _unsortable_types : Dynamic;
	static public function _validate_join_method(method:Dynamic):Dynamic;
	static public var annotations : Dynamic;
	/**
		True if two arrays, left and right, have equal non-NaN elements, and NaNs
		in corresponding locations.  False otherwise. It is assumed that left and
		right are NumPy arrays of the same dtype. The behavior of this function
		(particularly with respect to NaNs) is not defined if the dtypes are
		different.
		
		Parameters
		----------
		left, right : ndarrays
		strict_nan : bool, default False
		    If True, consider NaN and None to be different.
		dtype_equal : bool, default False
		    Whether `left` and `right` are known to have the same dtype
		    according to `is_dtype_equal`. Some methods like `BlockManager.equals`.
		    require that the dtypes match. Setting this to ``True`` can improve
		    performance, but will give different results for arrays that are
		    equal but different dtypes.
		
		Returns
		-------
		b : bool
		    Returns True if the arrays are equivalent.
		
		Examples
		--------
		>>> array_equivalent(
		...     np.array([1, 2, np.nan]),
		...     np.array([1, 2, np.nan]))
		True
		>>> array_equivalent(
		...     np.array([1, np.nan, 2]),
		...     np.array([1, 2, np.nan]))
		False
	**/
	static public function array_equivalent(left:Dynamic, right:Dynamic, ?strict_nan:Dynamic, ?dtype_equal:Dynamic):Bool;
	/**
		Can we do an inplace setitem with this element in an array with this dtype?
		
		Parameters
		----------
		arr : np.ndarray or ExtensionArray
		element : Any
		
		Returns
		-------
		bool
	**/
	static public function can_hold_element(arr:Dynamic, element:Dynamic):Dynamic;
	/**
		Cast a value to a type.
		
		This returns the value unchanged.  To the type checker this
		signals that the return value has the designated type, but at
		runtime we intentionally don't check anything (we want this
		to be as fast as possible).
	**/
	@:native("cast")
	static public function _cast(typ:Dynamic, val:Dynamic):Dynamic;
	/**
		provide concatenation of an array of arrays each of which is a single
		'normalized' dtypes (in that for example, if it's object, then it is a
		non-datetimelike and provide a combined dtype for the resulting array that
		preserves the overall dtype if possible)
		
		Parameters
		----------
		to_concat : array of arrays
		axis : axis to provide concatenation
		ea_compat_axis : bool, default False
		    For ExtensionArray compat, behave as if axis == 1 when determining
		    whether to drop empty arrays.
		
		Returns
		-------
		a single array, preserving the combined dtypes
	**/
	static public function concat_compat(to_concat:Dynamic, ?axis:Dynamic, ?ea_compat_axis:Dynamic):Dynamic;
	static public function default_pprint(thing:Dynamic, ?max_seq_items:Dynamic):Dynamic;
	/**
		Helper function to raise the deprecation warning for multi-dimensional
		indexing on 1D Series/Index.
		
		GH#27125 indexer like idx[:, None] expands dim, but we cannot do that
		and keep an index, so we currently return ndarray, which is deprecated
		(Deprecation GH#30588).
	**/
	static public function deprecate_ndim_indexing(result:Dynamic, ?stacklevel:Dynamic):Dynamic;
	/**
		Decorator to deprecate a use of non-keyword arguments of a function.
		
		Parameters
		----------
		version : str, optional
		    The version in which positional arguments will become
		    keyword-only. If None, then the warning message won't
		    specify any particular version.
		
		allowed_args : list, optional
		    In case of list, it must be the list of names of some
		    first arguments of the decorated functions that are
		    OK to be given as positional arguments. In case of None value,
		    defaults to list of all arguments not having the
		    default value.
		
		stacklevel : int, default=2
		    The stack level for warnings.warn
	**/
	static public function deprecate_nonkeyword_arguments(version:Dynamic, ?allowed_args:Dynamic, ?stacklevel:Dynamic):Dynamic;
	static public function disallow_kwargs(kwargs:Dynamic):Dynamic;
	/**
		A decorator take docstring templates, concatenate them and perform string
		substitution on it.
		
		This decorator will add a variable "_docstring_components" to the wrapped
		callable to keep track the original docstring template for potential usage.
		If it should be consider as a template, it will be saved as a string.
		Otherwise, it will be saved as callable, and later user __doc__ and dedent
		to get docstring.
		
		Parameters
		----------
		*docstrings : str or callable
		    The string / docstring / docstring template to be appended in order
		    after default docstring under callable.
		**params
		    The string which would be used to format docstring template.
	**/
	static public function doc(?docstrings:python.VarArgs<Dynamic>, ?params:python.KwArgs<Dynamic>):Dynamic;
	/**
		If seq is an iterator, put its values into a list.
	**/
	static public function ensure_has_len(seq:Dynamic):Dynamic;
	/**
		Ensure that we have an index from some index-like object.
		
		Parameters
		----------
		index_like : sequence
		    An Index or other sequence
		copy : bool, default False
		
		Returns
		-------
		index : Index or MultiIndex
		
		See Also
		--------
		ensure_index_from_sequences
		
		Examples
		--------
		>>> ensure_index(['a', 'b'])
		Index(['a', 'b'], dtype='object')
		
		>>> ensure_index([('a', 'a'),  ('b', 'c')])
		Index([('a', 'a'), ('b', 'c')], dtype='object')
		
		>>> ensure_index([['a', 'a'], ['b', 'c']])
		MultiIndex([('a', 'b'),
		        ('a', 'c')],
		       )
	**/
	static public function ensure_index(index_like:Dynamic, ?copy:Dynamic):Dynamic;
	/**
		Construct an index from sequences of data.
		
		A single sequence returns an Index. Many sequences returns a
		MultiIndex.
		
		Parameters
		----------
		sequences : sequence of sequences
		names : sequence of str
		
		Returns
		-------
		index : Index or MultiIndex
		
		Examples
		--------
		>>> ensure_index_from_sequences([[1, 2, 3]], names=["name"])
		Int64Index([1, 2, 3], dtype='int64', name='name')
		
		>>> ensure_index_from_sequences([["a", "a"], ["a", "b"]], names=["L1", "L2"])
		MultiIndex([('a', 'a'),
		            ('a', 'b')],
		           names=['L1', 'L2'])
		
		See Also
		--------
		ensure_index
	**/
	static public function ensure_index_from_sequences(sequences:Dynamic, ?names:Dynamic):Dynamic;
	static public function ensure_int64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Applies a callable key function to the values function and checks
		that the resulting value has the same shape. Can be called on Index
		subclasses, Series, DataFrames, or ndarrays.
		
		Parameters
		----------
		values : Series, DataFrame, Index subclass, or ndarray
		key : Optional[Callable], key to be called on the values array
		levels : Optional[List], if values is a MultiIndex, list of levels to
		apply the key to.
	**/
	static public function ensure_key_mapped(values:Dynamic, key:Dynamic, ?levels:Dynamic):Dynamic;
	static public function ensure_object(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function ensure_platform_int(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Wrap datetime64 and timedelta64 ndarrays in DatetimeArray/TimedeltaArray.
	**/
	static public function ensure_wrapped_if_datetimelike(arr:Dynamic):Dynamic;
	/**
		Extract the ndarray or ExtensionArray from a Series or Index.
		
		For all other types, `obj` is just returned as is.
		
		Parameters
		----------
		obj : object
		    For Series / Index, the underlying ExtensionArray is unboxed.
		
		extract_numpy : bool, default False
		    Whether to extract the ndarray from a PandasArray.
		
		extract_range : bool, default False
		    If we have a RangeIndex, return range._values if True
		    (which is a materialized integer ndarray), otherwise return unchanged.
		
		Returns
		-------
		arr : object
		
		Examples
		--------
		>>> extract_array(pd.Series(['a', 'b', 'c'], dtype='category'))
		['a', 'b', 'c']
		Categories (3, object): ['a', 'b', 'c']
		
		Other objects like lists, arrays, and DataFrames are just passed through.
		
		>>> extract_array([1, 2, 3])
		[1, 2, 3]
		
		For an ndarray-backed Series / Index the ndarray is returned.
		
		>>> extract_array(pd.Series([1, 2, 3]))
		array([1, 2, 3])
		
		To extract all the way down to the ndarray, pass ``extract_numpy=True``.
		
		>>> extract_array(pd.Series([1, 2, 3]), extract_numpy=True)
		array([1, 2, 3])
	**/
	static public function extract_array(obj:Dynamic, ?extract_numpy:Dynamic, ?extract_range:Dynamic):Dynamic;
	/**
		A decorator to indicate final methods and final classes.
		
		Use this decorator to indicate to type checkers that the decorated
		method cannot be overridden, and decorated class cannot be subclassed.
		For example:
		
		  class Base:
		      @final
		      def done(self) -> None:
		          ...
		  class Sub(Base):
		      def done(self) -> None:  # Error reported by type checker
		            ...
		
		  @final
		  class Leaf:
		      ...
		  class Other(Leaf):  # Error reported by type checker
		      ...
		
		There is no runtime checking of these properties.
	**/
	@:native("final")
	static public function _final(f:Dynamic):Dynamic;
	/**
		Find a common data type among the given dtypes.
		
		Parameters
		----------
		types : list of dtypes
		
		Returns
		-------
		pandas extension or numpy dtype
		
		See Also
		--------
		numpy.find_common_type
	**/
	static public function find_common_type(types:Dynamic):Dynamic;
	/**
		Find the first place in the stack that is not inside pandas
		(tests notwithstanding).
	**/
	static public function find_stack_level():Dynamic;
	/**
		Return the formatted obj as a unicode string
		
		Parameters
		----------
		obj : object
		    must be iterable and support __getitem__
		formatter : callable
		    string formatter for an element
		is_justify : bool
		    should justify the display
		name : name, optional
		    defaults to the class name of the obj
		indent_for_name : bool, default True
		    Whether subsequent lines should be indented to
		    align with the name.
		line_break_each_value : bool, default False
		    If True, inserts a line break for each value of ``obj``.
		    If False, only break lines when the a line of values gets wider
		    than the display width.
		
		    .. versionadded:: 0.25.0
		
		Returns
		-------
		summary string
	**/
	static public function format_object_summary(obj:Dynamic, formatter:Dynamic, ?is_justify:Dynamic, ?name:Dynamic, ?indent_for_name:Dynamic, ?line_break_each_value:Dynamic):Dynamic;
	/**
		algos.groupsort_indexer implements `counting sort` and it is at least
		O(ngroups), where
		    ngroups = prod(shape)
		    shape = map(len, keys)
		that is, linear in the number of combinations (cartesian product) of unique
		values of groupby keys. This can be huge when doing multi-key groupby.
		np.argsort(kind='mergesort') is O(count x log(count)) where count is the
		length of the data-frame;
		Both algorithms are `stable` sort and that is necessary for correctness of
		groupby operations. e.g. consider:
		    df.groupby(key)[col].transform('first')
		
		Parameters
		----------
		group_index : np.ndarray[np.intp]
		    signed integer dtype
		ngroups : int or None, default None
		
		Returns
		-------
		np.ndarray[np.intp]
	**/
	static public function get_group_index_sorter(group_index:Dynamic, ?ngroups:Dynamic):Dynamic;
	/**
		Find the appropriate name to pin to an operation result.  This result
		should always be either an Index or a Series.
		
		Parameters
		----------
		left : {Series, Index}
		right : object
		
		Returns
		-------
		name : object
		    Usually a string
	**/
	static public function get_op_result_name(left:Dynamic, right:Dynamic):Dynamic;
	/**
		get_option(pat)
		
		Retrieves the value of the specified option.
		
		Available options:
		
		- compute.[use_bottleneck, use_numba, use_numexpr]
		- display.[chop_threshold, colheader_justify, column_space, date_dayfirst,
		  date_yearfirst, encoding, expand_frame_repr, float_format]
		- display.html.[border, table_schema, use_mathjax]
		- display.[large_repr]
		- display.latex.[escape, longtable, multicolumn, multicolumn_format, multirow,
		  repr]
		- display.[max_categories, max_columns, max_colwidth, max_dir_items,
		  max_info_columns, max_info_rows, max_rows, max_seq_items, memory_usage,
		  min_rows, multi_sparse, notebook_repr_html, pprint_nest_depth, precision,
		  show_dimensions]
		- display.unicode.[ambiguous_as_wide, east_asian_width]
		- display.[width]
		- io.excel.ods.[reader, writer]
		- io.excel.xls.[reader, writer]
		- io.excel.xlsb.[reader]
		- io.excel.xlsm.[reader, writer]
		- io.excel.xlsx.[reader, writer]
		- io.hdf.[default_format, dropna_table]
		- io.parquet.[engine]
		- io.sql.[engine]
		- mode.[chained_assignment, data_manager, sim_interactive, string_storage,
		  use_inf_as_na, use_inf_as_null]
		- plotting.[backend]
		- plotting.matplotlib.[register_converters]
		- styler.format.[decimal, escape, formatter, na_rep, precision, thousands]
		- styler.html.[mathjax]
		- styler.latex.[environment, hrules, multicol_align, multirow_align]
		- styler.render.[encoding, max_columns, max_elements, max_rows, repr]
		- styler.sparse.[columns, index]
		
		Parameters
		----------
		pat : str
		    Regexp which should match a single option.
		    Note: partial matches are supported for convenience, but unless you use the
		    full option name (e.g. x.y.z.option_name), your code may break in future
		    versions if new options with similar names are introduced.
		
		Returns
		-------
		result : the value of the option
		
		Raises
		------
		OptionError : if no such option exists
		
		Notes
		-----
		The available options with its descriptions:
		
		compute.use_bottleneck : bool
		    Use the bottleneck library to accelerate if it is installed,
		    the default is True
		    Valid values: False,True
		    [default: True] [currently: True]
		compute.use_numba : bool
		    Use the numba engine option for select operations if it is installed,
		    the default is False
		    Valid values: False,True
		    [default: False] [currently: False]
		compute.use_numexpr : bool
		    Use the numexpr library to accelerate computation if it is installed,
		    the default is True
		    Valid values: False,True
		    [default: True] [currently: True]
		display.chop_threshold : float or None
		    if set to a float value, all float values smaller then the given threshold
		    will be displayed as exactly 0 by repr and friends.
		    [default: None] [currently: None]
		display.colheader_justify : 'left'/'right'
		    Controls the justification of column headers. used by DataFrameFormatter.
		    [default: right] [currently: right]
		display.column_space No description available.
		    [default: 12] [currently: 12]
		display.date_dayfirst : boolean
		    When True, prints and parses dates with the day first, eg 20/01/2005
		    [default: False] [currently: False]
		display.date_yearfirst : boolean
		    When True, prints and parses dates with the year first, eg 2005/01/20
		    [default: False] [currently: False]
		display.encoding : str/unicode
		    Defaults to the detected encoding of the console.
		    Specifies the encoding to be used for strings returned by to_string,
		    these are generally strings meant to be displayed on the console.
		    [default: utf-8] [currently: utf-8]
		display.expand_frame_repr : boolean
		    Whether to print out the full DataFrame repr for wide DataFrames across
		    multiple lines, `max_columns` is still respected, but the output will
		    wrap-around across multiple "pages" if its width exceeds `display.width`.
		    [default: True] [currently: True]
		display.float_format : callable
		    The callable should accept a floating point number and return
		    a string with the desired format of the number. This is used
		    in some places like SeriesFormatter.
		    See formats.format.EngFormatter for an example.
		    [default: None] [currently: None]
		display.html.border : int
		    A ``border=value`` attribute is inserted in the ``<table>`` tag
		    for the DataFrame HTML repr.
		    [default: 1] [currently: 1]
		display.html.table_schema : boolean
		    Whether to publish a Table Schema representation for frontends
		    that support it.
		    (default: False)
		    [default: False] [currently: False]
		display.html.use_mathjax : boolean
		    When True, Jupyter notebook will process table contents using MathJax,
		    rendering mathematical expressions enclosed by the dollar symbol.
		    (default: True)
		    [default: True] [currently: True]
		display.large_repr : 'truncate'/'info'
		    For DataFrames exceeding max_rows/max_cols, the repr (and HTML repr) can
		    show a truncated table (the default from 0.13), or switch to the view from
		    df.info() (the behaviour in earlier versions of pandas).
		    [default: truncate] [currently: truncate]
		display.latex.escape : bool
		    This specifies if the to_latex method of a Dataframe uses escapes special
		    characters.
		    Valid values: False,True
		    [default: True] [currently: True]
		display.latex.longtable :bool
		    This specifies if the to_latex method of a Dataframe uses the longtable
		    format.
		    Valid values: False,True
		    [default: False] [currently: False]
		display.latex.multicolumn : bool
		    This specifies if the to_latex method of a Dataframe uses multicolumns
		    to pretty-print MultiIndex columns.
		    Valid values: False,True
		    [default: True] [currently: True]
		display.latex.multicolumn_format : bool
		    This specifies if the to_latex method of a Dataframe uses multicolumns
		    to pretty-print MultiIndex columns.
		    Valid values: False,True
		    [default: l] [currently: l]
		display.latex.multirow : bool
		    This specifies if the to_latex method of a Dataframe uses multirows
		    to pretty-print MultiIndex rows.
		    Valid values: False,True
		    [default: False] [currently: False]
		display.latex.repr : boolean
		    Whether to produce a latex DataFrame representation for jupyter
		    environments that support it.
		    (default: False)
		    [default: False] [currently: False]
		display.max_categories : int
		    This sets the maximum number of categories pandas should output when
		    printing out a `Categorical` or a Series of dtype "category".
		    [default: 8] [currently: 8]
		display.max_columns : int
		    If max_cols is exceeded, switch to truncate view. Depending on
		    `large_repr`, objects are either centrally truncated or printed as
		    a summary view. 'None' value means unlimited.
		
		    In case python/IPython is running in a terminal and `large_repr`
		    equals 'truncate' this can be set to 0 and pandas will auto-detect
		    the width of the terminal and print a truncated object which fits
		    the screen width. The IPython notebook, IPython qtconsole, or IDLE
		    do not run in a terminal and hence it is not possible to do
		    correct auto-detection.
		    [default: 0] [currently: 0]
		display.max_colwidth : int or None
		    The maximum width in characters of a column in the repr of
		    a pandas data structure. When the column overflows, a "..."
		    placeholder is embedded in the output. A 'None' value means unlimited.
		    [default: 50] [currently: 50]
		display.max_dir_items : int
		    The number of items that will be added to `dir(...)`. 'None' value means
		    unlimited. Because dir is cached, changing this option will not immediately
		    affect already existing dataframes until a column is deleted or added.
		
		    This is for instance used to suggest columns from a dataframe to tab
		    completion.
		    [default: 100] [currently: 100]
		display.max_info_columns : int
		    max_info_columns is used in DataFrame.info method to decide if
		    per column information will be printed.
		    [default: 100] [currently: 100]
		display.max_info_rows : int or None
		    df.info() will usually show null-counts for each column.
		    For large frames this can be quite slow. max_info_rows and max_info_cols
		    limit this null check only to frames with smaller dimensions than
		    specified.
		    [default: 1690785] [currently: 1690785]
		display.max_rows : int
		    If max_rows is exceeded, switch to truncate view. Depending on
		    `large_repr`, objects are either centrally truncated or printed as
		    a summary view. 'None' value means unlimited.
		
		    In case python/IPython is running in a terminal and `large_repr`
		    equals 'truncate' this can be set to 0 and pandas will auto-detect
		    the height of the terminal and print a truncated object which fits
		    the screen height. The IPython notebook, IPython qtconsole, or
		    IDLE do not run in a terminal and hence it is not possible to do
		    correct auto-detection.
		    [default: 60] [currently: 60]
		display.max_seq_items : int or None
		    When pretty-printing a long sequence, no more then `max_seq_items`
		    will be printed. If items are omitted, they will be denoted by the
		    addition of "..." to the resulting string.
		
		    If set to None, the number of items to be printed is unlimited.
		    [default: 100] [currently: 100]
		display.memory_usage : bool, string or None
		    This specifies if the memory usage of a DataFrame should be displayed when
		    df.info() is called. Valid values True,False,'deep'
		    [default: True] [currently: True]
		display.min_rows : int
		    The numbers of rows to show in a truncated view (when `max_rows` is
		    exceeded). Ignored when `max_rows` is set to None or 0. When set to
		    None, follows the value of `max_rows`.
		    [default: 10] [currently: 10]
		display.multi_sparse : boolean
		    "sparsify" MultiIndex display (don't display repeated
		    elements in outer levels within groups)
		    [default: True] [currently: True]
		display.notebook_repr_html : boolean
		    When True, IPython notebook will use html representation for
		    pandas objects (if it is available).
		    [default: True] [currently: True]
		display.pprint_nest_depth : int
		    Controls the number of nested levels to process when pretty-printing
		    [default: 3] [currently: 3]
		display.precision : int
		    Floating point output precision in terms of number of places after the
		    decimal, for regular formatting as well as scientific notation. Similar
		    to ``precision`` in :meth:`numpy.set_printoptions`.
		    [default: 6] [currently: 6]
		display.show_dimensions : boolean or 'truncate'
		    Whether to print out dimensions at the end of DataFrame repr.
		    If 'truncate' is specified, only print out the dimensions if the
		    frame is truncated (e.g. not display all rows and/or columns)
		    [default: truncate] [currently: truncate]
		display.unicode.ambiguous_as_wide : boolean
		    Whether to use the Unicode East Asian Width to calculate the display text
		    width.
		    Enabling this may affect to the performance (default: False)
		    [default: False] [currently: False]
		display.unicode.east_asian_width : boolean
		    Whether to use the Unicode East Asian Width to calculate the display text
		    width.
		    Enabling this may affect to the performance (default: False)
		    [default: False] [currently: False]
		display.width : int
		    Width of the display in characters. In case python/IPython is running in
		    a terminal this can be set to None and pandas will correctly auto-detect
		    the width.
		    Note that the IPython notebook, IPython qtconsole, or IDLE do not run in a
		    terminal and hence it is not possible to correctly detect the width.
		    [default: 80] [currently: 80]
		io.excel.ods.reader : string
		    The default Excel reader engine for 'ods' files. Available options:
		    auto, odf.
		    [default: auto] [currently: auto]
		io.excel.ods.writer : string
		    The default Excel writer engine for 'ods' files. Available options:
		    auto, odf.
		    [default: auto] [currently: auto]
		io.excel.xls.reader : string
		    The default Excel reader engine for 'xls' files. Available options:
		    auto, xlrd.
		    [default: auto] [currently: auto]
		io.excel.xls.writer : string
		    The default Excel writer engine for 'xls' files. Available options:
		    auto, xlwt.
		    [default: auto] [currently: auto]
		    (Deprecated, use `` instead.)
		io.excel.xlsb.reader : string
		    The default Excel reader engine for 'xlsb' files. Available options:
		    auto, pyxlsb.
		    [default: auto] [currently: auto]
		io.excel.xlsm.reader : string
		    The default Excel reader engine for 'xlsm' files. Available options:
		    auto, xlrd, openpyxl.
		    [default: auto] [currently: auto]
		io.excel.xlsm.writer : string
		    The default Excel writer engine for 'xlsm' files. Available options:
		    auto, openpyxl.
		    [default: auto] [currently: auto]
		io.excel.xlsx.reader : string
		    The default Excel reader engine for 'xlsx' files. Available options:
		    auto, xlrd, openpyxl.
		    [default: auto] [currently: auto]
		io.excel.xlsx.writer : string
		    The default Excel writer engine for 'xlsx' files. Available options:
		    auto, openpyxl, xlsxwriter.
		    [default: auto] [currently: auto]
		io.hdf.default_format : format
		    default format writing format, if None, then
		    put will default to 'fixed' and append will default to 'table'
		    [default: None] [currently: None]
		io.hdf.dropna_table : boolean
		    drop ALL nan rows when appending to a table
		    [default: False] [currently: False]
		io.parquet.engine : string
		    The default parquet reader/writer engine. Available options:
		    'auto', 'pyarrow', 'fastparquet', the default is 'auto'
		    [default: auto] [currently: auto]
		io.sql.engine : string
		    The default sql reader/writer engine. Available options:
		    'auto', 'sqlalchemy', the default is 'auto'
		    [default: auto] [currently: auto]
		mode.chained_assignment : string
		    Raise an exception, warn, or no action if trying to use chained assignment,
		    The default is warn
		    [default: warn] [currently: warn]
		mode.data_manager : string
		    Internal data manager type; can be "block" or "array". Defaults to "block",
		    unless overridden by the 'PANDAS_DATA_MANAGER' environment variable (needs
		    to be set before pandas is imported).
		    [default: block] [currently: block]
		mode.sim_interactive : boolean
		    Whether to simulate interactive mode for purposes of testing
		    [default: False] [currently: False]
		mode.string_storage : string
		    The default storage for StringDtype.
		    [default: python] [currently: python]
		mode.use_inf_as_na : boolean
		    True means treat None, NaN, INF, -INF as NA (old way),
		    False means None and NaN are null, but INF, -INF are not NA
		    (new way).
		    [default: False] [currently: False]
		mode.use_inf_as_null : boolean
		    use_inf_as_null had been deprecated and will be removed in a future
		    version. Use `use_inf_as_na` instead.
		    [default: False] [currently: False]
		    (Deprecated, use `mode.use_inf_as_na` instead.)
		plotting.backend : str
		    The plotting backend to use. The default value is "matplotlib", the
		    backend provided with pandas. Other backends can be specified by
		    providing the name of the module that implements the backend.
		    [default: matplotlib] [currently: matplotlib]
		plotting.matplotlib.register_converters : bool or 'auto'.
		    Whether to register converters with matplotlib's units registry for
		    dates, times, datetimes, and Periods. Toggling to False will remove
		    the converters, restoring any converters that pandas overwrote.
		    [default: auto] [currently: auto]
		styler.format.decimal : str
		    The character representation for the decimal separator for floats and complex.
		    [default: .] [currently: .]
		styler.format.escape : str, optional
		    Whether to escape certain characters according to the given context; html or latex.
		    [default: None] [currently: None]
		styler.format.formatter : str, callable, dict, optional
		    A formatter object to be used as default within ``Styler.format``.
		    [default: None] [currently: None]
		styler.format.na_rep : str, optional
		    The string representation for values identified as missing.
		    [default: None] [currently: None]
		styler.format.precision : int
		    The precision for floats and complex numbers.
		    [default: 6] [currently: 6]
		styler.format.thousands : str, optional
		    The character representation for thousands separator for floats, int and complex.
		    [default: None] [currently: None]
		styler.html.mathjax : bool
		    If False will render special CSS classes to table attributes that indicate Mathjax
		    will not be used in Jupyter Notebook.
		    [default: True] [currently: True]
		styler.latex.environment : str
		    The environment to replace ``\begin{table}``. If "longtable" is used results
		    in a specific longtable environment format.
		    [default: None] [currently: None]
		styler.latex.hrules : bool
		    Whether to add horizontal rules on top and bottom and below the headers.
		    [default: False] [currently: False]
		styler.latex.multicol_align : {"r", "c", "l", "naive-l", "naive-r"}
		    The specifier for horizontal alignment of sparsified LaTeX multicolumns. Pipe
		    decorators can also be added to non-naive values to draw vertical
		    rules, e.g. "\|r" will draw a rule on the left side of right aligned merged cells.
		    [default: r] [currently: r]
		styler.latex.multirow_align : {"c", "t", "b"}
		    The specifier for vertical alignment of sparsified LaTeX multirows.
		    [default: c] [currently: c]
		styler.render.encoding : str
		    The encoding used for output HTML and LaTeX files.
		    [default: utf-8] [currently: utf-8]
		styler.render.max_columns : int, optional
		    The maximum number of columns that will be rendered. May still be reduced to
		    satsify ``max_elements``, which takes precedence.
		    [default: None] [currently: None]
		styler.render.max_elements : int
		    The maximum number of data-cell (<td>) elements that will be rendered before
		    trimming will occur over columns, rows or both if needed.
		    [default: 262144] [currently: 262144]
		styler.render.max_rows : int, optional
		    The maximum number of rows that will be rendered. May still be reduced to
		    satsify ``max_elements``, which takes precedence.
		    [default: None] [currently: None]
		styler.render.repr : str
		    Determine which output to use in Jupyter Notebook in {"html", "latex"}.
		    [default: html] [currently: html]
		styler.sparse.columns : bool
		    Whether to sparsify the display of hierarchical columns. Setting to False will
		    display each explicit level element in a hierarchical key for each column.
		    [default: True] [currently: True]
		styler.sparse.index : bool
		    Whether to sparsify the display of a hierarchical index. Setting to False will
		    display each explicit level element in a hierarchical key for each row.
		    [default: True] [currently: True]
	**/
	static public function get_option(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return common name if all indices agree, otherwise None (level-by-level).
		
		Parameters
		----------
		indexes : list of Index objects
		
		Returns
		-------
		list
		    A list representing the unanimous 'names' found.
	**/
	static public function get_unanimous_names(?indexes:python.VarArgs<Dynamic>):Dynamic;
	/**
		Interpret the dtype from a scalar or array.
		
		Parameters
		----------
		val : object
		pandas_dtype : bool, default False
		    whether to infer dtype including pandas extension types.
		    If False, scalar/array belongs to pandas extension types is inferred as
		    object
	**/
	static public function infer_dtype_from(val:Dynamic, ?pandas_dtype:Dynamic):Dynamic;
	/**
		Check whether the provided array or dtype is of a boolean dtype.
		
		Parameters
		----------
		arr_or_dtype : array-like or dtype
		    The array or dtype to check.
		
		Returns
		-------
		boolean
		    Whether or not the array or dtype is of a boolean dtype.
		
		Notes
		-----
		An ExtensionArray is considered boolean when the ``_is_boolean``
		attribute is set to True.
		
		Examples
		--------
		>>> is_bool_dtype(str)
		False
		>>> is_bool_dtype(int)
		False
		>>> is_bool_dtype(bool)
		True
		>>> is_bool_dtype(np.bool_)
		True
		>>> is_bool_dtype(np.array(['a', 'b']))
		False
		>>> is_bool_dtype(pd.Series([1, 2]))
		False
		>>> is_bool_dtype(np.array([True, False]))
		True
		>>> is_bool_dtype(pd.Categorical([True, False]))
		True
		>>> is_bool_dtype(pd.arrays.SparseArray([True, False]))
		True
	**/
	static public function is_bool_dtype(arr_or_dtype:Dynamic):Dynamic;
	/**
		Check whether an array-like or dtype is of the Categorical dtype.
		
		Parameters
		----------
		arr_or_dtype : array-like or dtype
		    The array-like or dtype to check.
		
		Returns
		-------
		boolean
		    Whether or not the array-like or dtype is of the Categorical dtype.
		
		Examples
		--------
		>>> is_categorical_dtype(object)
		False
		>>> is_categorical_dtype(CategoricalDtype())
		True
		>>> is_categorical_dtype([1, 2, 3])
		False
		>>> is_categorical_dtype(pd.Categorical([1, 2, 3]))
		True
		>>> is_categorical_dtype(pd.CategoricalIndex([1, 2, 3]))
		True
	**/
	static public function is_categorical_dtype(arr_or_dtype:Dynamic):Dynamic;
	static public function is_datetime_array(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Check if the object is dict-like.
		
		Parameters
		----------
		obj : The object to check
		
		Returns
		-------
		is_dict_like : bool
		    Whether `obj` has dict-like properties.
		
		Examples
		--------
		>>> is_dict_like({1: 2})
		True
		>>> is_dict_like([1, 2, 3])
		False
		>>> is_dict_like(dict)
		False
		>>> is_dict_like(dict())
		True
	**/
	static public function is_dict_like(obj:Dynamic):Bool;
	/**
		Check if two dtypes are equal.
		
		Parameters
		----------
		source : The first dtype to compare
		target : The second dtype to compare
		
		Returns
		-------
		boolean
		    Whether or not the two dtypes are equal.
		
		Examples
		--------
		>>> is_dtype_equal(int, float)
		False
		>>> is_dtype_equal("int", int)
		True
		>>> is_dtype_equal(object, "category")
		False
		>>> is_dtype_equal(CategoricalDtype(), "category")
		True
		>>> is_dtype_equal(DatetimeTZDtype(tz="UTC"), "datetime64")
		False
	**/
	static public function is_dtype_equal(source:Dynamic, target:Dynamic):Dynamic;
	/**
		Check for ExtensionDtype, datetime64 dtype, or timedelta64 dtype.
		
		Notes
		-----
		Checks only for dtype objects, not dtype-castable strings or types.
	**/
	static public function is_ea_or_datetimelike_dtype(dtype:Dynamic):Dynamic;
	/**
		Check if an object is a pandas extension array type.
		
		See the :ref:`Use Guide <extending.extension-types>` for more.
		
		Parameters
		----------
		arr_or_dtype : object
		    For array-like input, the ``.dtype`` attribute will
		    be extracted.
		
		Returns
		-------
		bool
		    Whether the `arr_or_dtype` is an extension array type.
		
		Notes
		-----
		This checks whether an object implements the pandas extension
		array interface. In pandas, this includes:
		
		* Categorical
		* Sparse
		* Interval
		* Period
		* DatetimeArray
		* TimedeltaArray
		
		Third-party libraries may implement arrays or types satisfying
		this interface as well.
		
		Examples
		--------
		>>> from pandas.api.types import is_extension_array_dtype
		>>> arr = pd.Categorical(['a', 'b'])
		>>> is_extension_array_dtype(arr)
		True
		>>> is_extension_array_dtype(arr.dtype)
		True
		
		>>> arr = np.array(['a', 'b'])
		>>> is_extension_array_dtype(arr.dtype)
		False
	**/
	static public function is_extension_array_dtype(arr_or_dtype:Dynamic):Dynamic;
	/**
		Return True if given object is float.
		
		Returns
		-------
		bool
	**/
	static public function is_float(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Check whether the provided array or dtype is of a float dtype.
		
		This function is internal and should not be exposed in the public API.
		
		Parameters
		----------
		arr_or_dtype : array-like or dtype
		    The array or dtype to check.
		
		Returns
		-------
		boolean
		    Whether or not the array or dtype is of a float dtype.
		
		Examples
		--------
		>>> is_float_dtype(str)
		False
		>>> is_float_dtype(int)
		False
		>>> is_float_dtype(float)
		True
		>>> is_float_dtype(np.array(['a', 'b']))
		False
		>>> is_float_dtype(pd.Series([1, 2]))
		False
		>>> is_float_dtype(pd.Index([1, 2.]))
		True
	**/
	static public function is_float_dtype(arr_or_dtype:Dynamic):Dynamic;
	/**
		True for elements which correspond to a float nan
		
		Returns
		-------
		ndarray[bool]
	**/
	static public function is_float_nan(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return True if hash(obj) will succeed, False otherwise.
		
		Some types will pass a test against collections.abc.Hashable but fail when
		they are actually hashed with hash().
		
		Distinguish between these and other types by trying the call to hash() and
		seeing if they raise TypeError.
		
		Returns
		-------
		bool
		
		Examples
		--------
		>>> import collections
		>>> a = ([],)
		>>> isinstance(a, collections.abc.Hashable)
		True
		>>> is_hashable(a)
		False
	**/
	static public function is_hashable(obj:Dynamic):Dynamic;
	/**
		Return True if given object is integer.
		
		Returns
		-------
		bool
	**/
	static public function is_integer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Check whether an array-like or dtype is of the Interval dtype.
		
		Parameters
		----------
		arr_or_dtype : array-like or dtype
		    The array-like or dtype to check.
		
		Returns
		-------
		boolean
		    Whether or not the array-like or dtype is of the Interval dtype.
		
		Examples
		--------
		>>> is_interval_dtype(object)
		False
		>>> is_interval_dtype(IntervalDtype())
		True
		>>> is_interval_dtype([1, 2, 3])
		False
		>>>
		>>> interval = pd.Interval(1, 2, closed="right")
		>>> is_interval_dtype(interval)
		False
		>>> is_interval_dtype(pd.IntervalIndex([interval]))
		True
	**/
	static public function is_interval_dtype(arr_or_dtype:Dynamic):Dynamic;
	/**
		Check if the object is an iterator.
		
		This is intended for generators, not list-like objects.
		
		Parameters
		----------
		obj : The object to check
		
		Returns
		-------
		is_iter : bool
		    Whether `obj` is an iterator.
		
		Examples
		--------
		>>> import datetime
		>>> is_iterator((x for x in []))
		True
		>>> is_iterator([1, 2, 3])
		False
		>>> is_iterator(datetime.datetime(2017, 1, 1))
		False
		>>> is_iterator("foo")
		False
		>>> is_iterator(1)
		False
	**/
	static public function is_iterator(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Check whether the provided array or dtype is of a numeric dtype.
		
		Parameters
		----------
		arr_or_dtype : array-like or dtype
		    The array or dtype to check.
		
		Returns
		-------
		boolean
		    Whether or not the array or dtype is of a numeric dtype.
		
		Examples
		--------
		>>> is_numeric_dtype(str)
		False
		>>> is_numeric_dtype(int)
		True
		>>> is_numeric_dtype(float)
		True
		>>> is_numeric_dtype(np.uint64)
		True
		>>> is_numeric_dtype(np.datetime64)
		False
		>>> is_numeric_dtype(np.timedelta64)
		False
		>>> is_numeric_dtype(np.array(['a', 'b']))
		False
		>>> is_numeric_dtype(pd.Series([1, 2]))
		True
		>>> is_numeric_dtype(pd.Index([1, 2.]))
		True
		>>> is_numeric_dtype(np.array([], dtype=np.timedelta64))
		False
	**/
	static public function is_numeric_dtype(arr_or_dtype:Dynamic):Dynamic;
	/**
		Check whether an array-like or dtype is of the object dtype.
		
		Parameters
		----------
		arr_or_dtype : array-like or dtype
		    The array-like or dtype to check.
		
		Returns
		-------
		boolean
		    Whether or not the array-like or dtype is of the object dtype.
		
		Examples
		--------
		>>> is_object_dtype(object)
		True
		>>> is_object_dtype(int)
		False
		>>> is_object_dtype(np.array([], dtype=object))
		True
		>>> is_object_dtype(np.array([], dtype=int))
		False
		>>> is_object_dtype([1, 2, 3])
		False
	**/
	static public function is_object_dtype(arr_or_dtype:Dynamic):Dynamic;
	/**
		Return True if given object is scalar.
		
		Parameters
		----------
		val : object
		    This includes:
		
		    - numpy array scalar (e.g. np.int64)
		    - Python builtin numerics
		    - Python builtin byte arrays and strings
		    - None
		    - datetime.datetime
		    - datetime.timedelta
		    - Period
		    - decimal.Decimal
		    - Interval
		    - DateOffset
		    - Fraction
		    - Number.
		
		Returns
		-------
		bool
		    Return True if given object is scalar.
		
		Examples
		--------
		>>> import datetime
		>>> dt = datetime.datetime(2018, 10, 3)
		>>> pd.api.types.is_scalar(dt)
		True
		
		>>> pd.api.types.is_scalar([2, 3])
		False
		
		>>> pd.api.types.is_scalar({0: 1, 2: 3})
		False
		
		>>> pd.api.types.is_scalar((0, 2))
		False
		
		pandas supports PEP 3141 numbers:
		
		>>> from fractions import Fraction
		>>> pd.api.types.is_scalar(Fraction(3, 5))
		True
	**/
	static public function is_scalar(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Check whether the provided array or dtype is of a signed integer dtype.
		
		Unlike in `is_any_int_dtype`, timedelta64 instances will return False.
		
		The nullable Integer dtypes (e.g. pandas.Int64Dtype) are also considered
		as integer by this function.
		
		Parameters
		----------
		arr_or_dtype : array-like or dtype
		    The array or dtype to check.
		
		Returns
		-------
		boolean
		    Whether or not the array or dtype is of a signed integer dtype
		    and not an instance of timedelta64.
		
		Examples
		--------
		>>> is_signed_integer_dtype(str)
		False
		>>> is_signed_integer_dtype(int)
		True
		>>> is_signed_integer_dtype(float)
		False
		>>> is_signed_integer_dtype(np.uint64)  # unsigned
		False
		>>> is_signed_integer_dtype('int8')
		True
		>>> is_signed_integer_dtype('Int8')
		True
		>>> is_signed_integer_dtype(pd.Int8Dtype)
		True
		>>> is_signed_integer_dtype(np.datetime64)
		False
		>>> is_signed_integer_dtype(np.timedelta64)
		False
		>>> is_signed_integer_dtype(np.array(['a', 'b']))
		False
		>>> is_signed_integer_dtype(pd.Series([1, 2]))
		True
		>>> is_signed_integer_dtype(np.array([], dtype=np.timedelta64))
		False
		>>> is_signed_integer_dtype(pd.Index([1, 2.]))  # float
		False
		>>> is_signed_integer_dtype(np.array([1, 2], dtype=np.uint32))  # unsigned
		False
	**/
	static public function is_signed_integer_dtype(arr_or_dtype:Dynamic):Dynamic;
	/**
		Check whether the provided array or dtype is of an unsigned integer dtype.
		
		The nullable Integer dtypes (e.g. pandas.UInt64Dtype) are also
		considered as integer by this function.
		
		Parameters
		----------
		arr_or_dtype : array-like or dtype
		    The array or dtype to check.
		
		Returns
		-------
		boolean
		    Whether or not the array or dtype is of an unsigned integer dtype.
		
		Examples
		--------
		>>> is_unsigned_integer_dtype(str)
		False
		>>> is_unsigned_integer_dtype(int)  # signed
		False
		>>> is_unsigned_integer_dtype(float)
		False
		>>> is_unsigned_integer_dtype(np.uint64)
		True
		>>> is_unsigned_integer_dtype('uint8')
		True
		>>> is_unsigned_integer_dtype('UInt8')
		True
		>>> is_unsigned_integer_dtype(pd.UInt8Dtype)
		True
		>>> is_unsigned_integer_dtype(np.array(['a', 'b']))
		False
		>>> is_unsigned_integer_dtype(pd.Series([1, 2]))  # signed
		False
		>>> is_unsigned_integer_dtype(pd.Index([1, 2.]))  # float
		False
		>>> is_unsigned_integer_dtype(np.array([1, 2], dtype=np.uint32))
		True
	**/
	static public function is_unsigned_integer_dtype(arr_or_dtype:Dynamic):Dynamic;
	/**
		isna check that excludes incompatible dtypes
		
		Parameters
		----------
		obj : object
		dtype : np.datetime64, np.timedelta64, DatetimeTZDtype, or PeriodDtype
		
		Returns
		-------
		bool
	**/
	static public function is_valid_na_for_dtype(obj:Dynamic, dtype:Dynamic):Dynamic;
	/**
		Detect missing values for an array-like object.
		
		This function takes a scalar or array-like object and indicates
		whether values are missing (``NaN`` in numeric arrays, ``None`` or ``NaN``
		in object arrays, ``NaT`` in datetimelike).
		
		Parameters
		----------
		obj : scalar or array-like
		    Object to check for null or missing values.
		
		Returns
		-------
		bool or array-like of bool
		    For scalar input, returns a scalar boolean.
		    For array input, returns an array of boolean indicating whether each
		    corresponding element is missing.
		
		See Also
		--------
		notna : Boolean inverse of pandas.isna.
		Series.isna : Detect missing values in a Series.
		DataFrame.isna : Detect missing values in a DataFrame.
		Index.isna : Detect missing values in an Index.
		
		Examples
		--------
		Scalar arguments (including strings) result in a scalar boolean.
		
		>>> pd.isna('dog')
		False
		
		>>> pd.isna(pd.NA)
		True
		
		>>> pd.isna(np.nan)
		True
		
		ndarrays result in an ndarray of booleans.
		
		>>> array = np.array([[1, np.nan, 3], [4, 5, np.nan]])
		>>> array
		array([[ 1., nan,  3.],
		       [ 4.,  5., nan]])
		>>> pd.isna(array)
		array([[False,  True, False],
		       [False, False,  True]])
		
		For indexes, an ndarray of booleans is returned.
		
		>>> index = pd.DatetimeIndex(["2017-07-05", "2017-07-06", None,
		...                           "2017-07-08"])
		>>> index
		DatetimeIndex(['2017-07-05', '2017-07-06', 'NaT', '2017-07-08'],
		              dtype='datetime64[ns]', freq=None)
		>>> pd.isna(index)
		array([False, False,  True, False])
		
		For Series and DataFrame, the same type is returned, containing booleans.
		
		>>> df = pd.DataFrame([['ant', 'bee', 'cat'], ['dog', None, 'fly']])
		>>> df
		     0     1    2
		0  ant   bee  cat
		1  dog  None  fly
		>>> pd.isna(df)
		       0      1      2
		0  False  False  False
		1  False   True  False
		
		>>> pd.isna(df[1])
		0    False
		1     True
		Name: 1, dtype: bool
	**/
	static public function isna(obj:Dynamic):Dynamic;
	/**
		Return a binary method that always raises a TypeError.
		
		Parameters
		----------
		name : str
		
		Returns
		-------
		invalid_op : function
	**/
	static public function make_invalid_op(name:Dynamic):Dynamic;
	/**
		Try casting result of a pointwise operation back to the original dtype if
		appropriate.
		
		Parameters
		----------
		result : array-like
		    Result to cast.
		dtype : np.dtype or ExtensionDtype
		    Input Series from which result was calculated.
		numeric_only : bool, default False
		    Whether to cast only numerics or datetimes as well.
		same_dtype : bool, default True
		    Specify dtype when calling _from_sequence
		
		Returns
		-------
		result : array-like
		    result maybe casted to the dtype.
	**/
	static public function maybe_cast_pointwise_result(result:Dynamic, dtype:Dynamic, ?numeric_only:Dynamic, ?same_dtype:Dynamic):Dynamic;
	/**
		If no name is passed, then extract it from data, validating hashability.
	**/
	static public function maybe_extract_name(name:Dynamic, obj:Dynamic, cls:Dynamic):Dynamic;
	/**
		Intended to be a drop-in replacement for np.argsort which handles NaNs.
		
		Adds ascending, na_position, and key parameters.
		
		(GH #6399, #5231, #27237)
		
		Parameters
		----------
		kind : str, default 'quicksort'
		ascending : bool, default True
		na_position : {'first', 'last'}, default 'last'
		key : Optional[Callable], default None
		mask : Optional[np.ndarray], default None
		    Passed when called by ExtensionArray.argsort.
		
		Returns
		-------
		np.ndarray[np.intp]
	**/
	static public function nargsort(items:Dynamic, ?kind:Dynamic, ?ascending:Dynamic, ?na_position:Dynamic, ?key:Dynamic, ?mask:Dynamic):Dynamic;
	/**
		Check whether the array or dtype should be converted to int64.
		
		An array-like or dtype "needs" such a conversion if the array-like
		or dtype is of a datetime-like dtype
		
		Parameters
		----------
		arr_or_dtype : array-like or dtype
		    The array or dtype to check.
		
		Returns
		-------
		boolean
		    Whether or not the array or dtype should be converted to int64.
		
		Examples
		--------
		>>> needs_i8_conversion(str)
		False
		>>> needs_i8_conversion(np.int64)
		False
		>>> needs_i8_conversion(np.datetime64)
		True
		>>> needs_i8_conversion(np.array(['a', 'b']))
		False
		>>> needs_i8_conversion(pd.Series([1, 2]))
		False
		>>> needs_i8_conversion(pd.Series([], dtype="timedelta64[ns]"))
		True
		>>> needs_i8_conversion(pd.DatetimeIndex([1, 2, 3], tz="US/Eastern"))
		True
	**/
	static public function needs_i8_conversion(arr_or_dtype:Dynamic):Dynamic;
	static public var no_default : Dynamic;
	static public var npt : Dynamic;
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
		Convert input into a pandas only dtype object or a numpy dtype object.
		
		Parameters
		----------
		dtype : object to be converted
		
		Returns
		-------
		np.dtype or a pandas dtype
		
		Raises
		------
		TypeError if not a dtype
	**/
	static public function pandas_dtype(dtype:Dynamic):Dynamic;
	/**
		This function is the sanctioned way of converting objects
		to a string representation and properly handles nested sequences.
		
		Parameters
		----------
		thing : anything to be formatted
		_nest_lvl : internal use only. pprint_thing() is mutually-recursive
		    with pprint_sequence, this argument is used to keep track of the
		    current nesting level, and limit it.
		escape_chars : list or dict, optional
		    Characters to escape. If a dict is passed the values are the
		    replacements
		default_escapes : bool, default False
		    Whether the input escape characters replaces or adds to the defaults
		max_seq_items : int or None, default None
		    Pass through to other pretty printers to limit sequence printing
		
		Returns
		-------
		str
	**/
	static public function pprint_thing(thing:Dynamic, ?_nest_lvl:Dynamic, ?escape_chars:Dynamic, ?default_escapes:Dynamic, ?quote_strings:Dynamic, ?max_seq_items:Dynamic):Dynamic;
	/**
		Rewrite the message of an exception.
	**/
	static public function rewrite_exception(old_name:Dynamic, new_name:Dynamic):Dynamic;
	/**
		Sanitize input data to an ndarray or ExtensionArray, copy if specified,
		coerce to the dtype if specified.
		
		Parameters
		----------
		data : Any
		index : Index or None, default None
		dtype : np.dtype, ExtensionDtype, or None, default None
		copy : bool, default False
		raise_cast_failure : bool, default True
		allow_2d : bool, default False
		    If False, raise if we have a 2D Arraylike.
		
		Returns
		-------
		np.ndarray or ExtensionArray
		
		Notes
		-----
		raise_cast_failure=False is only intended to be True when called from the
		DataFrame constructor, as the dtype keyword there may be interpreted as only
		applying to a subset of columns, see GH#24435.
	**/
	static public function sanitize_array(data:Dynamic, index:Dynamic, ?dtype:Dynamic, ?copy:Dynamic, ?raise_cast_failure:Dynamic, ?allow_2d:Dynamic):Dynamic;
	/**
		Parameters
		----------
		values : np.ndarray
		num_set : int
		    For putmask, this is mask.sum()
		other : Any
	**/
	static public function setitem_datetimelike_compat(values:Dynamic, num_set:Dynamic, other:Dynamic):Dynamic;
	/**
		Trims zeros and decimal points.
		
		Examples
		--------
		>>> trim_front([" a", " b"])
		['a', 'b']
		
		>>> trim_front([" a", " "])
		['a', '']
	**/
	static public function trim_front(strings:Dynamic):Dynamic;
	/**
		Compare string representations of timezones
		
		The same timezone can be represented as different instances of
		timezones. For example
		`<DstTzInfo 'Europe/Paris' LMT+0:09:00 STD>` and
		`<DstTzInfo 'Europe/Paris' CET+1:00:00 STD>` are essentially same
		timezones but aren't evaluated such, but the string representation
		for both of these is `'Europe/Paris'`.
		
		This exists only to add a notion of equality to pytz-style zones
		that is compatible with the notion of equality expected of tzinfo
		subclasses.
		
		Parameters
		----------
		start : tzinfo
		end : tzinfo
		
		Returns:
		-------
		bool
	**/
	static public function tz_compare(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return a datetime64[ns] dtype appropriate for the given timezone.
		
		Parameters
		----------
		tz : tzinfo or None
		
		Returns
		-------
		np.dtype or Datetime64TZDType
	**/
	static public function tz_to_dtype(tz:Dynamic):Dynamic;
	/**
		When checking if our dtype is comparable with another, we need
		to unpack CategoricalDtype to look at its categories.dtype.
		
		Parameters
		----------
		other : Index
		
		Returns
		-------
		Index
	**/
	static public function unpack_nested_dtype(other:Dynamic):Dynamic;
	/**
		Return None if all args are hashable, else raise a TypeError.
		
		Parameters
		----------
		*args
		    Arguments to validate.
		error_name : str, optional
		    The name to use if error
		
		Raises
		------
		TypeError : If an argument is not hashable
		
		Returns
		-------
		None
	**/
	static public function validate_all_hashable(?args:python.VarArgs<Dynamic>, ?error_name:Dynamic):Dynamic;
	/**
		Validate mask and check if this putmask operation is a no-op.
	**/
	static public function validate_putmask(values:Dynamic, mask:Dynamic):Dynamic;
	/**
		If the given dtype is a DatetimeTZDtype, extract the implied
		tzinfo object from it and check that it does not conflict with the given
		tz.
		
		Parameters
		----------
		dtype : dtype, str
		tz : None, tzinfo
		
		Returns
		-------
		tz : consensus tzinfo
		
		Raises
		------
		ValueError : on tzinfo mismatch
	**/
	static public function validate_tz_from_dtype(dtype:Dynamic, tz:Dynamic):Dynamic;
}