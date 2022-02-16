/* This file is generated, do not edit! */
package pandas._libs.tslibs.timedeltas;
@:pythonImport("pandas._libs.tslibs.timedeltas") extern class Timedeltas_Module {
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __pyx_capi__ : Dynamic;
	static public function __pyx_unpickle_Enum(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function __pyx_unpickle__Timedelta(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __spec__ : Dynamic;
	static public var __test__ : Dynamic;
	static public function _binary_op_method_timedeltalike(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var _no_input : Dynamic;
	static public function _op_unary_method(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Convert an ndarray to an array of timedeltas. If errors == 'coerce',
		coerce non-convertible objects to NaT. Otherwise, raise.
		
		Returns
		-------
		np.ndarray[timedelta64ns]
	**/
	static public function array_to_timedelta64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function delta_to_nanoseconds(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		convert an i8 repr to an ndarray of timedelta or Timedelta (if box ==
		True)
		
		Parameters
		----------
		arr : ndarray[int64_t]
		box : bool, default False
		
		Returns
		-------
		result : ndarray[object]
		    array of Timedelta or timedeltas objects
	**/
	static public function ints_to_pytimedelta(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Parameters
		----------
		unit : str or None
		
		Returns
		-------
		str
		    Canonical unit string.
		
		Raises
		------
		ValueError : on non-parseable input
	**/
	static public function parse_timedelta_unit(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Applies rounding mode at given frequency
		
		Parameters
		----------
		values : np.ndarray[int64_t]`
		mode : instance of `RoundTo` enumeration
		nanos : np.int64
		    Freq to round to, expressed in nanoseconds
		
		Returns
		-------
		np.ndarray[int64_t]
	**/
	static public function round_nsint64(args:haxe.extern.Rest<Dynamic>):Dynamic;
}