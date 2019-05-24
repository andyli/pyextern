/* This file is generated, do not edit! */
package pandas._libs.tslibs.timestamps;
@:pythonImport("pandas._libs.tslibs.timestamps") extern class Timestamps_Module {
	static public var DAY_SECONDS : Dynamic;
	static public var UTC : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __pyx_capi__ : Dynamic;
	static public function __pyx_unpickle_Enum(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __spec__ : Dynamic;
	static public var __test__ : Dynamic;
	static public var _no_input : Dynamic;
	static public var _zero_time : Dynamic;
	/**
		Given a int64-based datetime index, return array of strings of date
		name based on requested field (e.g. weekday_name)
	**/
	static public function get_date_name_field(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Given an int64-based datetime index return array of indicators
		of whether timestamps are at the start/end of the month/quarter/year
		(defined by frequency).
	**/
	static public function get_start_end_field(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function maybe_integer_op_deprecated(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Normalize each of the (nanosecond) timezone aware timestamps in the given
		array by rounding down to the beginning of the day (i.e. midnight).
		This is midnight for timezone, `tz`.
		
		Parameters
		----------
		stamps : int64 ndarray
		tz : tzinfo or None
		
		Returns
		-------
		result : int64 ndarray of converted of normalized nanosecond timestamps
	**/
	static public function normalize_i8_timestamps(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		divmod(x1, x2[, out1, out2], / [, out=(None, None)], *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Return element-wise quotient and remainder simultaneously.
		
		.. versionadded:: 1.13.0
		
		``np.divmod(x, y)`` is equivalent to ``(x // y, x % y)``, but faster
		because it avoids redundant work. It is used to implement the Python
		built-in function ``divmod`` on NumPy arrays.
		
		Parameters
		----------
		x1 : array_like
		    Dividend array.
		x2 : array_like
		    Divisor array.
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or `None`,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    Values of True indicate to calculate the ufunc at that position, values
		    of False indicate to leave the value in the output alone.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		out1 : ndarray
		    Element-wise quotient resulting from floor division.
		    This is a scalar if both `x1` and `x2` are scalars.
		out2 : ndarray
		    Element-wise remainder from floor division.
		    This is a scalar if both `x1` and `x2` are scalars.
		
		See Also
		--------
		floor_divide : Equivalent to Python's ``//`` operator.
		remainder : Equivalent to Python's ``%`` operator.
		modf : Equivalent to ``divmod(x, 1)`` for positive ``x`` with the return
		       values switched.
		
		Examples
		--------
		>>> np.divmod(np.arange(5), 3)
		(array([0, 0, 0, 1, 1]), array([0, 1, 2, 0, 1]))
	**/
	static public function npdivmod(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Applies rounding mode at given frequency
		
		Parameters
		----------
		values : :obj:`ndarray`
		mode : instance of `RoundTo` enumeration
		freq : str, obj
		
		Returns
		-------
		:obj:`ndarray`
	**/
	static public function round_nsint64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Localize tzinfo-naive i8 to given time zone (using pytz). If
		there are ambiguities in the values, raise AmbiguousTimeError.
		
		Parameters
		----------
		vals : ndarray[int64_t]
		tz : tzinfo or None
		ambiguous : str, bool, or arraylike
		    When clocks moved backward due to DST, ambiguous times may arise.
		    For example in Central European Time (UTC+01), when going from 03:00
		    DST to 02:00 non-DST, 02:30:00 local time occurs both at 00:30:00 UTC
		    and at 01:30:00 UTC. In such a situation, the `ambiguous` parameter
		    dictates how ambiguous times should be handled.
		
		    - 'infer' will attempt to infer fall dst-transition hours based on
		      order
		    - bool-ndarray where True signifies a DST time, False signifies a
		      non-DST time (note that this flag is only applicable for ambiguous
		      times, but the array must have the same length as vals)
		    - bool if True, treat all vals as DST. If False, treat them as non-DST
		    - 'NaT' will return NaT where there are ambiguous times
		
		nonexistent : {None, "NaT", "shift_forward", "shift_backward", "raise",
		               timedelta-like}
		    How to handle non-existent times when converting wall times to UTC
		
		    .. versionadded:: 0.24.0
		
		Returns
		-------
		localized : ndarray[int64_t]
	**/
	static public function tz_localize_to_utc(args:haxe.extern.Rest<Dynamic>):Dynamic;
}