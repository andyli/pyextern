/* This file is generated, do not edit! */
package pandas._libs.hashing;
@:pythonImport("pandas._libs.hashing") extern class Hashing_Module {
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public function __pyx_unpickle_Enum(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __spec__ : Dynamic;
	static public var __test__ : Dynamic;
	/**
		Parameters
		----------
		arr : 1-d object ndarray of objects
		key : hash key, must be 16 byte len encoded
		encoding : encoding for key & arr, default to 'utf8'
		
		Returns
		-------
		1-d uint64 ndarray of hashes
		
		Notes
		-----
		allowed values must be strings, or nulls
		mixed array types will raise TypeError
	**/
	static public function hash_object_array(args:haxe.extern.Rest<Dynamic>):Dynamic;
}