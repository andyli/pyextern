/* This file is generated, do not edit! */
package pandas.core.groupby.groupby;
@:pythonImport("pandas.core.groupby.groupby", "BaseGroupBy") extern class BaseGroupBy {
	static public var __annotations__ : Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function __class_getitem__(params:Dynamic):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		Provide method name lookup and completion.
		
		Notes
		-----
		Only provide 'public' methods.
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
	static public function __init_subclass__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
	static public function __new__(cls:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var __orig_bases__ : Dynamic;
	static public var __parameters__ : Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce__():Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce_ex__(protocol:Dynamic):Dynamic;
	/**
		Return a string representation for a particular object.
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
	static public var __slots__ : Dynamic;
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
	static public var _accessors : Dynamic;
	static public var _apply_allowlist : Dynamic;
	public var _ascending_count : Dynamic;
	/**
		Class constructor (for this class it's just `__class__`.
	**/
	public var _constructor : Dynamic;
	public var _descending_count : Dynamic;
	/**
		Add additional __dir__ for this object.
	**/
	public function _dir_additions():Dynamic;
	/**
		Delete unwanted __dir__ for this object.
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
		key : str / list of selections
		ndim : {1, 2}
		    requested ndim of result
		subset : object, default None
		    subset to act on
	**/
	public function _gotitem(key:Dynamic, ndim:Dynamic, ?subset:Dynamic):Dynamic;
	static public var _group_selection : Dynamic;
	static public var _hidden_attrs : Dynamic;
	static public var _internal_names : Dynamic;
	static public var _internal_names_set : Dynamic;
	static public var _is_protocol : Dynamic;
	public function _make_mask_from_int(arg:Dynamic):Dynamic;
	public function _make_mask_from_list(args:Dynamic):Dynamic;
	public function _make_mask_from_positional_indexer(arg:Dynamic):Dynamic;
	public function _make_mask_from_slice(arg:Dynamic):Dynamic;
	public function _make_mask_from_tuple(args:Dynamic):Dynamic;
	public var _obj_with_exclusions : Dynamic;
	/**
		Return positional selection for each group.
		
		``groupby._positional_selector[i:j]`` is similar to
		``groupby.apply(lambda x: x.iloc[i:j])``
		but much faster and preserves the original index and order.
		
		``_positional_selector[]`` is compatible with and extends :meth:`~GroupBy.head`
		and :meth:`~GroupBy.tail`. For example:
		
		- ``head(5)``
		- ``_positional_selector[5:-5]``
		- ``tail(5)``
		
		together return all the rows.
		
		Allowed inputs for the index are:
		
		- An integer valued iterable, e.g. ``range(2, 4)``.
		- A comma separated list of integers and slices, e.g. ``5``, ``2, 4``, ``2:4``.
		
		The output format is the same as :meth:`~GroupBy.head` and
		:meth:`~GroupBy.tail`, namely
		a subset of the ``DataFrame`` or ``Series`` with the index and order preserved.
		
		Returns
		-------
		Series
		    The filtered subset of the original Series.
		DataFrame
		    The filtered subset of the original DataFrame.
		
		See Also
		--------
		DataFrame.iloc : Purely integer-location based indexing for selection by
		    position.
		GroupBy.head : Return first n rows of each group.
		GroupBy.tail : Return last n rows of each group.
		GroupBy.nth : Take the nth row from each group if n is an int, or a
		    subset of rows, if n is a list of ints.
		
		Notes
		-----
		- The slice step cannot be negative.
		- If the index specification results in overlaps, the item is not duplicated.
		- If the index specification changes the order of items, then
		  they are returned in their original order.
		  By contrast, ``DataFrame.iloc`` can change the row order.
		- ``groupby()`` parameters such as as_index and dropna are ignored.
		
		The differences between ``_positional_selector[]`` and :meth:`~GroupBy.nth`
		with ``as_index=False`` are:
		
		- Input to ``_positional_selector`` can include
		  one or more slices whereas ``nth``
		  just handles an integer or a list of integers.
		- ``_positional_selector`` can  accept a slice relative to the
		  last row of each group.
		- ``_positional_selector`` does not have an equivalent to the
		  ``nth()`` ``dropna`` parameter.
		
		Examples
		--------
		>>> df = pd.DataFrame([["a", 1], ["a", 2], ["a", 3], ["b", 4], ["b", 5]],
		...                   columns=["A", "B"])
		>>> df.groupby("A")._positional_selector[1:2]
		   A  B
		1  a  2
		4  b  5
		
		>>> df.groupby("A")._positional_selector[1, -1]
		   A  B
		1  a  2
		2  a  3
		4  b  5
	**/
	public var _positional_selector : Dynamic;
	/**
		Reset cached properties. If ``key`` is passed, only clears that key.
	**/
	public function _reset_cache(?key:Dynamic):Dynamic;
	public var _selected_obj : Dynamic;
	static public var _selection : Dynamic;
	public var _selection_list : Dynamic;
	public function agg(func:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function aggregate(func:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Construct DataFrame from group with provided name.
		
		Parameters
		----------
		name : object
		    The name of the group to get as a DataFrame.
		obj : DataFrame, default None
		    The DataFrame to take the DataFrame out of.  If
		    it is None, the object groupby was called on will
		    be used.
		
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
		
		Use `.pipe` when you want to improve readability by chaining together
		functions that expect Series, DataFrames, GroupBy or Resampler objects.
		Instead of writing
		
		>>> h(g(f(df.groupby('group')), arg1=a), arg2=b, arg3=c)  # doctest: +SKIP
		
		You can write
		
		>>> (df.groupby('group')
		...    .pipe(f)
		...    .pipe(g, arg1=a)
		...    .pipe(h, arg2=b, arg3=c))  # doctest: +SKIP
		
		which is much more readable.
		
		Parameters
		----------
		func : callable or tuple of (callable, str)
		    Function to apply to this GroupBy object or, alternatively,
		    a `(callable, data_keyword)` tuple where `data_keyword` is a
		    string indicating the keyword of `callable` that expects the
		    GroupBy object.
		args : iterable, optional
		       Positional arguments passed into `func`.
		kwargs : dict, optional
		         A dictionary of keyword arguments passed into `func`.
		
		Returns
		-------
		object : the return type of `func`.
		
		See Also
		--------
		Series.pipe : Apply a function with arguments to a series.
		DataFrame.pipe: Apply a function with arguments to a dataframe.
		apply : Apply function to each group instead of to the
		    full GroupBy object.
		
		Notes
		-----
		See more `here
		<https://pandas.pydata.org/pandas-docs/stable/user_guide/groupby.html#piping-function-calls>`_
		
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
}