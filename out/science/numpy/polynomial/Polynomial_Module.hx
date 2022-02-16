/* This file is generated, do not edit! */
package numpy.polynomial;
@:pythonImport("numpy.polynomial") extern class Polynomial_Module {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Set the default format for the string representation of polynomials.
		
		Values for ``style`` must be valid inputs to ``__format__``, i.e. 'ascii'
		or 'unicode'.
		
		Parameters
		----------
		style : str
		    Format string for default printing style. Must be either 'ascii' or
		    'unicode'.
		
		Notes
		-----
		The default format depends on the platform: 'unicode' is used on
		Unix-based systems and 'ascii' on Windows. This determination is based on
		default font support for the unicode superscript and subscript ranges.
		
		Examples
		--------
		>>> p = np.polynomial.Polynomial([1, 2, 3])
		>>> c = np.polynomial.Chebyshev([1, 2, 3])
		>>> np.polynomial.set_default_printstyle('unicode')
		>>> print(p)
		1.0 + 2.0·x¹ + 3.0·x²
		>>> print(c)
		1.0 + 2.0·T₁(x) + 3.0·T₂(x)
		>>> np.polynomial.set_default_printstyle('ascii')
		>>> print(p)
		1.0 + 2.0 x**1 + 3.0 x**2
		>>> print(c)
		1.0 + 2.0 T_1(x) + 3.0 T_2(x)
		>>> # Formatting supersedes all class/package-level defaults
		>>> print(f"{p:unicode}")
		1.0 + 2.0·x¹ + 3.0·x²
	**/
	static public function set_default_printstyle(style:Dynamic):Dynamic;
	static public function test(?label:Dynamic, ?verbose:Dynamic, ?extra_argv:Dynamic, ?doctests:Dynamic, ?coverage:Dynamic, ?durations:Dynamic, ?tests:Dynamic):Dynamic;
}