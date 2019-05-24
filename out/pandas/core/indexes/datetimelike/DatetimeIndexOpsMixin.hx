/* This file is generated, do not edit! */
package pandas.core.indexes.datetimelike;
@:pythonImport("pandas.core.indexes.datetimelike", "DatetimeIndexOpsMixin") extern class DatetimeIndexOpsMixin {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return a boolean indicating whether the provided key is in the index.
		
		Parameters
		----------
		key : label
		    The key to check if it is present in the index.
		
		Returns
		-------
		bool
		    Whether the key search is in the index.
		
		See Also
		--------
		Index.isin : Returns an ndarray of boolean dtype indicating whether the
		    list-like key is in the index.
		
		Examples
		--------
		>>> idx = pd.Index([1, 2, 3, 4])
		>>> idx
		Int64Index([1, 2, 3, 4], dtype='int64')
		
		>>> idx.contains(2)
		True
		>>> idx.contains(6)
		False
		
		This is equivalent to:
		
		>>> 2 in idx
		True
		>>> 6 in idx
		False
	**/
	public function __contains__(key:Dynamic):Dynamic;
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
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __iter__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	static public function _add_arithmetic_ops():Dynamic;
	static public function _add_comparison_ops():Dynamic;
	/**
		Add in the datetimelike methods (as we may have to override the
		superclass).
	**/
	static public function _add_datetimelike_methods():Dynamic;
	public function _box_values(values:Dynamic):Dynamic;
	static public var _can_hold_na : Dynamic;
	/**
		Concatenate to_concat which has the same class.
	**/
	public function _concat_same_dtype(to_concat:Dynamic, name:Dynamic):Dynamic;
	/**
		We don't allow integer or float indexing on datetime-like when using
		loc.
		
		Parameters
		----------
		key : label of the slice bound
		kind : {'ix', 'loc', 'getitem', 'iloc'} or None
	**/
	public function _convert_scalar_indexer(key:Dynamic, ?kind:Dynamic):Dynamic;
	public function _convert_tolerance(tolerance:Dynamic, target:Dynamic):Dynamic;
	/**
		Create a comparison method that dispatches to ``cls.values``.
	**/
	static public function _create_comparison_method(op:Dynamic):Dynamic;
	static public var _data : Dynamic;
	public function _ensure_localized(arg:Dynamic, ?ambiguous:Dynamic, ?nonexistent:Dynamic, ?from_utc:Dynamic):Dynamic;
	/**
		Return a list of tuples of the (attr,formatted_value).
	**/
	public function _format_attrs():Dynamic;
	public function _format_with_header(header:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public var _formatter_func : Dynamic;
	/**
		return if I have any nans; enables various perf speedups
	**/
	public var _hasnans : Dynamic;
	/**
		return if each value is nan
	**/
	public var _isnan : Dynamic;
	/**
		Create the join wrapper methods.
	**/
	static public function _join_i8_wrapper(joinf:Dynamic, dtype:Dynamic, ?with_indexers:Dynamic):Dynamic;
	/**
		Parameters
		----------
		result : a ndarray
		fill_value : object, default iNaT
		convert : string/dtype or None
		
		Returns
		-------
		result : ndarray with values replace by the fill_value
		
		mask the result if needed, convert to the provided dtype if its not
		None
		
		This is an internal routine
	**/
	public function _maybe_mask_results(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var _na_value : Dynamic;
	public var _ndarray_values : Dynamic;
	public var _resolution : Dynamic;
	/**
		Return a summarized representation.
		
		Parameters
		----------
		name : str
		    name to use in the summary representation
		
		Returns
		-------
		String with a summarized representation of the index
	**/
	public function _summary(?name:Dynamic):Dynamic;
	/**
		Returns the indices of the maximum values along an axis.
		
		See `numpy.ndarray.argmax` for more information on the
		`axis` parameter.
		
		See Also
		--------
		numpy.ndarray.argmax
	**/
	public function argmax(?axis:Dynamic, ?skipna:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Returns the indices of the minimum values along an axis.
		
		See `numpy.ndarray.argmin` for more information on the
		`axis` parameter.
		
		See Also
		--------
		numpy.ndarray.argmin
	**/
	public function argmin(?axis:Dynamic, ?skipna:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Integer representation of the values.
		
		Returns
		-------
		ndarray
		    An ndarray with int64 dtype.
	**/
	public var asi8 : Dynamic;
	/**
		Return object Index which contains boxed values.
		
		.. deprecated:: 0.23.0
		    Use ``astype(object)`` instead.
		
		*this is an internal non-public method*
	**/
	public var asobject : Dynamic;
	/**
		Create an Index with values cast to dtypes. The class of a new Index
		is determined by dtype. When conversion is impossible, a ValueError
		exception is raised.
		
		Parameters
		----------
		dtype : numpy dtype or pandas type
		    Note that any signed integer `dtype` is treated as ``'int64'``,
		    and any unsigned integer `dtype` is treated as ``'uint64'``,
		    regardless of the size.
		copy : bool, default True
		    By default, astype always returns a newly allocated object.
		    If copy is set to False and internal requirements on dtype are
		    satisfied, the original data is used to create a new Index
		    or the original Index is returned.
		
		    .. versionadded:: 0.19.0
	**/
	public function astype(dtype:Dynamic, ?copy:Dynamic):Dynamic;
	/**
		Return a boolean indicating whether the provided key is in the index.
		
		Parameters
		----------
		key : label
		    The key to check if it is present in the index.
		
		Returns
		-------
		bool
		    Whether the key search is in the index.
		
		See Also
		--------
		Index.isin : Returns an ndarray of boolean dtype indicating whether the
		    list-like key is in the index.
		
		Examples
		--------
		>>> idx = pd.Index([1, 2, 3, 4])
		>>> idx
		Int64Index([1, 2, 3, 4], dtype='int64')
		
		>>> idx.contains(2)
		True
		>>> idx.contains(6)
		False
		
		This is equivalent to:
		
		>>> 2 in idx
		True
		>>> 6 in idx
		False
	**/
	public function contains(key:Dynamic):Dynamic;
	/**
		Determines if two Index objects contain the same elements.
	**/
	public function equals(other:Dynamic):Dynamic;
	/**
		Return the frequency object if it is set, otherwise None.
	**/
	public var freq : Dynamic;
	/**
		Return the frequency object as a string if it is set, otherwise None.
	**/
	public var freqstr : Dynamic;
	/**
		return if I have any nans; enables various perf speedups
	**/
	public var hasnans : Dynamic;
	/**
		Tryies to return a string representing a frequency guess,
		generated by infer_freq.  Returns None if it can't autodetect the
		frequency.
	**/
	public var inferred_freq : Dynamic;
	/**
		Compute boolean array of whether each index value is found in the
		passed set of values.
		
		Parameters
		----------
		values : set or sequence of values
		
		Returns
		-------
		is_contained : ndarray (boolean dtype)
	**/
	public function isin(values:Dynamic):Dynamic;
	public function map(f:Dynamic):Dynamic;
	/**
		Return the maximum value of the Index or maximum along
		an axis.
		
		See Also
		--------
		numpy.ndarray.max
		Series.max : Return the maximum value in a Series.
	**/
	public function max(?axis:Dynamic, ?skipna:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return the minimum value of the Index or minimum along
		an axis.
		
		See Also
		--------
		numpy.ndarray.min
		Series.min : Return the minimum value in a Series.
	**/
	public function min(?axis:Dynamic, ?skipna:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Repeat elements of a Index.
		
		Returns a new Index where each element of the current Index
		is repeated consecutively a given number of times.
		
		Parameters
		----------
		repeats : int or array of ints
		    The number of repetitions for each element. This should be a
		    non-negative integer. Repeating 0 times will return an empty
		    Index.
		axis : None
		    Must be ``None``. Has no effect but is accepted for compatibility
		    with numpy.
		
		Returns
		-------
		repeated_index : Index
		    Newly created Index with repeated elements.
		
		See Also
		--------
		Series.repeat : Equivalent function for Series.
		numpy.repeat : Similar method for :class:`numpy.ndarray`.
		
		Examples
		--------
		>>> idx = pd.Index(['a', 'b', 'c'])
		>>> idx
		Index(['a', 'b', 'c'], dtype='object')
		>>> idx.repeat(2)
		Index(['a', 'a', 'b', 'b', 'c', 'c'], dtype='object')
		>>> idx.repeat([1, 2, 3])
		Index(['a', 'b', 'b', 'c', 'c', 'c'], dtype='object')
	**/
	public function repeat(repeats:Dynamic, ?axis:Dynamic):pandas.Index;
	/**
		Returns day, hour, minute, second, millisecond or microsecond
	**/
	public var resolution : Dynamic;
	/**
		Shift index by desired number of time frequency increments.
		
		This method is for shifting the values of datetime-like indexes
		by a specified time increment a given number of times.
		
		Parameters
		----------
		periods : int
		    Number of periods (or increments) to shift by,
		    can be positive or negative.
		
		    .. versionchanged:: 0.24.0
		
		freq : pandas.DateOffset, pandas.Timedelta or string, optional
		    Frequency increment to shift by.
		    If None, the index is shifted by its own `freq` attribute.
		    Offset aliases are valid strings, e.g., 'D', 'W', 'M' etc.
		
		Returns
		-------
		pandas.DatetimeIndex
		    Shifted index.
		
		See Also
		--------
		Index.shift : Shift values of Index.
		PeriodIndex.shift : Shift values of PeriodIndex.
	**/
	public function shift(periods:Dynamic, ?freq:Dynamic):Dynamic;
	/**
		Return sorted copy of Index.
	**/
	public function sort_values(?return_indexer:Dynamic, ?ascending:Dynamic):Dynamic;
	/**
		Return a new Index of the values selected by the indices.
		
		For internal compatibility with numpy arrays.
		
		Parameters
		----------
		indices : list
		    Indices to be taken
		axis : int, optional
		    The axis over which to select values, always 0.
		allow_fill : bool, default True
		fill_value : bool, default None
		    If allow_fill=True and fill_value is not None, indices specified by
		    -1 is regarded as NA. If Index doesn't hold NA, raise ValueError
		
		See Also
		--------
		numpy.ndarray.take
	**/
	public function take(indices:Dynamic, ?axis:Dynamic, ?allow_fill:Dynamic, ?fill_value:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return a list of the underlying data.
	**/
	public function tolist():Dynamic;
	public function unique(?level:Dynamic):Dynamic;
	public var values : Dynamic;
	/**
		Return an Index of same shape as self and whose corresponding
		entries are from self where cond is True and otherwise are from
		other.
		
		.. versionadded:: 0.19.0
		
		Parameters
		----------
		cond : boolean array-like with the same length as self
		other : scalar, or array-like
	**/
	public function where(cond:Dynamic, ?other:Dynamic):Dynamic;
}