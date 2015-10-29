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
	public function ___init__(args:Dynamic, kwargs:Dynamic):Dynamic;
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
	static public function __new__(args:Dynamic, kwargs:Dynamic):Dynamic;
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
	static public var __weakref__ : Dynamic;
	public function _add_datelike(other:Dynamic):Dynamic;
	/**
		add in the datetimelike methods (as we may have to override the superclass) 
	**/
	static public function _add_datetimelike_methods():Dynamic;
	public function _add_delta(other:Dynamic):Dynamic;
	public function _add_delta_td(other:Dynamic):Dynamic;
	public function _add_delta_tdi(other:Dynamic):Dynamic;
	/**
		box function to get object from internal representation
	**/
	static public var _box_func : Dynamic;
	/**
		apply box func to passed values
	**/
	public function _box_values(values:Dynamic):Dynamic;
	/**
		we don't allow integer or float indexing on datetime-like when using loc
		
		Parameters
		----------
		key : label of the slice bound
		kind : optional, type of the indexing operation (loc/ix/iloc/None)
	**/
	public function _convert_scalar_indexer(key:Dynamic, ?kind:Dynamic):Dynamic;
	public function _convert_tolerance(tolerance:Dynamic):Dynamic;
	/**
		Return a list of tuples of the (attr,formatted_value)
	**/
	public function _format_attrs():Dynamic;
	public function _format_with_header(header:Dynamic, kwargs:Dynamic):Dynamic;
	static public var _formatter_func : Dynamic;
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
		
		mask the result if needed, convert to the provided dtype if its not None
		
		This is an internal routine
	**/
	public function _maybe_mask_results(result:Dynamic, ?fill_value:Dynamic, ?convert:Dynamic):Dynamic;
	static public var _resolution : Dynamic;
	public function _sub_datelike(other:Dynamic):Dynamic;
	/**
		return a ndarray of the maximum argument indexer
		
		See also
		--------
		numpy.ndarray.argmax
	**/
	public function argmax(?axis:Dynamic):Dynamic;
	/**
		return a ndarray of the minimum argument indexer
		
		See also
		--------
		numpy.ndarray.argmin
	**/
	public function argmin(?axis:Dynamic):Dynamic;
	static public var asobject : Dynamic;
	/**
		return the frequency object as a string if its set, otherwise None 
	**/
	static public var freqstr : Dynamic;
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
		return the maximum value of the Index
		
		See also
		--------
		numpy.ndarray.max
	**/
	public function max(?axis:Dynamic):Dynamic;
	/**
		return the minimum value of the Index
		
		See also
		--------
		numpy.ndarray.min
	**/
	public function min(?axis:Dynamic):Dynamic;
	/**
		Analogous to ndarray.repeat
	**/
	public function repeat(repeats:Dynamic, ?axis:Dynamic):Dynamic;
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
	public function shift(n:Dynamic, ?freq:Dynamic):Dynamic;
	/**
		Return sorted copy of Index
	**/
	public function sort_values(?return_indexer:Dynamic, ?ascending:Dynamic):Dynamic;
	/**
		return a summarized representation
	**/
	public function summary(?name:Dynamic):Dynamic;
	/**
		Analogous to ndarray.take
	**/
	public function take(indices:Dynamic, ?axis:Dynamic, kwargs:Dynamic):Dynamic;
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