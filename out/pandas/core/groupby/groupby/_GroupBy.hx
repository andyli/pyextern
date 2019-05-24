/* This file is generated, do not edit! */
package pandas.core.groupby.groupby;
@:pythonImport("pandas.core.groupby.groupby", "_GroupBy") extern class _GroupBy {
	/**
		Return a string representation for a particular object.
		
		Invoked by bytes(obj) in py3 only.
		Yields a bytestring in both py2/py3.
	**/
	public function __bytes__():Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		Provide method name lookup and completion
		Only provide 'public' methods
	**/
	public function __dir__():Dynamic;
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
	public function __getattr__(attr:Dynamic):Dynamic;
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
	public function ___init__(obj:Dynamic, ?keys:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?grouper:Dynamic, ?exclusions:Dynamic, ?selection:Dynamic, ?as_index:Dynamic, ?sort:Dynamic, ?group_keys:Dynamic, ?squeeze:Dynamic, ?observed:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(obj:Dynamic, ?keys:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?grouper:Dynamic, ?exclusions:Dynamic, ?selection:Dynamic, ?as_index:Dynamic, ?sort:Dynamic, ?group_keys:Dynamic, ?squeeze:Dynamic, ?observed:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Groupby iterator.
		
		Returns
		-------
		Generator yielding sequence of (name, subsetted object)
		for each group
	**/
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
	/**
		Generates the total memory usage for an object that returns
		either a value or Series of values
	**/
	public function __sizeof__():Dynamic;
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
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return a string representation for a particular object.
		
		Invoked by unicode(obj) in py2 only. Yields a Unicode String in both
		py2/py3.
	**/
	public function __unicode__():Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	static public var _accessors : Dynamic;
	/**
		provide an implementation for the aggregators
		
		Parameters
		----------
		arg : string, dict, function
		*args : args to pass on to the function
		**kwargs : kwargs to pass on to the function
		
		Returns
		-------
		tuple of result, how
		
		Notes
		-----
		how can be a string describe the required post-processing, or
		None if not required
	**/
	public function _aggregate(arg:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function _aggregate_multiple_funcs(arg:Dynamic, _level:Dynamic, _axis:Dynamic):Dynamic;
	public function _apply_filter(indices:Dynamic, dropna:Dynamic):Dynamic;
	static public var _apply_whitelist : Dynamic;
	/**
		We create the grouper on instantiation sub-classes may have a
		different policy.
	**/
	public function _assure_grouper():Dynamic;
	static public var _builtin_table : Dynamic;
	public function _concat_objects(keys:Dynamic, values:Dynamic, ?not_indexed_same:Dynamic):Dynamic;
	/**
		class constructor (for this class it's just `__class__`
	**/
	public var _constructor : Dynamic;
	/**
		Parameters
		----------
		ascending : bool, default True
		    If False, number in reverse, from length of group - 1 to 0.
		
		Notes
		-----
		this is currently implementing sort=False
		(though the default is sort=True) for groupby in general
	**/
	public function _cumcount_array(?ascending:Dynamic):Dynamic;
	public function _cython_agg_general(how:Dynamic, ?alt:Dynamic, ?numeric_only:Dynamic, ?min_count:Dynamic):Dynamic;
	static public var _cython_table : Dynamic;
	public function _cython_transform(how:Dynamic, ?numeric_only:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var _deprecations : Dynamic;
	/**
		add additional __dir__ for this object 
	**/
	public function _dir_additions():Dynamic;
	/**
		delete unwanted __dir__ for this object 
	**/
	public function _dir_deletions():Dynamic;
	/**
		Safe get index, translate keys for datelike to underlying repr.
	**/
	public function _get_index(name:Dynamic):Dynamic;
	/**
		Safe get multiple indices, translate keys for
		datelike to underlying repr.
	**/
	public function _get_indices(names:Dynamic):Dynamic;
	/**
		sub-classes to define
		return a sliced object
		
		Parameters
		----------
		key : string / list of selections
		ndim : 1,2
		    requested ndim of result
		subset : object, default None
		    subset to act on
	**/
	public function _gotitem(key:Dynamic, ndim:Dynamic, ?subset:Dynamic):Dynamic;
	static public var _group_selection : Dynamic;
	static public var _internal_names : Dynamic;
	static public var _internal_names_set : Dynamic;
	/**
		if we define an builtin function for this argument, return it,
		otherwise return the arg
	**/
	public function _is_builtin_func(arg:Dynamic):Dynamic;
	/**
		if we define an internal function for this argument, return it
	**/
	public function _is_cython_func(arg:Dynamic):Dynamic;
	public function _iterate_slices():Dynamic;
	public function _make_wrapper(name:Dynamic):Dynamic;
	public var _obj_with_exclusions : Dynamic;
	public function _python_agg_general(func:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function _python_apply_general(f:Dynamic):Dynamic;
	/**
		Reset cached properties. If ``key`` is passed, only clears that key.
	**/
	public function _reset_cache(?key:Dynamic):Dynamic;
	/**
		Clear group based selection.
		
		Used for methods needing to return info on each group regardless of
		whether a group selection was previously set.
	**/
	public function _reset_group_selection():Dynamic;
	public var _selected_obj : Dynamic;
	static public var _selection : Dynamic;
	public var _selection_list : Dynamic;
	/**
		return a name for myself; this would ideally be called
		the 'name' property, but we cannot conflict with the
		Series.name property which can be set
	**/
	public var _selection_name : Dynamic;
	/**
		Create group based selection.
		
		Used when selection is not passed directly but instead via a grouper.
		
		NOTE: this should be paired with a call to _reset_group_selection
	**/
	public function _set_group_selection():Dynamic;
	public function _set_result_index_ordered(result:Dynamic):Dynamic;
	/**
		return a new object with the replacement attributes
	**/
	public function _shallow_copy(?obj:Dynamic, ?obj_type:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Parameters:
		-----------
		func_nm: str
		    The name of the aggregation function being performed
		
		Returns:
		--------
		bool
		    Whether transform should attempt to cast the result of aggregation
	**/
	public function _transform_should_cast(func_nm:Dynamic):Dynamic;
	/**
		if arg is a string, then try to operate on it:
		- try to find a function (or attribute) on ourselves
		- try to find a numpy function
		- raise
	**/
	public function _try_aggregate_string_function(arg:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Try to cast the result to our obj original type,
		we may have roundtripped through object in the mean-time.
		
		If numeric_only is True, then only try to cast numerics
		and not datetimelikes.
	**/
	public function _try_cast(result:Dynamic, obj:Dynamic, ?numeric_only:Dynamic):Dynamic;
	public function _wrap_applied_output(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function agg(func:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function aggregate(func:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Apply function `func`  group-wise and combine the results together.
		
		The function passed to `apply` must take a dataframe as its first
		argument and return a DataFrame, Series or scalar. `apply` will
		then take care of combining the results back together into a single
		dataframe or series. `apply` is therefore a highly flexible
		grouping method.
		
		While `apply` is a very flexible method, its downside is that
		using it can be quite a bit slower than using more specific methods
		like `agg` or `transform`. Pandas offers a wide range of method that will
		be much faster than using `apply` for their specific purposes, so try to
		use them before reaching for `apply`.
		
		Parameters
		----------
		func : callable
		    A callable that takes a dataframe as its first argument, and
		    returns a dataframe, a series or a scalar. In addition the
		    callable may take positional and keyword arguments.
		args, kwargs : tuple and dict
		    Optional positional and keyword arguments to pass to `func`.
		
		Returns
		-------
		applied : Series or DataFrame
		
		See Also
		--------
		pipe : Apply function to the full GroupBy object instead of to each
		    group.
		aggregate : Apply aggregate function to the GroupBy object.
		transform : Apply function column-by-column to the GroupBy object.
		Series.apply : Apply a function to a Series.
		DataFrame.apply : Apply a function to each row or column of a DataFrame.
	**/
	public function apply(func:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Constructs NDFrame from group with provided name.
		
		Parameters
		----------
		name : object
		    the name of the group to get as a DataFrame
		obj : NDFrame, default None
		    the NDFrame to take the DataFrame out of.  If
		    it is None, the object groupby was called on will
		    be used
		
		Returns
		-------
		group : same type as obj
	**/
	public function get_group(name:Dynamic, ?obj:Dynamic):Dynamic;
	/**
		Dict {group name -> group labels}.
	**/
	public var groups : Dynamic;
	/**
		Dict {group name -> group indices}.
	**/
	public var indices : Dynamic;
	public var ndim : Dynamic;
	public var ngroups : Dynamic;
	/**
		Apply a function `func` with arguments to this GroupBy object and return
		the function's result.
		
		.. versionadded:: 0.21.0
		
		Use `.pipe` when you want to improve readability by chaining together
		functions that expect Series, DataFrames, GroupBy or Resampler objects.
		Instead of writing
		
		>>> h(g(f(df.groupby('group')), arg1=a), arg2=b, arg3=c)
		
		You can write
		
		>>> (df.groupby('group')
		...    .pipe(f)
		...    .pipe(g, arg1=a)
		...    .pipe(h, arg2=b, arg3=c))
		
		which is much more readable.
		
		Parameters
		----------
		func : callable or tuple of (callable, string)
		    Function to apply to this GroupBy object or, alternatively,
		    a `(callable, data_keyword)` tuple where `data_keyword` is a
		    string indicating the keyword of `callable` that expects the
		    GroupBy object.
		args : iterable, optional
		       positional arguments passed into `func`.
		kwargs : dict, optional
		         a dictionary of keyword arguments passed into `func`.
		
		Returns
		-------
		object : the return type of `func`.
		
		See Also
		--------
		pandas.Series.pipe : Apply a function with arguments to a series.
		pandas.DataFrame.pipe: Apply a function with arguments to a dataframe.
		apply : Apply function to each group instead of to the
		    full GroupBy object.
		
		Notes
		-----
		See more `here
		<http://pandas.pydata.org/pandas-docs/stable/groupby.html#piping-function-calls>`_
		
		Examples
		--------
		>>> df = pd.DataFrame({'A': 'a b a b'.split(), 'B': [1, 2, 3, 4]})
		>>> df
		   A  B
		0  a  1
		1  b  2
		2  a  3
		3  b  4
		
		To get the difference between each groups maximum and minimum value in one
		pass, you can do
		
		>>> df.groupby('A').pipe(lambda x: x.max() - x.min())
		   B
		A
		a  2
		b  2
	**/
	public function pipe(func:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Class implementing the .plot attribute for groupby objects.
	**/
	public var plot : Dynamic;
	public function transform(func:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}