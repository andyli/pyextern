/* This file is generated, do not edit! */
package matplotlib.font_manager;
@:pythonImport("matplotlib.font_manager") extern class Font_manager_Module {
	static public var MSFolders : Dynamic;
	static public var MSFontDirectories : Dynamic;
	static public var MSUserFontDirectories : Dynamic;
	static public var OSXFontDirectories : Dynamic;
	/**
		[*Deprecated*] Get list of font files on OS X.
		
		Notes
		-----
		.. deprecated:: 3.1
		   
	**/
	static public function OSXInstalledFonts(?directories:Dynamic, ?fontext:Dynamic):Dynamic;
	static public var X11FontDirectories : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Cache and list the font filenames known to `fc-list`.
		    
	**/
	static public function _call_fc_list():Dynamic;
	static public var _fmcache : Dynamic;
	/**
		FT2Font(ttffile)
		
		Create a new FT2Font object
		The following global font attributes are defined:
		  num_faces              number of faces in file
		  face_flags             face flags  (int type); see the ft2font constants
		  style_flags            style flags  (int type); see the ft2font constants
		  num_glyphs             number of glyphs in the face
		  family_name            face family name
		  style_name             face style name
		  num_fixed_sizes        number of bitmap in the face
		  scalable               face is scalable
		
		The following are available, if scalable is true:
		  bbox                   face global bounding box (xmin, ymin, xmax, ymax)
		  units_per_EM           number of font units covered by the EM
		  ascender               ascender in 26.6 units
		  descender              descender in 26.6 units
		  height                 height in 26.6 units; used to compute a default
		                         line spacing (baseline-to-baseline distance)
		  max_advance_width      maximum horizontal cursor advance for all glyphs
		  max_advance_height     same for vertical layout
		  underline_position     vertical position of the underline bar
		  underline_thickness    vertical thickness of the underline
		  postscript_name        PostScript name of the font
	**/
	static public function _get_font(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _json_decode(o:Dynamic):Dynamic;
	static public var _log : Dynamic;
	static public function _normalize_font_family(family:Dynamic):Dynamic;
	static public function _rebuild():Dynamic;
	/**
		Searches for fonts in the Windows registry.
		
		Parameters
		----------
		reg_domain : int
		    The top level registry domain (e.g. HKEY_LOCAL_MACHINE).
		
		base_dir : str
		    The path to the folder where the font files are usually located (e.g.
		    C:\Windows\Fonts). If only the filename of the font is stored in the
		    registry, the absolute path is built relative to this base directory.
		
		Returns
		-------
		`set`
		    `pathlib.Path` objects with the absolute path to the font files found.
	**/
	static public function _win32RegistryFonts(reg_domain:Dynamic, base_dir:Dynamic):Dynamic;
	/**
		Extract information from an AFM font file.
		
		Parameters
		----------
		font : `.AFM`
		    The AFM font file from which information will be extracted.
		
		Returns
		-------
		`FontEntry`
		    The extracted font properties.
	**/
	static public function afmFontProperty(fontpath:Dynamic, font:Dynamic):Dynamic;
	/**
		A function to create a font lookup list.  The default is to create
		a list of TrueType fonts.  An AFM font list can optionally be
		created.
	**/
	static public function createFontList(fontfiles:Dynamic, ?fontext:Dynamic):Dynamic;
	/**
		Search for fonts in the specified font paths.  If no paths are
		given, will use a standard set of system paths, as well as the
		list of fonts tracked by fontconfig if fontconfig is installed and
		available.  A list of TrueType fonts are returned by default with
		AFM fonts as an option.
	**/
	static public function findSystemFonts(?fontpaths:Dynamic, ?fontext:Dynamic):Dynamic;
	/**
		Find a font that most closely matches the given font properties.
		
		Parameters
		----------
		prop : str or `~matplotlib.font_manager.FontProperties`
		    The font properties to search for. This can be either a
		    `.FontProperties` object or a string defining a
		    `fontconfig patterns`_.
		
		fontext : {'ttf', 'afm'}, optional, default: 'ttf'
		    The extension of the font file:
		
		    - 'ttf': TrueType and OpenType fonts (.ttf, .ttc, .otf)
		    - 'afm': Adobe Font Metrics (.afm)
		
		directory : str, optional
		    If given, only search this directory and its subdirectories.
		fallback_to_default : bool
		    If True, will fallback to the default font family (usually
		    "DejaVu Sans" or "Helvetica") if the first lookup hard-fails.
		rebuild_if_missing : bool
		    Whether to rebuild the font cache and search again if no match
		    is found.
		
		Returns
		-------
		fontfile : str
		    The filename of the best matching font.
		
		Notes
		-----
		This performs a nearest neighbor search.  Each font is given a
		similarity score to the target font properties.  The first font with
		the highest score is returned.  If no matches below a certain
		threshold are found, the default font (usually DejaVu Sans) is
		returned.
		
		The result is cached, so subsequent lookups don't have to
		perform the O(n) nearest neighbor search.
		
		See the `W3C Cascading Style Sheet, Level 1
		<http://www.w3.org/TR/1998/REC-CSS2-19980512/>`_ documentation
		for a description of the font finding algorithm.
		
		.. _fontconfig patterns:
		   https://www.freedesktop.org/software/fontconfig/fontconfig-user.html
	**/
	static public function findfont(prop:Dynamic, ?fontext:Dynamic, ?directory:Dynamic, ?fallback_to_default:Dynamic, ?rebuild_if_missing:Dynamic):String;
	static public var fontManager : Dynamic;
	static public var font_family_aliases : Dynamic;
	static public var font_scalings : Dynamic;
	/**
		Given a dictionary of key/value pairs, generates a fontconfig
		pattern string.
	**/
	static public function generate_fontconfig_pattern(d:Dynamic):Dynamic;
	static public function get_font(filename:Dynamic, ?hinting_factor:Dynamic):Dynamic;
	/**
		List the font filenames known to `fc-list` having the given extension.
		    
	**/
	static public function get_fontconfig_fonts(?fontext:Dynamic):Dynamic;
	/**
		Return a list of file extensions extensions that are synonyms for
		the given file extension *fileext*.
	**/
	static public function get_fontext_synonyms(fontext:Dynamic):Dynamic;
	/**
		Return whether the given font is a Postscript Compact Font Format Font
		embedded in an OpenType wrapper.  Used by the PostScript and PDF backends
		that can not subset these fonts.
	**/
	static public function is_opentype_cff_font(filename:Dynamic):Dynamic;
	/**
		Dumps a data structure as JSON in the named file.
		
		Handles FontManager and its fields.  File paths that are children of the
		Matplotlib data path (typically, fonts shipped with Matplotlib) are stored
		relative to that data path (to remain valid across virtualenvs).
	**/
	static public function json_dump(data:Dynamic, filename:Dynamic):Dynamic;
	/**
		Loads a data structure as JSON from the named file.
		
		Handles FontManager and its fields.  Relative file paths are interpreted
		as being relative to the Matplotlib data path, and transformed into
		absolute paths.
	**/
	static public function json_load(filename:Dynamic):Dynamic;
	/**
		Return a list of all fonts matching any of the extensions, found
		recursively under the directory.
	**/
	static public function list_fonts(directory:Dynamic, extensions:Dynamic):Dynamic;
	/**
		Least-recently-used cache decorator.
		
		If *maxsize* is set to None, the LRU features are disabled and the cache
		can grow without bound.
		
		If *typed* is True, arguments of different types will be cached separately.
		For example, f(3.0) and f(3) will be treated as distinct calls with
		distinct results.
		
		Arguments to the cached function must be hashable.
		
		View the cache statistics named tuple (hits, misses, maxsize, currsize)
		with f.cache_info().  Clear the cache and statistics with f.cache_clear().
		Access the underlying function with f.__wrapped__.
		
		See:  http://en.wikipedia.org/wiki/Cache_algorithms#Least_Recently_Used
	**/
	static public function lru_cache(?maxsize:Dynamic, ?typed:Dynamic):Dynamic;
	/**
		Parse the given fontconfig *pattern* and return a dictionary
		of key/value pairs useful for initializing a
		:class:`font_manager.FontProperties` object.
	**/
	static public function parse_fontconfig_pattern(pattern:Dynamic):Dynamic;
	static public var rcParams : Dynamic;
	static public var stretch_dict : Dynamic;
	/**
		Extract information from a TrueType font file.
		
		Parameters
		----------
		font : `.FT2Font`
		    The TrueType font file from which information will be extracted.
		
		Returns
		-------
		`FontEntry`
		    The extracted font properties.
	**/
	static public function ttfFontProperty(font:Dynamic):Dynamic;
	static public var weight_dict : Dynamic;
	/**
		Return the user-specified font directory for Win32.  This is
		looked up from the registry key::
		
		  \\HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders\Fonts
		
		If the key is not found, ``%WINDIR%\Fonts`` will be returned.
	**/
	static public function win32FontDirectory():Dynamic;
	/**
		Search for fonts in the specified font directory, or use the
		system directories if none given. Additionally, it is searched for user
		fonts installed. A list of TrueType font filenames are returned by default,
		or AFM fonts if *fontext* == 'afm'.
	**/
	static public function win32InstalledFonts(?directory:Dynamic, ?fontext:Dynamic):Dynamic;
}