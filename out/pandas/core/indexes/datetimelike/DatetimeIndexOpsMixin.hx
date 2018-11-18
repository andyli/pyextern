/* This file is generated, do not edit! */
package pandas.core.indexes.datetimelike;
@:pythonImport("pandas.core.indexes.datetimelike", "DatetimeIndexOpsMixin") extern class DatetimeIndexOpsMixin {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		return a boolean if this key is IN the index
		
		Parameters
		----------
		key : object
		
		Returns
		-------
		boolean
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
		This getitem defers to the underlying array, which by-definition can
		only handle list-likes, slices, and integer scalars
	**/
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
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __iter__():Dynamic;
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
	public function _add_datelike(other:Dynamic):Dynamic;
	/**
		add in the datetimelike methods (as we may have to override the
		superclass)
	**/
	static public function _add_datetimelike_methods():Dynamic;
	public function _add_delta(other:Dynamic):Dynamic;
	/**
		Add a delta of a timedeltalike
		return the i8 result view
	**/
	public function _add_delta_td(other:Dynamic):Dynamic;
	/**
		Add a delta of a TimedeltaIndex
		return the i8 result view
	**/
	public function _add_delta_tdi(other:Dynamic):Dynamic;
	/**
		Add pd.NaT to self
	**/
	public function _add_nat():Dynamic;
	public function _add_offset(offset:Dynamic):Dynamic;
	/**
		Add or subtract array-like of DateOffset objects
		
		Parameters
		----------
		other : Index, np.ndarray
		    object-dtype containing pd.DateOffset objects
		op : {operator.add, operator.sub}
		
		Returns
		-------
		result : same class as self
	**/
	public function _addsub_offset_array(other:Dynamic, op:Dynamic):Dynamic;
	/**
		box function to get object from internal representation
	**/
	public var _box_func : Dynamic;
	/**
		apply box func to passed values
	**/
	public function _box_values(values:Dynamic):Dynamic;
	/**
		return object Index which contains boxed values
	**/
	public function _box_values_as_index():Dynamic;
	static public var _can_hold_na : Dynamic;
	/**
		Concatenate to_concat which has the same class
	**/
	public function _concat_same_dtype(to_concat:Dynamic, name:Dynamic):Dynamic;
	/**
		we don't allow integer or float indexing on datetime-like when using
		loc
		
		Parameters
		----------
		key : label of the slice bound
		kind : {'ix', 'loc', 'getitem', 'iloc'} or None
	**/
	public function _convert_scalar_indexer(key:Dynamic, ?kind:Dynamic):Dynamic;
	public function _convert_tolerance(tolerance:Dynamic, target:Dynamic):Dynamic;
	/**
		ensure that we are re-localized
		
		This is for compat as we can then call this on all datetimelike
		indexes generally (ignored for Period/Timedelta)
		
		Parameters
		----------
		result : DatetimeIndex / i8 ndarray
		
		Returns
		-------
		localized DTI
	**/
	public function _ensure_localized(result:Dynamic):Dynamic;
	/**
		We have been called because a comparison between
		8 aware arrays. numpy >= 1.11 will
		now warn about NaT comparisons
	**/
	public function _evaluate_compare(other:Dynamic, op:Dynamic):Dynamic;
	/**
		Return a list of tuples of the (attr,formatted_value)
	**/
	public function _format_attrs():Dynamic;
	public function _format_with_header(header:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public var _formatter_func : Dynamic;
	/**
		return if each value is nan
	**/
	public var _isnan : Dynamic;
	/**
		create the join wrapper methods 
	**/
	static public function _join_i8_wrapper(joinf:Dynamic, dtype:Dynamic, ?with_indexers:Dynamic):Dynamic;
	/**
		Parameters
		----------
		result : a ndarray
		convert : string/dtype or None
		
		Returns
		-------
		result : ndarray with values replace by the fill_value
		
		mask the result if needed, convert to the provided dtype if its not
		None
		
		This is an internal routine
	**/
	public function _maybe_mask_results(result:Dynamic, ?fill_value:Dynamic, ?convert:Dynamic):Dynamic;
	static public var _na_value : Dynamic;
	/**
		Return Index or ndarray filled with NaT which has the same
		length as the caller.
		
		Parameters
		----------
		box : boolean, default True
		    - If True returns a Index as the same as caller.
		    - If False returns ndarray of np.int64.
	**/
	public function _nat_new(?box:Dynamic):Dynamic;
	public var _resolution : Dynamic;
	public function _sub_datelike(other:Dynamic):Dynamic;
	/**
		Subtract pd.NaT from self
	**/
	public function _sub_nat():Dynamic;
	public function _sub_period(other:Dynamic):Dynamic;
	/**
		Return a summarized representation
		
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
		
		See also
		--------
		numpy.ndarray.argmax
	**/
	public function argmax(?axis:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Returns the indices of the minimum values along an axis.
		See `numpy.ndarray.argmin` for more information on the
		`axis` parameter.
		
		See also
		--------
		numpy.ndarray.argmin
	**/
	public function argmin(?axis:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return object Index which contains boxed values.
		
		.. deprecated:: 0.23.0
		    Use ``astype(object)`` instead.
		
		*this is an internal non-public method*
	**/
	public var asobject : Dynamic;
	public function astype(dtype:Dynamic, ?copy:Dynamic):Dynamic;
	/**
		return a boolean if this key is IN the index
		
		Parameters
		----------
		key : object
		
		Returns
		-------
		boolean
	**/
	public function contains(key:Dynamic):Dynamic;
	/**
		Determines if two Index objects contain the same elements.
	**/
	public function equals(other:Dynamic):Dynamic;
	/**
		Return the frequency object as a string if it is set, otherwise None
	**/
	public var freqstr : Dynamic;
	/**
		Tries to return a string representing a frequency guess,
		generated by infer_freq.  Returns None if it can't autodetect the
		frequency.
	**/
	public var inferred_freq : Dynamic;
	/**
		Compute boolean array of whether each index value is found in the
		passed set of values
		
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
		
		See also
		--------
		numpy.ndarray.max
	**/
	public function max(?axis:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return the minimum value of the Index or minimum along
		an axis.
		
		See also
		--------
		numpy.ndarray.min
	**/
	public function min(?axis:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Analogous to ndarray.repeat
	**/
	public function repeat(repeats:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Returns day, hour, minute, second, millisecond or microsecond
	**/
	public var resolution : Dynamic;
	/**
		Specialized shift which produces a DatetimeIndex
		
		Parameters
		----------
		n : int
		    Periods to shift by
		freq : DateOffset or timedelta-like, optional
		
		Returns
		-------
		shifted : DatetimeIndex
	**/
	public function shift(n:Dynamic, ?freq:Dynamic):pandas.DatetimeIndex;
	/**
		Return sorted copy of Index
	**/
	public function sort_values(?return_indexer:Dynamic, ?ascending:Dynamic):Dynamic;
	/**
		return a new Index of the values selected by the indices
		
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
		
		See also
		--------
		numpy.ndarray.take
	**/
	public function take(indices:Dynamic, ?axis:Dynamic, ?allow_fill:Dynamic, ?fill_value:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		return a list of the underlying data
	**/
	public function tolist():Dynamic;
	/**
		.. versionadded:: 0.19.0
		
		Return an Index of same shape as self and whose corresponding
		entries are from self where cond is True and otherwise are from
		other.
		
		Parameters
		----------
		cond : boolean array-like with the same length as self
		other : scalar, or array-like
	**/
	public function where(cond:Dynamic, ?other:Dynamic):Dynamic;
}