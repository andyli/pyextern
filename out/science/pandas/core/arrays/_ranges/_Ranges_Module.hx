/* This file is generated, do not edit! */
package pandas.core.arrays._ranges;
@:pythonImport("pandas.core.arrays._ranges") extern class _Ranges_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Calculate the second endpoint for passing to np.arange, checking
		to avoid an integer overflow.  Catch OverflowError and re-raise
		as OutOfBoundsDatetime.
		
		Parameters
		----------
		endpoint : int
		    nanosecond timestamp of the known endpoint of the desired range
		periods : int
		    number of periods in the desired range
		stride : int
		    nanoseconds between periods in the desired range
		side : {'start', 'end'}
		    which end of the range `endpoint` refers to
		
		Returns
		-------
		other_end : int
		
		Raises
		------
		OutOfBoundsDatetime
	**/
	static public function _generate_range_overflow_safe(endpoint:Dynamic, periods:Dynamic, stride:Dynamic, ?side:Dynamic):Dynamic;
	/**
		A special case for _generate_range_overflow_safe where `periods * stride`
		can be calculated without overflowing int64 bounds.
	**/
	static public function _generate_range_overflow_safe_signed(endpoint:Dynamic, periods:Dynamic, stride:Dynamic, side:Dynamic):Dynamic;
	static public var annotations : Dynamic;
	/**
		Generate a range of dates or timestamps with the spans between dates
		described by the given `freq` DateOffset.
		
		Parameters
		----------
		start : Timedelta, Timestamp or None
		    First point of produced date range.
		end : Timedelta, Timestamp or None
		    Last point of produced date range.
		periods : int
		    Number of periods in produced date range.
		freq : Tick
		    Describes space between dates in produced date range.
		
		Returns
		-------
		ndarray[np.int64] Representing nanoseconds.
	**/
	static public function generate_regular_range(start:Dynamic, end:Dynamic, periods:Dynamic, freq:Dynamic):Dynamic;
	static public var i8max : Dynamic;
	static public var iNaT : Dynamic;
}