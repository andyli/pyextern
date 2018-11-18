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
	static public function findfont(prop:Dynamic, ?kw:python.KwArgs<Dynamic>):Dynamic;
	static public function get_data_path():Dynamic;
	static public function get_font(filename:Dynamic, ?hinting_factor:Dynamic):Dynamic;
	static public function get_realpath_and_stat(path:Dynamic):Dynamic;
	/**
		get_unicode_index(symbol, [bool]) -> integer
		
		Return the integer index (from the Unicode table) of symbol.  *symbol*
		can be a single unicode character, a TeX command (i.e. r'\pi'), or a
		Type1 symbol name (i.e. 'phi').
		If math is False, the current symbol should be treated as a non-math symbol.
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
		Helper to quickly define a set of alternative Literals, and makes sure to do
		longest-first testing when there is a conflict, regardless of the input order,
		but returns a C{L{MatchFirst}} for best performance.
		
		Parameters:
		 - strs - a string of space-delimited literals, or a collection of string literals
		 - caseless - (default=C{False}) - treat all literals as caseless
		 - useRegex - (default=C{True}) - as an optimization, will generate a Regex
		      object; otherwise, will generate a C{MatchFirst} object (if C{caseless=True}, or
		      if creating a C{Regex} raises an exception)
		
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
		.. deprecated:: 3.0
		    The chr function was deprecated in Matplotlib 3.0 and will be removed in 3.2.
		
		Return a Unicode string of one character with ordinal i; 0 <= i <= 0x10ffff.
	**/
	static public function unichr_safe(i:Dynamic):Dynamic;
}