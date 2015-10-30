/* This file is generated, do not edit! */
package pandas.hashtable;
@:pythonImport("pandas.hashtable") extern class Hashtable_Module {
	static public var _SIZE_HINT_LIMIT : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var __test__ : Dynamic;
	static public function duplicated_int64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function mode_int64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function mode_object(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var nan : Dynamic;
	/**
		indices of the first occurrences of the unique labels
		*excluding* -1. equivelent to:
		    np.unique(labels, return_index=True)[1]
	**/
	static public function unique_label_indices(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function value_count_object(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function value_count_scalar64(values:Dynamic, dropna:Dynamic):Dynamic;
}