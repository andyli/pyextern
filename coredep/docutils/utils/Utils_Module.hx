/* This file is generated, do not edit! */
package docutils.utils;
@:pythonImport("docutils.utils") extern class Utils_Module {
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
	static public var __version_info__ : Dynamic;
	/**
		Return a mapping of option names to values.
		
		:Parameters:
		    - `option_list`: A list of (name, value) pairs (the output of
		      `extract_options()`).
		    - `options_spec`: Dictionary mapping known option names to a
		      conversion function such as `int` or `float`.
		
		:Exceptions:
		    - `KeyError` for unknown option names.
		    - `DuplicateOptionError` for duplicate options.
		    - `ValueError` for invalid option values (raised by conversion
		       function).
		    - `TypeError` for invalid option value types (raised by conversion
		       function).
	**/
	static public function assemble_option_dict(option_list:Dynamic, options_spec:Dynamic):Dynamic;
	static public function clean_rcs_keywords(paragraph:Dynamic, keyword_substitutions:Dynamic):Dynamic;
	/**
		Indices of Unicode string `text` when skipping combining characters.
		
		>>> from docutils.utils import column_indices
		>>> column_indices(u'A t̆ab̆lĕ')
		[0, 1, 2, 4, 5, 7, 8]
	**/
	static public function column_indices(text:Dynamic):Dynamic;
	/**
		Return the column width of text.
		
		Correct ``len(text)`` for wide East Asian and combining Unicode chars.
	**/
	static public function column_width(text:Dynamic):Dynamic;
	/**
		Ensure `path` is Unicode. Return `nodes.reprunicode` object.
		
		Decode file/path string in a failsafe manner if not already done.
	**/
	static public function decode_path(path:Dynamic):Dynamic;
	static public var east_asian_widths : Dynamic;
	/**
		Return a string with escape-backslashes converted to nulls.
	**/
	static public function escape2null(text:Dynamic):Dynamic;
	/**
		Return a dictionary mapping extension option names to converted values.
		
		:Parameters:
		    - `field_list`: A flat field list without field arguments, where each
		      field body consists of a single paragraph only.
		    - `options_spec`: Dictionary mapping known option names to a
		      conversion function such as `int` or `float`.
		
		:Exceptions:
		    - `KeyError` for unknown option names.
		    - `ValueError` for invalid option values (raised by the conversion
		       function).
		    - `TypeError` for invalid option value types (raised by conversion
		       function).
		    - `DuplicateOptionError` for duplicate options.
		    - `BadOptionError` for invalid fields.
		    - `BadOptionDataError` for invalid option data (missing name,
		      missing data, bad quotes, etc.).
	**/
	static public function extract_extension_options(field_list:Dynamic, options_spec:Dynamic):Dynamic;
	/**
		Return a list of (name, value) from a line of the form "name=value ...".
		
		:Exception:
		    `NameValueError` for invalid input (missing name, missing data, bad
		    quotes, etc.).
	**/
	static public function extract_name_value(line:Dynamic):Dynamic;
	/**
		Return a list of option (name, value) pairs from field names & bodies.
		
		:Parameter:
		    `field_list`: A flat field list, where each field name is a single
		    word and each field body consists of a single paragraph only.
		
		:Exceptions:
		    - `BadOptionError` for invalid fields.
		    - `BadOptionDataError` for invalid option data (missing name,
		      missing data, bad quotes, etc.).
	**/
	static public function extract_options(field_list:Dynamic):Dynamic;
	/**
		Return indices of all combining chars in  Unicode string `text`.
		
		>>> from docutils.utils import find_combining_chars
		>>> find_combining_chars(u'A t̆ab̆lĕ')
		[3, 6, 9]
	**/
	static public function find_combining_chars(text:Dynamic):Dynamic;
	/**
		Search for `path` in the list of directories `dirs`.
		
		Return the first expansion that matches an existing file.
	**/
	static public function find_file_in_dirs(path:Dynamic, dirs:Dynamic):Dynamic;
	/**
		Return the "source" and "line" attributes from the `node` given or from
		its closest ancestor.
	**/
	static public function get_source_line(node:Dynamic):Dynamic;
	/**
		Retrieve list of stylesheet references from the settings object.
	**/
	static public function get_stylesheet_list(settings:Dynamic):Dynamic;
	/**
		Retrieve a stylesheet reference from the settings object.
		
		Deprecated. Use get_stylesheet_list() instead to
		enable specification of multiple stylesheets as a comma-separated
		list.
	**/
	static public function get_stylesheet_reference(settings:Dynamic, ?relative_to:Dynamic):Dynamic;
	/**
		Return whether or not to trim footnote space.
		
		If trim_footnote_reference_space is not None, return it.
		
		If trim_footnote_reference_space is None, return False unless the
		footnote reference style is 'superscript'.
	**/
	static public function get_trim_footnote_ref_space(settings:Dynamic):Dynamic;
	/**
		Return a new empty document object.
		
		:Parameters:
		    `source_path` : string
		        The path to or description of the source text of the document.
		    `settings` : optparse.Values object
		        Runtime settings.  If none are provided, a default core set will
		        be used.  If you will use the document object with any Docutils
		        components, you must provide their default settings as well.  For
		        example, if parsing rST, at least provide the rst-parser settings,
		        obtainable as follows::
		
		            settings = docutils.frontend.OptionParser(
		                components=(docutils.parsers.rst.Parser,)
		                ).get_default_values()
	**/
	static public function new_document(source_path:Dynamic, ?settings:Dynamic):Dynamic;
	/**
		Return a new Reporter object.
		
		:Parameters:
		    `source` : string
		        The path to or description of the source text of the document.
		    `settings` : optparse.Values object
		        Runtime settings.
	**/
	static public function new_reporter(source_path:Dynamic, settings:Dynamic):Dynamic;
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
	/**
		Build and return a path to `target`, relative to `source` (both files).
		
		If there is no common prefix, return the absolute path to `target`.
	**/
	static public function relative_path(source:Dynamic, target:Dynamic):Dynamic;
	static public var release_level_abbreviations : Dynamic;
	/**
		Split `text` on escaped whitespace (null+space or null+newline).
		Return a list of strings.
	**/
	static public function split_escaped_whitespace(text:Dynamic):Dynamic;
	static public function strip_combining_chars(text:Dynamic):Dynamic;
	/**
		Return a string with nulls removed or restored to backslashes.
		Backslash-escaped spaces are also removed.
	**/
	static public function unescape(text:Dynamic, ?restore_backslashes:Dynamic, ?respect_whitespace:Dynamic):Dynamic;
	static public function uniq(L:Dynamic):Dynamic;
	/**
		Return a version identifier string built from `version_info`, a
		`docutils.VersionInfo` namedtuple instance or compatible tuple. If
		`version_info` is not provided, by default return a version identifier
		string based on `docutils.__version_info__` (i.e. the current Docutils
		version).
	**/
	static public function version_identifier(?version_info:Dynamic):Dynamic;
}