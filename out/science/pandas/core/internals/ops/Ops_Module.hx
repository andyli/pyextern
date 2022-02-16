/* This file is generated, do not edit! */
package pandas.core.internals.ops;
@:pythonImport("pandas.core.internals.ops") extern class Ops_Module {
	static public function ArrayLike(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Iterator(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var TYPE_CHECKING : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Slice lblk.values to align with rblk.  Squeeze if we have EAs.
	**/
	static public function _get_same_shape_values(lblk:Dynamic, rblk:Dynamic, left_ea:Dynamic, right_ea:Dynamic):Dynamic;
	static public function _iter_block_pairs(left:Dynamic, right:Dynamic):Dynamic;
	/**
		Reset mgr_locs to correspond to our original DataFrame.
	**/
	static public function _reset_block_mgr_locs(nbs:Dynamic, locs:Dynamic):Dynamic;
	static public var annotations : Dynamic;
	/**
		Blockwise `all` reduction.
	**/
	static public function blockwise_all(left:Dynamic, right:Dynamic, op:Dynamic):Dynamic;
	static public function operate_blockwise(left:Dynamic, right:Dynamic, array_op:Dynamic):Dynamic;
}