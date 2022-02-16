/* This file is generated, do not edit! */
package pandas.util.version;
@:pythonImport("pandas.util.version") extern class Version_Module {
	/**
		Callable type; Callable[[int], str] is a function of (int) -> str.
		
		The subscription syntax must always be used with exactly two
		values: the argument list and the return type.  The argument list
		must be a list of types or ellipsis; the return type must be a single type.
		
		There is no syntax to indicate optional or keyword arguments,
		such function types are rarely used as callback types.
	**/
	static public function Callable(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function CmpKey(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function InfiniteTypes(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var Infinity : Dynamic;
	static public function Iterator(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function LegacyCmpKey(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function LocalType(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var NegativeInfinity : Dynamic;
	static public function PrePostDevType(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function SubLocalType(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Tuple type; Tuple[X, Y] is the cross-product type of X and Y.
		
		Example: Tuple[T1, T2] is a tuple of two elements corresponding
		to type variables T1 and T2.  Tuple[int, float, str] is a tuple
		of an int, a float and a string.
		
		To specify a variable-length tuple of homogeneous type, use Tuple[T, ...].
	**/
	static public function Tuple(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Union(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var VERSION_PATTERN : Dynamic;
	static public function VersionComparisonMethod(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
	static public function _cmpkey(epoch:Dynamic, release:Dynamic, pre:Dynamic, post:Dynamic, dev:Dynamic, local:Dynamic):Dynamic;
	static public function _legacy_cmpkey(version:Dynamic):Dynamic;
	static public var _legacy_version_component_re : Dynamic;
	static public var _legacy_version_replacement_map : Dynamic;
	static public var _local_version_separators : Dynamic;
	static public function _parse_letter_version(letter:Dynamic, number:Dynamic):Dynamic;
	/**
		Takes a string like abc.1.twelve and turns it into ("abc", 1, "twelve").
	**/
	static public function _parse_local_version(local:Dynamic):Dynamic;
	static public function _parse_version_parts(s:Dynamic):Dynamic;
	static public var annotations : Dynamic;
	/**
		Parse the given version string and return either a :class:`Version` object
		or a :class:`LegacyVersion` object depending on if the given version is
		a valid PEP 440 version or a legacy version.
	**/
	static public function parse(version:Dynamic):Dynamic;
}