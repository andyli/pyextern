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
		copy : bool, default False
		    If True, return a copy of the combined index.
		
		Returns
		-------
		Index
	**/
	static public function _get_combined_index(indexes:Dynamic, ?intersect:Dynamic, ?sort:Dynamic, ?copy:Dynamic):Dynamic;
	/**
		Return a list with distinct elements of "objs" (different ids).
		Preserves order.
	**/
	static public function _get_distinct_objs(objs:Dynamic):Dynamic;
	/**
		This is called upon unpickling, rather than the default which doesn't
		have arguments and breaks __new__.
	**/
	static public function _new_Index(cls:Dynamic, d:Dynamic):Dynamic;
	/**
		Verify the type of indexes and convert lists to Index.
		
		Cases:
		
		- [list, list, ...]: Return ([list, list, ...], 'list')
		- [list, Index, ...]: Return _sanitize_and_check([Index, Index, ...])
		    Lists are sorted and converted to Index.
		- [Index, Index, ...]: Return ([Index, Index, ...], TYPE)
		    TYPE = 'special' if at least one special type, 'array' otherwise.
		
		Parameters
		----------
		indexes : list of Index or list objects
		
		Returns
		-------
		sanitized_indexes : list of Index or list objects
		type : {'list', 'array', 'special'}
	**/
	static public function _sanitize_and_check(indexes:Dynamic):Dynamic;
	static public var _sort_msg : Dynamic;
	/**
		Determine if all indexes contain the same elements.
		
		Parameters
		----------
		indexes : iterable of Index objects
		
		Returns
		-------
		bool
		    True if all indexes contain the same elements, False otherwise.
	**/
	static public function all_indexes_same(indexes:Dynamic):Dynamic;
	static public var annotations : Dynamic;
	static public function default_index(n:Dynamic):Dynamic;
	/**
		Ensure that we have an index from some index-like object.
		
		Parameters
		----------
		index_like : sequence
		    An Index or other sequence
		copy : bool, default False
		
		Returns
		-------
		index : Index or MultiIndex
		
		See Also
		--------
		ensure_index_from_sequences
		
		Examples
		--------
		>>> ensure_index(['a', 'b'])
		Index(['a', 'b'], dtype='object')
		
		>>> ensure_index([('a', 'a'),  ('b', 'c')])
		Index([('a', 'a'), ('b', 'c')], dtype='object')
		
		>>> ensure_index([['a', 'a'], ['b', 'c']])
		MultiIndex([('a', 'b'),
		        ('a', 'c')],
		       )
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
		>>> ensure_index_from_sequences([[1, 2, 3]], names=["name"])
		Int64Index([1, 2, 3], dtype='int64', name='name')
		
		>>> ensure_index_from_sequences([["a", "a"], ["a", "b"]], names=["L1", "L2"])
		MultiIndex([('a', 'a'),
		            ('a', 'b')],
		           names=['L1', 'L2'])
		
		See Also
		--------
		ensure_index
	**/
	static public function ensure_index_from_sequences(sequences:Dynamic, ?names:Dynamic):Dynamic;
	/**
		Extract combined index: return intersection or union (depending on the
		value of "intersect") of indexes on given axis, or None if all objects
		lack indexes (e.g. they are numpy arrays).
		
		Parameters
		----------
		objs : list
		    Series or DataFrame objects, may be mix of the two.
		intersect : bool, default False
		    If True, calculate the intersection between indexes. Otherwise,
		    calculate the union.
		axis : {0 or 'index', 1 or 'outer'}, default 0
		    The axis to extract indexes from.
		sort : bool, default True
		    Whether the result index should come out sorted or not.
		copy : bool, default False
		    If True, return a copy of the combined index.
		
		Returns
		-------
		Index
	**/
	static public function get_objs_combined_axis(objs:Dynamic, ?intersect:Dynamic, ?axis:Dynamic, ?sort:Dynamic, ?copy:Dynamic):Dynamic;
	/**
		Return common name if all indices agree, otherwise None (level-by-level).
		
		Parameters
		----------
		indexes : list of Index objects
		
		Returns
		-------
		list
		    A list representing the unanimous 'names' found.
	**/
	static public function get_unanimous_names(?indexes:python.VarArgs<Dynamic>):Dynamic;
	/**
		Check if two dtypes are equal.
		
		Parameters
		----------
		source : The first dtype to compare
		target : The second dtype to compare
		
		Returns
		-------
		boolean
		    Whether or not the two dtypes are equal.
		
		Examples
		--------
		>>> is_dtype_equal(int, float)
		False
		>>> is_dtype_equal("int", int)
		True
		>>> is_dtype_equal(object, "category")
		False
		>>> is_dtype_equal(CategoricalDtype(), "category")
		True
		>>> is_dtype_equal(DatetimeTZDtype(tz="UTC"), "datetime64")
		False
	**/
	static public function is_dtype_equal(source:Dynamic, target:Dynamic):Dynamic;
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
	static public function union_indexes(indexes:Dynamic, ?sort:Dynamic):Dynamic;
}