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
	/**
		Determine if all indexes contain the same elements.
		
		Parameters
		----------
		indexes : list of Index objects
		
		Returns
		-------
		bool
		    True if all indexes contain the same elements, False otherwise.
	**/
	static public function _all_indexes_same(indexes:Dynamic):Dynamic;
	/**
		Return the union or intersection of indexes.
		
		Parameters
		----------
		indexes : list of Index or list objects
		    When intersect=True, do not accept list of lists.
		intersect : bool, default False
		    If True, calculate the intersection between indexes. Otherwise,
		    calculate the union.
		sort : bool, default False
		    Whether the result index should come out sorted or not.
		
		Returns
		-------
		Index
	**/
	static public function _get_combined_index(indexes:Dynamic, ?intersect:Dynamic, ?sort:Dynamic):Dynamic;
	/**
		Give a consensus 'names' to indexes.
		
		If there's exactly one non-empty 'names', return this,
		otherwise, return empty.
		
		Parameters
		----------
		indexes : list of Index objects
		
		Returns
		-------
		list
		    A list representing the consensus 'names' found.
	**/
	static public function _get_consensus_names(indexes:Dynamic):Dynamic;
	/**
		Extract combined index: return intersection or union (depending on the
		value of "intersect") of indexes on given axis, or None if all objects
		lack indexes (e.g. they are numpy arrays).
		
		Parameters
		----------
		objs : list of objects
		    Each object will only be considered if it has a _get_axis
		    attribute.
		intersect : bool, default False
		    If True, calculate the intersection between indexes. Otherwise,
		    calculate the union.
		axis : {0 or 'index', 1 or 'outer'}, default 0
		    The axis to extract indexes from.
		sort : bool, default True
		    Whether the result index should come out sorted or not.
		
		Returns
		-------
		Index
	**/
	static public function _get_objs_combined_axis(objs:Dynamic, ?intersect:Dynamic, ?axis:Dynamic, ?sort:Dynamic):Dynamic;
	/**
		This is called upon unpickling, rather than the default which doesn't
		have arguments and breaks __new__.
	**/
	static public function _new_Index(cls:Dynamic, d:Dynamic):Dynamic;
	static public function _sparsify(label_list:Dynamic, ?start:Dynamic, ?sentinel:Dynamic):Dynamic;
	/**
		Return the union of indexes.
		
		The behavior of sort and names is not consistent.
		
		Parameters
		----------
		indexes : list of Index or list objects
		sort : bool, default True
		    Whether the result index should come out sorted or not.
		
		Returns
		-------
		Index
	**/
	static public function _union_indexes(indexes:Dynamic, ?sort:Dynamic):Dynamic;
	/**
		Ensure that we have an index from some index-like object.
		
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
		>>> ensure_index(['a', 'b'])
		Index(['a', 'b'], dtype='object')
		
		>>> ensure_index([('a', 'a'),  ('b', 'c')])
		Index([('a', 'a'), ('b', 'c')], dtype='object')
		
		>>> ensure_index([['a', 'a'], ['b', 'c']])
		MultiIndex(levels=[['a'], ['b', 'c']],
		           codes=[[0, 0], [0, 1]])
		
		See Also
		--------
		ensure_index_from_sequences
	**/
	static public function ensure_index(index_like:Dynamic, ?copy:Dynamic):Dynamic;
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
		>>> ensure_index_from_sequences([[1, 2, 3]], names=['name'])
		Int64Index([1, 2, 3], dtype='int64', name='name')
		
		>>> ensure_index_from_sequences([['a', 'a'], ['a', 'b']],
		                                names=['L1', 'L2'])
		MultiIndex(levels=[['a'], ['a', 'b']],
		           codes=[[0, 0], [0, 1]],
		           names=['L1', 'L2'])
		
		See Also
		--------
		ensure_index
	**/
	static public function ensure_index_from_sequences(sequences:Dynamic, ?names:Dynamic):Dynamic;
}