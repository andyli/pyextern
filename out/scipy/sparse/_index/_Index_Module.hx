/* This file is generated, do not edit! */
package scipy.sparse._index;
@:pythonImport("scipy.sparse._index") extern class _Index_Module {
	static public var INT_TYPES : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _boolean_index_to_array(idx:Dynamic):Dynamic;
	/**
		Process indices with Ellipsis. Returns modified index.
	**/
	static public function _check_ellipsis(index:Dynamic):Dynamic;
	/**
		Parse index. Always return a tuple of the form (row, col).
		Valid type for row/col is integer, slice, or array of integers.
	**/
	static public function _unpack_index(index:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Is x appropriate as an index into a sparse matrix? Returns True
		if it can be cast safely to a machine int.
	**/
	static public function isintlike(x:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}