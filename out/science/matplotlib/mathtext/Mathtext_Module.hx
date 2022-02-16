/* This file is generated, do not edit! */
package matplotlib.mathtext;
@:pythonImport("matplotlib.mathtext") extern class Mathtext_Module {
	static public var LOAD_NO_HINTING : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public function __getattr__(name:Dynamic):Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _cls_name : Dynamic;
	static public var _log : Dynamic;
	/**
		Return the integer index (from the Unicode table) of *symbol*.
		
		Parameters
		----------
		symbol : str
		    A single unicode character, a TeX command (e.g. r'\pi') or a Type1
		    symbol name (e.g. 'phi').
		math : bool, default: True
		    If False, always treat as a single unicode character.
	**/
	static public function get_unicode_index(symbol:Dynamic, ?math:Dynamic):Dynamic;
	/**
		Given a math expression, renders it in a closely-clipped bounding
		box to an image file.
		
		Parameters
		----------
		s : str
		    A math expression.  The math portion must be enclosed in dollar signs.
		filename_or_obj : str or path-like or file-like
		    Where to write the image data.
		prop : `.FontProperties`, optional
		    The size and style of the text.
		dpi : float, optional
		    The output dpi.  If not set, the dpi is determined as for
		    `.Figure.savefig`.
		format : str, optional
		    The output format, e.g., 'svg', 'pdf', 'ps' or 'png'.  If not set, the
		    format is determined as for `.Figure.savefig`.
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
	static public function namedtuple(typename:Dynamic, field_names:Dynamic, ?rename:Dynamic, ?defaults:Dynamic, ?module:Dynamic):Dynamic;
	static public var rcParams : Dynamic;
	/**
		[*Deprecated*] 
		
		Notes
		-----
		.. deprecated:: 3.4
		   \ 
	**/
	static public function ship(ox:Dynamic, oy:Dynamic, box:Dynamic):Dynamic;
}