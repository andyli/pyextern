/* This file is generated, do not edit! */
package pandas._libs.hashtable;
@:pythonImport("pandas._libs.hashtable") extern class Hashtable_Module {
	static public var _SIZE_HINT_LIMIT : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public function __pyx_unpickle_Enum(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function __pyx_unpickle_Factorizer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function __pyx_unpickle_HashTable(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function __pyx_unpickle_Int64Factorizer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __spec__ : Dynamic;
	static public var __test__ : Dynamic;
	static public function duplicated_float64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function duplicated_int64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function duplicated_object(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function duplicated_uint64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return boolean of values in arr on an
		element by-element basis
		
		Parameters
		----------
		arr : float64 ndarray
		values : float64 ndarray
		
		Returns
		-------
		boolean ndarry len of (arr)
	**/
	static public function ismember_float64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return boolean of values in arr on an
		element by-element basis
		
		Parameters
		----------
		arr : int64 ndarray
		values : int64 ndarray
		
		Returns
		-------
		boolean ndarry len of (arr)
	**/
	static public function ismember_int64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return boolean of values in arr on an
		element by-element basis
		
		Parameters
		----------
		arr : object ndarray
		values : object ndarray
		
		Returns
		-------
		boolean ndarry len of (arr)
	**/
	static public function ismember_object(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return boolean of values in arr on an
		element by-element basis
		
		Parameters
		----------
		arr : uint64 ndarray
		values : uint64 ndarray
		
		Returns
		-------
		boolean ndarry len of (arr)
	**/
	static public function ismember_uint64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function mode_float64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function mode_int64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function mode_object(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function mode_uint64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		indices of the first occurrences of the unique labels
		*excluding* -1. equivalent to:
		    np.unique(labels, return_index=True)[1]
	**/
	static public function unique_label_indices(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function value_count_float64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function value_count_int64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function value_count_object(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function value_count_uint64(args:haxe.extern.Rest<Dynamic>):Dynamic;
}