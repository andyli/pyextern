/* This file is generated, do not edit! */
package numpy;
@:pythonImport("numpy", "float64") extern class Float64 {
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
		float.__getformat__(typestr) -> string
		
		You probably don't want to use this function.  It exists mainly to be
		used in Python's test suite.
		
		typestr must be 'double' or 'float'.  This function returns whichever of
		'unknown', 'IEEE, big-endian' or 'IEEE, little-endian' best describes the
		format of floating point numbers used by the C type named by typestr.
	**/
	static public function __getformat__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self[key].
	**/
	public function __getitem__(key:Dynamic):Dynamic;
	public function __getnewargs__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	static public var __hash__ : Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		int(self)
	**/
	public function __int__():Dynamic;
	/**
		~self
	**/
	public function __invert__():Dynamic;
	/**
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
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
		Return value*self.
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
	/**
		float.__setformat__(typestr, fmt) -> None
		
		You probably don't want to use this function.  It exists mainly to be
		used in Python's test suite.
		
		typestr must be 'double' or 'float'.  fmt must be one of 'unknown',
		'IEEE, big-endian' or 'IEEE, little-endian', and in addition can only be
		one of the latter two if it appears to match the underlying C reality.
		
		Override the automatic determination of C-level floating point type.
		This affects how floats are converted to and from binary strings.
	**/
	static public function __setformat__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self/value.
	**/
	public function __truediv__(value:Dynamic):Dynamic;
	/**
		Return the Integral closest to x between 0 and x.
	**/
	public function __trunc__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		float.as_integer_ratio() -> (int, int)
		
		Return a pair of integers, whose ratio is exactly equal to the original
		float and with a positive denominator.
		Raise OverflowError on infinities and a ValueError on NaNs.
		
		>>> (10.0).as_integer_ratio()
		(10, 1)
		>>> (0.0).as_integer_ratio()
		(0, 1)
		>>> (-.25).as_integer_ratio()
		(-1, 4)
	**/
	public function as_integer_ratio(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		float.fromhex(string) -> float
		
		Create a floating-point number from a hexadecimal string.
		>>> float.fromhex('0x1.ffffp10')
		2047.984375
		>>> float.fromhex('-0x1p-1074')
		-5e-324
	**/
	static public function fromhex(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		float.hex() -> string
		
		Return a hexadecimal representation of a floating-point number.
		>>> (-0.1).hex()
		'-0x1.999999999999ap-4'
		>>> 3.14159.hex()
		'0x1.921f9f01b866ep+1'
	**/
	public function hex(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		imaginary part of scalar
	**/
	public var imag : Dynamic;
	/**
		Return True if the float is an integer.
	**/
	public function is_integer(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		
		* {'<', 'L'} - little endian
		* {'>', 'B'} - big endian
		* {'=', 'N'} - native order
		* 'S' - swap dtype from current to opposite endian
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
		Not implemented (virtual attribute)
		
		Class generic exists solely to derive numpy scalars from, and possesses,
		albeit unimplemented, all the attributes of the ndarray class
		so as to provide a uniform API.
		
		See Also
		--------
		The corresponding attribute of the derived class of interest.
	**/
	public function take(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
}