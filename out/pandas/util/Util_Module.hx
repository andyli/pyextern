/* This file is generated, do not edit! */
package pandas.util;
@:pythonImport("pandas.util") extern class Util_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
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
}