/* This file is generated, do not edit! */
package pandas.core.indexes.api;
@:pythonImport("pandas.core.indexes.api") extern class Api_Module {
	static public var NaT : Dynamic;
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _all_indexes_same(indexes:Dynamic):Dynamic;
	static public function _ensure_index(index_like:Dynamic, ?copy:Dynamic):Dynamic;
	static public function _get_combined_index(indexes:Dynamic, ?intersect:Dynamic):Dynamic;
	static public function _get_consensus_names(indexes:Dynamic):Dynamic;
	static public function _get_distinct_indexes(indexes:Dynamic):Dynamic;
	static public function _get_na_value(dtype:Dynamic):Dynamic;
	/**
		This is called upon unpickling, rather than the default which doesn't
		have arguments and breaks __new__
	**/
	static public function _new_Index(cls:Dynamic, d:Dynamic):Dynamic;
	static public function _sanitize_and_check(indexes:Dynamic):Dynamic;
	static public function _union_indexes(indexes:Dynamic):Dynamic;
}