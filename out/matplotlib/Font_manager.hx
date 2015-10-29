/* This file is generated, do not edit! */
package matplotlib;
@:pythonImport("matplotlib.font_manager") extern class Font_manager {
	static public var MSFolders : Dynamic;
	static public var MSFontDirectories : Dynamic;
	static public var OSXFontDirectories : Dynamic;
	/**
		Get list of font files on OS X - ignores font suffix by default.
	**/
	static public function OSXInstalledFonts(?directories:Dynamic, ?fontext:Dynamic):Dynamic;
	static public var USE_FONTCONFIG : Dynamic;
	static public var X11FontDirectories : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _fmcache : Dynamic;
	static public var _is_opentype_cff_font_cache : Dynamic;
	static public var _lookup_cache : Dynamic;
	static public function _rebuild():Dynamic;
	static public var absolute_import : Dynamic;
	/**
		A function for populating a :class:`FontKey` instance by
		extracting information from the AFM font file.
		
		*font* is a class:`AFM` instance.
	**/
	static public function afmFontProperty(fontpath:Dynamic, font:Dynamic):Dynamic;
	static public var cachedir : Dynamic;
	/**
		A function to create a font lookup list.  The default is to create
		a list of TrueType fonts.  An AFM font list can optionally be
		created.
	**/
	static public function createFontList(fontfiles:Dynamic, ?fontext:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Search for fonts in the specified font paths.  If no paths are
		given, will use a standard set of system paths, as well as the
		list of fonts tracked by fontconfig if fontconfig is installed and
		available.  A list of TrueType fonts are returned by default with
		AFM fonts as an option.
	**/
	static public function findSystemFonts(?fontpaths:Dynamic, ?fontext:Dynamic):Dynamic;
	static public function findfont(prop:Dynamic, kw:Dynamic):Dynamic;
	static public var fontManager : Dynamic;
	static public var font_family_aliases : Dynamic;
	static public var font_scalings : Dynamic;
	/**
		Given a dictionary of key/value pairs, generates a fontconfig
		pattern string.
	**/
	static public function generate_fontconfig_pattern(d:Dynamic):Dynamic;
	/**
		Return the location of the cache directory.
		
		The procedure used to find the directory is the same as for
		_get_config_dir, except using `$XDG_CACHE_HOME`/`~/.cache` instead.
	**/
	static public function get_cachedir(args:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Grab a list of all the fonts that are being tracked by fontconfig
		by making a system call to ``fc-list``.  This is an easy way to
		grab all of the fonts the user wants to be made available to
		applications, without needing knowing where all of them reside.
	**/
	static public function get_fontconfig_fonts(?fontext:Dynamic):Dynamic;
	/**
		Return a list of file extensions extensions that are synonyms for
		the given file extension *fileext*.
	**/
	static public function get_fontext_synonyms(fontext:Dynamic):Dynamic;
	static public var home : Dynamic;
	/**
		Returns True if the given font is a Postscript Compact Font Format
		Font embedded in an OpenType wrapper.  Used by the PostScript and
		PDF backends that can not subset these fonts.
	**/
	static public function is_opentype_cff_font(filename:Dynamic):Dynamic;
	/**
		Return True if *obj* looks like a string
	**/
	static public function is_string_like(obj:Dynamic):Dynamic;
	/**
		Return a list of all fonts matching any of the extensions,
		possibly upper-cased, found recursively under the directory.
	**/
	static public function list_fonts(directory:Dynamic, extensions:Dynamic):Dynamic;
	/**
		Parse the given fontconfig *pattern* and return a dictionary
		of key/value pairs useful for initializing a
		:class:`font_manager.FontProperties` object.
	**/
	static public function parse_fontconfig_pattern(pattern:Dynamic):Dynamic;
	static public var path : Dynamic;
	/**
		Equivalent to pickle.dump(data, open(filename, 'w'))
		but closes the file to prevent filehandle leakage.
	**/
	static public function pickle_dump(data:Dynamic, filename:Dynamic):Dynamic;
	/**
		Equivalent to pickle.load(open(filename, 'r'))
		but closes the file to prevent filehandle leakage.
	**/
	static public function pickle_load(filename:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public var rcParams : Dynamic;
	static public var stretch_dict : Dynamic;
	/**
		A function for populating the :class:`FontKey` by extracting
		information from the TrueType font file.
		
		*font* is a :class:`FT2Font` instance.
	**/
	static public function ttfFontProperty(font:Dynamic):Dynamic;
	/**
		flatten a ttfdict to all the filenames it contains
	**/
	static public function ttfdict_to_fnames(d:Dynamic):Dynamic;
	static public var unicode_literals : Dynamic;
	static public var verbose : Dynamic;
	/**
		Return the weight property as a numeric value.  String values
		are converted to their corresponding numeric value.
	**/
	static public function weight_as_number(weight:Dynamic):Dynamic;
	static public var weight_dict : Dynamic;
	/**
		Return the user-specified font directory for Win32.  This is
		looked up from the registry key::
		
		  \HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders\Fonts
		
		If the key is not found, $WINDIR/Fonts will be returned.
	**/
	static public function win32FontDirectory():Dynamic;
	/**
		Search for fonts in the specified font directory, or use the
		system directories if none given.  A list of TrueType font
		filenames are returned by default, or AFM fonts if *fontext* ==
		'afm'.
	**/
	static public function win32InstalledFonts(?directory:Dynamic, ?fontext:Dynamic):Dynamic;
}