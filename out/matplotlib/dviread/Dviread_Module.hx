/* This file is generated, do not edit! */
package matplotlib.dviread;
@:pythonImport("matplotlib.dviread") extern class Dviread_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Read *bytes* bytes, returning the bytes interpreted as a
		signed integer if *signed* is true, unsigned otherwise.
	**/
	static public function _arg(bytes:Dynamic, signed:Dynamic, dvi:Dynamic, _:Dynamic):Dynamic;
	static public var _arg_mapping : Dynamic;
	/**
		Optionally signed, length *delta*+1
		
		Read *delta*+1 bytes, returning the bytes interpreted as
		unsigned integer for 0<=*delta*<3 and signed if *delta*==3.
	**/
	static public function _arg_olen1(dvi:Dynamic, delta:Dynamic):Dynamic;
	/**
		Return *delta* without reading anything more from the dvi file
	**/
	static public function _arg_raw(dvi:Dynamic, delta:Dynamic):Dynamic;
	/**
		Signed, length *delta*
		
		Read *delta* bytes, returning None if *delta* is zero, and
		the bytes interpreted as a signed integer otherwise.
	**/
	static public function _arg_slen(dvi:Dynamic, delta:Dynamic):Dynamic;
	/**
		Signed, length *delta*+1
		
		Read *delta*+1 bytes, returning the bytes interpreted as signed.
	**/
	static public function _arg_slen1(dvi:Dynamic, delta:Dynamic):Dynamic;
	/**
		Unsigned length *delta*+1
		
		Read *delta*+1 bytes, returning the bytes interpreted as unsigned.
	**/
	static public function _arg_ulen1(dvi:Dynamic, delta:Dynamic):Dynamic;
	/**
		Decorator for dispatch by opcode. Sets the values in *table*
		from *min* to *max* to this method, adds a check that the Dvi state
		matches *state* if not None, reads arguments from the file according
		to *args*.
		
		*table*
		    the dispatch table to be filled in
		
		*min*
		    minimum opcode for calling this function
		
		*max*
		    maximum opcode for calling this function, None if only *min* is allowed
		
		*state*
		    state of the Dvi object in which these opcodes are allowed
		
		*args*
		    sequence of argument specifications:
		
		    ``'raw'``: opcode minus minimum
		    ``'u1'``: read one unsigned byte
		    ``'u4'``: read four bytes, treat as an unsigned number
		    ``'s4'``: read four bytes, treat as a signed number
		    ``'slen'``: read (opcode - minimum) bytes, treat as signed
		    ``'slen1'``: read (opcode - minimum + 1) bytes, treat as signed
		    ``'ulen1'``: read (opcode - minimum + 1) bytes, treat as unsigned
		    ``'olen1'``: read (opcode - minimum + 1) bytes, treat as unsigned
		                 if under four bytes, signed if four bytes
	**/
	static public function _dispatch(table:Dynamic, min:Dynamic, ?max:Dynamic, ?state:Dynamic, ?args:Dynamic):Dynamic;
	/**
		Convert from two's complement to negative.
	**/
	static public function _fix2comp(num:Dynamic):Dynamic;
	static public function _fontfile(cls:Dynamic, suffix:Dynamic, texname:Dynamic):Dynamic;
	static public var _log : Dynamic;
	/**
		Multiply two numbers in 20.12 fixed point format.
	**/
	static public function _mul2012(num1:Dynamic, num2:Dynamic):Dynamic;
	/**
		Parses a \*.enc file referenced from a psfonts.map style file.
		The format this class understands is a very limited subset of PostScript.
		
		Parameters
		----------
		path : os.PathLike
		
		Returns
		-------
		encoding : list
		    The nth entry of the list is the PostScript glyph name of the nth
		    glyph.
	**/
	static public function _parse_enc(path:Dynamic):Array<Dynamic>;
	static public function _tfmfile(texname:Dynamic):Dynamic;
	static public function _vffile(texname:Dynamic):Dynamic;
	/**
		Find a file in the texmf tree.
		
		Calls :program:`kpsewhich` which is an interface to the kpathsea
		library [1]_. Most existing TeX distributions on Unix-like systems use
		kpathsea. It is also available as part of MikTeX, a popular
		distribution on Windows.
		
		*If the file is not found, an empty string is returned*.
		
		Parameters
		----------
		filename : string or bytestring
		format : string or bytestring
		    Used as the value of the `--format` option to :program:`kpsewhich`.
		    Could be e.g. 'tfm' or 'vf' to limit the search to that type of files.
		
		References
		----------
		
		.. [1] `Kpathsea documentation <http://www.tug.org/kpathsea/>`_
		    The library that :program:`kpsewhich` is part of.
	**/
	static public function find_tex_file(filename:Dynamic, ?format:Dynamic):Dynamic;
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
	static public var rcParams : Dynamic;
	/**
		Decorator factory to apply update_wrapper() to a wrapper function
		
		Returns a decorator that invokes update_wrapper() with the decorated
		function as the wrapper argument and the arguments to wraps() as the
		remaining arguments. Default arguments are as for update_wrapper().
		This is a convenience function to simplify applying partial() to
		update_wrapper().
	**/
	static public function wraps(wrapped:Dynamic, ?assigned:Dynamic, ?updated:Dynamic):Dynamic;
}