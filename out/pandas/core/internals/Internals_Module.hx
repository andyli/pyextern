/* This file is generated, do not edit! */
package pandas.core.internals;
@:pythonImport("pandas.core.internals") extern class Internals_Module {
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
		pivot to the labels shape 
	**/
	static public function _block2d_to_blocknd(values:Dynamic, placement:Dynamic, shape:Dynamic, labels:Dynamic, ref_items:Dynamic):Dynamic;
	/**
		guarantee the shape of the values to be at least 1 d 
	**/
	static public function _block_shape(values:Dynamic, ?ndim:Dynamic, ?shape:Dynamic):Dynamic;
	/**
		given a tuple of shape and a list of Categorical labels, return the
		expanded label indexer
	**/
	static public function _factor_indexer(shape:Dynamic, labels:Dynamic):Dynamic;
	/**
		If possible, reshape `arr` to have shape `new_shape`,
		with a couple of exceptions (see gh-13012):
		
		1) If `arr` is a ExtensionArray or Index, `arr` will be
		   returned as is.
		2) If `arr` is a Series, the `_values` attribute will
		   be reshaped and returned.
		
		Parameters
		----------
		arr : array-like, object to be reshaped
		new_shape : int or tuple of ints, the new shape
	**/
	static public function _safe_reshape(arr:Dynamic, new_shape:Dynamic):Dynamic;
	/**
		Concatenate block managers into one.
		
		Parameters
		----------
		mgrs_indexers : list of (BlockManager, {axis: indexer,...}) tuples
		axes : list of Index
		concat_axis : int
		copy : bool
	**/
	static public function concatenate_block_managers(mgrs_indexers:Dynamic, axes:Dynamic, concat_axis:Dynamic, copy:Dynamic):Dynamic;
	static public function create_block_manager_from_arrays(arrays:Dynamic, names:Dynamic, axes:Dynamic):Dynamic;
	static public function create_block_manager_from_blocks(blocks:Dynamic, axes:Dynamic):Dynamic;
	/**
		If two indices overlap, add suffixes to overlapping entries.
		
		If corresponding suffix is empty, the entry is simply converted to string.
	**/
	static public function items_overlap_with_suffix(left:Dynamic, lsuffix:Dynamic, right:Dynamic, rsuffix:Dynamic):Dynamic;
	static public function make_block(values:Dynamic, placement:Dynamic, ?klass:Dynamic, ?ndim:Dynamic, ?dtype:Dynamic, ?fastpath:Dynamic):Dynamic;
}