/* This file is generated, do not edit! */
package pandas._libs.hashtable;
@:pythonImport("pandas._libs.hashtable") extern class Hashtable_Module {
	static public var SIZE_HINT_LIMIT : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public function __pyx_unpickle_Enum(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function __pyx_unpickle_HashTable(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __spec__ : Dynamic;
	static public var __test__ : Dynamic;
	/**
		Indices of the first occurrences of the unique labels
		*excluding* -1. equivalent to:
		    np.unique(labels, return_index=True)[1]
	**/
	static public function _unique_label_indices_int32(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Indices of the first occurrences of the unique labels
		*excluding* -1. equivalent to:
		    np.unique(labels, return_index=True)[1]
	**/
	static public function _unique_label_indices_int64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function duplicated(values:Dynamic, ?keep:Dynamic):Dynamic;
	static public function get_hashtable_trace_domain(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function ismember(arr:Dynamic, values:Dynamic):Dynamic;
	static public function mode(values:Dynamic, dropna:Dynamic):Dynamic;
	static public function object_hash(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function objects_are_equal(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Indices of the first occurrences of the unique labels
		*excluding* -1. equivalent to:
		    np.unique(labels, return_index=True)[1]
	**/
	static public function unique_label_indices(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function value_count(values:Dynamic, dropna:Dynamic):Dynamic;
}