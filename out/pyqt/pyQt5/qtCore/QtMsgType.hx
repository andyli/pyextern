/* This file is generated, do not edit! */
package pyQt5.qtCore;
@:pythonImport("PyQt5.QtCore", "QtMsgType") extern class QtMsgType {
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
		self != 0
	**/
	public function __bool__():Dynamic;
	/**
		Ceiling of an Integral returns itself.
	**/
	public function __ceil__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	static public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		Specialized __dir__ implementation for types.
	**/
	static public function __dir__():Dynamic;
	/**
		Return divmod(self, value).
	**/
	public function __divmod__(value:Dynamic):Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	static public function __eq__(value:Dynamic):Dynamic;
	/**
		float(self)
	**/
	public function __float__():Dynamic;
	/**
		Flooring an Integral returns itself.
	**/
	public function __floor__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self//value.
	**/
	public function __floordiv__(value:Dynamic):Dynamic;
	/**
		Default object formatter.
	**/
	static public function __format__(format_spec:Dynamic):Dynamic;
	/**
		Return self>=value.
	**/
	static public function __ge__(value:Dynamic):Dynamic;
	/**
		Return getattr(self, name).
	**/
	static public function __getattribute__(name:Dynamic):Dynamic;
	public function __getnewargs__():Dynamic;
	/**
		Return self>value.
	**/
	static public function __gt__(value:Dynamic):Dynamic;
	/**
		Return hash(self).
	**/
	static public function __hash__():Dynamic;
	/**
		Return self converted to an integer, if self is suitable for use as an index into a list.
	**/
	public function __index__():Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(?kwargs:python.KwArgs<Dynamic>):Void;
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
		Return self<=value.
	**/
	static public function __le__(value:Dynamic):Dynamic;
	/**
		Return self<<value.
	**/
	public function __lshift__(value:Dynamic):Dynamic;
	/**
		Return self<value.
	**/
	static public function __lt__(value:Dynamic):Dynamic;
	/**
		Return self%value.
	**/
	public function __mod__(value:Dynamic):Dynamic;
	static public var __module__ : Dynamic;
	/**
		Return self*value.
	**/
	public function __mul__(value:Dynamic):Dynamic;
	/**
		Return self!=value.
	**/
	static public function __ne__(value:Dynamic):Dynamic;
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
	static public function __reduce__():Dynamic;
	/**
		Helper for pickle.
	**/
	static public function __reduce_ex__(protocol:Dynamic):Dynamic;
	/**
		Return repr(self).
	**/
	static public function __repr__():Dynamic;
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
		Rounding an Integral returns itself.
		Rounding with an ndigits argument also returns an integer.
	**/
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
	static public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		Return memory consumption of the type object.
	**/
	static public function __sizeof__():Dynamic;
	/**
		Return str(self).
	**/
	static public function __str__():Dynamic;
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
		Truncating an Integral returns itself.
	**/
	public function __trunc__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self^value.
	**/
	public function __xor__(value:Dynamic):Dynamic;
	/**
		Return integer ratio.
		
		Return a pair of integers, whose ratio is exactly equal to the original int
		and with a positive denominator.
		
		>>> (10).as_integer_ratio()
		(10, 1)
		>>> (-10).as_integer_ratio()
		(-10, 1)
		>>> (0).as_integer_ratio()
		(0, 1)
	**/
	public function as_integer_ratio():Dynamic;
	/**
		Number of bits necessary to represent self in binary.
		
		>>> bin(37)
		'0b100101'
		>>> (37).bit_length()
		6
	**/
	public function bit_length():Dynamic;
	/**
		Returns self, the complex conjugate of any int.
	**/
	public function conjugate(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		the denominator of a rational number in lowest terms
	**/
	public var denominator : Dynamic;
	/**
		Return the integer represented by the given array of bytes.
		
		bytes
		  Holds the array of bytes to convert.  The argument must either
		  support the buffer protocol or be an iterable object producing bytes.
		  Bytes and bytearray are examples of built-in objects that support the
		  buffer protocol.
		byteorder
		  The byte order used to represent the integer.  If byteorder is 'big',
		  the most significant byte is at the beginning of the byte array.  If
		  byteorder is 'little', the most significant byte is at the end of the
		  byte array.  To request the native byte order of the host system, use
		  `sys.byteorder' as the byte order value.
		signed
		  Indicates whether two's complement is used to represent the integer.
	**/
	static public function from_bytes(type:Dynamic, bytes:Dynamic, byteorder:Dynamic, ?signed:Dynamic):Dynamic;
	/**
		the imaginary part of a complex number
	**/
	public var imag : Dynamic;
	/**
		the numerator of a rational number in lowest terms
	**/
	public var numerator : Dynamic;
	/**
		the real part of a complex number
	**/
	public var real : Dynamic;
	/**
		Return an array of bytes representing an integer.
		
		length
		  Length of bytes object to use.  An OverflowError is raised if the
		  integer is not representable with the given number of bytes.
		byteorder
		  The byte order used to represent the integer.  If byteorder is 'big',
		  the most significant byte is at the beginning of the byte array.  If
		  byteorder is 'little', the most significant byte is at the end of the
		  byte array.  To request the native byte order of the host system, use
		  `sys.byteorder' as the byte order value.
		signed
		  Determines whether two's complement is used to represent the integer.
		  If signed is False and a negative integer is given, an OverflowError
		  is raised.
	**/
	public function to_bytes(length:Dynamic, byteorder:Dynamic, ?signed:Dynamic):Dynamic;
}