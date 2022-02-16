/* This file is generated, do not edit! */
package pandas.core.util.hashing;
@:pythonImport("pandas.core.util.hashing") extern class Hashing_Module {
	static public function ArrayLike(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Hashable(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Iterable(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Iterator(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var TYPE_CHECKING : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _default_hash_key : Dynamic;
	/**
		Hash a Categorical by hashing its categories, and then mapping the codes
		to the hashes
		
		Parameters
		----------
		cat : Categorical
		encoding : str
		hash_key : str
		
		Returns
		-------
		ndarray[np.uint64] of hashed values, same size as len(c)
	**/
	static public function _hash_categorical(cat:Dynamic, encoding:Dynamic, hash_key:Dynamic):Dynamic;
	/**
		See hash_array.__doc__.
	**/
	static public function _hash_ndarray(vals:Dynamic, ?encoding:Dynamic, ?hash_key:Dynamic, ?categorize:Dynamic):Dynamic;
	static public var annotations : Dynamic;
	/**
		Cast a value to a type.
		
		This returns the value unchanged.  To the type checker this
		signals that the return value has the designated type, but at
		runtime we intentionally don't check anything (we want this
		to be as fast as possible).
	**/
	@:native("cast")
	static public function _cast(typ:Dynamic, val:Dynamic):Dynamic;
	/**
		Parameters
		----------
		arrays : Iterator[np.ndarray]
		num_items : int
		
		Returns
		-------
		np.ndarray[uint64]
		
		Should be the same as CPython's tupleobject.c
	**/
	static public function combine_hash_arrays(arrays:Dynamic, num_items:Dynamic):Dynamic;
	/**
		Given a 1d array, return an array of deterministic integers.
		
		Parameters
		----------
		vals : ndarray or ExtensionArray
		encoding : str, default 'utf8'
		    Encoding for data & key when strings.
		hash_key : str, default _default_hash_key
		    Hash_key for string key to encode.
		categorize : bool, default True
		    Whether to first categorize object arrays before hashing. This is more
		    efficient when the array contains duplicate values.
		
		Returns
		-------
		ndarray[np.uint64, ndim=1]
		    Hashed values, same length as the vals.
	**/
	static public function hash_array(vals:Dynamic, ?encoding:Dynamic, ?hash_key:Dynamic, ?categorize:Dynamic):Dynamic;
	/**
		Parameters
		----------
		arr : 1-d object ndarray of objects
		key : hash key, must be 16 byte len encoded
		encoding : encoding for key & arr, default to 'utf8'
		
		Returns
		-------
		1-d uint64 ndarray of hashes.
		
		Raises
		------
		TypeError
		    If the array contains mixed types.
		
		Notes
		-----
		Allowed values must be strings, or nulls
		mixed array types will raise TypeError.
	**/
	static public function hash_object_array(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return a data hash of the Index/Series/DataFrame.
		
		Parameters
		----------
		obj : Index, Series, or DataFrame
		index : bool, default True
		    Include the index in the hash (if Series/DataFrame).
		encoding : str, default 'utf8'
		    Encoding for data & key when strings.
		hash_key : str, default _default_hash_key
		    Hash_key for string key to encode.
		categorize : bool, default True
		    Whether to first categorize object arrays before hashing. This is more
		    efficient when the array contains duplicate values.
		
		Returns
		-------
		Series of uint64, same length as the object
	**/
	static public function hash_pandas_object(obj:Dynamic, ?index:Dynamic, ?encoding:Dynamic, ?hash_key:Dynamic, ?categorize:Dynamic):Dynamic;
	/**
		Hash an MultiIndex / listlike-of-tuples efficiently.
		
		Parameters
		----------
		vals : MultiIndex or listlike-of-tuples
		encoding : str, default 'utf8'
		hash_key : str, default _default_hash_key
		
		Returns
		-------
		ndarray[np.uint64] of hashed values
	**/
	static public function hash_tuples(vals:Dynamic, ?encoding:Dynamic, ?hash_key:Dynamic):Dynamic;
	/**
		Check whether an array-like or dtype is of the Categorical dtype.
		
		Parameters
		----------
		arr_or_dtype : array-like or dtype
		    The array-like or dtype to check.
		
		Returns
		-------
		boolean
		    Whether or not the array-like or dtype is of the Categorical dtype.
		
		Examples
		--------
		>>> is_categorical_dtype(object)
		False
		>>> is_categorical_dtype(CategoricalDtype())
		True
		>>> is_categorical_dtype([1, 2, 3])
		False
		>>> is_categorical_dtype(pd.Categorical([1, 2, 3]))
		True
		>>> is_categorical_dtype(pd.CategoricalIndex([1, 2, 3]))
		True
	**/
	static public function is_categorical_dtype(arr_or_dtype:Dynamic):Dynamic;
	/**
		Check if the object is list-like.
		
		Objects that are considered list-like are for example Python
		lists, tuples, sets, NumPy arrays, and Pandas Series.
		
		Strings and datetime objects, however, are not considered list-like.
		
		Parameters
		----------
		obj : object
		    Object to check.
		allow_sets : bool, default True
		    If this parameter is False, sets will not be considered list-like.
		
		Returns
		-------
		bool
		    Whether `obj` has list-like properties.
		
		Examples
		--------
		>>> import datetime
		>>> is_list_like([1, 2, 3])
		True
		>>> is_list_like({1, 2, 3})
		True
		>>> is_list_like(datetime.datetime(2017, 1, 1))
		False
		>>> is_list_like("foo")
		False
		>>> is_list_like(1)
		False
		>>> is_list_like(np.array([2]))
		True
		>>> is_list_like(np.array(2))
		False
	**/
	static public function is_list_like(args:haxe.extern.Rest<Dynamic>):Dynamic;
}