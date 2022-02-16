/* This file is generated, do not edit! */
package pandas._libs.tslibs.timedeltas;
@:pythonImport("pandas._libs.tslibs.timedeltas", "Timedelta") extern class Timedelta {
	public function __abs__():Dynamic;
	public function __add__(other:Dynamic):Dynamic;
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
	static public var __dict__ : Dynamic;
	/**
		Default dir() implementation.
	**/
	public function __dir__():Dynamic;
	public function __divmod__(other:Dynamic):Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	public function __floordiv__(other:Dynamic):Dynamic;
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
	public function __mod__(other:Dynamic):Dynamic;
	static public var __module__ : Dynamic;
	public function __mul__(other:Dynamic):Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	public function __neg__():Dynamic;
	static public function __new__(cls:Dynamic, ?value:Dynamic, ?unit:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function __pos__():Dynamic;
	static public var __pyx_vtable__ : Dynamic;
	public function __radd__(other:Dynamic):Dynamic;
	public function __rdivmod__(other:Dynamic):Dynamic;
	public function __reduce__():Dynamic;
	public function __reduce_cython__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce_ex__(protocol:Dynamic):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	public function __rfloordiv__(other:Dynamic):Dynamic;
	public function __rmod__(other:Dynamic):Dynamic;
	public function __rmul__(other:Dynamic):Dynamic;
	public function __rsub__(other:Dynamic):Dynamic;
	public function __rtruediv__(other:Dynamic):Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	public function __setstate__(state:Dynamic):Dynamic;
	public function __setstate_cython__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Size of object in memory, in bytes.
	**/
	public function __sizeof__():Dynamic;
	/**
		Return str(self).
	**/
	public function __str__():Dynamic;
	public function __sub__(other:Dynamic):Dynamic;
	/**
		Abstract classes can override this to customize issubclass().
		
		This is invoked early on by abc.ABCMeta.__subclasscheck__().
		It should return True, False or NotImplemented.  If it returns
		NotImplemented, the normal algorithm is used.  Otherwise, it
		overrides the normal algorithm (and the outcome is cached).
	**/
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __truediv__(other:Dynamic):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
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
	static public var _req_any_kwargs_new : Dynamic;
	public function _round(freq:Dynamic, mode:Dynamic):Dynamic;
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
		Return a new Timedelta ceiled to this resolution.
		
		Parameters
		----------
		freq : str
		    Frequency string indicating the ceiling resolution.
	**/
	public function ceil(freq:Dynamic):Dynamic;
	/**
		Return a components namedtuple-like.
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
	/**
		Return a new Timedelta floored to this resolution.
		
		Parameters
		----------
		freq : str
		    Frequency string indicating the flooring resolution.
	**/
	public function floor(freq:Dynamic):Dynamic;
	public var freq : Dynamic;
	public var is_populated : Dynamic;
	/**
		Format Timedelta as ISO 8601 Duration like
		``P[n]Y[n]M[n]DT[n]H[n]M[n]S``, where the ``[n]`` s are replaced by the
		values. See https://en.wikipedia.org/wiki/ISO_8601#Durations.
		
		Returns
		-------
		str
		
		See Also
		--------
		Timestamp.isoformat : Function is used to convert the given
		    Timestamp object into the ISO format.
		
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
		'P0DT1H0M10S'
		>>> pd.Timedelta(days=500.5).isoformat()
		'P500DT12H0M0S'
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
	static public var resolution : Dynamic;
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
		>>> td.resolution_string
		'N'
		
		>>> td = pd.Timedelta('1 days 2 min 3 us')
		>>> td.resolution_string
		'U'
		
		>>> td = pd.Timedelta('2 min 3 s')
		>>> td.resolution_string
		'S'
		
		>>> td = pd.Timedelta(36, unit='us')
		>>> td.resolution_string
		'U'
	**/
	public var resolution_string : Dynamic;
	/**
		Round the Timedelta to the specified resolution.
		
		Parameters
		----------
		freq : str
		    Frequency string indicating the rounding resolution.
		
		Returns
		-------
		a new Timedelta rounded to the given resolution of `freq`
		
		Raises
		------
		ValueError if the freq cannot be converted
	**/
	public function round(freq:Dynamic):Dynamic;
	/**
		Number of seconds (>= 0 and less than 1 day).
	**/
	public var seconds : Dynamic;
	/**
		Convert the Timedelta to a NumPy timedelta64.
		
		.. versionadded:: 0.25.0
		
		This is an alias method for `Timedelta.to_timedelta64()`. The dtype and
		copy parameters are available here only for compatibility. Their values
		will not affect the return value.
		
		Returns
		-------
		numpy.timedelta64
		
		See Also
		--------
		Series.to_numpy : Similar method for Series.
	**/
	public function to_numpy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Convert a pandas Timedelta object into a python ``datetime.timedelta`` object.
		
		Timedelta objects are internally saved as numpy datetime64[ns] dtype.
		Use to_pytimedelta() to convert to object dtype.
		
		Returns
		-------
		datetime.timedelta or numpy.array of datetime.timedelta
		
		See Also
		--------
		to_timedelta : Convert argument to Timedelta type.
		
		Notes
		-----
		Any nanosecond resolution will be lost.
	**/
	public function to_pytimedelta(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return a numpy.timedelta64 object with 'ns' precision.
	**/
	public function to_timedelta64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Total seconds in the duration.
	**/
	public function total_seconds(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var value : Dynamic;
	/**
		Array view compatibility.
	**/
	public function view(args:haxe.extern.Rest<Dynamic>):Dynamic;
}