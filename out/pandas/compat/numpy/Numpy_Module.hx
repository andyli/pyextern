/* This file is generated, do not edit! */
package pandas.compat.numpy;
@:pythonImport("pandas.compat.numpy") extern class Numpy_Module {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _nlv : Dynamic;
	static public var _np_version : Dynamic;
	static public var _np_version_under1p10 : Dynamic;
	static public var _np_version_under1p11 : Dynamic;
	static public var _np_version_under1p12 : Dynamic;
	static public var _np_version_under1p13 : Dynamic;
	static public var _np_version_under1p14 : Dynamic;
	static public var _np_version_under1p15 : Dynamic;
	static public var _tz_regex : Dynamic;
	/**
		provide compat for construction of an array of strings to a
		np.array(..., dtype=np.datetime64(..))
		tz-changes in 1.11 that make '2015-01-01 09:00:00Z' show a deprecation
		warning, when need to pass '2015-01-01 09:00:00'
	**/
	static public function np_array_datetime64_compat(arr:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		provide compat for construction of strings to numpy datetime64's with
		tz-changes in 1.11 that make '2015-01-01 09:00:00Z' show a deprecation
		warning, when need to pass '2015-01-01 09:00:00'
	**/
	static public function np_datetime64_compat(s:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var string_and_binary_types : Dynamic;
	static public var string_types : Dynamic;
	static public function tz_replacer(s:Dynamic):Dynamic;
}