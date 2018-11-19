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
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
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
		Flooring an Integral returns itself.
	**/
	public function __floor__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self//value.
	**/
	public function __floordiv__(value:Dynamic):Dynamic;
	/**
		default object formatter
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
		Return self converted to an integer, if self is suitable for use as an index into a list.
	**/
	public function __index__():Dynamic;
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
	static public var __module__ : Dynamic;
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
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		Returns size in memory, in bytes
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
		Truncating an Integral returns itself.
	**/
	public function __trunc__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self^value.
	**/
	public function __xor__(value:Dynamic):Dynamic;
	/**
		int.bit_length() -> int
		
		Number of bits necessary to represent self in binary.
		>>> bin(37)
		'0b100101'
		>>> (37).bit_length()
		6
	**/
	public function bit_length(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Returns self, the complex conjugate of any int.
	**/
	public function conjugate(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		the denominator of a rational number in lowest terms
	**/
	public var denominator : Dynamic;
	/**
		int.from_bytes(bytes, byteorder, *, signed=False) -> int
		
		Return the integer represented by the given array of bytes.
		
		The bytes argument must be a bytes-like object (e.g. bytes or bytearray).
		
		The byteorder argument determines the byte order used to represent the
		integer.  If byteorder is 'big', the most significant byte is at the
		beginning of the byte array.  If byteorder is 'little', the most
		significant byte is at the end of the byte array.  To request the native
		byte order of the host system, use `sys.byteorder' as the byte order value.
		
		The signed keyword-only argument indicates whether two's complement is
		used to represent the integer.
	**/
	public function from_bytes(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		int.to_bytes(length, byteorder, *, signed=False) -> bytes
		
		Return an array of bytes representing an integer.
		
		The integer is represented using length bytes.  An OverflowError is
		raised if the integer is not representable with the given number of
		bytes.
		
		The byteorder argument determines the byte order used to represent the
		integer.  If byteorder is 'big', the most significant byte is at the
		beginning of the byte array.  If byteorder is 'little', the most
		significant byte is at the end of the byte array.  To request the native
		byte order of the host system, use `sys.byteorder' as the byte order value.
		
		The signed keyword-only argument determines whether two's complement is
		used to represent the integer.  If signed is False and a negative integer
		is given, an OverflowError is raised.
	**/
	public function to_bytes(args:haxe.extern.Rest<Dynamic>):Dynamic;
}