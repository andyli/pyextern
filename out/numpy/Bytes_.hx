/* This file is generated, do not edit! */
package numpy;
@:pythonImport("numpy", "bytes_") extern class Bytes_ {
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
		sc.__array__(dtype) return 0-dim array from scalar with specified dtype
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
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		NumPy array scalar formatter
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
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		__sizeof__() -> int
		size of object in memory, in bytes
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
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		B.capitalize() -> copy of B
		
		Return a copy of B with only its first character capitalized (ASCII)
		and the rest lower-cased.
	**/
	public function capitalize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		B.center(width[, fillchar]) -> copy of B
		
		Return B centered in a string of length width.  Padding is
		done using the specified fill character (default is a space).
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
		B.count(sub[, start[, end]]) -> int
		
		Return the number of non-overlapping occurrences of subsection sub in
		bytes B[start:end].  Optional arguments start and end are interpreted
		as in slice notation.
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
		Decode the bytes using the codec registered for encoding.
		
		encoding
		  The encoding with which to decode the bytes.
		errors
		  The error handling scheme to use for the handling of decoding errors.
		  The default is 'strict' meaning that decoding errors raise a
		  UnicodeDecodeError. Other possible values are 'ignore' and 'replace'
		  as well as any other name registered with codecs.register_error that
		  can handle UnicodeDecodeErrors.
	**/
	public function decode(?encoding:Dynamic, ?errors:Dynamic):Dynamic;
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
		B.endswith(suffix[, start[, end]]) -> bool
		
		Return True if B ends with the specified suffix, False otherwise.
		With optional start, test B beginning at that position.
		With optional end, stop comparing B at that position.
		suffix can also be a tuple of bytes to try.
	**/
	public function endswith(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		B.expandtabs(tabsize=8) -> copy of B
		
		Return a copy of B where all tab characters are expanded using spaces.
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
		B.find(sub[, start[, end]]) -> int
		
		Return the lowest index in B where subsection sub is found,
		such that sub is contained within B[start,end].  Optional
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
		Create a bytes object from a string of hexadecimal numbers.
		
		Spaces between two numbers are accepted.
		Example: bytes.fromhex('B9 01EF') -> b'\\xb9\\x01\\xef'.
	**/
	static public function fromhex(string:Dynamic):Dynamic;
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
		B.hex() -> string
		
		Create a string of hexadecimal numbers from a bytes object.
		Example: b'\xb9\x01\xef'.hex() -> 'b901ef'.
	**/
	public function hex(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		imaginary part of scalar
	**/
	public var imag : Dynamic;
	/**
		B.index(sub[, start[, end]]) -> int
		
		Like B.find() but raise ValueError when the subsection is not found.
	**/
	public function index(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		B.isalnum() -> bool
		
		Return True if all characters in B are alphanumeric
		and there is at least one character in B, False otherwise.
	**/
	public function isalnum(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		B.isalpha() -> bool
		
		Return True if all characters in B are alphabetic
		and there is at least one character in B, False otherwise.
	**/
	public function isalpha(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		B.isdigit() -> bool
		
		Return True if all characters in B are digits
		and there is at least one character in B, False otherwise.
	**/
	public function isdigit(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		B.islower() -> bool
		
		Return True if all cased characters in B are lowercase and there is
		at least one cased character in B, False otherwise.
	**/
	public function islower(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		B.isspace() -> bool
		
		Return True if all characters in B are whitespace
		and there is at least one character in B, False otherwise.
	**/
	public function isspace(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		B.istitle() -> bool
		
		Return True if B is a titlecased string and there is at least one
		character in B, i.e. uppercase characters may only follow uncased
		characters and lowercase characters only cased ones. Return False
		otherwise.
	**/
	public function istitle(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		B.isupper() -> bool
		
		Return True if all cased characters in B are uppercase and there is
		at least one cased character in B, False otherwise.
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
		Concatenate any number of bytes objects.
		
		The bytes whose method is called is inserted in between each pair.
		
		The result is returned as a new bytes object.
		
		Example: b'.'.join([b'ab', b'pq', b'rs']) -> b'ab.pq.rs'.
	**/
	public function join(iterable_of_bytes:Dynamic):Dynamic;
	/**
		B.ljust(width[, fillchar]) -> copy of B
		
		Return B left justified in a string of length width. Padding is
		done using the specified fill character (default is a space).
	**/
	public function ljust(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		B.lower() -> copy of B
		
		Return a copy of B with all ASCII characters converted to lowercase.
	**/
	public function lower(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Strip leading bytes contained in the argument.
		
		If the argument is omitted or None, strip leading  ASCII whitespace.
	**/
	public function lstrip(?bytes:Dynamic):Dynamic;
	/**
		Return a translation table useable for the bytes or bytearray translate method.
		
		The returned table will be one where each byte in frm is mapped to the byte at
		the same position in to.
		
		The bytes objects frm and to must be of the same length.
	**/
	static public function maketrans(frm:Dynamic, to:Dynamic):Dynamic;
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
		Partition the bytes into three parts using the given separator.
		
		This will search for the separator sep in the bytes. If the separator is found,
		returns a 3-tuple containing the part before the separator, the separator
		itself, and the part after it.
		
		If the separator is not found, returns a 3-tuple containing the original bytes
		object and two empty bytes objects.
	**/
	public function partition(sep:Dynamic):Dynamic;
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
		Return a copy with all occurrences of substring old replaced by new.
		
		  count
		    Maximum number of occurrences to replace.
		    -1 (the default value) means replace all occurrences.
		
		If the optional argument count is given, only the first count occurrences are
		replaced.
	**/
	public function replace(old:Dynamic, _new:Dynamic, ?count:Dynamic):Dynamic;
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
		B.rfind(sub[, start[, end]]) -> int
		
		Return the highest index in B where subsection sub is found,
		such that sub is contained within B[start,end].  Optional
		arguments start and end are interpreted as in slice notation.
		
		Return -1 on failure.
	**/
	public function rfind(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		B.rindex(sub[, start[, end]]) -> int
		
		Like B.rfind() but raise ValueError when the subsection is not found.
	**/
	public function rindex(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		B.rjust(width[, fillchar]) -> copy of B
		
		Return B right justified in a string of length width. Padding is
		done using the specified fill character (default is a space)
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
		Partition the bytes into three parts using the given separator.
		
		This will search for the separator sep in the bytes, starting and the end. If
		the separator is found, returns a 3-tuple containing the part before the
		separator, the separator itself, and the part after it.
		
		If the separator is not found, returns a 3-tuple containing two empty bytes
		objects and the original bytes object.
	**/
	public function rpartition(sep:Dynamic):Dynamic;
	/**
		Return a list of the sections in the bytes, using sep as the delimiter.
		
		  sep
		    The delimiter according which to split the bytes.
		    None (the default value) means split on ASCII whitespace characters
		    (space, tab, return, newline, formfeed, vertical tab).
		  maxsplit
		    Maximum number of splits to do.
		    -1 (the default value) means no limit.
		
		Splitting is done starting at the end of the bytes and working to the front.
	**/
	public function rsplit(?sep:Dynamic, ?maxsplit:Dynamic):Dynamic;
	/**
		Strip trailing bytes contained in the argument.
		
		If the argument is omitted or None, strip trailing ASCII whitespace.
	**/
	public function rstrip(?bytes:Dynamic):Dynamic;
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
		Return a list of the sections in the bytes, using sep as the delimiter.
		
		sep
		  The delimiter according which to split the bytes.
		  None (the default value) means split on ASCII whitespace characters
		  (space, tab, return, newline, formfeed, vertical tab).
		maxsplit
		  Maximum number of splits to do.
		  -1 (the default value) means no limit.
	**/
	public function split(?sep:Dynamic, ?maxsplit:Dynamic):Dynamic;
	/**
		Return a list of the lines in the bytes, breaking at line boundaries.
		
		Line breaks are not included in the resulting list unless keepends is given and
		true.
	**/
	public function splitlines(?keepends:Dynamic):Dynamic;
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
		B.startswith(prefix[, start[, end]]) -> bool
		
		Return True if B starts with the specified prefix, False otherwise.
		With optional start, test B beginning at that position.
		With optional end, stop comparing B at that position.
		prefix can also be a tuple of bytes to try.
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
		Strip leading and trailing bytes contained in the argument.
		
		If the argument is omitted or None, strip leading and trailing ASCII whitespace.
	**/
	public function strip(?bytes:Dynamic):Dynamic;
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
		B.swapcase() -> copy of B
		
		Return a copy of B with uppercase ASCII characters converted
		to lowercase ASCII and vice versa.
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
		B.title() -> copy of B
		
		Return a titlecased version of B, i.e. ASCII words start with uppercase
		characters, all remaining cased characters have lowercase.
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
		Return a copy with each character mapped by the given translation table.
		
		  table
		    Translation table, which must be a bytes object of length 256.
		
		All characters occurring in the optional argument delete are removed.
		The remaining characters are mapped through the given translation table.
	**/
	public function translate(table:Dynamic, ?delete:Dynamic):Dynamic;
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
		B.upper() -> copy of B
		
		Return a copy of B with all ASCII characters converted to uppercase.
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
		B.zfill(width) -> copy of B
		
		Pad a numeric string B with zeros on the left, to fill a field
		of the specified width.  B is never truncated.
	**/
	public function zfill(args:haxe.extern.Rest<Dynamic>):Dynamic;
}