/* This file is generated, do not edit! */
package scipy.sparse._matrix_io;
@:pythonImport("scipy.sparse._matrix_io") extern class _Matrix_io_Module {
	static public var PICKLE_KWARGS : Dynamic;
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Load a sparse matrix from a file using ``.npz`` format.
		
		Parameters
		----------
		file : str or file-like object
		    Either the file name (string) or an open file (file-like object)
		    where the data will be loaded.
		
		Returns
		-------
		result : csc_matrix, csr_matrix, bsr_matrix, dia_matrix or coo_matrix
		    A sparse matrix containing the loaded data.
		
		Raises
		------
		IOError
		    If the input file does not exist or cannot be read.
		
		See Also
		--------
		scipy.sparse.save_npz: Save a sparse matrix to a file using ``.npz`` format.
		numpy.load: Load several arrays from a ``.npz`` archive.
	**/
	static public function load_npz(file:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Save a sparse matrix to a file using ``.npz`` format.
		
		Parameters
		----------
		file : str or file-like object
		    Either the file name (string) or an open file (file-like object)
		    where the data will be saved. If file is a string, the ``.npz``
		    extension will be appended to the file name if it is not already
		    there.
		matrix: spmatrix (format: ``csc``, ``csr``, ``bsr``, ``dia`` or coo``)
		    The sparse matrix to save.
		compressed : bool, optional
		    Allow compressing the file. Default: True
		
		See Also
		--------
		scipy.sparse.load_npz: Load a sparse matrix from a file using ``.npz`` format.
		numpy.savez: Save several arrays into a ``.npz`` archive.
		numpy.savez_compressed : Save several arrays into a compressed ``.npz`` archive.
		
		Examples
		--------
		Store sparse matrix to disk, and load it again:
		
		>>> import scipy.sparse
		>>> sparse_matrix = scipy.sparse.csc_matrix(np.array([[0, 0, 3], [4, 0, 0]]))
		>>> sparse_matrix
		<2x3 sparse matrix of type '<type 'numpy.int64'>'
		   with 2 stored elements in Compressed Sparse Column format>
		>>> sparse_matrix.todense()
		matrix([[0, 0, 3],
		        [4, 0, 0]], dtype=int64)
		
		>>> scipy.sparse.save_npz('/tmp/sparse_matrix.npz', sparse_matrix)
		>>> sparse_matrix = scipy.sparse.load_npz('/tmp/sparse_matrix.npz')
		
		>>> sparse_matrix
		<2x3 sparse matrix of type '<type 'numpy.int64'>'
		   with 2 stored elements in Compressed Sparse Column format>
		>>> sparse_matrix.todense()
		matrix([[0, 0, 3],
		        [4, 0, 0]], dtype=int64)
	**/
	static public function save_npz(file:Dynamic, matrix:Dynamic, ?compressed:Dynamic):Dynamic;
}