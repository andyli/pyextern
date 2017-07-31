/* This file is generated, do not edit! */
package numpy.core.shape_base;
@:pythonImport("numpy.core.shape_base", "_Recurser") extern class _Recurser {
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
	public function ___init__(recurse_if:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(recurse_if:Dynamic):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	static public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	/**
		Iterate over the nested list, applying:
		* ``f_map`` (T -> U) to items
		* ``f_reduce`` (Iterable[U] -> U) to mapped items
		
		For instance, ``map_reduce([[1, 2], 3, 4])`` is::
		
		    f_reduce([
		      f_reduce([
		        f_map(1),
		        f_map(2)
		      ]),
		      f_map(3),
		      f_map(4)
		    ]])
		
		
		State can be passed down through the calls with `f_kwargs`,
		to iterables of mapped items. When kwargs are passed, as in
		``map_reduce([[1, 2], 3, 4], **kw)``, this becomes::
		
		    kw1 = f_kwargs(**kw)
		    kw2 = f_kwargs(**kw1)
		    f_reduce([
		      f_reduce([
		        f_map(1), **kw2)
		        f_map(2,  **kw2)
		      ],      **kw1),
		      f_map(3, **kw1),
		      f_map(4, **kw1)
		    ]],     **kw)
	**/
	public function map_reduce(x:Dynamic, ?f_map:Dynamic, ?f_reduce:Dynamic, ?f_kwargs:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Iterate over x, yielding (index, value, entering), where
		
		* ``index``: a tuple of indices up to this point
		* ``value``: equal to ``x[index[0]][...][index[-1]]``. On the first iteration, is
		             ``x`` itself
		* ``entering``: bool. The result of ``recurse_if(value)``
	**/
	public function walk(x:Dynamic, ?index:Dynamic):Dynamic;
}