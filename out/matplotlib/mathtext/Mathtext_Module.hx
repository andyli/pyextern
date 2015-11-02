/* This file is generated, do not edit! */
package matplotlib.mathtext;
@:pythonImport("matplotlib.mathtext") extern class Mathtext_Module {
	static public var DELTA : Dynamic;
	static public var DELTAINTEGRAL : Dynamic;
	static public var DELTASLANTED : Dynamic;
	/**
		Helper class to raise parser errors.
	**/
	static public function Error(msg:Dynamic):Dynamic;
	static public var GROW_FACTOR : Dynamic;
	static public var KERNING_DEFAULT : Dynamic;
	static public var LOAD_FORCE_AUTOHINT : Dynamic;
	static public var LOAD_NO_HINTING : Dynamic;
	static public var NUM_SIZE_LEVELS : Dynamic;
	static public var SCRIPT_SPACE : Dynamic;
	static public var SHRINK_FACTOR : Dynamic;
	static public var SUB1 : Dynamic;
	static public var SUB2 : Dynamic;
	static public var SUBDROP : Dynamic;
	static public var SUP1 : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		ceil(x)
		
		Return the ceiling of x as an int.
		This is the smallest integral value >= x.
	**/
	static public function ceil(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var division : Dynamic;
	static public function findfont(prop:Dynamic, ?kw:python.KwArgs<Dynamic>):Dynamic;
	static public function get_data_path(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function get_realpath_and_stat(path:Dynamic):Dynamic;
	/**
		get_unicode_index(symbol) -> integer
		
		Return the integer index (from the Unicode table) of symbol.  *symbol*
		can be a single unicode character, a TeX command (i.e. r'\pi'), or a
		Type1 symbol name (i.e. 'phi').
	**/
	static public function get_unicode_index(symbol:Dynamic):Dynamic;
	static public var inf : Dynamic;
	/**
		Return True if *obj* looks like a string
	**/
	static public function is_string_like(obj:Dynamic):Dynamic;
	/**
		isinf(x[, out])
		
		Test element-wise for positive or negative infinity.
		
		Returns a boolean array of the same shape as `x`, True where ``x ==
		+/-inf``, otherwise False.
		
		Parameters
		----------
		x : array_like
		    Input values
		out : array_like, optional
		    An array with the same shape as `x` to store the result.
		
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
		Numpy uses the IEEE Standard for Binary Floating-Point for Arithmetic
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
		 - strs - a string of space-delimited literals, or a list of string literals
		 - caseless - (default=False) - treat all literals as caseless
		 - useRegex - (default=True) - as an optimization, will generate a Regex
		   object; otherwise, will generate a C{MatchFirst} object (if C{caseless=True}, or
		   if creating a C{Regex} raises an exception)
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