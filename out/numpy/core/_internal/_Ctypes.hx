/* This file is generated, do not edit! */
package numpy.core._internal;
@:pythonImport("numpy.core._internal", "_ctypes") extern class _Ctypes {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
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
	public function ___init__(array:Dynamic, ?ptr:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(array:Dynamic, ?ptr:Dynamic):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
	/**
		Return self<value.
	**/
	public function __lt__(value:Dynamic):Dynamic;
	static public var __module__ : Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
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
		Abstract classes can override this to customize issubclass().
		
		This is invoked early on by abc.ABCMeta.__subclasscheck__().
		It should return True, False or NotImplemented.  If it returns
		NotImplemented, the normal algorithm is used.  Otherwise, it
		overrides the normal algorithm (and the outcome is cached).
	**/
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	/**
		Overrides the ctypes semi-magic method
		
		Enables `c_func(some_array.ctypes)`
	**/
	public var _as_parameter_ : Dynamic;
	/**
		A pointer to the memory area of the array as a Python integer.
		This memory area may contain data that is not aligned, or not in correct
		byte-order. The memory area may not even be writeable. The array
		flags and data-type of this array should be respected when passing this
		attribute to arbitrary C-code to avoid trouble that can include Python
		crashing. User Beware! The value of this attribute is exactly the same
		as ``self._array_interface_['data'][0]``.
		
		Note that unlike `data_as`, a reference will not be kept to the array:
		code like ``ctypes.c_void_p((a + b).ctypes.data)`` will result in a
		pointer to a deallocated array, and should be spelt
		``(a + b).ctypes.data_as(ctypes.c_void_p)``
	**/
	public var data : Dynamic;
	/**
		Return the data pointer cast to a particular c-types object.
		For example, calling ``self._as_parameter_`` is equivalent to
		``self.data_as(ctypes.c_void_p)``. Perhaps you want to use the data as a
		pointer to a ctypes array of floating-point data:
		``self.data_as(ctypes.POINTER(ctypes.c_double))``.
		
		The returned pointer will keep a reference to the array.
	**/
	public function data_as(obj:Dynamic):Dynamic;
	/**
		Overrides the ctypes semi-magic method
		
		Enables `c_func(some_array.ctypes)`
	**/
	public function get_as_parameter():Dynamic;
	/**
		A pointer to the memory area of the array as a Python integer.
		This memory area may contain data that is not aligned, or not in correct
		byte-order. The memory area may not even be writeable. The array
		flags and data-type of this array should be respected when passing this
		attribute to arbitrary C-code to avoid trouble that can include Python
		crashing. User Beware! The value of this attribute is exactly the same
		as ``self._array_interface_['data'][0]``.
		
		Note that unlike `data_as`, a reference will not be kept to the array:
		code like ``ctypes.c_void_p((a + b).ctypes.data)`` will result in a
		pointer to a deallocated array, and should be spelt
		``(a + b).ctypes.data_as(ctypes.c_void_p)``
	**/
	public function get_data():Dynamic;
	/**
		(c_intp*self.ndim): A ctypes array of length self.ndim where
		the basetype is the C-integer corresponding to ``dtype('p')`` on this
		platform. This base-type could be `ctypes.c_int`, `ctypes.c_long`, or
		`ctypes.c_longlong` depending on the platform.
		The c_intp type is defined accordingly in `numpy.ctypeslib`.
		The ctypes array contains the shape of the underlying array.
	**/
	public function get_shape():Dynamic;
	/**
		(c_intp*self.ndim): A ctypes array of length self.ndim where
		the basetype is the same as for the shape attribute. This ctypes array
		contains the strides information from the underlying array. This strides
		information is important for showing how many bytes must be jumped to
		get to the next element in the array.
	**/
	public function get_strides():Dynamic;
	/**
		(c_intp*self.ndim): A ctypes array of length self.ndim where
		the basetype is the C-integer corresponding to ``dtype('p')`` on this
		platform. This base-type could be `ctypes.c_int`, `ctypes.c_long`, or
		`ctypes.c_longlong` depending on the platform.
		The c_intp type is defined accordingly in `numpy.ctypeslib`.
		The ctypes array contains the shape of the underlying array.
	**/
	public var shape : Dynamic;
	/**
		Return the shape tuple as an array of some other c-types
		type. For example: ``self.shape_as(ctypes.c_short)``.
	**/
	public function shape_as(obj:Dynamic):Dynamic;
	/**
		(c_intp*self.ndim): A ctypes array of length self.ndim where
		the basetype is the same as for the shape attribute. This ctypes array
		contains the strides information from the underlying array. This strides
		information is important for showing how many bytes must be jumped to
		get to the next element in the array.
	**/
	public var strides : Dynamic;
	/**
		Return the strides tuple as an array of some other
		c-types type. For example: ``self.strides_as(ctypes.c_longlong)``.
	**/
	public function strides_as(obj:Dynamic):Dynamic;
}