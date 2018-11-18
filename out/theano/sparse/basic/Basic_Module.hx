/* This file is generated, do not edit! */
package theano.sparse.basic;
@:pythonImport("theano.sparse.basic") extern class Basic_Module {
	static public function CSC(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function CSR(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Parameters
		----------
		SS
		    Function to apply between two sparses matrices.
		SD
		    Function to apply between a sparse and a dense matrix.
		DS
		    Function to apply between a dense and a sparse matrix.
		
		Returns
		-------
		function
		    Switch function taking two matrices as input.
		
		Notes
		-----
		At least one of `x` and `y` must be a sparse matrix.
		
		DS swap input as a dense matrix cannot be a left operand.
	**/
	static public function __ComparisonSwitch(SS:Dynamic, SD:Dynamic, DS:Dynamic):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _dot(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Returns
		-------
		boolean
		    True unless x is a L{scipy.sparse.spmatrix} (and not a
		    L{numpy.ndarray}).
	**/
	static public function _is_dense(x:Dynamic):Dynamic;
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
	static public var _mtype_to_str : Dynamic;
	static public var _mtypes : Dynamic;
	static public function _structured_dot(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Add two matrices, at least one of which is sparse.
		
		This method will provide the right op according
		to the inputs.
		
		Parameters
		----------
		x
		    A matrix variable.
		y
		    A matrix variable.
		
		Returns
		-------
		A sparse matrix
		    `x` + `y`
		
		Notes
		-----
		At least one of `x` and `y` must be a sparse matrix.
		
		The grad will be structured only when one of the variable will be a dense
		matrix.
	**/
	static public function add(x:Dynamic, y:Dynamic):Dynamic;
	static public function add_s_d(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function add_s_s(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function add_s_s_data(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var all_dtypes : Dynamic;
	static public function arcsin(?args:python.VarArgs<Dynamic>):Dynamic;
	static public function arcsinh(?args:python.VarArgs<Dynamic>):Dynamic;
	static public function arctan(?args:python.VarArgs<Dynamic>):Dynamic;
	static public function arctanh(?args:python.VarArgs<Dynamic>):Dynamic;
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
	static public function as_sparse(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Same as `as_sparse_variable` but if we can't make a
		sparse variable, we try to make a tensor variable.
		
		Parameters
		----------
		x
		    A sparse matrix.
		
		Returns
		-------
		SparseVariable or TensorVariable version of `x`
	**/
	static public function as_sparse_or_tensor_variable(x:Dynamic, ?name:Dynamic):Dynamic;
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
	/**
		Create a view into the array with the given shape and strides.
		
		.. warning:: This function has to be used with extreme care, see notes.
		
		Parameters
		----------
		x : ndarray
		    Array to create a new.
		shape : sequence of int, optional
		    The shape of the new array. Defaults to ``x.shape``.
		strides : sequence of int, optional
		    The strides of the new array. Defaults to ``x.strides``.
		subok : bool, optional
		    .. versionadded:: 1.10
		
		    If True, subclasses are preserved.
		writeable : bool, optional
		    .. versionadded:: 1.12
		
		    If set to False, the returned array will always be readonly.
		    Otherwise it will be writable if the original array was. It
		    is advisable to set this to False if possible (see Notes).
		
		Returns
		-------
		view : ndarray
		
		See also
		--------
		broadcast_to: broadcast an array to a given shape.
		reshape : reshape an array.
		
		Notes
		-----
		``as_strided`` creates a view into the array given the exact strides
		and shape. This means it manipulates the internal data structure of
		ndarray and, if done incorrectly, the array elements can point to
		invalid memory and can corrupt results or crash your program.
		It is advisable to always use the original ``x.strides`` when
		calculating new strides to avoid reliance on a contiguous memory
		layout.
		
		Furthermore, arrays created with this function often contain self
		overlapping memory, so that two elements are identical.
		Vectorized write operations on such arrays will typically be
		unpredictable. They may even give different results for small, large,
		or transposed arrays.
		Since writing to these arrays has to be tested and done with great
		care, you may want to use ``writeable=False`` to avoid accidental write
		operations.
		
		For these reasons it is advisable to avoid ``as_strided`` when
		possible.
	**/
	static public function as_strided(x:Dynamic, ?shape:Dynamic, ?strides:Dynamic, ?subok:Dynamic, ?writeable:Dynamic):Dynamic;
	static public function bcast(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function bsr_dmatrix(?name:Dynamic):Dynamic;
	static public function bsr_fmatrix(?name:Dynamic):Dynamic;
	static public function bsr_matrix(?name:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Cast sparse variable to the desired dtype.
		
		Parameters
		----------
		variable
		    Sparse matrix.
		dtype
		    The dtype wanted.
		
		Returns
		-------
		Same as `x` but having `dtype` as dtype.
		
		Notes
		-----
		The grad implemented is regular, i.e. not structured.
	**/
	@:native("cast")
	static public function _cast(variable:Dynamic, dtype:Dynamic):Dynamic;
	static public function ccast(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function ceil(?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		Remove explicit zeros from a sparse matrix, and re-sort indices.
		
		CSR column indices are not necessarily sorted. Likewise
		for CSC row indices. Use `clean` when sorted
		indices are required (e.g. when passing data to other
		libraries) and to ensure there are no zeros in the data.
		
		Parameters
		----------
		x
		    A sparse matrix.
		
		Returns
		-------
		A sparse matrix
		    The same as `x` with indices sorted and zeros
		    removed.
		
		Notes
		-----
		The grad implemented is regular, i.e. not structured.
	**/
	static public function clean(x:Dynamic):Dynamic;
	/**
		Scale each columns of a sparse matrix by the corresponding element of a
		dense vector.
		
		Parameters
		----------
		x
		    A sparse matrix.
		s
		    A dense vector with length equal to the number of columns of `x`.
		
		Returns
		-------
		A sparse matrix in the same format as `x` which each column had been
		multiply by the corresponding element of `s`.
		
		Notes
		-----
		The grad implemented is structured.
	**/
	static public function col_scale(x:Dynamic, s:Dynamic):Dynamic;
	static public var complex_dtypes : Dynamic;
	static public var config : Dynamic;
	static public function conj(?args:python.VarArgs<Dynamic>):Dynamic;
	static public function constant(x:Dynamic, ?name:Dynamic):Dynamic;
	static public function construct_sparse_from_list(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var continuous_dtypes : Dynamic;
	static public function csc_dmatrix(?name:Dynamic):Dynamic;
	static public function csc_fmatrix(?name:Dynamic):Dynamic;
	static public function csc_from_dense(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function csc_matrix(?name:Dynamic, ?dtype:Dynamic):Dynamic;
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
	static public function csr_dmatrix(?name:Dynamic):Dynamic;
	static public function csr_fmatrix(?name:Dynamic):Dynamic;
	static public function csr_from_dense(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function csr_matrix(?name:Dynamic, ?dtype:Dynamic):Dynamic;
	static public function dcast(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function deg2rad(?args:python.VarArgs<Dynamic>):Dynamic;
	static public function dense_from_sparse(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function diag(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
	static public function ensure_sorted_indices(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function eq(x:Dynamic, y:Dynamic):Dynamic;
	static public function equal_s_d(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function equal_s_s(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function expm1(?args:python.VarArgs<Dynamic>):Dynamic;
	static public function fcast(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var float_dtypes : Dynamic;
	static public function floor(?args:python.VarArgs<Dynamic>):Dynamic;
	static public function ge(x:Dynamic, y:Dynamic):Dynamic;
	static public function get_item_2d(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function get_item_2lists(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function get_item_2lists_grad(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function get_item_list(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function get_item_list_grad(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function get_item_scalar(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return an un-computable symbolic variable of type `x.type`.
		
		If any call to tensor.grad results in an expression containing this
		un-computable variable, an exception (NotImplementedError) will be
		raised indicating that the gradient on the
		`x_pos`'th input of `op` has not been implemented. Likewise if
		any call to theano.function involves this variable.
		
		Optionally adds a comment to the exception explaining why this
		gradient is not implemented.
	**/
	static public function grad_not_implemented(op:Dynamic, x_pos:Dynamic, x:Dynamic, ?comment:Dynamic):Dynamic;
	/**
		Return an un-computable symbolic variable of type `x.type`.
		
		If any call to tensor.grad results in an expression containing this
		un-computable variable, an exception (GradUndefinedError) will be
		raised indicating that the gradient on the
		`x_pos`'th input of `op` is mathematically undefined. Likewise if
		any call to theano.function involves this variable.
		
		Optionally adds a comment to the exception explaining why this
		gradient is not defined.
	**/
	static public function grad_undefined(op:Dynamic, x_pos:Dynamic, x:Dynamic, ?comment:Dynamic):Dynamic;
	static public function greater_equal_s_d(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function greater_equal_s_s(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function greater_than_s_d(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function greater_than_s_s(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function gt(x:Dynamic, y:Dynamic):Dynamic;
	static public function hash_from_sparse(data:Dynamic):Dynamic;
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
	static public var int_dtypes : Dynamic;
	static public var integer_dtypes : Dynamic;
	static public var integer_types : Dynamic;
	static public function lcast(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function le(x:Dynamic, y:Dynamic):Dynamic;
	static public function less_equal_s_d(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function less_equal_s_s(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function less_than_s_d(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function less_than_s_s(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function log1p(?args:python.VarArgs<Dynamic>):Dynamic;
	static public function lt(x:Dynamic, y:Dynamic):Dynamic;
	static public function matrix(format:Dynamic, ?name:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Multiply elementwise two matrices, at least one of which is sparse.
		
		This method will provide the right op according to the inputs.
		
		Parameters
		----------
		x
		    A matrix variable.
		y
		    A matrix variable.
		
		Returns
		-------
		A sparse matrix
		    `x` * `y`
		
		Notes
		-----
		At least one of `x` and `y` must be a sparse matrix.
		The grad is regular, i.e. not structured.
	**/
	static public function mul(x:Dynamic, y:Dynamic):Dynamic;
	static public function mul_s_d(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function mul_s_s(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function mul_s_v(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function neg(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function neq(x:Dynamic, y:Dynamic):Dynamic;
	static public function not_equal_s_d(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function not_equal_s_s(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var print_function : Dynamic;
	static public function rad2deg(?args:python.VarArgs<Dynamic>):Dynamic;
	static public function remove0(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function rint(?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		Scale each row of a sparse matrix by the corresponding element of
		a dense vector.
		
		Parameters
		----------
		x
		    A sparse matrix.
		s
		    A dense vector with length equal to the number of rows of `x`.
		
		Returns
		-------
		A sparse matrix
		    A sparse matrix in the same format as `x` whose each row has been
		    multiplied by the corresponding element of `s`.
		
		Notes
		-----
		The grad implemented is structured.
	**/
	static public function row_scale(x:Dynamic, s:Dynamic):Dynamic;
	static public function sampling_dot(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function sdg_csc(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function sdg_csr(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function sgn(?args:python.VarArgs<Dynamic>):Dynamic;
	static public function sin(?args:python.VarArgs<Dynamic>):Dynamic;
	static public function sinh(?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		Construct a sparse matrix of ones with the same sparsity pattern.
		
		Parameters
		----------
		x
		    Sparse matrix to take the sparsity pattern.
		
		Returns
		-------
		A sparse matrix
		    The same as `x` with data changed for ones.
	**/
	static public function sp_ones_like(x:Dynamic):Dynamic;
	/**
		Calculate the sum of a sparse matrix along the specified axis.
		
		It operates a reduction along the specified axis. When `axis` is `None`,
		it is applied along all axes.
		
		Parameters
		----------
		x
		    Sparse matrix.
		axis
		    Axis along which the sum is applied. Integer or `None`.
		sparse_grad : bool
		    `True` to have a structured grad.
		
		Returns
		-------
		object
		    The sum of `x` in a dense format.
		
		Notes
		-----
		The grad implementation is controlled with the `sparse_grad` parameter.
		`True` will provide a structured grad and `False` will provide a regular
		grad. For both choices, the grad returns a sparse matrix having the same
		format as `x`.
		
		This op does not return a sparse matrix, but a dense tensor matrix.
	**/
	static public function sp_sum(x:Dynamic, ?axis:Dynamic, ?sparse_grad:Dynamic):Dynamic;
	/**
		Construct a sparse matrix of zeros.
		
		Parameters
		----------
		x
		    Sparse matrix to take the shape.
		
		Returns
		-------
		A sparse matrix
		    The same as `x` with zero entries for all element.
	**/
	static public function sp_zeros_like(x:Dynamic):Dynamic;
	static public var sparse_formats : Dynamic;
	static public function sqr(?args:python.VarArgs<Dynamic>):Dynamic;
	static public function sqrt(?args:python.VarArgs<Dynamic>):Dynamic;
	static public function square_diagonal(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function structured_add(?args:python.VarArgs<Dynamic>):Dynamic;
	static public function structured_add_s_v(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Structured Dot is like dot, except that only the
		gradient wrt non-zero elements of the sparse matrix
		`a` are calculated and propagated.
		
		The output is presumed to be a dense matrix, and is represented by a
		TensorType instance.
		
		Parameters
		----------
		a
		    A sparse matrix.
		b
		    A sparse or dense matrix.
		
		Returns
		-------
		A sparse matrix
		    The dot product of `a` and `b`.
		
		Notes
		-----
		The grad implemented is structured.
	**/
	static public function structured_dot(x:Dynamic, y:Dynamic):Dynamic;
	static public function structured_dot_grad(sparse_A:Dynamic, dense_B:Dynamic, ga:Dynamic):Dynamic;
	static public function structured_exp(?args:python.VarArgs<Dynamic>):Dynamic;
	static public function structured_log(?args:python.VarArgs<Dynamic>):Dynamic;
	static public function structured_maximum(?args:python.VarArgs<Dynamic>):Dynamic;
	static public function structured_minimum(?args:python.VarArgs<Dynamic>):Dynamic;
	static public function structured_monoid(tensor_op:Dynamic):Dynamic;
	static public function structured_pow(?args:python.VarArgs<Dynamic>):Dynamic;
	static public function structured_sigmoid(?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		Subtract two matrices, at least one of which is sparse.
		
		This method will provide the right op according
		to the inputs.
		
		Parameters
		----------
		x
		    A matrix variable.
		y
		    A matrix variable.
		
		Returns
		-------
		A sparse matrix
		    `x` - `y`
		
		Notes
		-----
		At least one of `x` and `y` must be a sparse matrix.
		
		The grad will be structured only when one of the variable will be a dense
		matrix.
	**/
	static public function sub(x:Dynamic, y:Dynamic):Dynamic;
	static public function tan(?args:python.VarArgs<Dynamic>):Dynamic;
	static public function tanh(?args:python.VarArgs<Dynamic>):Dynamic;
	static public function transpose(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Operation for efficiently calculating the dot product when
		one or all operands are sparse. Supported formats are CSC and CSR.
		The output of the operation is sparse.
		
		Parameters
		----------
		x
		    Sparse matrix.
		y
		    Sparse matrix or 2d tensor variable.
		grad_preserves_dense : bool
		    If True (default), makes the grad of dense inputs dense.
		    Otherwise the grad is always sparse.
		
		Returns
		-------
		The dot product `x`.`y` in a sparse format.
		
		Notex
		-----
		The grad implemented is regular, i.e. not structured.
	**/
	static public function true_dot(x:Dynamic, y:Dynamic, ?grad_preserves_dense:Dynamic):Dynamic;
	static public function trunc(?args:python.VarArgs<Dynamic>):Dynamic;
	static public var uint_dtypes : Dynamic;
	static public function usmm(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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