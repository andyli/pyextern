/* This file is generated, do not edit! */
package theano.sparse.sandbox.sp2;
@:pythonImport("theano.sparse.sandbox.sp2") extern class Sp2_Module {
	static public function CSC(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function CSR(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Returns
		-------
		boolean
		    True if x is a L{tensor.TensorType} (and not a L{SparseVariable},
		    for instance).
	**/
	static public function _is_dense_variable(x:Dynamic):Dynamic;
	/**
		Returns
		-------
		boolean
		    True iff x is a L{scipy.sparse.spmatrix} (and not a L{numpy.ndarray}).
	**/
	static public function _is_sparse(x:Dynamic):Dynamic;
	/**
		Returns
		-------
		boolean
		    True iff x is a L{SparseVariable} (and not a L{tensor.TensorType},
		    for instance).
	**/
	static public function _is_sparse_variable(x:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public function add_s_s(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function add_s_s_data(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Wrapper around SparseVariable constructor to construct
		a Variable with a sparse matrix with the same dtype and
		format.
		
		Parameters
		----------
		x
		    A sparse matrix.
		
		Returns
		-------
		object
		    SparseVariable version of `x`.
	**/
	static public function as_sparse_variable(x:Dynamic, ?name:Dynamic):Dynamic;
	static public function bcast(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function ccast(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function csc_dbinomial(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function csc_fbinomial(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return the data field of the sparse variable.
	**/
	static public function csm_data(csm:Dynamic):Dynamic;
	/**
		Return the indices field of the sparse variable.
	**/
	static public function csm_indices(csm:Dynamic):Dynamic;
	/**
		Return the indptr field of the sparse variable.
	**/
	static public function csm_indptr(csm:Dynamic):Dynamic;
	static public function csm_properties(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return the shape field of the sparse variable.
	**/
	static public function csm_shape(csm:Dynamic):Dynamic;
	static public function csr_dbinomial(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function csr_fbinomial(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function dcast(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var discrete_dtypes : Dynamic;
	static public var division : Dynamic;
	/**
		Operation for efficiently calculating the dot product when
		one or all operands is sparse. Supported format are CSC and CSR.
		The output of the operation is dense.
		
		Parameters
		----------
		x
		    Sparse or dense matrix variable.
		y
		    Sparse or dense matrix variable.
		
		Returns
		-------
		The dot product `x`.`y` in a dense format.
		
		Notes
		-----
		The grad implemented is regular, i.e. not structured.
		
		At least one of `x` or `y` must be a sparse matrix.
		
		When the operation has the form dot(csr_matrix, dense)
		the gradient of this operation can be performed inplace
		by UsmmCscDense. This leads to significant speed-ups.
	**/
	static public function dot(x:Dynamic, y:Dynamic):Dynamic;
	static public function eliminate_zeros(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function fcast(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var float_dtypes : Dynamic;
	/**
		Stack sparse matrices horizontally (column wise).
		
		This wrap the method hstack from scipy.
		
		Parameters
		----------
		blocks
		    List of sparse array of compatible shape.
		format
		    String representing the output format. Default is csc.
		dtype
		    Output dtype.
		
		Returns
		-------
		array
		    The concatenation of the sparse array column wise.
		
		Notes
		-----
		The number of line of the sparse matrix must agree.
		
		The grad implemented is regular, i.e. not structured.
	**/
	static public function hstack(blocks:Dynamic, ?format:Dynamic, ?dtype:Dynamic):Dynamic;
	static public function icast(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function lcast(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var local_mul_s_d : Dynamic;
	static public var local_mul_s_v : Dynamic;
	static public var local_sampling_dot_csr : Dynamic;
	static public var local_structured_add_s_v : Dynamic;
	static public function mul_s_d(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function mul_s_d_csc(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function mul_s_d_csr(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function mul_s_s(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function mul_s_v(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function mul_s_v_csr(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function multinomial(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function neg(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function poisson(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var print_function : Dynamic;
	static public function register_specialize(lopt:Dynamic, ?tags:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function remove0(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function sampling_dot(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function sampling_dot_csr(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function structured_add(?args:python.VarArgs<Dynamic>):Dynamic;
	static public function structured_add_s_v(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function structured_add_s_v_csr(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function structured_exp(?args:python.VarArgs<Dynamic>):Dynamic;
	static public function structured_log(?args:python.VarArgs<Dynamic>):Dynamic;
	static public function structured_maximum(?args:python.VarArgs<Dynamic>):Dynamic;
	static public function structured_minimum(?args:python.VarArgs<Dynamic>):Dynamic;
	static public function structured_monoid(tensor_op:Dynamic):Dynamic;
	static public function structured_pow(?args:python.VarArgs<Dynamic>):Dynamic;
	static public function structured_sigmoid(?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		Stack sparse matrices vertically (row wise).
		
		This wrap the method vstack from scipy.
		
		Parameters
		----------
		blocks
		    List of sparse array of compatible shape.
		format
		    String representing the output format. Default is csc.
		dtype
		    Output dtype.
		
		Returns
		-------
		array
		    The concatenation of the sparse array row wise.
		
		Notes
		-----
		The number of column of the sparse matrix must agree.
		
		The grad implemented is regular, i.e. not structured.
	**/
	static public function vstack(blocks:Dynamic, ?format:Dynamic, ?dtype:Dynamic):Dynamic;
	static public function wcast(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function zcast(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}