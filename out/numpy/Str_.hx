/* This file is generated, do not edit! */
package numpy;
@:pythonImport("numpy", "str_") extern class Str_ {
	/**
		transpose
	**/
	public var T : Dynamic;
	/**
		abs(self)
	**/
	public function __abs__():Dynamic;
	/**
		Return self+value.
	**/
	public function __add__(value:Dynamic):Dynamic;
	/**
		Return self&value.
	**/
	public function __and__(value:Dynamic):Dynamic;
	/**
		sc.__array__(|type) return 0-dim array
	**/
	public function __array__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Array protocol: Python side
	**/
	public var __array_interface__ : Dynamic;
	/**
		Array priority.
	**/
	public var __array_priority__ : Dynamic;
	/**
		Array protocol: struct
	**/
	public var __array_struct__ : Dynamic;
	/**
		sc.__array_wrap__(obj) return scalar from array
	**/
	public function __array_wrap__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		self != 0
	**/
	public function __bool__():Dynamic;
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return key in self.
	**/
	public function __contains__(key:Dynamic):Dynamic;
	public function __copy__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __deepcopy__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	/**
		__dir__() -> list
		default dir() implementation
	**/
	public function __dir__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return divmod(self, value).
	**/
	public function __divmod__(value:Dynamic):Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		float(self)
	**/
	public function __float__():Dynamic;
	/**
		Return self//value.
	**/
	public function __floordiv__(value:Dynamic):Dynamic;
	/**
		S.__format__(format_spec) -> str
		
		Return a formatted version of S as described by format_spec.
	**/
	public function __format__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self>=value.
	**/
	public function __ge__(value:Dynamic):Dynamic;
	/**
		Return getattr(self, name).
	**/
	public function __getattribute__(name:Dynamic):Dynamic;
	/**
		Return self[key].
	**/
	public function __getitem__(key:Dynamic):Dynamic;
	public function __getnewargs__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	static public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		int(self)
	**/
	public function __int__():Dynamic;
	/**
		~self
	**/
	public function __invert__():Dynamic;
	/**
		Implement iter(self).
	**/
	public function __iter__():Dynamic;
	/**
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
	/**
		Return len(self).
	**/
	public function __len__():Dynamic;
	/**
		Return self<<value.
	**/
	public function __lshift__(value:Dynamic):Dynamic;
	/**
		Return self<value.
	**/
	public function __lt__(value:Dynamic):Dynamic;
	/**
		Return self%value.
	**/
	public function __mod__(value:Dynamic):Dynamic;
	/**
		Return self*value.n
	**/
	public function __mul__(value:Dynamic):Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	/**
		-self
	**/
	public function __neg__():Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return self|value.
	**/
	public function __or__(value:Dynamic):Dynamic;
	/**
		+self
	**/
	public function __pos__():Dynamic;
	/**
		Return pow(self, value, mod).
	**/
	public function __pow__(value:Dynamic, ?mod:Dynamic):Dynamic;
	/**
		Return value+self.
	**/
	public function __radd__(value:Dynamic):Dynamic;
	/**
		Return value&self.
	**/
	public function __rand__(value:Dynamic):Dynamic;
	/**
		Return divmod(value, self).
	**/
	public function __rdivmod__(value:Dynamic):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce_ex__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Return value//self.
	**/
	public function __rfloordiv__(value:Dynamic):Dynamic;
	/**
		Return value<<self.
	**/
	public function __rlshift__(value:Dynamic):Dynamic;
	/**
		Return value%self.
	**/
	public function __rmod__(value:Dynamic):Dynamic;
	/**
		Return self*value.
	**/
	public function __rmul__(value:Dynamic):Dynamic;
	/**
		Return value|self.
	**/
	public function __ror__(value:Dynamic):Dynamic;
	public function __round__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return pow(value, self, mod).
	**/
	public function __rpow__(value:Dynamic, ?mod:Dynamic):Dynamic;
	/**
		Return value>>self.
	**/
	public function __rrshift__(value:Dynamic):Dynamic;
	/**
		Return self>>value.
	**/
	public function __rshift__(value:Dynamic):Dynamic;
	/**
		Return value-self.
	**/
	public function __rsub__(value:Dynamic):Dynamic;
	/**
		Return value/self.
	**/
	public function __rtruediv__(value:Dynamic):Dynamic;
	/**
		Return value^self.
	**/
	public function __rxor__(value:Dynamic):Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	public function __setstate__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		S.__sizeof__() -> size of S in memory, in bytes
	**/
	public function __sizeof__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return str(self).
	**/
	public function __str__():Dynamic;
	/**
		Return self-value.
	**/
	public function __sub__(value:Dynamic):Dynamic;
	/**
		Abstract classes can override this to customize issubclass().
		
		This is invoked early on by abc.ABCMeta.__subclasscheck__().
		It should return True, False or NotImplemented.  If it returns
		NotImplemented, the normal algorithm is used.  Otherwise, it
		overrides the normal algorithm (and the outcome is cached).
	**/
	static public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self/value.
	**/
	public function __truediv__(value:Dynamic):Dynamic;
	/**
		Return self^value.
	**/
	public function __xor__(value:Dynamic):Dynamic;
	/**
		Not implemented (virtual attribute)
		
		Class generic exists solely to derive numpy scalars from, and possesses,
		albeit unimplemented, all the attributes of the ndarray class
		so as to provide a uniform API.
		
		See Also
		--------
		The corresponding attribute of the derived class of interest.
	**/
	public function all(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Not implemented (virtual attribute)
		
		Class generic exists solely to derive numpy scalars from, and possesses,
		albeit unimplemented, all the attributes of the ndarray class
		so as to provide a uniform API.
		
		See Also
		--------
		The corresponding attribute of the derived class of interest.
	**/
	public function any(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Not implemented (virtual attribute)
		
		Class generic exists solely to derive numpy scalars from, and possesses,
		albeit unimplemented, all the attributes of the ndarray class
		so as to provide a uniform API.
		
		See Also
		--------
		The corresponding attribute of the derived class of interest.
	**/
	public function argmax(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Not implemented (virtual attribute)
		
		Class generic exists solely to derive numpy scalars from, and possesses,
		albeit unimplemented, all the attributes of the ndarray class
		so as to provide a uniform API.
		
		See Also
		--------
		The corresponding attribute of the derived class of interest.
	**/
	public function argmin(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Not implemented (virtual attribute)
		
		Class generic exists solely to derive numpy scalars from, and possesses,
		albeit unimplemented, all the attributes of the ndarray class
		so as to provide a uniform API.
		
		See Also
		--------
		The corresponding attribute of the derived class of interest.
	**/
	public function argsort(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Not implemented (virtual attribute)
		
		Class generic exists solely to derive numpy scalars from, and possesses,
		albeit unimplemented, all the attributes of the ndarray class
		so as to provide a uniform API.
		
		See Also
		--------
		The corresponding attribute of the derived class of interest.
	**/
	public function astype(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		base object
	**/
	public var base : Dynamic;
	/**
		Not implemented (virtual attribute)
		
		Class generic exists solely to derive numpy scalars from, and possesses,
		albeit unimplemented, all the attributes of the ndarray class so as to
		provide a uniform API.
		
		See Also
		--------
		The corresponding attribute of the derived class of interest.
	**/
	public function byteswap(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		S.capitalize() -> str
		
		Return a capitalized version of S, i.e. make the first character
		have upper case and the rest lower case.
	**/
	public function capitalize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		S.casefold() -> str
		
		Return a version of S suitable for caseless comparisons.
	**/
	public function casefold(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		S.center(width[, fillchar]) -> str
		
		Return S centered in a string of length width. Padding is
		done using the specified fill character (default is a space)
	**/
	public function center(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Not implemented (virtual attribute)
		
		Class generic exists solely to derive numpy scalars from, and possesses,
		albeit unimplemented, all the attributes of the ndarray class
		so as to provide a uniform API.
		
		See Also
		--------
		The corresponding attribute of the derived class of interest.
	**/
	public function choose(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Not implemented (virtual attribute)
		
		Class generic exists solely to derive numpy scalars from, and possesses,
		albeit unimplemented, all the attributes of the ndarray class
		so as to provide a uniform API.
		
		See Also
		--------
		The corresponding attribute of the derived class of interest.
	**/
	public function clip(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Not implemented (virtual attribute)
		
		Class generic exists solely to derive numpy scalars from, and possesses,
		albeit unimplemented, all the attributes of the ndarray class
		so as to provide a uniform API.
		
		See Also
		--------
		The corresponding attribute of the derived class of interest.
	**/
	public function compress(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function conj(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Not implemented (virtual attribute)
		
		Class generic exists solely to derive numpy scalars from, and possesses,
		albeit unimplemented, all the attributes of the ndarray class
		so as to provide a uniform API.
		
		See Also
		--------
		The corresponding attribute of the derived class of interest.
	**/
	public function conjugate(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Not implemented (virtual attribute)
		
		Class generic exists solely to derive numpy scalars from, and possesses,
		albeit unimplemented, all the attributes of the ndarray class
		so as to provide a uniform API.
		
		See Also
		--------
		The corresponding attribute of the derived class of interest.
	**/
	public function copy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		S.count(sub[, start[, end]]) -> int
		
		Return the number of non-overlapping occurrences of substring sub in
		string S[start:end].  Optional arguments start and end are
		interpreted as in slice notation.
	**/
	public function count(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Not implemented (virtual attribute)
		
		Class generic exists solely to derive numpy scalars from, and possesses,
		albeit unimplemented, all the attributes of the ndarray class
		so as to provide a uniform API.
		
		See Also
		--------
		The corresponding attribute of the derived class of interest.
	**/
	public function cumprod(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Not implemented (virtual attribute)
		
		Class generic exists solely to derive numpy scalars from, and possesses,
		albeit unimplemented, all the attributes of the ndarray class
		so as to provide a uniform API.
		
		See Also
		--------
		The corresponding attribute of the derived class of interest.
	**/
	public function cumsum(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		pointer to start of data
	**/
	public var data : Dynamic;
	/**
		Not implemented (virtual attribute)
		
		Class generic exists solely to derive numpy scalars from, and possesses,
		albeit unimplemented, all the attributes of the ndarray class
		so as to provide a uniform API.
		
		See Also
		--------
		The corresponding attribute of the derived class of interest.
	**/
	public function diagonal(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		get array data-descriptor
	**/
	public var dtype : Dynamic;
	/**
		Not implemented (virtual attribute)
		
		Class generic exists solely to derive numpy scalars from, and possesses,
		albeit unimplemented, all the attributes of the ndarray class
		so as to provide a uniform API.
		
		See Also
		--------
		The corresponding attribute of the derived class of interest.
	**/
	public function dump(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Not implemented (virtual attribute)
		
		Class generic exists solely to derive numpy scalars from, and possesses,
		albeit unimplemented, all the attributes of the ndarray class
		so as to provide a uniform API.
		
		See Also
		--------
		The corresponding attribute of the derived class of interest.
	**/
	public function dumps(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		S.encode(encoding='utf-8', errors='strict') -> bytes
		
		Encode S using the codec registered for encoding. Default encoding
		is 'utf-8'. errors may be given to set a different error
		handling scheme. Default is 'strict' meaning that encoding errors raise
		a UnicodeEncodeError. Other possible values are 'ignore', 'replace' and
		'xmlcharrefreplace' as well as any other name registered with
		codecs.register_error that can handle UnicodeEncodeErrors.
	**/
	public function encode(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		S.endswith(suffix[, start[, end]]) -> bool
		
		Return True if S ends with the specified suffix, False otherwise.
		With optional start, test S beginning at that position.
		With optional end, stop comparing S at that position.
		suffix can also be a tuple of strings to try.
	**/
	public function endswith(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		S.expandtabs(tabsize=8) -> str
		
		Return a copy of S where all tab characters are expanded using spaces.
		If tabsize is not given, a tab size of 8 characters is assumed.
	**/
	public function expandtabs(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Not implemented (virtual attribute)
		
		Class generic exists solely to derive numpy scalars from, and possesses,
		albeit unimplemented, all the attributes of the ndarray class
		so as to provide a uniform API.
		
		See Also
		--------
		The corresponding attribute of the derived class of interest.
	**/
	public function fill(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		S.find(sub[, start[, end]]) -> int
		
		Return the lowest index in S where substring sub is found,
		such that sub is contained within S[start:end].  Optional
		arguments start and end are interpreted as in slice notation.
		
		Return -1 on failure.
	**/
	public function find(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		integer value of flags
	**/
	public var flags : Dynamic;
	/**
		a 1-d view of scalar
	**/
	public var flat : Dynamic;
	/**
		Not implemented (virtual attribute)
		
		Class generic exists solely to derive numpy scalars from, and possesses,
		albeit unimplemented, all the attributes of the ndarray class
		so as to provide a uniform API.
		
		See Also
		--------
		The corresponding attribute of the derived class of interest.
	**/
	public function flatten(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		S.format(*args, **kwargs) -> str
		
		Return a formatted version of S, using substitutions from args and kwargs.
		The substitutions are identified by braces ('{' and '}').
	**/
	public function format(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		S.format_map(mapping) -> str
		
		Return a formatted version of S, using substitutions from mapping.
		The substitutions are identified by braces ('{' and '}').
	**/
	public function format_map(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Not implemented (virtual attribute)
		
		Class generic exists solely to derive numpy scalars from, and possesses,
		albeit unimplemented, all the attributes of the ndarray class
		so as to provide a uniform API.
		
		See Also
		--------
		The corresponding attribute of the derived class of interest.
	**/
	public function getfield(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		imaginary part of scalar
	**/
	public var imag : Dynamic;
	/**
		S.index(sub[, start[, end]]) -> int
		
		Return the lowest index in S where substring sub is found, 
		such that sub is contained within S[start:end].  Optional
		arguments start and end are interpreted as in slice notation.
		
		Raises ValueError when the substring is not found.
	**/
	public function index(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		S.isalnum() -> bool
		
		Return True if all characters in S are alphanumeric
		and there is at least one character in S, False otherwise.
	**/
	public function isalnum(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		S.isalpha() -> bool
		
		Return True if all characters in S are alphabetic
		and there is at least one character in S, False otherwise.
	**/
	public function isalpha(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		S.isdecimal() -> bool
		
		Return True if there are only decimal characters in S,
		False otherwise.
	**/
	public function isdecimal(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		S.isdigit() -> bool
		
		Return True if all characters in S are digits
		and there is at least one character in S, False otherwise.
	**/
	public function isdigit(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		S.isidentifier() -> bool
		
		Return True if S is a valid identifier according
		to the language definition.
		
		Use keyword.iskeyword() to test for reserved identifiers
		such as "def" and "class".
	**/
	public function isidentifier(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		S.islower() -> bool
		
		Return True if all cased characters in S are lowercase and there is
		at least one cased character in S, False otherwise.
	**/
	public function islower(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		S.isnumeric() -> bool
		
		Return True if there are only numeric characters in S,
		False otherwise.
	**/
	public function isnumeric(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		S.isprintable() -> bool
		
		Return True if all characters in S are considered
		printable in repr() or S is empty, False otherwise.
	**/
	public function isprintable(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		S.isspace() -> bool
		
		Return True if all characters in S are whitespace
		and there is at least one character in S, False otherwise.
	**/
	public function isspace(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		S.istitle() -> bool
		
		Return True if S is a titlecased string and there is at least one
		character in S, i.e. upper- and titlecase characters may only
		follow uncased characters and lowercase characters only cased ones.
		Return False otherwise.
	**/
	public function istitle(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		S.isupper() -> bool
		
		Return True if all cased characters in S are uppercase and there is
		at least one cased character in S, False otherwise.
	**/
	public function isupper(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Not implemented (virtual attribute)
		
		Class generic exists solely to derive numpy scalars from, and possesses,
		albeit unimplemented, all the attributes of the ndarray class
		so as to provide a uniform API.
		
		See Also
		--------
		The corresponding attribute of the derived class of interest.
	**/
	public function item(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Not implemented (virtual attribute)
		
		Class generic exists solely to derive numpy scalars from, and possesses,
		albeit unimplemented, all the attributes of the ndarray class
		so as to provide a uniform API.
		
		See Also
		--------
		The corresponding attribute of the derived class of interest.
	**/
	public function itemset(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		length of one element in bytes
	**/
	public var itemsize : Dynamic;
	/**
		S.join(iterable) -> str
		
		Return a string which is the concatenation of the strings in the
		iterable.  The separator between elements is S.
	**/
	public function join(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		S.ljust(width[, fillchar]) -> str
		
		Return S left-justified in a Unicode string of length width. Padding is
		done using the specified fill character (default is a space).
	**/
	public function ljust(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		S.lower() -> str
		
		Return a copy of the string S converted to lowercase.
	**/
	public function lower(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		S.lstrip([chars]) -> str
		
		Return a copy of the string S with leading whitespace removed.
		If chars is given and not None, remove characters in chars instead.
	**/
	public function lstrip(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return a translation table usable for str.translate().
		
		If there is only one argument, it must be a dictionary mapping Unicode
		ordinals (integers) or characters to Unicode ordinals, strings or None.
		Character keys will be then converted to ordinals.
		If there are two arguments, they must be strings of equal length, and
		in the resulting dictionary, each character in x will be mapped to the
		character at the same position in y. If there is a third argument, it
		must be a string, whose characters will be mapped to None in the result.
	**/
	static public function maketrans(x:Dynamic, ?y:Dynamic, ?z:Dynamic):Dynamic;
	/**
		Not implemented (virtual attribute)
		
		Class generic exists solely to derive numpy scalars from, and possesses,
		albeit unimplemented, all the attributes of the ndarray class
		so as to provide a uniform API.
		
		See Also
		--------
		The corresponding attribute of the derived class of interest.
	**/
	public function max(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Not implemented (virtual attribute)
		
		Class generic exists solely to derive numpy scalars from, and possesses,
		albeit unimplemented, all the attributes of the ndarray class
		so as to provide a uniform API.
		
		See Also
		--------
		The corresponding attribute of the derived class of interest.
	**/
	public function mean(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Not implemented (virtual attribute)
		
		Class generic exists solely to derive numpy scalars from, and possesses,
		albeit unimplemented, all the attributes of the ndarray class
		so as to provide a uniform API.
		
		See Also
		--------
		The corresponding attribute of the derived class of interest.
	**/
	public function min(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		length of item in bytes
	**/
	public var nbytes : Dynamic;
	/**
		number of array dimensions
	**/
	public var ndim : Dynamic;
	/**
		newbyteorder(new_order='S')
		
		Return a new `dtype` with a different byte order.
		
		Changes are also made in all fields and sub-arrays of the data type.
		
		The `new_order` code can be any from the following:
		
		* 'S' - swap dtype from current to opposite endian
		* {'<', 'L'} - little endian
		* {'>', 'B'} - big endian
		* {'=', 'N'} - native order
		* {'|', 'I'} - ignore (no change to byte order)
		
		Parameters
		----------
		new_order : str, optional
		    Byte order to force; a value from the byte order specifications
		    above.  The default value ('S') results in swapping the current
		    byte order. The code does a case-insensitive check on the first
		    letter of `new_order` for the alternatives above.  For example,
		    any of 'B' or 'b' or 'biggish' are valid to specify big-endian.
		
		
		Returns
		-------
		new_dtype : dtype
		    New `dtype` object with the given change to the byte order.
	**/
	public function newbyteorder(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Not implemented (virtual attribute)
		
		Class generic exists solely to derive numpy scalars from, and possesses,
		albeit unimplemented, all the attributes of the ndarray class
		so as to provide a uniform API.
		
		See Also
		--------
		The corresponding attribute of the derived class of interest.
	**/
	public function nonzero(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		S.partition(sep) -> (head, sep, tail)
		
		Search for the separator sep in S, and return the part before it,
		the separator itself, and the part after it.  If the separator is not
		found, return S and two empty strings.
	**/
	public function partition(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Not implemented (virtual attribute)
		
		Class generic exists solely to derive numpy scalars from, and possesses,
		albeit unimplemented, all the attributes of the ndarray class
		so as to provide a uniform API.
		
		See Also
		--------
		The corresponding attribute of the derived class of interest.
	**/
	public function prod(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Not implemented (virtual attribute)
		
		Class generic exists solely to derive numpy scalars from, and possesses,
		albeit unimplemented, all the attributes of the ndarray class
		so as to provide a uniform API.
		
		See Also
		--------
		The corresponding attribute of the derived class of interest.
	**/
	public function ptp(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Not implemented (virtual attribute)
		
		Class generic exists solely to derive numpy scalars from, and possesses,
		albeit unimplemented, all the attributes of the ndarray class
		so as to provide a uniform API.
		
		See Also
		--------
		The corresponding attribute of the derived class of interest.
	**/
	public function put(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Not implemented (virtual attribute)
		
		Class generic exists solely to derive numpy scalars from, and possesses,
		albeit unimplemented, all the attributes of the ndarray class
		so as to provide a uniform API.
		
		See Also
		--------
		The corresponding attribute of the derived class of interest.
	**/
	public function ravel(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		real part of scalar
	**/
	public var real : Dynamic;
	/**
		Not implemented (virtual attribute)
		
		Class generic exists solely to derive numpy scalars from, and possesses,
		albeit unimplemented, all the attributes of the ndarray class
		so as to provide a uniform API.
		
		See Also
		--------
		The corresponding attribute of the derived class of interest.
	**/
	public function repeat(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		S.replace(old, new[, count]) -> str
		
		Return a copy of S with all occurrences of substring
		old replaced by new.  If the optional argument count is
		given, only the first count occurrences are replaced.
	**/
	public function replace(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Not implemented (virtual attribute)
		
		Class generic exists solely to derive numpy scalars from, and possesses,
		albeit unimplemented, all the attributes of the ndarray class
		so as to provide a uniform API.
		
		See Also
		--------
		The corresponding attribute of the derived class of interest.
	**/
	public function reshape(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Not implemented (virtual attribute)
		
		Class generic exists solely to derive numpy scalars from, and possesses,
		albeit unimplemented, all the attributes of the ndarray class
		so as to provide a uniform API.
		
		See Also
		--------
		The corresponding attribute of the derived class of interest.
	**/
	public function resize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		S.rfind(sub[, start[, end]]) -> int
		
		Return the highest index in S where substring sub is found,
		such that sub is contained within S[start:end].  Optional
		arguments start and end are interpreted as in slice notation.
		
		Return -1 on failure.
	**/
	public function rfind(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		S.rindex(sub[, start[, end]]) -> int
		
		Return the highest index in S where substring sub is found,
		such that sub is contained within S[start:end].  Optional
		arguments start and end are interpreted as in slice notation.
		
		Raises ValueError when the substring is not found.
	**/
	public function rindex(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		S.rjust(width[, fillchar]) -> str
		
		Return S right-justified in a string of length width. Padding is
		done using the specified fill character (default is a space).
	**/
	public function rjust(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Not implemented (virtual attribute)
		
		Class generic exists solely to derive numpy scalars from, and possesses,
		albeit unimplemented, all the attributes of the ndarray class
		so as to provide a uniform API.
		
		See Also
		--------
		The corresponding attribute of the derived class of interest.
	**/
	public function round(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		S.rpartition(sep) -> (head, sep, tail)
		
		Search for the separator sep in S, starting at the end of S, and return
		the part before it, the separator itself, and the part after it.  If the
		separator is not found, return two empty strings and S.
	**/
	public function rpartition(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		S.rsplit(sep=None, maxsplit=-1) -> list of strings
		
		Return a list of the words in S, using sep as the
		delimiter string, starting at the end of the string and
		working to the front.  If maxsplit is given, at most maxsplit
		splits are done. If sep is not specified, any whitespace string
		is a separator.
	**/
	public function rsplit(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		S.rstrip([chars]) -> str
		
		Return a copy of the string S with trailing whitespace removed.
		If chars is given and not None, remove characters in chars instead.
	**/
	public function rstrip(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Not implemented (virtual attribute)
		
		Class generic exists solely to derive numpy scalars from, and possesses,
		albeit unimplemented, all the attributes of the ndarray class
		so as to provide a uniform API.
		
		See Also
		--------
		The corresponding attribute of the derived class of interest.
	**/
	public function searchsorted(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Not implemented (virtual attribute)
		
		Class generic exists solely to derive numpy scalars from, and possesses,
		albeit unimplemented, all the attributes of the ndarray class
		so as to provide a uniform API.
		
		See Also
		--------
		The corresponding attribute of the derived class of interest.
	**/
	public function setfield(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Not implemented (virtual attribute)
		
		Class generic exists solely to derive numpy scalars from, and possesses,
		albeit unimplemented, all the attributes of the ndarray class so as to
		provide a uniform API.
		
		See Also
		--------
		The corresponding attribute of the derived class of interest.
	**/
	public function setflags(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		tuple of array dimensions
	**/
	public var shape : Dynamic;
	/**
		number of elements in the gentype
	**/
	public var size : Dynamic;
	/**
		Not implemented (virtual attribute)
		
		Class generic exists solely to derive numpy scalars from, and possesses,
		albeit unimplemented, all the attributes of the ndarray class
		so as to provide a uniform API.
		
		See Also
		--------
		The corresponding attribute of the derived class of interest.
	**/
	public function sort(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		S.split(sep=None, maxsplit=-1) -> list of strings
		
		Return a list of the words in S, using sep as the
		delimiter string.  If maxsplit is given, at most maxsplit
		splits are done. If sep is not specified or is None, any
		whitespace string is a separator and empty strings are
		removed from the result.
	**/
	public function split(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		S.splitlines([keepends]) -> list of strings
		
		Return a list of the lines in S, breaking at line boundaries.
		Line breaks are not included in the resulting list unless keepends
		is given and true.
	**/
	public function splitlines(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Not implemented (virtual attribute)
		
		Class generic exists solely to derive numpy scalars from, and possesses,
		albeit unimplemented, all the attributes of the ndarray class
		so as to provide a uniform API.
		
		See Also
		--------
		The corresponding attribute of the derived class of interest.
	**/
	public function squeeze(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		S.startswith(prefix[, start[, end]]) -> bool
		
		Return True if S starts with the specified prefix, False otherwise.
		With optional start, test S beginning at that position.
		With optional end, stop comparing S at that position.
		prefix can also be a tuple of strings to try.
	**/
	public function startswith(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Not implemented (virtual attribute)
		
		Class generic exists solely to derive numpy scalars from, and possesses,
		albeit unimplemented, all the attributes of the ndarray class
		so as to provide a uniform API.
		
		See Also
		--------
		The corresponding attribute of the derived class of interest.
	**/
	public function std(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		tuple of bytes steps in each dimension
	**/
	public var strides : Dynamic;
	/**
		S.strip([chars]) -> str
		
		Return a copy of the string S with leading and trailing
		whitespace removed.
		If chars is given and not None, remove characters in chars instead.
	**/
	public function strip(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Not implemented (virtual attribute)
		
		Class generic exists solely to derive numpy scalars from, and possesses,
		albeit unimplemented, all the attributes of the ndarray class
		so as to provide a uniform API.
		
		See Also
		--------
		The corresponding attribute of the derived class of interest.
	**/
	public function sum(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Not implemented (virtual attribute)
		
		Class generic exists solely to derive numpy scalars from, and possesses,
		albeit unimplemented, all the attributes of the ndarray class
		so as to provide a uniform API.
		
		See Also
		--------
		The corresponding attribute of the derived class of interest.
	**/
	public function swapaxes(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		S.swapcase() -> str
		
		Return a copy of S with uppercase characters converted to lowercase
		and vice versa.
	**/
	public function swapcase(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Not implemented (virtual attribute)
		
		Class generic exists solely to derive numpy scalars from, and possesses,
		albeit unimplemented, all the attributes of the ndarray class
		so as to provide a uniform API.
		
		See Also
		--------
		The corresponding attribute of the derived class of interest.
	**/
	public function take(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		S.title() -> str
		
		Return a titlecased version of S, i.e. words start with title case
		characters, all remaining cased characters have lower case.
	**/
	public function title(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function tobytes(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Not implemented (virtual attribute)
		
		Class generic exists solely to derive numpy scalars from, and possesses,
		albeit unimplemented, all the attributes of the ndarray class
		so as to provide a uniform API.
		
		See Also
		--------
		The corresponding attribute of the derived class of interest.
	**/
	public function tofile(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Not implemented (virtual attribute)
		
		Class generic exists solely to derive numpy scalars from, and possesses,
		albeit unimplemented, all the attributes of the ndarray class
		so as to provide a uniform API.
		
		See Also
		--------
		The corresponding attribute of the derived class of interest.
	**/
	public function tolist(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Not implemented (virtual attribute)
		
		Class generic exists solely to derive numpy scalars from, and possesses,
		albeit unimplemented, all the attributes of the ndarray class
		so as to provide a uniform API.
		
		See Also
		--------
		The corresponding attribute of the derived class of interest.
	**/
	public function tostring(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Not implemented (virtual attribute)
		
		Class generic exists solely to derive numpy scalars from, and possesses,
		albeit unimplemented, all the attributes of the ndarray class
		so as to provide a uniform API.
		
		See Also
		--------
		The corresponding attribute of the derived class of interest.
	**/
	public function trace(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		S.translate(table) -> str
		
		Return a copy of the string S in which each character has been mapped
		through the given translation table. The table must implement
		lookup/indexing via __getitem__, for instance a dictionary or list,
		mapping Unicode ordinals to Unicode ordinals, strings, or None. If
		this operation raises LookupError, the character is left untouched.
		Characters mapped to None are deleted.
	**/
	public function translate(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Not implemented (virtual attribute)
		
		Class generic exists solely to derive numpy scalars from, and possesses,
		albeit unimplemented, all the attributes of the ndarray class
		so as to provide a uniform API.
		
		See Also
		--------
		The corresponding attribute of the derived class of interest.
	**/
	public function transpose(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		S.upper() -> str
		
		Return a copy of S converted to uppercase.
	**/
	public function upper(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Not implemented (virtual attribute)
		
		Class generic exists solely to derive numpy scalars from, and possesses,
		albeit unimplemented, all the attributes of the ndarray class
		so as to provide a uniform API.
		
		See Also
		--------
		The corresponding attribute of the derived class of interest.
	**/
	@:native("var")
	public function _var(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Not implemented (virtual attribute)
		
		Class generic exists solely to derive numpy scalars from, and possesses,
		albeit unimplemented, all the attributes of the ndarray class
		so as to provide a uniform API.
		
		See Also
		--------
		The corresponding attribute of the derived class of interest.
	**/
	public function view(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		S.zfill(width) -> str
		
		Pad a numeric string S with zeros on the left, to fill a field
		of the specified width. The string S is never truncated.
	**/
	public function zfill(args:haxe.extern.Rest<Dynamic>):Dynamic;
}