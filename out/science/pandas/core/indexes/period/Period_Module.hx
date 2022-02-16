/* This file is generated, do not edit! */
package pandas.core.indexes.period;
@:pythonImport("pandas.core.indexes.period") extern class Period_Module {
	static public function Dtype(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function DtypeObj(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Hashable(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var NaT : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _index_doc_kwargs : Dynamic;
	static public function _new_PeriodIndex(cls:Dynamic, ?d:python.KwArgs<Dynamic>):Dynamic;
	static public var _shared_doc_kwargs : Dynamic;
	static public var annotations : Dynamic;
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
		Find the first place in the stack that is not inside pandas
		(tests notwithstanding).
	**/
	static public function find_stack_level():Dynamic;
	/**
		Class decorator to pin attributes from an ExtensionArray to a Index subclass.
		
		Parameters
		----------
		names : List[str]
		delegate : class
		cache : bool, default False
		wrap : bool, default False
		    Whether to wrap the inherited result in an Index.
	**/
	static public function inherit_names(names:Dynamic, delegate:Dynamic, ?cache:Dynamic, ?wrap:Dynamic):Dynamic;
	/**
		Check whether the provided array or dtype is of the datetime64 dtype.
		
		Parameters
		----------
		arr_or_dtype : array-like or dtype
		    The array or dtype to check.
		
		Returns
		-------
		bool
		    Whether or not the array or dtype is of the datetime64 dtype.
		
		Examples
		--------
		>>> is_datetime64_any_dtype(str)
		False
		>>> is_datetime64_any_dtype(int)
		False
		>>> is_datetime64_any_dtype(np.datetime64)  # can be tz-naive
		True
		>>> is_datetime64_any_dtype(DatetimeTZDtype("ns", "US/Eastern"))
		True
		>>> is_datetime64_any_dtype(np.array(['a', 'b']))
		False
		>>> is_datetime64_any_dtype(np.array([1, 2]))
		False
		>>> is_datetime64_any_dtype(np.array([], dtype="datetime64[ns]"))
		True
		>>> is_datetime64_any_dtype(pd.DatetimeIndex([1, 2, 3], dtype="datetime64[ns]"))
		True
	**/
	static public function is_datetime64_any_dtype(arr_or_dtype:Dynamic):Dynamic;
	/**
		Return True if given object is integer.
		
		Returns
		-------
		bool
	**/
	static public function is_integer(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		If no name is passed, then extract it from data, validating hashability.
	**/
	static public function maybe_extract_name(name:Dynamic, obj:Dynamic, cls:Dynamic):Dynamic;
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
		Construct a new PeriodArray from a sequence of Period scalars.
		
		Parameters
		----------
		data : Sequence of Period objects
		    A sequence of Period objects. These are required to all have
		    the same ``freq.`` Missing values can be indicated by ``None``
		    or ``pandas.NaT``.
		freq : str, Tick, or Offset
		    The frequency of every element of the array. This can be specified
		    to avoid inferring the `freq` from `data`.
		copy : bool, default False
		    Whether to ensure a copy of the data is made.
		
		Returns
		-------
		PeriodArray
		
		See Also
		--------
		PeriodArray
		pandas.PeriodIndex
		
		Examples
		--------
		>>> period_array([pd.Period('2017', freq='A'),
		...               pd.Period('2018', freq='A')])
		<PeriodArray>
		['2017', '2018']
		Length: 2, dtype: period[A-DEC]
		
		>>> period_array([pd.Period('2017', freq='A'),
		...               pd.Period('2018', freq='A'),
		...               pd.NaT])
		<PeriodArray>
		['2017', '2018', 'NaT']
		Length: 3, dtype: period[A-DEC]
		
		Integers that look like years are handled
		
		>>> period_array([2000, 2001, 2002], freq='D')
		<PeriodArray>
		['2000-01-01', '2001-01-01', '2002-01-01']
		Length: 3, dtype: period[D]
		
		Datetime-like strings may also be passed
		
		>>> period_array(['2000-Q1', '2000-Q2', '2000-Q3', '2000-Q4'], freq='Q')
		<PeriodArray>
		['2000Q1', '2000Q2', '2000Q3', '2000Q4']
		Length: 4, dtype: period[Q-DEC]
	**/
	static public function period_array(data:Dynamic, ?freq:Dynamic, ?copy:Dynamic):Dynamic;
	/**
		Return a fixed frequency PeriodIndex.
		
		The day (calendar) is the default frequency.
		
		Parameters
		----------
		start : str or period-like, default None
		    Left bound for generating periods.
		end : str or period-like, default None
		    Right bound for generating periods.
		periods : int, default None
		    Number of periods to generate.
		freq : str or DateOffset, optional
		    Frequency alias. By default the freq is taken from `start` or `end`
		    if those are Period objects. Otherwise, the default is ``"D"`` for
		    daily frequency.
		name : str, default None
		    Name of the resulting PeriodIndex.
		
		Returns
		-------
		PeriodIndex
		
		Notes
		-----
		Of the three parameters: ``start``, ``end``, and ``periods``, exactly two
		must be specified.
		
		To learn more about the frequency strings, please see `this link
		<https://pandas.pydata.org/pandas-docs/stable/user_guide/timeseries.html#offset-aliases>`__.
		
		Examples
		--------
		>>> pd.period_range(start='2017-01-01', end='2018-01-01', freq='M')
		PeriodIndex(['2017-01', '2017-02', '2017-03', '2017-04', '2017-05', '2017-06',
		         '2017-07', '2017-08', '2017-09', '2017-10', '2017-11', '2017-12',
		         '2018-01'],
		        dtype='period[M]')
		
		If ``start`` or ``end`` are ``Period`` objects, they will be used as anchor
		endpoints for a ``PeriodIndex`` with frequency matching that of the
		``period_range`` constructor.
		
		>>> pd.period_range(start=pd.Period('2017Q1', freq='Q'),
		...                 end=pd.Period('2017Q2', freq='Q'), freq='M')
		PeriodIndex(['2017-03', '2017-04', '2017-05', '2017-06'],
		            dtype='period[M]')
	**/
	static public function period_range(?start:Dynamic, ?end:Dynamic, ?periods:Dynamic, ?freq:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Helper function to render a consistent error message when raising
		IncompatibleFrequency.
		
		Parameters
		----------
		left : PeriodArray
		right : None, DateOffset, Period, ndarray, or timedelta-like
		
		Returns
		-------
		IncompatibleFrequency
		    Exception to be raised by the caller.
	**/
	static public function raise_on_incompatible(left:Dynamic, right:Dynamic):Dynamic;
	/**
		If both a dtype and a freq are available, ensure they match.  If only
		dtype is available, extract the implied freq.
		
		Parameters
		----------
		dtype : dtype
		freq : DateOffset or None
		
		Returns
		-------
		freq : DateOffset
		
		Raises
		------
		ValueError : non-period dtype
		IncompatibleFrequency : mismatch between dtype and freq
	**/
	static public function validate_dtype_freq(dtype:Dynamic, freq:Dynamic):pandas.DateOffset;
}