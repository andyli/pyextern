/* This file is generated, do not edit! */
package pandas.api.indexers;
@:pythonImport("pandas.api.indexers") extern class Indexers_Module {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Check if `indexer` is a valid array indexer for `array`.
		
		For a boolean mask, `array` and `indexer` are checked to have the same
		length. The dtype is validated, and if it is an integer or boolean
		ExtensionArray, it is checked if there are missing values present, and
		it is converted to the appropriate numpy array. Other dtypes will raise
		an error.
		
		Non-array indexers (integer, slice, Ellipsis, tuples, ..) are passed
		through as is.
		
		.. versionadded:: 1.0.0
		
		Parameters
		----------
		array : array-like
		    The array that is being indexed (only used for the length).
		indexer : array-like or list-like
		    The array-like that's used to index. List-like input that is not yet
		    a numpy array or an ExtensionArray is converted to one. Other input
		    types are passed through as is.
		
		Returns
		-------
		numpy.ndarray
		    The validated indexer as a numpy array that can be used to index.
		
		Raises
		------
		IndexError
		    When the lengths don't match.
		ValueError
		    When `indexer` cannot be converted to a numpy ndarray to index
		    (e.g. presence of missing values).
		
		See Also
		--------
		api.types.is_bool_dtype : Check if `key` is of boolean dtype.
		
		Examples
		--------
		When checking a boolean mask, a boolean ndarray is returned when the
		arguments are all valid.
		
		>>> mask = pd.array([True, False])
		>>> arr = pd.array([1, 2])
		>>> pd.api.indexers.check_array_indexer(arr, mask)
		array([ True, False])
		
		An IndexError is raised when the lengths don't match.
		
		>>> mask = pd.array([True, False, True])
		>>> pd.api.indexers.check_array_indexer(arr, mask)
		Traceback (most recent call last):
		...
		IndexError: Boolean index has wrong length: 3 instead of 2.
		
		NA values in a boolean array are treated as False.
		
		>>> mask = pd.array([True, pd.NA])
		>>> pd.api.indexers.check_array_indexer(arr, mask)
		array([ True, False])
		
		A numpy boolean mask will get passed through (if the length is correct):
		
		>>> mask = np.array([True, False])
		>>> pd.api.indexers.check_array_indexer(arr, mask)
		array([ True, False])
		
		Similarly for integer indexers, an integer ndarray is returned when it is
		a valid indexer, otherwise an error is  (for integer indexers, a matching
		length is not required):
		
		>>> indexer = pd.array([0, 2], dtype="Int64")
		>>> arr = pd.array([1, 2, 3])
		>>> pd.api.indexers.check_array_indexer(arr, indexer)
		array([0, 2])
		
		>>> indexer = pd.array([0, pd.NA], dtype="Int64")
		>>> pd.api.indexers.check_array_indexer(arr, indexer)
		Traceback (most recent call last):
		...
		ValueError: Cannot index with an integer indexer containing NA values
		
		For non-integer/boolean dtypes, an appropriate error is raised:
		
		>>> indexer = np.array([0., 2.], dtype="float64")
		>>> pd.api.indexers.check_array_indexer(arr, indexer)
		Traceback (most recent call last):
		...
		IndexError: arrays used as indices must be of integer or boolean type
	**/
	static public function check_array_indexer(array:Dynamic, indexer:Dynamic):Dynamic;
}