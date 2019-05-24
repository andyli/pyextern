/* This file is generated, do not edit! */
package pandas.core.arrays.base;
@:pythonImport("pandas.core.arrays.base", "ExtensionScalarOpsMixin") extern class ExtensionScalarOpsMixin {
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
	static public function _add_arithmetic_ops():Dynamic;
	static public function _add_comparison_ops():Dynamic;
	static public function _create_arithmetic_method(op:Dynamic):Dynamic;
	static public function _create_comparison_method(op:Dynamic):Dynamic;
	/**
		A class method that returns a method that will correspond to an
		operator for an ExtensionArray subclass, by dispatching to the
		relevant operator defined on the individual elements of the
		ExtensionArray.
		
		Parameters
		----------
		op : function
		    An operator that takes arguments op(a, b)
		coerce_to_dtype :  bool, default True
		    boolean indicating whether to attempt to convert
		    the result to the underlying ExtensionArray dtype.
		    If it's not possible to create a new ExtensionArray with the
		    values, an ndarray is returned instead.
		
		Returns
		-------
		Callable[[Any, Any], Union[ndarray, ExtensionArray]]
		    A method that can be bound to a class. When used, the method
		    receives the two arguments, one of which is the instance of
		    this class, and should return an ExtensionArray or an ndarray.
		
		    Returning an ndarray may be necessary when the result of the
		    `op` cannot be stored in the ExtensionArray. The dtype of the
		    ndarray uses NumPy's normal inference rules.
		
		Example
		-------
		Given an ExtensionArray subclass called MyExtensionArray, use
		
		>>> __add__ = cls._create_method(operator.add)
		
		in the class definition of MyExtensionArray to create the operator
		for addition, that will be based on the operator implementation
		of the underlying elements of the ExtensionArray
	**/
	static public function _create_method(op:Dynamic, ?coerce_to_dtype:Dynamic):Dynamic;
}