/* This file is generated, do not edit! */
package numpy;
@:pythonImport("numpy", "bytes_") extern class Bytes_ {
	/**
		Scalar attribute identical to the corresponding array attribute.
		
		Please see `ndarray.T`.
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
		Default dir() implementation.
	**/
	public function __dir__():Dynamic;
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
		Return self*value.
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
		Helper for pickle.
	**/
	public function __reduce__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce_ex__(protocol:Dynamic):Dynamic;
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
		Return value*self.
	**/
	public function __rmul__(value:Dynamic):Dynamic;
	/**
		Return value|self.
	**/
	public function __ror__(value:Dynamic):Dynamic;
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
		Size of object in memory, in bytes.
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
		Scalar method identical to the corresponding array attribute.
		
		Please see `ndarray.all`.
	**/
	public function all(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Scalar method identical to the corresponding array attribute.
		
		Please see `ndarray.any`.
	**/
	public function any(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Scalar method identical to the corresponding array attribute.
		
		Please see `ndarray.argmax`.
	**/
	public function argmax(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Scalar method identical to the corresponding array attribute.
		
		Please see `ndarray.argmin`.
	**/
	public function argmin(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Scalar method identical to the corresponding array attribute.
		
		Please see `ndarray.argsort`.
	**/
	public function argsort(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Scalar method identical to the corresponding array attribute.
		
		Please see `ndarray.astype`.
	**/
	public function astype(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Scalar attribute identical to the corresponding array attribute.
		
		Please see `ndarray.base`.
	**/
	public var base : Dynamic;
	/**
		Scalar method identical to the corresponding array attribute.
		
		Please see `ndarray.byteswap`.
	**/
	public function byteswap(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		B.capitalize() -> copy of B
		
		Return a copy of B with only its first character capitalized (ASCII)
		and the rest lower-cased.
	**/
	public function capitalize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return a centered string of length width.
		
		Padding is done using the specified fill character.
	**/
	public function center(width:Dynamic, ?fillchar:Dynamic):Dynamic;
	/**
		Scalar method identical to the corresponding array attribute.
		
		Please see `ndarray.choose`.
	**/
	public function choose(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Scalar method identical to the corresponding array attribute.
		
		Please see `ndarray.clip`.
	**/
	public function clip(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Scalar method identical to the corresponding array attribute.
		
		Please see `ndarray.compress`.
	**/
	public function compress(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function conj(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Scalar method identical to the corresponding array attribute.
		
		Please see `ndarray.conjugate`.
	**/
	public function conjugate(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Scalar method identical to the corresponding array attribute.
		
		Please see `ndarray.copy`.
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
		Scalar method identical to the corresponding array attribute.
		
		Please see `ndarray.cumprod`.
	**/
	public function cumprod(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Scalar method identical to the corresponding array attribute.
		
		Please see `ndarray.cumsum`.
	**/
	public function cumsum(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Pointer to start of data.
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
		Scalar method identical to the corresponding array attribute.
		
		Please see `ndarray.diagonal`.
	**/
	public function diagonal(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Get array data-descriptor.
	**/
	public var dtype : Dynamic;
	/**
		Scalar method identical to the corresponding array attribute.
		
		Please see `ndarray.dump`.
	**/
	public function dump(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Scalar method identical to the corresponding array attribute.
		
		Please see `ndarray.dumps`.
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
		Return a copy where all tab characters are expanded using spaces.
		
		If tabsize is not given, a tab size of 8 characters is assumed.
	**/
	public function expandtabs(?tabsize:Dynamic):Dynamic;
	/**
		Scalar method identical to the corresponding array attribute.
		
		Please see `ndarray.fill`.
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
		The integer value of flags.
	**/
	public var flags : Dynamic;
	/**
		A 1-D view of the scalar.
	**/
	public var flat : Dynamic;
	/**
		Scalar method identical to the corresponding array attribute.
		
		Please see `ndarray.flatten`.
	**/
	public function flatten(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Create a bytes object from a string of hexadecimal numbers.
		
		Spaces between two numbers are accepted.
		Example: bytes.fromhex('B9 01EF') -> b'\\xb9\\x01\\xef'.
	**/
	static public function fromhex(string:Dynamic):Dynamic;
	/**
		Scalar method identical to the corresponding array attribute.
		
		Please see `ndarray.getfield`.
	**/
	public function getfield(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Create a str of hexadecimal numbers from a bytes object.
		
		  sep
		    An optional single character or byte to separate hex bytes.
		  bytes_per_sep
		    How many bytes between separators.  Positive values count from the
		    right, negative values count from the left.
		
		Example:
		>>> value = b'\xb9\x01\xef'
		>>> value.hex()
		'b901ef'
		>>> value.hex(':')
		'b9:01:ef'
		>>> value.hex(':', 2)
		'b9:01ef'
		>>> value.hex(':', -2)
		'b901:ef'
	**/
	public function hex(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		The imaginary part of the scalar.
	**/
	public var imag : Dynamic;
	/**
		B.index(sub[, start[, end]]) -> int
		
		Return the lowest index in B where subsection sub is found,
		such that sub is contained within B[start,end].  Optional
		arguments start and end are interpreted as in slice notation.
		
		Raises ValueError when the subsection is not found.
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
		B.isascii() -> bool
		
		Return True if B is empty or all characters in B are ASCII,
		False otherwise.
	**/
	public function isascii(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Scalar method identical to the corresponding array attribute.
		
		Please see `ndarray.item`.
	**/
	public function item(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Scalar method identical to the corresponding array attribute.
		
		Please see `ndarray.itemset`.
	**/
	public function itemset(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		The length of one element in bytes.
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
		Return a left-justified string of length width.
		
		Padding is done using the specified fill character.
	**/
	public function ljust(width:Dynamic, ?fillchar:Dynamic):Dynamic;
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
		Scalar method identical to the corresponding array attribute.
		
		Please see `ndarray.max`.
	**/
	public function max(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Scalar method identical to the corresponding array attribute.
		
		Please see `ndarray.mean`.
	**/
	public function mean(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Scalar method identical to the corresponding array attribute.
		
		Please see `ndarray.min`.
	**/
	public function min(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		The length of the scalar in bytes.
	**/
	public var nbytes : Dynamic;
	/**
		The number of array dimensions.
	**/
	public var ndim : Dynamic;
	/**
		newbyteorder(new_order='S', /)
		
		Return a new `dtype` with a different byte order.
		
		Changes are also made in all fields and sub-arrays of the data type.
		
		The `new_order` code can be any from the following:
		
		* 'S' - swap dtype from current to opposite endian
		* {'<', 'little'} - little endian
		* {'>', 'big'} - big endian
		* {'=', 'native'} - native order
		* {'|', 'I'} - ignore (no change to byte order)
		
		Parameters
		----------
		new_order : str, optional
		    Byte order to force; a value from the byte order specifications
		    above.  The default value ('S') results in swapping the current
		    byte order.
		
		
		Returns
		-------
		new_dtype : dtype
		    New `dtype` object with the given change to the byte order.
	**/
	public function newbyteorder(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Scalar method identical to the corresponding array attribute.
		
		Please see `ndarray.nonzero`.
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
		Scalar method identical to the corresponding array attribute.
		
		Please see `ndarray.prod`.
	**/
	public function prod(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Scalar method identical to the corresponding array attribute.
		
		Please see `ndarray.ptp`.
	**/
	public function ptp(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Scalar method identical to the corresponding array attribute.
		
		Please see `ndarray.put`.
	**/
	public function put(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Scalar method identical to the corresponding array attribute.
		
		Please see `ndarray.ravel`.
	**/
	public function ravel(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		The real part of the scalar.
	**/
	public var real : Dynamic;
	/**
		Scalar method identical to the corresponding array attribute.
		
		Please see `ndarray.repeat`.
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
		Scalar method identical to the corresponding array attribute.
		
		Please see `ndarray.reshape`.
	**/
	public function reshape(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Scalar method identical to the corresponding array attribute.
		
		Please see `ndarray.resize`.
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
		
		Return the highest index in B where subsection sub is found,
		such that sub is contained within B[start,end].  Optional
		arguments start and end are interpreted as in slice notation.
		
		Raise ValueError when the subsection is not found.
	**/
	public function rindex(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return a right-justified string of length width.
		
		Padding is done using the specified fill character.
	**/
	public function rjust(width:Dynamic, ?fillchar:Dynamic):Dynamic;
	/**
		Scalar method identical to the corresponding array attribute.
		
		Please see `ndarray.round`.
	**/
	public function round(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Partition the bytes into three parts using the given separator.
		
		This will search for the separator sep in the bytes, starting at the end. If
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
		Scalar method identical to the corresponding array attribute.
		
		Please see `ndarray.searchsorted`.
	**/
	public function searchsorted(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Scalar method identical to the corresponding array attribute.
		
		Please see `ndarray.setfield`.
	**/
	public function setfield(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Scalar method identical to the corresponding array attribute.
		
		Please see `ndarray.setflags`.
	**/
	public function setflags(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Tuple of array dimensions.
	**/
	public var shape : Dynamic;
	/**
		The number of elements in the gentype.
	**/
	public var size : Dynamic;
	/**
		Scalar method identical to the corresponding array attribute.
		
		Please see `ndarray.sort`.
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
		Scalar method identical to the corresponding array attribute.
		
		Please see `ndarray.squeeze`.
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
		Scalar method identical to the corresponding array attribute.
		
		Please see `ndarray.std`.
	**/
	public function std(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Tuple of bytes steps in each dimension.
	**/
	public var strides : Dynamic;
	/**
		Strip leading and trailing bytes contained in the argument.
		
		If the argument is omitted or None, strip leading and trailing ASCII whitespace.
	**/
	public function strip(?bytes:Dynamic):Dynamic;
	/**
		Scalar method identical to the corresponding array attribute.
		
		Please see `ndarray.sum`.
	**/
	public function sum(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Scalar method identical to the corresponding array attribute.
		
		Please see `ndarray.swapaxes`.
	**/
	public function swapaxes(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		B.swapcase() -> copy of B
		
		Return a copy of B with uppercase ASCII characters converted
		to lowercase ASCII and vice versa.
	**/
	public function swapcase(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Scalar method identical to the corresponding array attribute.
		
		Please see `ndarray.take`.
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
		Scalar method identical to the corresponding array attribute.
		
		Please see `ndarray.tofile`.
	**/
	public function tofile(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Scalar method identical to the corresponding array attribute.
		
		Please see `ndarray.tolist`.
	**/
	public function tolist(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Scalar method identical to the corresponding array attribute.
		
		Please see `ndarray.tostring`.
	**/
	public function tostring(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Scalar method identical to the corresponding array attribute.
		
		Please see `ndarray.trace`.
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
		Scalar method identical to the corresponding array attribute.
		
		Please see `ndarray.transpose`.
	**/
	public function transpose(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		B.upper() -> copy of B
		
		Return a copy of B with all ASCII characters converted to uppercase.
	**/
	public function upper(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Scalar method identical to the corresponding array attribute.
		
		Please see `ndarray.var`.
	**/
	@:native("var")
	public function _var(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Scalar method identical to the corresponding array attribute.
		
		Please see `ndarray.view`.
	**/
	public function view(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Pad a numeric string with zeros on the left, to fill a field of the given width.
		
		The original string is never truncated.
	**/
	public function zfill(width:Dynamic):Dynamic;
}