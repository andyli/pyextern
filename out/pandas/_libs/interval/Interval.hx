/* This file is generated, do not edit! */
package pandas._libs.interval;
@:pythonImport("pandas._libs.interval", "Interval") extern class Interval {
	/**
		Return self+value.
	**/
	public function __add__(value:Dynamic):Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return key in self.
	**/
	public function __contains__(key:Dynamic):Dynamic;
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
		Return self//value.
	**/
	public function __floordiv__(value:Dynamic):Dynamic;
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
	/**
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
	/**
		Return self<value.
	**/
	public function __lt__(value:Dynamic):Dynamic;
	/**
		Return self*value.
	**/
	public function __mul__(value:Dynamic):Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return value+self.
	**/
	public function __radd__(value:Dynamic):Dynamic;
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
		Return value//self.
	**/
	public function __rfloordiv__(value:Dynamic):Dynamic;
	/**
		Return value*self.
	**/
	public function __rmul__(value:Dynamic):Dynamic;
	/**
		Return value-self.
	**/
	public function __rsub__(value:Dynamic):Dynamic;
	/**
		Return value/self.
	**/
	public function __rtruediv__(value:Dynamic):Dynamic;
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
		Return self-value.
	**/
	public function __sub__(value:Dynamic):Dynamic;
	/**
		Abstract classes can override this to customize issubclass().
		
		This is invoked early on by abc.ABCMeta.__subclasscheck__().
		It should return True, False or NotImplemented.  If it returns
		NotImplemented, the normal algorithm is used.  Otherwise, it
		overrides the normal algorithm (and the outcome is cached).
	**/
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self/value.
	**/
	public function __truediv__(value:Dynamic):Dynamic;
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
	public function _repr_base(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var _typ : Dynamic;
	/**
		Whether the interval is closed on the left-side, right-side, both or
		neither
	**/
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
	/**
		Left bound for the interval
	**/
	public var left : Dynamic;
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
	/**
		Check whether two Interval objects overlap.
		
		Two intervals overlap if they share a common point, including closed
		endpoints. Intervals that only have an open endpoint in common do not
		overlap.
		
		.. versionadded:: 0.24.0
		
		Parameters
		----------
		other : Interval
		    The interval to check against for an overlap.
		
		Returns
		-------
		bool
		    ``True`` if the two intervals overlap, else ``False``.
		
		See Also
		--------
		IntervalArray.overlaps : The corresponding method for IntervalArray.
		IntervalIndex.overlaps : The corresponding method for IntervalIndex.
		
		Examples
		--------
		>>> i1 = pd.Interval(0, 2)
		>>> i2 = pd.Interval(1, 3)
		>>> i1.overlaps(i2)
		True
		>>> i3 = pd.Interval(4, 5)
		>>> i1.overlaps(i3)
		False
		
		Intervals that share closed endpoints overlap:
		
		>>> i4 = pd.Interval(0, 1, closed='both')
		>>> i5 = pd.Interval(1, 2, closed='both')
		>>> i4.overlaps(i5)
		True
		
		Intervals that only have an open endpoint in common do not overlap:
		
		>>> i6 = pd.Interval(1, 2, closed='neither')
		>>> i4.overlaps(i6)
		False
	**/
	public function overlaps(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Right bound for the interval
	**/
	public var right : Dynamic;
}