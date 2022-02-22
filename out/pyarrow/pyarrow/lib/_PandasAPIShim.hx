/* This file is generated, do not edit! */
package pyarrow.lib;
@:pythonImport("pyarrow.lib", "_PandasAPIShim") extern class _PandasAPIShim {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	/**
		Default dir() implementation.
	**/
	public function __dir__():Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		Default object formatter.
	**/
	public function __format__(format_spec:Dynamic):Dynamic;
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
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var __pyx_vtable__ : Dynamic;
	/**
		_PandasAPIShim.__reduce_cython__(self)
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
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		_PandasAPIShim.__setstate_cython__(self, __pyx_state)
	**/
	public function __setstate__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Size of object in memory, in bytes.
	**/
	public function __sizeof__():Dynamic;
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
	public var _array_like_types : Dynamic;
	public var _categorical_type : Dynamic;
	public var _compat_module : Dynamic;
	public var _data_frame : Dynamic;
	public var _datetimetz_type : Dynamic;
	public var _extension_array : Dynamic;
	public var _extension_dtype : Dynamic;
	public var _index : Dynamic;
	public var _is_extension_array_dtype : Dynamic;
	public var _loose_version : Dynamic;
	public var _pd : Dynamic;
	public var _pd024 : Dynamic;
	public var _series : Dynamic;
	public var _types_api : Dynamic;
	public var _version : Dynamic;
	/**
		_PandasAPIShim.assert_frame_equal(self, *args, **kwargs)
	**/
	public function assert_frame_equal(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var categorical_type : Dynamic;
	public var compat : Dynamic;
	/**
		_PandasAPIShim.data_frame(self, *args, **kwargs)
	**/
	public function data_frame(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var datetimetz_type : Dynamic;
	public var extension_dtype : Dynamic;
	/**
		_PandasAPIShim.get_rangeindex_attribute(self, level, name)
	**/
	public function get_rangeindex_attribute(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_PandasAPIShim.get_values(self, obj)
		
		Get the underlying array values of a pandas Series or Index in the
		format (np.ndarray or pandas ExtensionArray) as we need them.
		
		Assumes obj is a pandas Series or Index.
	**/
	public function get_values(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var has_sparse : Dynamic;
	public var have_pandas : Dynamic;
	/**
		_PandasAPIShim.infer_dtype(self, obj)
	**/
	public function infer_dtype(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_PandasAPIShim.is_array_like(self, obj)
	**/
	public function is_array_like(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_PandasAPIShim.is_categorical(self, obj)
	**/
	public function is_categorical(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_PandasAPIShim.is_data_frame(self, obj)
	**/
	public function is_data_frame(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_PandasAPIShim.is_datetimetz(self, obj)
	**/
	public function is_datetimetz(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_PandasAPIShim.is_extension_array_dtype(self, obj)
	**/
	public function is_extension_array_dtype(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_PandasAPIShim.is_index(self, obj)
	**/
	public function is_index(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_PandasAPIShim.is_series(self, obj)
	**/
	public function is_series(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_PandasAPIShim.is_sparse(self, obj)
	**/
	public function is_sparse(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var loose_version : Dynamic;
	/**
		_PandasAPIShim.pandas_dtype(self, dtype)
	**/
	public function pandas_dtype(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var pd : Dynamic;
	/**
		_PandasAPIShim.series(self, *args, **kwargs)
	**/
	public function series(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var version : Dynamic;
}