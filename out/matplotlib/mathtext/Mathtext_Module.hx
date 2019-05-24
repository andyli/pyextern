/* This file is generated, do not edit! */
package matplotlib.mathtext;
@:pythonImport("matplotlib.mathtext") extern class Mathtext_Module {
	/**
		Helper class to raise parser errors.
	**/
	static public function Error(msg:Dynamic):Dynamic;
	static public var GROW_FACTOR : Dynamic;
	static public var KERNING_DEFAULT : Dynamic;
	static public var LOAD_NO_HINTING : Dynamic;
	static public var NUM_SIZE_LEVELS : Dynamic;
	static public var SHRINK_FACTOR : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _font_constant_mapping : Dynamic;
	static public function _get_font_constant_set(state:Dynamic):Dynamic;
	static public var _log : Dynamic;
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
	static public function get_data_path():Dynamic;
	static public function get_font(filename:Dynamic, ?hinting_factor:Dynamic):Dynamic;
	static public function get_realpath_and_stat(path:Dynamic):Dynamic;
	/**
		Return the integer index (from the Unicode table) of *symbol*.
		
		Parameters
		----------
		symbol : str
		    A single unicode character, a TeX command (e.g. r'\pi') or a Type1
		    symbol name (e.g. 'phi').
		math : bool, default is True
		    If False, always treat as a single unicode character.
	**/
	static public function get_unicode_index(symbol:Dynamic, ?math:Dynamic):Dynamic;
	static public var latex_to_bakoma : Dynamic;
	static public var latex_to_cmex : Dynamic;
	static public var latex_to_standard : Dynamic;
	/**
		Given a math expression, renders it in a closely-clipped bounding
		box to an image file.
		
		*s*
		   A math expression.  The math portion should be enclosed in
		   dollar signs.
		
		*filename_or_obj*
		   A filepath or writable file-like object to write the image data
		   to.
		
		*prop*
		   If provided, a FontProperties() object describing the size and
		   style of the text.
		
		*dpi*
		   Override the output dpi, otherwise use the default associated
		   with the output format.
		
		*format*
		   The output format, e.g., 'svg', 'pdf', 'ps' or 'png'.  If not
		   provided, will be deduced from the filename.
	**/
	static public function math_to_image(s:Dynamic, filename_or_obj:Dynamic, ?prop:Dynamic, ?dpi:Dynamic, ?format:Dynamic):Dynamic;
	/**
		Returns a new subclass of tuple with named fields.
		
		>>> Point = namedtuple('Point', ['x', 'y'])
		>>> Point.__doc__                   # docstring for the new class
		'Point(x, y)'
		>>> p = Point(11, y=22)             # instantiate with positional args or keywords
		>>> p[0] + p[1]                     # indexable like a plain tuple
		33
		>>> x, y = p                        # unpack like a regular tuple
		>>> x, y
		(11, 22)
		>>> p.x + p.y                       # fields also accessible by name
		33
		>>> d = p._asdict()                 # convert to a dictionary
		>>> d['x']
		11
		>>> Point(**d)                      # convert from a dictionary
		Point(x=11, y=22)
		>>> p._replace(x=100)               # _replace() is like str.replace() but targets named fields
		Point(x=100, y=22)
	**/
	static public function namedtuple(typename:Dynamic, field_names:Dynamic, ?verbose:Dynamic, ?rename:Dynamic, ?module:Dynamic):Dynamic;
	/**
		Helper to quickly define a set of alternative Literals, and makes
		sure to do longest-first testing when there is a conflict,
		regardless of the input order, but returns
		a :class:`MatchFirst` for best performance.
		
		Parameters:
		
		 - strs - a string of space-delimited literals, or a collection of
		   string literals
		 - caseless - (default= ``False``) - treat all literals as
		   caseless
		 - useRegex - (default= ``True``) - as an optimization, will
		   generate a Regex object; otherwise, will generate
		   a :class:`MatchFirst` object (if ``caseless=True``, or if
		   creating a :class:`Regex` raises an exception)
		
		Example::
		
		    comp_oper = oneOf("< = > <= >= !=")
		    var = Word(alphas)
		    number = Word(nums)
		    term = var | number
		    comparison_expr = term + comp_oper + term
		    print(comparison_expr.searchString("B = 12  AA=23 B<=AA AA>12"))
		
		prints::
		
		    [['B', '=', '12'], ['AA', '=', '23'], ['B', '<=', 'AA'], ['AA', '>', '12']]
	**/
	static public function oneOf(strs:Dynamic, ?caseless:Dynamic, ?useRegex:Dynamic):Dynamic;
	static public var rcParams : Dynamic;
	static public function ship(ox:Dynamic, oy:Dynamic, box:Dynamic):Dynamic;
	static public var stix_virtual_fonts : Dynamic;
	static public var tex2uni : Dynamic;
	/**
		[*Deprecated*] Return a Unicode string of one character with ordinal i; 0 <= i <= 0x10ffff.
		
		Notes
		-----
		.. deprecated:: 3.0
		   
	**/
	static public function unichr_safe(i:Dynamic):Dynamic;
}