/* This file is generated, do not edit! */
package scipy.sparse.base;
@:pythonImport("scipy.sparse.base") extern class Base_Module {
	static public var MAXPRINT : Dynamic;
	static public function asmatrix(data:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Unpack keyword arguments for reshape function.
		
		This is useful because keyword arguments after star arguments are not
		allowed in Python 2, but star keyword arguments are. This function unpacks
		'order' and 'copy' from the star keyword arguments (with defaults) and
		throws an error for any remaining.
	**/
	static public function check_reshape_kwargs(kwargs:Dynamic):Dynamic;
	/**
		Imitate numpy.matrix handling of shape arguments
	**/
	static public function check_shape(args:Dynamic, ?current_shape:Dynamic):Dynamic;
	/**
		Mimic numpy's casting for np.sum
	**/
	static public function get_sum_dtype(dtype:Dynamic):Dynamic;
	static public function isdense(x:Dynamic):Dynamic;
	/**
		Is x appropriate as an index into a sparse matrix? Returns True
		if it can be cast safely to a machine int.
	**/
	static public function isintlike(x:Dynamic):Dynamic;
	/**
		Is x either a scalar, an array scalar, or a 0-dim array?
	**/
	static public function isscalarlike(x:Dynamic):Dynamic;
	/**
		Is x of a sparse matrix type?
		
		Parameters
		----------
		x
		    object to check for being a sparse matrix
		
		Returns
		-------
		bool
		    True if x is a sparse matrix, False otherwise
		
		Notes
		-----
		issparse and isspmatrix are aliases for the same function.
		
		Examples
		--------
		>>> from scipy.sparse import csr_matrix, isspmatrix
		>>> isspmatrix(csr_matrix([[5]]))
		True
		
		>>> from scipy.sparse import isspmatrix
		>>> isspmatrix(5)
		False
	**/
	static public function issparse(x:Dynamic):Dynamic;
	/**
		Is x of a sparse matrix type?
		
		Parameters
		----------
		x
		    object to check for being a sparse matrix
		
		Returns
		-------
		bool
		    True if x is a sparse matrix, False otherwise
		
		Notes
		-----
		issparse and isspmatrix are aliases for the same function.
		
		Examples
		--------
		>>> from scipy.sparse import csr_matrix, isspmatrix
		>>> isspmatrix(csr_matrix([[5]]))
		True
		
		>>> from scipy.sparse import isspmatrix
		>>> isspmatrix(5)
		False
	**/
	static public function isspmatrix(x:Dynamic):Dynamic;
	static public function validateaxis(axis:Dynamic):Dynamic;
}