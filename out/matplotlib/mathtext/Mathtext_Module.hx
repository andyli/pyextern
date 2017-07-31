/* This file is generated, do not edit! */
package matplotlib.mathtext;
@:pythonImport("matplotlib.mathtext") extern class Mathtext_Module {
	/**
		Helper class to raise parser errors.
	**/
	static public function Error(msg:Dynamic):Dynamic;
	static public var GROW_FACTOR : Dynamic;
	static public var KERNING_DEFAULT : Dynamic;
	static public var LOAD_FORCE_AUTOHINT : Dynamic;
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
	static public var absolute_import : Dynamic;
	/**
		ceil(x)
		
		Return the ceiling of x as an Integral.
		This is the smallest integer >= x.
	**/
	static public function ceil(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var division : Dynamic;
	static public function findfont(prop:Dynamic, ?kw:python.KwArgs<Dynamic>):Dynamic;
	static public function get_data_path(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		FT2Font(ttffile)
		
		Create a new FT2Font object
		The following global font attributes are defined:
		  num_faces              number of faces in file
		  face_flags             face flags  (int type); see the ft2font constants
		  style_flags            style flags  (int type); see the ft2font constants
		  num_glyphs             number of glyphs in the face
		  family_name            face family name
		  style_name             face syle name
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
	static public function get_font(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function get_realpath_and_stat(path:Dynamic):Dynamic;
	/**
		get_unicode_index(symbol, [bool]) -> integer
		
		Return the integer index (from the Unicode table) of symbol.  *symbol*
		can be a single unicode character, a TeX command (i.e. r'\pi'), or a
		Type1 symbol name (i.e. 'phi').
		If math is False, the current symbol should be treated as a non-math symbol.
	**/
	static public function get_unicode_index(symbol:Dynamic, ?math:Dynamic):Dynamic;
	static public var inf : Dynamic;
	/**
		Return True if *obj* looks like a string
	**/
	static public function is_string_like(obj:Dynamic):Dynamic;
	/**
		isinf(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Test element-wise for positive or negative infinity.
		
		Returns a boolean array of the same shape as `x`, True where ``x ==
		+/-inf``, otherwise False.
		
		Parameters
		----------
		x : array_like
		    Input values
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or `None`,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    Values of True indicate to calculate the ufunc at that position, values
		    of False indicate to leave the value in the output alone.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		y : bool (scalar) or boolean ndarray
		    For scalar input, the result is a new boolean with value True if
		    the input is positive or negative infinity; otherwise the value is
		    False.
		
		    For array input, the result is a boolean array with the same shape
		    as the input and the values are True where the corresponding
		    element of the input is positive or negative infinity; elsewhere
		    the values are False.  If a second argument was supplied the result
		    is stored there.  If the type of that array is a numeric type the
		    result is represented as zeros and ones, if the type is boolean
		    then as False and True, respectively.  The return value `y` is then
		    a reference to that array.
		
		See Also
		--------
		isneginf, isposinf, isnan, isfinite
		
		Notes
		-----
		NumPy uses the IEEE Standard for Binary Floating-Point for Arithmetic
		(IEEE 754).
		
		Errors result if the second argument is supplied when the first
		argument is a scalar, or if the first and second arguments have
		different shapes.
		
		Examples
		--------
		>>> np.isinf(np.inf)
		True
		>>> np.isinf(np.nan)
		False
		>>> np.isinf(np.NINF)
		True
		>>> np.isinf([np.inf, -np.inf, 1.0, np.nan])
		array([ True,  True, False, False], dtype=bool)
		
		>>> x = np.array([-np.inf, 0., np.inf])
		>>> y = np.array([2, 2, 2])
		>>> np.isinf(x, y)
		array([1, 0, 1])
		>>> y
		array([1, 0, 1])
	**/
	static public function isinf(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public var print_function : Dynamic;
	static public var rcParams : Dynamic;
	static public function ship(ox:Dynamic, oy:Dynamic, box:Dynamic):Dynamic;
	static public var stix_virtual_fonts : Dynamic;
	static public var tex2uni : Dynamic;
	/**
		Return a Unicode string of one character with ordinal i; 0 <= i <= 0x10ffff.
	**/
	static public function unichr(i:Dynamic):Dynamic;
	/**
		Return the Unicode character corresponding to the index,
		or the replacement character if this is a narrow build of Python
		and the requested character is outside the BMP.
	**/
	static public function unichr_safe(index:Dynamic):Dynamic;
	static public var unicode_literals : Dynamic;
	/**
		Issue a warning, or maybe ignore it or raise an exception.
	**/
	static public function warn(args:haxe.extern.Rest<Dynamic>):Dynamic;
}