/* This file is generated, do not edit! */
package docutils.languages;
@:pythonImport("docutils.languages") extern class Languages_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __docformat__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function get_language(language_code:Dynamic, ?reporter:Dynamic):Dynamic;
	/**
		Import a module.
		
		The 'package' argument is required when performing a relative import. It
		specifies the package to use as the anchor point from which to resolve the
		relative import to an absolute import.
	**/
	static public function import_module(name:Dynamic, ?_package:Dynamic):Dynamic;
	/**
		Return a list of normalized combinations for a `BCP 47` language tag.
		
		Example:
		
		>>> from docutils.utils import normalize_language_tag
		>>> normalize_language_tag('de_AT-1901')
		['de-at-1901', 'de-at', 'de-1901', 'de']
		>>> normalize_language_tag('de-CH-x_altquot')
		['de-ch-x-altquot', 'de-ch', 'de-x-altquot', 'de']
	**/
	static public function normalize_language_tag(tag:Dynamic):Dynamic;
}