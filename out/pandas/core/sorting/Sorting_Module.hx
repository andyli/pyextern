/* This file is generated, do not edit! */
package pandas.core.sorting;
@:pythonImport("pandas.core.sorting") extern class Sorting_Module {
	static public var _INT64_MAX : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _ensure_int64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _ensure_platform_int(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _reorder_by_uniques(uniques:Dynamic, labels:Dynamic):Dynamic;
	/**
		Group_index is offsets into cartesian product of all possible labels. This
		space can be huge, so this function compresses it, by computing offsets
		(comp_ids) into the list of unique labels (obs_group_ids).
	**/
	static public function compress_group_index(group_index:Dynamic, ?sort:Dynamic):Dynamic;
	static public function decons_group_index(comp_labels:Dynamic, shape:Dynamic):Dynamic;
	/**
		reconstruct labels from observed group ids
		
		Parameters
		----------
		xnull: boolean,
		    if nulls are excluded; i.e. -1 labels are passed through
	**/
	static public function decons_obs_group_ids(comp_ids:Dynamic, obs_ids:Dynamic, shape:Dynamic, labels:Dynamic, xnull:Dynamic):Dynamic;
	/**
		Group_index is offsets into cartesian product of all possible labels. This
		space can be huge, so this function compresses it, by computing offsets
		(comp_ids) into the list of unique labels (obs_group_ids).
		
		Parameters
		----------
		labels : list of label arrays
		sizes : list of size of the levels
		
		Returns
		-------
		tuple of (comp_ids, obs_group_ids)
	**/
	static public function get_compressed_ids(labels:Dynamic, sizes:Dynamic):Dynamic;
	static public function get_flattened_iterator(comp_ids:Dynamic, ngroups:Dynamic, levels:Dynamic, labels:Dynamic):Dynamic;
	/**
		For the particular label_list, gets the offsets into the hypothetical list
		representing the totally ordered cartesian product of all possible label
		combinations, *as long as* this space fits within int64 bounds;
		otherwise, though group indices identify unique combinations of
		labels, they cannot be deconstructed.
		- If `sort`, rank of returned ids preserve lexical ranks of labels.
		  i.e. returned id's can be used to do lexical sort on labels;
		- If `xnull` nulls (-1 labels) are passed through.
		
		Parameters
		----------
		labels: sequence of arrays
		    Integers identifying levels at each location
		shape: sequence of ints same length as labels
		    Number of unique levels at each location
		sort: boolean
		    If the ranks of returned ids should match lexical ranks of labels
		xnull: boolean
		    If true nulls are excluded. i.e. -1 values in the labels are
		    passed through
		Returns
		-------
		An array of type int64 where two elements are equal if their corresponding
		labels are equal at all location.
	**/
	static public function get_group_index(labels:Dynamic, shape:Dynamic, sort:Dynamic, xnull:Dynamic):Dynamic;
	/**
		algos.groupsort_indexer implements `counting sort` and it is at least
		O(ngroups), where
		    ngroups = prod(shape)
		    shape = map(len, keys)
		that is, linear in the number of combinations (cartesian product) of unique
		values of groupby keys. This can be huge when doing multi-key groupby.
		np.argsort(kind='mergesort') is O(count x log(count)) where count is the
		length of the data-frame;
		Both algorithms are `stable` sort and that is necessary for correctness of
		groupby operations. e.g. consider:
		    df.groupby(key)[col].transform('first')
	**/
	static public function get_group_index_sorter(group_index:Dynamic, ngroups:Dynamic):Dynamic;
	/**
		return a diction of {labels} -> {indexers} 
	**/
	static public function get_indexer_dict(label_list:Dynamic, keys:Dynamic):Dynamic;
	static public function indexer_from_factorized(labels:Dynamic, shape:Dynamic, ?compress:Dynamic):Dynamic;
	/**
		Check whether an array-like or dtype is of the Categorical dtype.
		
		Parameters
		----------
		arr_or_dtype : array-like
		    The array-like or dtype to check.
		
		Returns
		-------
		boolean : Whether or not the array-like or dtype is
		          of the Categorical dtype.
		
		Examples
		--------
		>>> is_categorical_dtype(object)
		False
		>>> is_categorical_dtype(CategoricalDtype())
		True
		>>> is_categorical_dtype([1, 2, 3])
		False
		>>> is_categorical_dtype(pd.Categorical([1, 2, 3]))
		True
		>>> is_categorical_dtype(pd.CategoricalIndex([1, 2, 3]))
		True
	**/
	static public function is_categorical_dtype(arr_or_dtype:Dynamic):Dynamic;
	static public function is_int64_overflow_possible(shape:Dynamic):Dynamic;
	/**
		Detect missing values (NaN in numeric arrays, None/NaN in object arrays)
		
		Parameters
		----------
		arr : ndarray or object value
		    Object to check for null-ness
		
		Returns
		-------
		isnulled : array-like of bool or bool
		    Array or bool indicating whether an object is null or if an array is
		    given which of the element is null.
		
		See also
		--------
		pandas.notnull: boolean inverse of pandas.isnull
	**/
	static public function isnull(obj:Dynamic):Dynamic;
	static public function lexsort_indexer(keys:Dynamic, ?orders:Dynamic, ?na_position:Dynamic):Dynamic;
	/**
		This is intended to be a drop-in replacement for np.argsort which
		handles NaNs. It adds ascending and na_position parameters.
		GH #6399, #5231
	**/
	static public function nargsort(items:Dynamic, ?kind:Dynamic, ?ascending:Dynamic, ?na_position:Dynamic):Dynamic;
	/**
		indices of the first occurrences of the unique labels
		*excluding* -1. equivelent to:
		    np.unique(labels, return_index=True)[1]
	**/
	static public function unique_label_indices(args:haxe.extern.Rest<Dynamic>):Dynamic;
}