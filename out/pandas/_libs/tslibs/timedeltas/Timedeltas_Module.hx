/* This file is generated, do not edit! */
package pandas._libs.tslibs.timedeltas;
@:pythonImport("pandas._libs.tslibs.timedeltas") extern class Timedeltas_Module {
	static public var DAY_SECONDS : Dynamic;
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
	static public var nat_strings : Dynamic;
	/**
		Parameters
		----------
		unit : an unit string
	**/
	static public function parse_timedelta_unit(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return a casting of the unit represented to nanoseconds + the precision
		to round the fractional part.
	**/
	static public function precision_from_unit(args:haxe.extern.Rest<Dynamic>):Dynamic;
}