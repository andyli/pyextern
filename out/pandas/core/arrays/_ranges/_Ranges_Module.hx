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
	/**
		Generates a sequence of dates corresponding to the specified time
		offset. Similar to dateutil.rrule except uses pandas DateOffset
		objects to represent time increments.
		
		Parameters
		----------
		start : datetime (default None)
		end : datetime (default None)
		periods : int, (default None)
		offset : DateOffset, (default BDay())
		
		Notes
		-----
		* This method is faster for generating weekdays than dateutil.rrule
		* At least two of (start, end, periods) must be specified.
		* If both start and end are specified, the returned dates will
		satisfy start <= date <= end.
		
		Returns
		-------
		dates : generator object
	**/
	static public function generate_range(?start:Dynamic, ?end:Dynamic, ?periods:Dynamic, ?offset:Dynamic):Dynamic;
	/**
		Generate a range of dates with the spans between dates described by
		the given `freq` DateOffset.
		
		Parameters
		----------
		start : Timestamp or None
		    first point of produced date range
		end : Timestamp or None
		    last point of produced date range
		periods : int
		    number of periods in produced date range
		freq : DateOffset
		    describes space between dates in produced date range
		
		Returns
		-------
		ndarray[np.int64] representing nanosecond unix timestamps
	**/
	static public function generate_regular_range(start:Dynamic, end:Dynamic, periods:Dynamic, freq:Dynamic):Dynamic;
}