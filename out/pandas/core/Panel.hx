/* This file is generated, do not edit! */
package pandas.core;
@:pythonImport("pandas.core.panel") extern class Panel {
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
	/**
		Makes sure that time and panels are conformable
	**/
	static public function _ensure_like_indices(time:Dynamic, panels:Dynamic):Dynamic;
	static public function _get_combined_index(indexes:Dynamic, ?intersect:Dynamic):Dynamic;
	/**
		interpret the dtype from a scalar, upcast floats and ints
		return the new value and the dtype 
	**/
	static public function _infer_dtype_from_scalar(val:Dynamic):Dynamic;
	static public var _op_descriptions : Dynamic;
	static public var _shared_doc_kwargs : Dynamic;
	static public var _shared_docs : Dynamic;
	static public function _try_sort(iterable:Dynamic):Dynamic;
	/**
		Numpy version of itertools.product or pandas.compat.product.
		Sometimes faster (for large inputs)...
		
		Examples
		--------
		>>> cartesian_product([list('ABC'), [1, 2]])
		[array(['A', 'A', 'B', 'B', 'C', 'C'], dtype='|S1'),
		array([1, 2, 1, 2, 1, 2])]
	**/
	static public function cartesian_product(X:Dynamic):Dynamic;
	static public function create_block_manager_from_arrays(arrays:Dynamic, names:Dynamic, axes:Dynamic):Dynamic;
	static public function create_block_manager_from_blocks(blocks:Dynamic, axes:Dynamic):Dynamic;
	static public function deprecate(name:Dynamic, alternative:Dynamic, ?alt_name:Dynamic):Dynamic;
	/**
		Decorator to deprecate a keyword argument of a function
		
		Parameters
		----------
		old_arg_name : str
		    Name of argument in function to deprecate
		new_arg_name : str
		    Name of prefered argument in function
		mapping : dict or callable
		    If mapping is present, use it to translate old arguments to
		    new arguments. A callable must do its own value checking;
		    values not found in a dict will be forwarded unchanged.
		
		Examples
		--------
		The following deprecates 'cols', using 'columns' instead
		
		>>> @deprecate_kwarg(old_arg_name='cols', new_arg_name='columns')
		... def f(columns=''):
		...     print(columns)
		...
		>>> f(columns='should work ok')
		should work ok
		>>> f(cols='should raise warning')
		FutureWarning: cols is deprecated, use columns instead
		  warnings.warn(msg, FutureWarning)
		should raise warning
		>>> f(cols='should error', columns="can't pass do both")
		TypeError: Can only specify 'cols' or 'columns', not both
		>>> @deprecate_kwarg('old', 'new', {'yes': True, 'no': False})
		... def f(new=False):
		...     print('yes!' if new else 'no!')
		...
		>>> f(old='yes')
		FutureWarning: old='yes' is deprecated, use new=True instead
		  warnings.warn(msg, FutureWarning)
		yes!
	**/
	static public function deprecate_kwarg(old_arg_name:Dynamic, new_arg_name:Dynamic, ?mapping:Dynamic, ?stacklevel:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public function is_list_like(arg:Dynamic):Dynamic;
	static public function lmap(args:Dynamic, kwargs:Dynamic):Dynamic;
	static public function lrange(args:Dynamic, kwargs:Dynamic):Dynamic;
	static public function maybe_droplevels(index:Dynamic, key:Dynamic):Dynamic;
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
		Returns a multi-index suitable for a panel-like DataFrame
		
		Parameters
		----------
		time : array-like
		    Time index, does not have to repeat
		panels : array-like
		    Panel index, does not have to repeat
		names : list, optional
		    List containing the names of the indices
		
		Returns
		-------
		multi_index : MultiIndex
		    Time index is the first level, the panels are the second level.
		
		Examples
		--------
		>>> years = range(1960,1963)
		>>> panels = ['A', 'B', 'C']
		>>> panel_idx = panel_index(years, panels)
		>>> panel_idx
		MultiIndex([(1960, 'A'), (1961, 'A'), (1962, 'A'), (1960, 'B'),
		            (1961, 'B'), (1962, 'B'), (1960, 'C'), (1961, 'C'),
		            (1962, 'C')], dtype=object)
		
		or
		
		>>> import numpy as np
		>>> years = np.repeat(range(1960,1963), 3)
		>>> panels = np.tile(['A', 'B', 'C'], 3)
		>>> panel_idx = panel_index(years, panels)
		>>> panel_idx
		MultiIndex([(1960, 'A'), (1960, 'B'), (1960, 'C'), (1961, 'A'),
		            (1961, 'B'), (1961, 'C'), (1962, 'A'), (1962, 'B'),
		            (1962, 'C')], dtype=object)
	**/
	static public function panel_index(time:Dynamic, panels:Dynamic, ?names:Dynamic):Dynamic;
	static public function u(s:Dynamic):Dynamic;
}