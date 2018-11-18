/* This file is generated, do not edit! */
package pandas._libs.tslibs.timedeltas;
@:pythonImport("pandas._libs.tslibs.timedeltas") extern class Timedeltas_Module {
	static public var NaT : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __pyx_capi__ : Dynamic;
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
	/**
		return a casting of the unit represented to nanoseconds
		round the fractional part of a float to our precision, p 
	**/
	static public function cast_from_unit(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Convert an incoming object to a timedelta64 if possible
		
		Handle these types of objects:
		    - timedelta/Timedelta
		    - timedelta64
		    - an offset
		    - np.int64 (with unit providing a possible modifier)
		    - None/NaT
		
		Return an ns based int64
		
		# kludgy here until we have a timedelta scalar
		# handle the numpy < 1.7 case
	**/
	static public function convert_to_timedelta64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function delta_to_nanoseconds(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var nat_strings : Dynamic;
}