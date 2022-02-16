/* This file is generated, do not edit! */
package pandas.io.parsers.c_parser_wrapper;
@:pythonImport("pandas.io.parsers.c_parser_wrapper") extern class C_parser_wrapper_Module {
	static public function ArrayLike(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function DtypeArg(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function DtypeObj(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Hashable(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Mapping(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Sequence(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Concatenate chunks of data read with low_memory=True.
		
		The tricky part is handling Categoricals, where different chunks
		may have different inferred categories.
	**/
	static public function _concatenate_chunks(chunks:Dynamic):Dynamic;
	static public var annotations : Dynamic;
	/**
		Ensure we have either None, a dtype object, or a dictionary mapping to
		dtype objects.
	**/
	static public function ensure_dtype_objs(dtype:Dynamic):Dynamic;
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
		Find the first place in the stack that is not inside pandas
		(tests notwithstanding).
	**/
	static public function find_stack_level():Dynamic;
	/**
		Check whether an array-like or dtype is of the Categorical dtype.
		
		Parameters
		----------
		arr_or_dtype : array-like or dtype
		    The array-like or dtype to check.
		
		Returns
		-------
		boolean
		    Whether or not the array-like or dtype is of the Categorical dtype.
		
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
	static public function is_index_col(col:Dynamic):Dynamic;
	/**
		Convert input into a pandas only dtype object or a numpy dtype object.
		
		Parameters
		----------
		dtype : object to be converted
		
		Returns
		-------
		np.dtype or a pandas dtype
		
		Raises
		------
		TypeError if not a dtype
	**/
	static public function pandas_dtype(dtype:Dynamic):Dynamic;
	/**
		Combine list-like of Categorical-like, unioning categories.
		
		All categories must have the same dtype.
		
		Parameters
		----------
		to_union : list-like
		    Categorical, CategoricalIndex, or Series with dtype='category'.
		sort_categories : bool, default False
		    If true, resulting categories will be lexsorted, otherwise
		    they will be ordered as they appear in the data.
		ignore_order : bool, default False
		    If true, the ordered attribute of the Categoricals will be ignored.
		    Results in an unordered categorical.
		
		Returns
		-------
		Categorical
		
		Raises
		------
		TypeError
		    - all inputs do not have the same dtype
		    - all inputs do not have the same ordered property
		    - all inputs are ordered and their categories are not identical
		    - sort_categories=True and Categoricals are ordered
		ValueError
		    Empty list of categoricals passed
		
		Notes
		-----
		To learn more about categories, see `link
		<https://pandas.pydata.org/pandas-docs/stable/user_guide/categorical.html#unioning>`__
		
		Examples
		--------
		>>> from pandas.api.types import union_categoricals
		
		If you want to combine categoricals that do not necessarily have
		the same categories, `union_categoricals` will combine a list-like
		of categoricals. The new categories will be the union of the
		categories being combined.
		
		>>> a = pd.Categorical(["b", "c"])
		>>> b = pd.Categorical(["a", "b"])
		>>> union_categoricals([a, b])
		['b', 'c', 'a', 'b']
		Categories (3, object): ['b', 'c', 'a']
		
		By default, the resulting categories will be ordered as they appear
		in the `categories` of the data. If you want the categories to be
		lexsorted, use `sort_categories=True` argument.
		
		>>> union_categoricals([a, b], sort_categories=True)
		['b', 'c', 'a', 'b']
		Categories (3, object): ['a', 'b', 'c']
		
		`union_categoricals` also works with the case of combining two
		categoricals of the same categories and order information (e.g. what
		you could also `append` for).
		
		>>> a = pd.Categorical(["a", "b"], ordered=True)
		>>> b = pd.Categorical(["a", "b", "a"], ordered=True)
		>>> union_categoricals([a, b])
		['a', 'b', 'a', 'b', 'a']
		Categories (2, object): ['a' < 'b']
		
		Raises `TypeError` because the categories are ordered and not identical.
		
		>>> a = pd.Categorical(["a", "b"], ordered=True)
		>>> b = pd.Categorical(["a", "b", "c"], ordered=True)
		>>> union_categoricals([a, b])
		Traceback (most recent call last):
		    ...
		TypeError: to union ordered Categoricals, all categories must be the same
		
		New in version 0.20.0
		
		Ordered categoricals with different categories or orderings can be
		combined by using the `ignore_ordered=True` argument.
		
		>>> a = pd.Categorical(["a", "b", "c"], ordered=True)
		>>> b = pd.Categorical(["c", "b", "a"], ordered=True)
		>>> union_categoricals([a, b], ignore_order=True)
		['a', 'b', 'c', 'c', 'b', 'a']
		Categories (3, object): ['a', 'b', 'c']
		
		`union_categoricals` also works with a `CategoricalIndex`, or `Series`
		containing categorical data, but note that the resulting array will
		always be a plain `Categorical`
		
		>>> a = pd.Series(["b", "c"], dtype='category')
		>>> b = pd.Series(["a", "b"], dtype='category')
		>>> union_categoricals([a, b])
		['b', 'c', 'a', 'b']
		Categories (3, object): ['b', 'c', 'a']
	**/
	static public function union_categoricals(to_union:Dynamic, ?sort_categories:Dynamic, ?ignore_order:Dynamic):Dynamic;
}