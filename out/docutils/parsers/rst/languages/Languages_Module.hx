/* This file is generated, do not edit! */
package docutils.parsers.rst.languages;
@:pythonImport("docutils.parsers.rst.languages") extern class Languages_Module {
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
	static public var _languages : Dynamic;
	static public function get_language(language_code:Dynamic):Dynamic;
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