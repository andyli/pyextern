/* This file is generated, do not edit! */
package pandas.util;
@:pythonImport("pandas.util") extern class Util_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public function __getattr__(name:Dynamic):Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
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
}