/* This file is generated, do not edit! */
package pandas.tseries.base;
@:pythonImport("pandas.tseries.base", "DatetimeIndexOpsMixin") extern class DatetimeIndexOpsMixin {
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public function _add_delta_td(other:Dynamic):Dynamic;
	public function _add_delta_tdi(other:Dynamic):Dynamic;
	/**
		box function to get object from internal representation
	**/
	public var _box_func : Dynamic;
	/**
		apply box func to passed values
	**/
	public function _box_values(values:Dynamic):Dynamic;
	/**
		we don't allow integer or float indexing on datetime-like when using
		loc
		
		Parameters
		----------
		key : label of the slice bound
		kind : {'ix', 'loc', 'getitem', 'iloc'} or None
	**/
	public function _convert_scalar_indexer(key:Dynamic, ?kind:Dynamic):Dynamic;
	public function _convert_tolerance(tolerance:Dynamic):Dynamic;
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
	static public var _isnan : Dynamic;
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
	static public var _resolution : Dynamic;
	public function _sub_datelike(other:Dynamic):Dynamic;
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
		return object Index which contains boxed values
		
		*this is an internal non-public method*
	**/
	public var asobject : Dynamic;
	/**
		Return the frequency object as a string if its set, otherwise None
	**/
	public var freqstr : Dynamic;
	public function get_duplicates():Dynamic;
	public function groupby(f:Dynamic):Dynamic;
	static public var hasnans : Dynamic;
	static public var inferred_freq : Dynamic;
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
	static public var resolution : Dynamic;
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
		return a summarized representation
	**/
	public function summary(?name:Dynamic):Dynamic;
	/**
		return a new %(klass)s of the values selected by the indices
		
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
		Index.unique with handling for DatetimeIndex/PeriodIndex metadata
		
		Returns
		-------
		result : DatetimeIndex or PeriodIndex
	**/
	public function unique():Dynamic;
}