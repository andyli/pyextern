/* This file is generated, do not edit! */
package matplotlib.texmanager;
@:pythonImport("matplotlib.texmanager") extern class Texmanager_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _log : Dynamic;
	/**
		Output LaTeX code that loads a package (possibly with an option) if it
		hasn't been loaded yet.
		
		LaTeX cannot load twice a package with different options, so this helper
		can be used to protect against users loading arbitrary packages/options in
		their custom preamble.
	**/
	static public function _usepackage_if_not_loaded(_package:Dynamic, ?option:Dynamic):Dynamic;
	/**
		Parse the given version string and return either a :class:`Version` object
		or a :class:`LegacyVersion` object depending on if the given version is
		a valid PEP 440 version or a legacy version.
	**/
	static public function parse_version(version:Dynamic):Dynamic;
	static public var rcParams : Dynamic;
}