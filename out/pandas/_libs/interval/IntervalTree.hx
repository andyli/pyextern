/* This file is generated, do not edit! */
package pandas._libs.interval;
@:pythonImport("pandas._libs.interval", "IntervalTree") extern class IntervalTree {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
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
		Parameters
		----------
		left, right : np.ndarray[ndim=1]
		    Left and right bounds for each interval. Assumed to contain no
		    NaNs.
		closed : {'left', 'right', 'both', 'neither'}, optional
		    Whether the intervals are closed on the left-side, right-side, both
		    or neither. Defaults to 'right'.
		leaf_size : int, optional
		    Parameter that controls when the tree switches from creating nodes
		    to brute-force search. Tune this parameter to optimize query
		    performance.
	**/
	@:native("__init__")
	public function ___init__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Parameters
		----------
		left, right : np.ndarray[ndim=1]
		    Left and right bounds for each interval. Assumed to contain no
		    NaNs.
		closed : {'left', 'right', 'both', 'neither'}, optional
		    Whether the intervals are closed on the left-side, right-side, both
		    or neither. Defaults to 'right'.
		leaf_size : int, optional
		    Parameter that controls when the tree switches from creating nodes
		    to brute-force search. Tune this parameter to optimize query
		    performance.
	**/
	public function new(args:haxe.extern.Rest<Dynamic>):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
	/**
		Return self<value.
	**/
	public function __lt__(value:Dynamic):Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return the positions corresponding to unique intervals that overlap
		with the given array of scalar targets.
	**/
	public function __pyx_fuse_0get_indexer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return the positions corresponding to intervals that overlap with
		the given array of scalar targets. Non-unique positions are repeated.
	**/
	public function __pyx_fuse_0get_indexer_non_unique(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return all positions corresponding to intervals that overlap with
		the given scalar key
	**/
	public function __pyx_fuse_0get_loc(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return the positions corresponding to unique intervals that overlap
		with the given array of scalar targets.
	**/
	public function __pyx_fuse_1get_indexer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return the positions corresponding to intervals that overlap with
		the given array of scalar targets. Non-unique positions are repeated.
	**/
	public function __pyx_fuse_1get_indexer_non_unique(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return all positions corresponding to intervals that overlap with
		the given scalar key
	**/
	public function __pyx_fuse_1get_loc(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return the positions corresponding to unique intervals that overlap
		with the given array of scalar targets.
	**/
	public function __pyx_fuse_2get_indexer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return the positions corresponding to intervals that overlap with
		the given array of scalar targets. Non-unique positions are repeated.
	**/
	public function __pyx_fuse_2get_indexer_non_unique(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return all positions corresponding to intervals that overlap with
		the given scalar key
	**/
	public function __pyx_fuse_2get_loc(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return the positions corresponding to unique intervals that overlap
		with the given array of scalar targets.
	**/
	public function __pyx_fuse_3get_indexer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return the positions corresponding to intervals that overlap with
		the given array of scalar targets. Non-unique positions are repeated.
	**/
	public function __pyx_fuse_3get_indexer_non_unique(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return all positions corresponding to intervals that overlap with
		the given scalar key
	**/
	public function __pyx_fuse_3get_loc(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return the positions corresponding to unique intervals that overlap
		with the given array of scalar targets.
	**/
	public function __pyx_fuse_4get_indexer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return the positions corresponding to intervals that overlap with
		the given array of scalar targets. Non-unique positions are repeated.
	**/
	public function __pyx_fuse_4get_indexer_non_unique(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return all positions corresponding to intervals that overlap with
		the given scalar key
	**/
	public function __pyx_fuse_4get_loc(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public function __setstate__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Check if the closed attribute of `other` matches.
		
		Note that 'left' and 'right' are considered different from 'both'.
		
		Parameters
		----------
		other : Interval, IntervalIndex, IntervalArray
		name : str
		    Name to use for 'other' in the error message.
		
		Raises
		------
		ValueError
		    When `other` is not closed exactly the same as self.
	**/
	public function _check_closed_matches(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return all positions corresponding to intervals with the given side
		falling between the left and right bounds of an interval query
	**/
	public function _get_partial_overlap(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function clear_mapping(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var closed : Dynamic;
	/**
		Check if the interval is closed on the left side.
		
		For the meaning of `closed` and `open` see :class:`~pandas.Interval`.
		
		Returns
		-------
		bool
		    ``True`` if the Interval is closed on the left-side, else
		    ``False``.
	**/
	public var closed_left : Dynamic;
	/**
		Check if the interval is closed on the right side.
		
		For the meaning of `closed` and `open` see :class:`~pandas.Interval`.
		
		Returns
		-------
		bool
		    ``True`` if the Interval is closed on the left-side, else
		    ``False``.
	**/
	public var closed_right : Dynamic;
	public var dtype : Dynamic;
	/**
		Return the positions corresponding to unique intervals that overlap
		with the given array of scalar targets.
	**/
	public function get_indexer(target:Dynamic):Dynamic;
	/**
		Return the positions corresponding to intervals that overlap with
		the given array of scalar targets. Non-unique positions are repeated.
	**/
	public function get_indexer_non_unique(target:Dynamic):Dynamic;
	/**
		Return all positions corresponding to intervals that overlap with
		the given scalar key
	**/
	public function get_loc(key:Dynamic):Dynamic;
	/**
		Lookup the intervals enclosed in the given interval bounds
		
		The given interval is presumed to have closed bounds.
	**/
	public function get_loc_interval(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Determine if the IntervalTree contains overlapping intervals.
		Cached as self._is_overlapping.
	**/
	public var is_overlapping : Dynamic;
	public var left : Dynamic;
	/**
		How to sort the left labels; this is used for binary search
		        
	**/
	public var left_sorter : Dynamic;
	/**
		Return the length of the Interval
	**/
	public var length : Dynamic;
	/**
		Return the midpoint of the Interval
	**/
	public var mid : Dynamic;
	/**
		Check if the interval is open on the left side.
		
		For the meaning of `closed` and `open` see :class:`~pandas.Interval`.
		
		Returns
		-------
		bool
		    ``True`` if the Interval is closed on the left-side, else
		    ``False``.
	**/
	public var open_left : Dynamic;
	/**
		Check if the interval is open on the right side.
		
		For the meaning of `closed` and `open` see :class:`~pandas.Interval`.
		
		Returns
		-------
		bool
		    ``True`` if the Interval is closed on the left-side, else
		    ``False``.
	**/
	public var open_right : Dynamic;
	public var right : Dynamic;
	/**
		How to sort the right labels
		        
	**/
	public var right_sorter : Dynamic;
	public var root : Dynamic;
}