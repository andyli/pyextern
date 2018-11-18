/* This file is generated, do not edit! */
package numpy.matrixlib;
@:pythonImport("numpy.matrixlib") extern class Matrixlib_Module {
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
	static public var absolute_import : Dynamic;
	/**
		Interpret the input as a matrix.
		
		Unlike `matrix`, `asmatrix` does not make a copy if the input is already
		a matrix or an ndarray.  Equivalent to ``matrix(data, copy=False)``.
		
		Parameters
		----------
		data : array_like
		    Input data.
		dtype : data-type
		   Data-type of the output matrix.
		
		Returns
		-------
		mat : matrix
		    `data` interpreted as a matrix.
		
		Examples
		--------
		>>> x = np.array([[1, 2], [3, 4]])
		
		>>> m = np.asmatrix(x)
		
		>>> x[0,0] = 5
		
		>>> m
		matrix([[5, 2],
		        [3, 4]])
	**/
	static public function asmatrix(data:Dynamic, ?dtype:Dynamic):numpy.Matrix;
	/**
		Build a matrix object from a string, nested sequence, or array.
		
		Parameters
		----------
		obj : str or array_like
		    Input data. If a string, variables in the current scope may be
		    referenced by name.
		ldict : dict, optional
		    A dictionary that replaces local operands in current frame.
		    Ignored if `obj` is not a string or `gdict` is `None`.
		gdict : dict, optional
		    A dictionary that replaces global operands in current frame.
		    Ignored if `obj` is not a string.
		
		Returns
		-------
		out : matrix
		    Returns a matrix object, which is a specialized 2-D array.
		
		See Also
		--------
		block :
		    A generalization of this function for N-d arrays, that returns normal
		    ndarrays.
		
		Examples
		--------
		>>> A = np.mat('1 1; 1 1')
		>>> B = np.mat('2 2; 2 2')
		>>> C = np.mat('3 4; 5 6')
		>>> D = np.mat('7 8; 9 0')
		
		All the following expressions construct the same block matrix:
		
		>>> np.bmat([[A, B], [C, D]])
		matrix([[1, 1, 2, 2],
		        [1, 1, 2, 2],
		        [3, 4, 7, 8],
		        [5, 6, 9, 0]])
		>>> np.bmat(np.r_[np.c_[A, B], np.c_[C, D]])
		matrix([[1, 1, 2, 2],
		        [1, 1, 2, 2],
		        [3, 4, 7, 8],
		        [5, 6, 9, 0]])
		>>> np.bmat('A,B; C,D')
		matrix([[1, 1, 2, 2],
		        [1, 1, 2, 2],
		        [3, 4, 7, 8],
		        [5, 6, 9, 0]])
	**/
	static public function bmat(obj:Dynamic, ?ldict:Dynamic, ?gdict:Dynamic):numpy.Matrix;
	static public var division : Dynamic;
	/**
		Interpret the input as a matrix.
		
		Unlike `matrix`, `asmatrix` does not make a copy if the input is already
		a matrix or an ndarray.  Equivalent to ``matrix(data, copy=False)``.
		
		Parameters
		----------
		data : array_like
		    Input data.
		dtype : data-type
		   Data-type of the output matrix.
		
		Returns
		-------
		mat : matrix
		    `data` interpreted as a matrix.
		
		Examples
		--------
		>>> x = np.array([[1, 2], [3, 4]])
		
		>>> m = np.asmatrix(x)
		
		>>> x[0,0] = 5
		
		>>> m
		matrix([[5, 2],
		        [3, 4]])
	**/
	static public function mat(data:Dynamic, ?dtype:Dynamic):numpy.Matrix;
	static public var print_function : Dynamic;
	static public function test(?label:Dynamic, ?verbose:Dynamic, ?extra_argv:Dynamic, ?doctests:Dynamic, ?coverage:Dynamic, ?durations:Dynamic, ?tests:Dynamic):Dynamic;
}