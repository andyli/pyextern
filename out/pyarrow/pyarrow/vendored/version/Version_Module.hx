/* This file is generated, do not edit! */
package pyarrow.vendored.version;
@:pythonImport("pyarrow.vendored.version") extern class Version_Module {
	static public var Infinity : Dynamic;
	static public var NegativeInfinity : Dynamic;
	static public var VERSION_PATTERN : Dynamic;
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
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
	/**
		Parse the given version string and return either a :class:`Version` object
		or a :class:`LegacyVersion` object depending on if the given version is
		a valid PEP 440 version or a legacy version.
	**/
	static public function parse(version:Dynamic):Dynamic;
}