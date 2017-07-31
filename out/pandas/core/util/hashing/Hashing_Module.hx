/* This file is generated, do not edit! */
package pandas.core.util.hashing;
@:pythonImport("pandas.core.util.hashing") extern class Hashing_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Parameters
		----------
		arrays : generator
		num_items : int
		
		Should be the same as CPython's tupleobject.c
	**/
	static public function _combine_hash_arrays(arrays:Dynamic, num_items:Dynamic):Dynamic;
	static public var _default_hash_key : Dynamic;
	/**
		Hash a Categorical by hashing its categories, and then mapping the codes
		to the hashes
		
		Parameters
		----------
		c : Categorical
		encoding : string, default 'utf8'
		hash_key : string key to encode, default to _default_hash_key
		
		Returns
		-------
		ndarray of hashed values array, same size as len(c)
	**/
	static public function _hash_categorical(c:Dynamic, encoding:Dynamic, hash_key:Dynamic):Dynamic;
	/**
		Hash scalar value
		
		Returns
		-------
		1d uint64 numpy array of hash value, of length 1
	**/
	static public function _hash_scalar(val:Dynamic, ?encoding:Dynamic, ?hash_key:Dynamic):Dynamic;
	/**
		Given a 1d array, return an array of deterministic integers.
		
		.. versionadded:: 0.19.2
		
		Parameters
		----------
		vals : ndarray, Categorical
		encoding : string, default 'utf8'
		    encoding for data & key when strings
		hash_key : string key to encode, default to _default_hash_key
		categorize : bool, default True
		    Whether to first categorize object arrays before hashing. This is more
		    efficient when the array contains duplicate values.
		
		    .. versionadded:: 0.20.0
		
		Returns
		-------
		1d uint64 numpy array of hash values, same length as the vals
	**/
	static public function hash_array(vals:Dynamic, ?encoding:Dynamic, ?hash_key:Dynamic, ?categorize:Dynamic):Dynamic;
	/**
		Return a data hash of the Index/Series/DataFrame
		
		.. versionadded:: 0.19.2
		
		Parameters
		----------
		index : boolean, default True
		    include the index in the hash (if Series/DataFrame)
		encoding : string, default 'utf8'
		    encoding for data & key when strings
		hash_key : string key to encode, default to _default_hash_key
		categorize : bool, default True
		    Whether to first categorize object arrays before hashing. This is more
		    efficient when the array contains duplicate values.
		
		    .. versionadded:: 0.20.0
		
		Returns
		-------
		Series of uint64, same length as the object
	**/
	static public function hash_pandas_object(obj:Dynamic, ?index:Dynamic, ?encoding:Dynamic, ?hash_key:Dynamic, ?categorize:Dynamic):Dynamic;
	/**
		Hash a single tuple efficiently
		
		Parameters
		----------
		val : single tuple
		encoding : string, default 'utf8'
		hash_key : string key to encode, default to _default_hash_key
		
		Returns
		-------
		hash
	**/
	static public function hash_tuple(val:Dynamic, ?encoding:Dynamic, ?hash_key:Dynamic):Dynamic;
	/**
		Hash an MultiIndex / list-of-tuples efficiently
		
		.. versionadded:: 0.20.0
		
		Parameters
		----------
		vals : MultiIndex, list-of-tuples, or single tuple
		encoding : string, default 'utf8'
		hash_key : string key to encode, default to _default_hash_key
		
		Returns
		-------
		ndarray of hashed values array
	**/
	static public function hash_tuples(vals:Dynamic, ?encoding:Dynamic, ?hash_key:Dynamic):Dynamic;
	/**
		interpret the dtype from a scalar
		
		Parameters
		----------
		pandas_dtype : bool, default False
		    whether to infer dtype including pandas extension types.
		    If False, scalar belongs to pandas extension types is inferred as
		    object
	**/
	static public function infer_dtype_from_scalar(val:Dynamic, ?pandas_dtype:Dynamic):Dynamic;
	/**
		Check whether an array-like or dtype is of the Categorical dtype.
		
		Parameters
		----------
		arr_or_dtype : array-like
		    The array-like or dtype to check.
		
		Returns
		-------
		boolean : Whether or not the array-like or dtype is
		          of the Categorical dtype.
		
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
		obj : The object to check.
		
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
	**/
	static public function is_list_like(obj:Dynamic):Bool;
	/**
		Detect missing values (NaN in numeric arrays, None/NaN in object arrays)
		
		Parameters
		----------
		arr : ndarray or object value
		    Object to check for null-ness
		
		Returns
		-------
		isnulled : array-like of bool or bool
		    Array or bool indicating whether an object is null or if an array is
		    given which of the element is null.
		
		See also
		--------
		pandas.notnull: boolean inverse of pandas.isnull
	**/
	static public function isnull(obj:Dynamic):Dynamic;
}