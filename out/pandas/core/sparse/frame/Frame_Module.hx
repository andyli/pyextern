/* This file is generated, do not edit! */
package pandas.core.sparse.frame;
@:pythonImport("pandas.core.sparse.frame") extern class Frame_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _default_index(n:Dynamic):Dynamic;
	static public function _ensure_index(index_like:Dynamic, ?copy:Dynamic):Dynamic;
	static public function _ensure_platform_int(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _prep_ndarray(values:Dynamic, ?copy:Dynamic):Dynamic;
	static public var _shared_doc_kwargs : Dynamic;
	static public function _try_sort(iterable:Dynamic):Dynamic;
	static public function create_block_manager_from_arrays(arrays:Dynamic, names:Dynamic, axes:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public function extract_index(data:Dynamic):Dynamic;
	/**
		Find a common data type among the given dtypes.
		
		Parameters
		----------
		types : list of dtypes
		
		Returns
		-------
		pandas extension or numpy dtype
		
		See Also
		--------
		numpy.find_common_type
	**/
	static public function find_common_type(types:Dynamic):Dynamic;
	static public function get_blocks(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Conform a set of SparseSeries (with NaN fill_value) to a common SparseIndex
		corresponding to the locations where they all have data
		
		Parameters
		----------
		series_dict : dict or DataFrame
		
		Notes
		-----
		Using the dumbest algorithm I could think of. Should put some more thought
		into this
		
		Returns
		-------
		homogenized : dict of SparseSeries
	**/
	static public function homogenize(series_dict:Dynamic):Dynamic;
	/**
		Check whether an array-like is a scipy.sparse.spmatrix instance.
		
		Parameters
		----------
		arr : array-like
		    The array-like to check.
		
		Returns
		-------
		boolean : Whether or not the array-like is a
		          scipy.sparse.spmatrix instance.
		
		Notes
		-----
		If scipy is not installed, this function will always return False.
		
		Examples
		--------
		>>> from scipy.sparse import bsr_matrix
		>>> is_scipy_sparse(bsr_matrix([1, 2, 3]))
		True
		>>> is_scipy_sparse(pd.SparseArray([1, 2, 3]))
		False
		>>> is_scipy_sparse(pd.SparseSeries([1, 2, 3]))
		False
	**/
	static public function is_scipy_sparse(arr:Dynamic):Dynamic;
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
	static public function lmap(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		provide explict type promotion and coercion
		
		Parameters
		----------
		values : the ndarray that we want to maybe upcast
		fill_value : what we want to fill with
		dtype : if None, then use the dtype of the values, else coerce to this type
		copy : if True always make a copy even if no upcast is required
	**/
	static public function maybe_upcast(values:Dynamic, ?fill_value:Dynamic, ?dtype:Dynamic, ?copy:Dynamic):Dynamic;
	static public var nan : Dynamic;
	/**
		Replacement for numpy.isfinite / -numpy.isnan which is suitable for use
		on object arrays.
		
		Parameters
		----------
		arr : ndarray or object value
		    Object to check for *not*-null-ness
		
		Returns
		-------
		isnulled : array-like of bool or bool
		    Array or bool indicating whether an object is *not* null or if an array
		    is given which of the element is *not* null.
		
		See also
		--------
		pandas.isnull : boolean inverse of pandas.notnull
	**/
	static public function notnull(obj:Dynamic):Dynamic;
	/**
		Only makes sense when fill_value is NaN
	**/
	static public function stack_sparse_frame(frame:Dynamic):Dynamic;
	/**
		create and return the block manager from a dataframe of series,
		columns, index
	**/
	static public function to_manager(sdf:Dynamic, columns:Dynamic, index:Dynamic):Dynamic;
}