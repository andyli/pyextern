/* This file is generated, do not edit! */
package pandas.core.dtypes.dtypes;
@:pythonImport("pandas.core.dtypes.dtypes") extern class Dtypes_Module {
	static public var NaT : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Check if the object is list-like.
		
		Objects that are considered list-like are for example Python
		lists, tuples, sets, NumPy arrays, and Pandas Series.
		
		Strings and datetime objects, however, are not considered list-like.
		
		Parameters
		----------
		obj : The object to check
		allow_sets : boolean, default True
		    If this parameter is False, sets will not be considered list-like
		
		    .. versionadded:: 0.24.0
		
		Returns
		-------
		is_list_like : bool
		    Whether `obj` has list-like properties.
		
		Examples
		--------
		>>> is_list_like([1, 2, 3])
		True
		>>> is_list_like({1, 2, 3})
		True
		>>> is_list_like(datetime(2017, 1, 1))
		False
		>>> is_list_like("foo")
		False
		>>> is_list_like(1)
		False
		>>> is_list_like(np.array([2]))
		True
		>>> is_list_like(np.array(2)))
		False
	**/
	static public function is_list_like(obj:Dynamic, ?allow_sets:Dynamic):Bool;
	/**
		Class decorator to register an ExtensionType with pandas.
		
		.. versionadded:: 0.24.0
		
		This enables operations like ``.astype(name)`` for the name
		of the ExtensionDtype.
		
		Examples
		--------
		>>> from pandas.api.extensions import register_extension_dtype
		>>> from pandas.api.extensions import ExtensionDtype
		>>> @register_extension_dtype
		... class MyExtensionDtype(ExtensionDtype):
		...     pass
	**/
	static public function register_extension_dtype(cls:Dynamic):Dynamic;
	static public var registry : Dynamic;
}