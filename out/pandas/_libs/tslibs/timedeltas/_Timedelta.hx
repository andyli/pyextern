/* This file is generated, do not edit! */
package pandas._libs.tslibs.timedeltas;
@:pythonImport("pandas._libs.tslibs.timedeltas", "_Timedelta") extern class _Timedelta {
	/**
		abs(self)
	**/
	public function __abs__():Dynamic;
	/**
		Return self+value.
	**/
	public function __add__(value:Dynamic):Dynamic;
	static public var __array_priority__ : Dynamic;
	/**
		self != 0
	**/
	public function __bool__():Dynamic;
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
	/**
		Return divmod(self, value).
	**/
	public function __divmod__(value:Dynamic):Dynamic;
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
		Return self%value.
	**/
	public function __mod__(value:Dynamic):Dynamic;
	/**
		Return self*value.
	**/
	public function __mul__(value:Dynamic):Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	/**
		-self
	**/
	public function __neg__():Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		+self
	**/
	public function __pos__():Dynamic;
	static public var __pyx_vtable__ : Dynamic;
	/**
		Return value+self.
	**/
	public function __radd__(value:Dynamic):Dynamic;
	/**
		Return divmod(value, self).
	**/
	public function __rdivmod__(value:Dynamic):Dynamic;
	/**
		__reduce__() -> (cls, state)
	**/
	public function __reduce__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __reduce_cython__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Return value%self.
	**/
	public function __rmod__(value:Dynamic):Dynamic;
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
	public function __setstate_cython__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public var _d : Dynamic;
	/**
		compute the components
	**/
	public function _ensure_components(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var _h : Dynamic;
	public function _has_ns(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var _m : Dynamic;
	public var _ms : Dynamic;
	public var _ns : Dynamic;
	/**
		Parameters
		----------
		format : None|all|sub_day|long
		
		Returns
		-------
		converted : string of a Timedelta
	**/
	public function _repr_base(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var _s : Dynamic;
	public var _us : Dynamic;
	/**
		Return a numpy timedelta64 array scalar view.
		
		Provides access to the array scalar view (i.e. a combination of the
		value and the units) associated with the numpy.timedelta64().view(),
		including a 64-bit integer representation of the timedelta in
		nanoseconds (Python int compatible).
		
		Returns
		-------
		numpy timedelta64 array scalar view
		    Array scalar view of the timedelta in nanoseconds.
		
		Examples
		--------
		>>> td = pd.Timedelta('1 days 2 min 3 us 42 ns')
		>>> td.asm8
		numpy.timedelta64(86520000003042,'ns')
		
		>>> td = pd.Timedelta('2 min 3 s')
		>>> td.asm8
		numpy.timedelta64(123000000000,'ns')
		
		>>> td = pd.Timedelta('3 ms 5 us')
		>>> td.asm8
		numpy.timedelta64(3005000,'ns')
		
		>>> td = pd.Timedelta(42, unit='ns')
		>>> td.asm8
		numpy.timedelta64(42,'ns')
	**/
	public var asm8 : Dynamic;
	/**
		Return a Components NamedTuple-like 
	**/
	public var components : Dynamic;
	/**
		Number of days.
	**/
	public var days : Dynamic;
	/**
		Return the timedelta in nanoseconds (ns), for internal compatibility.
		
		Returns
		-------
		int
		    Timedelta in nanoseconds.
		
		Examples
		--------
		>>> td = pd.Timedelta('1 days 42 ns')
		>>> td.delta
		86400000000042
		
		>>> td = pd.Timedelta('3 s')
		>>> td.delta
		3000000000
		
		>>> td = pd.Timedelta('3 ms 5 us')
		>>> td.delta
		3005000
		
		>>> td = pd.Timedelta(42, unit='ns')
		>>> td.delta
		42
	**/
	public var delta : Dynamic;
	public var freq : Dynamic;
	public var is_populated : Dynamic;
	/**
		Format Timedelta as ISO 8601 Duration like
		``P[n]Y[n]M[n]DT[n]H[n]M[n]S``, where the ``[n]`` s are replaced by the
		values. See https://en.wikipedia.org/wiki/ISO_8601#Durations
		
		.. versionadded:: 0.20.0
		
		Returns
		-------
		formatted : str
		
		See Also
		--------
		Timestamp.isoformat
		
		Notes
		-----
		The longest component is days, whose value may be larger than
		365.
		Every component is always included, even if its value is 0.
		Pandas uses nanosecond precision, so up to 9 decimal places may
		be included in the seconds component.
		Trailing 0's are removed from the seconds component after the decimal.
		We do not 0 pad components, so it's `...T5H...`, not `...T05H...`
		
		Examples
		--------
		>>> td = pd.Timedelta(days=6, minutes=50, seconds=3,
		...                   milliseconds=10, microseconds=10, nanoseconds=12)
		>>> td.isoformat()
		'P6DT0H50M3.010010012S'
		>>> pd.Timedelta(hours=1, seconds=10).isoformat()
		'P0DT0H0M10S'
		>>> pd.Timedelta(hours=1, seconds=10).isoformat()
		'P0DT0H0M10S'
		>>> pd.Timedelta(days=500.5).isoformat()
		'P500DT12H0MS'
	**/
	public function isoformat(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var max : Dynamic;
	/**
		Number of microseconds (>= 0 and less than 1 second).
	**/
	public var microseconds : Dynamic;
	static public var min : Dynamic;
	/**
		Return the number of nanoseconds (n), where 0 <= n < 1 microsecond.
		
		Returns
		-------
		int
		    Number of nanoseconds.
		
		See Also
		--------
		Timedelta.components : Return all attributes with assigned values
		    (i.e. days, hours, minutes, seconds, milliseconds, microseconds,
		    nanoseconds).
		
		Examples
		--------
		**Using string input**
		
		>>> td = pd.Timedelta('1 days 2 min 3 us 42 ns')
		>>> td.nanoseconds
		42
		
		**Using integer input**
		
		>>> td = pd.Timedelta(42, unit='ns')
		>>> td.nanoseconds
		42
	**/
	public var nanoseconds : Dynamic;
	/**
		Return a string representing the lowest timedelta resolution.
		
		Each timedelta has a defined resolution that represents the lowest OR
		most granular level of precision. Each level of resolution is
		represented by a short string as defined below:
		
		Resolution:     Return value
		
		* Days:         'D'
		* Hours:        'H'
		* Minutes:      'T'
		* Seconds:      'S'
		* Milliseconds: 'L'
		* Microseconds: 'U'
		* Nanoseconds:  'N'
		
		Returns
		-------
		str
		    Timedelta resolution.
		
		Examples
		--------
		>>> td = pd.Timedelta('1 days 2 min 3 us 42 ns')
		>>> td.resolution
		'N'
		
		>>> td = pd.Timedelta('1 days 2 min 3 us')
		>>> td.resolution
		'U'
		
		>>> td = pd.Timedelta('2 min 3 s')
		>>> td.resolution
		'S'
		
		>>> td = pd.Timedelta(36, unit='us')
		>>> td.resolution
		'U'
	**/
	public var resolution : Dynamic;
	/**
		Number of seconds (>= 0 and less than 1 day).
	**/
	public var seconds : Dynamic;
	/**
		return an actual datetime.timedelta object
		note: we lose nanosecond resolution if any
	**/
	public function to_pytimedelta(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Returns a numpy.timedelta64 object with 'ns' precision 
	**/
	public function to_timedelta64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Total duration of timedelta in seconds (to ns precision)
	**/
	public function total_seconds(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var value : Dynamic;
	/**
		array view compat 
	**/
	public function view(args:haxe.extern.Rest<Dynamic>):Dynamic;
}