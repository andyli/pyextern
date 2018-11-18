/* This file is generated, do not edit! */
package pandas.core.index;
@:pythonImport("pandas.core.index") extern class Index_Module {
	static public var NaT : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _all_indexes_same(indexes:Dynamic):Dynamic;
	/**
		Ensure that we have an index from some index-like object
		
		Parameters
		----------
		index : sequence
		    An Index or other sequence
		copy : bool
		
		Returns
		-------
		index : Index or MultiIndex
		
		Examples
		--------
		>>> _ensure_index(['a', 'b'])
		Index(['a', 'b'], dtype='object')
		
		>>> _ensure_index([('a', 'a'),  ('b', 'c')])
		Index([('a', 'a'), ('b', 'c')], dtype='object')
		
		>>> _ensure_index([['a', 'a'], ['b', 'c']])
		MultiIndex(levels=[['a'], ['b', 'c']],
		           labels=[[0, 0], [0, 1]])
		
		See Also
		--------
		_ensure_index_from_sequences
	**/
	static public function _ensure_index(index_like:Dynamic, ?copy:Dynamic):Dynamic;
	/**
		Construct an index from sequences of data.
		
		A single sequence returns an Index. Many sequences returns a
		MultiIndex.
		
		Parameters
		----------
		sequences : sequence of sequences
		names : sequence of str
		
		Returns
		-------
		index : Index or MultiIndex
		
		Examples
		--------
		>>> _ensure_index_from_sequences([[1, 2, 3]], names=['name'])
		Int64Index([1, 2, 3], dtype='int64', name='name')
		
		>>> _ensure_index_from_sequences([['a', 'a'], ['a', 'b']],
		                                 names=['L1', 'L2'])
		MultiIndex(levels=[['a'], ['a', 'b']],
		           labels=[[0, 0], [0, 1]],
		           names=['L1', 'L2'])
		
		See Also
		--------
		_ensure_index
	**/
	static public function _ensure_index_from_sequences(sequences:Dynamic, ?names:Dynamic):Dynamic;
	static public function _get_combined_index(indexes:Dynamic, ?intersect:Dynamic, ?sort:Dynamic):Dynamic;
	static public function _get_consensus_names(indexes:Dynamic):Dynamic;
	static public function _get_objs_combined_axis(objs:Dynamic, ?intersect:Dynamic, ?axis:Dynamic, ?sort:Dynamic):Dynamic;
	/**
		This is called upon unpickling, rather than the default which doesn't
		have arguments and breaks __new__
	**/
	static public function _new_Index(cls:Dynamic, d:Dynamic):Dynamic;
	static public function _sparsify(label_list:Dynamic, ?start:Dynamic, ?sentinel:Dynamic):Dynamic;
	static public function _union_indexes(indexes:Dynamic, ?sort:Dynamic):Dynamic;
}