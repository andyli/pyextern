/* This file is generated, do not edit! */
package pandas.core.internals;
@:pythonImport("pandas.core.internals") extern class Internals_Module {
	static public var __all__ : Dynamic;
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
		Concatenate block managers into one.
		
		Parameters
		----------
		mgrs_indexers : list of (BlockManager, {axis: indexer,...}) tuples
		axes : list of Index
		concat_axis : int
		copy : bool
		
		Returns
		-------
		BlockManager
	**/
	static public function concatenate_managers(mgrs_indexers:Dynamic, axes:Dynamic, concat_axis:Dynamic, copy:Dynamic):Dynamic;
	static public function create_block_manager_from_blocks(blocks:Dynamic, axes:Dynamic, ?consolidate:Dynamic, ?verify_integrity:Dynamic):Dynamic;
	/**
		This is a pseudo-public analogue to blocks.new_block.
		
		We ask that downstream libraries use this rather than any fully-internal
		APIs, including but not limited to:
		
		- core.internals.blocks.make_block
		- Block.make_block
		- Block.make_block_same_class
		- Block.__init__
	**/
	static public function make_block(values:Dynamic, placement:Dynamic, ?klass:Dynamic, ?ndim:Dynamic, ?dtype:Dynamic):Dynamic;
}