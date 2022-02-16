/* This file is generated, do not edit! */
package scipy.io.mmio;
@:pythonImport("scipy.io.mmio") extern class Mmio_Module {
	static public function asstr(s:Dynamic):Dynamic;
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
	/**
		Return size and storage parameters from Matrix Market file-like 'source'.
		
		Parameters
		----------
		source : str or file-like
		    Matrix Market filename (extension .mtx) or open file-like object
		
		Returns
		-------
		rows : int
		    Number of matrix rows.
		cols : int
		    Number of matrix columns.
		entries : int
		    Number of non-zero entries of a sparse matrix
		    or rows*cols for a dense matrix.
		format : str
		    Either 'coordinate' or 'array'.
		field : str
		    Either 'real', 'complex', 'pattern', or 'integer'.
		symmetry : str
		    Either 'general', 'symmetric', 'skew-symmetric', or 'hermitian'.
	**/
	static public function mminfo(source:Dynamic):Int;
	/**
		Reads the contents of a Matrix Market file-like 'source' into a matrix.
		
		Parameters
		----------
		source : str or file-like
		    Matrix Market filename (extensions .mtx, .mtz.gz)
		    or open file-like object.
		
		Returns
		-------
		a : ndarray or coo_matrix
		    Dense or sparse matrix depending on the matrix format in the
		    Matrix Market file.
	**/
	static public function mmread(source:Dynamic):Dynamic;
	/**
		Writes the sparse or dense array `a` to Matrix Market file-like `target`.
		
		Parameters
		----------
		target : str or file-like
		    Matrix Market filename (extension .mtx) or open file-like object.
		a : array like
		    Sparse or dense 2-D array.
		comment : str, optional
		    Comments to be prepended to the Matrix Market file.
		field : None or str, optional
		    Either 'real', 'complex', 'pattern', or 'integer'.
		precision : None or int, optional
		    Number of digits to display for real or complex values.
		symmetry : None or str, optional
		    Either 'general', 'symmetric', 'skew-symmetric', or 'hermitian'.
		    If symmetry is None the symmetry type of 'a' is determined by its
		    values.
	**/
	static public function mmwrite(target:Dynamic, a:Dynamic, ?comment:Dynamic, ?field:Dynamic, ?precision:Dynamic, ?symmetry:Dynamic):Dynamic;
}