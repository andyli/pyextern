/* This file is generated, do not edit! */
package torch.sparse;
@:pythonImport("torch.sparse") extern class Sparse_Module {
	static public function DimOrDims(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function List(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Optional(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var TYPE_CHECKING : Dynamic;
	/**
		Tuple type; Tuple[X, Y] is the cross-product type of X and Y.
		
		Example: Tuple[T1, T2] is a tuple of two elements corresponding
		to type variables T1 and T2.  Tuple[int, float, str] is a tuple
		of an int, a float and a string.
		
		To specify a variable-length tuple of homogeneous type, use Tuple[T, ...].
	**/
	static public function Tuple(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Union(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
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
		This function does exact same thing as :func:`torch.addmm` in the forward,
		except that it supports backward for sparse matrix :attr:`mat1`. :attr:`mat1`
		need to have `sparse_dim = 2`. Note that the gradients of :attr:`mat1` is a
		coalesced sparse tensor.
		
		Args:
		    mat (Tensor): a dense matrix to be added
		    mat1 (Tensor): a sparse matrix to be multiplied
		    mat2 (Tensor): a dense matrix to be multiplied
		    beta (Number, optional): multiplier for :attr:`mat` (:math:`\beta`)
		    alpha (Number, optional): multiplier for :math:`mat1 @ mat2` (:math:`\alpha`)
	**/
	static public function addmm(mat:Dynamic, mat1:Dynamic, mat2:Dynamic, ?beta:Dynamic, ?alpha:Dynamic):Dynamic;
	/**
		Applies a softmax function followed by logarithm.
		
		See :class:`~torch.sparse.softmax` for more details.
		
		Args:
		    input (Tensor): input
		    dim (int): A dimension along which softmax will be computed.
		    dtype (:class:`torch.dtype`, optional): the desired data type
		      of returned tensor.  If specified, the input tensor is
		      casted to :attr:`dtype` before the operation is
		      performed. This is useful for preventing data type
		      overflows. Default: None
	**/
	static public function log_softmax(input:Dynamic, dim:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Performs a matrix multiplication of the sparse matrix :attr:`mat1`
		and the (sparse or strided) matrix :attr:`mat2`. Similar to :func:`torch.mm`, If :attr:`mat1` is a
		:math:`(n \times m)` tensor, :attr:`mat2` is a :math:`(m \times p)` tensor, out will be a
		:math:`(n \times p)` tensor. :attr:`mat1` need to have `sparse_dim = 2`.
		This function also supports backward for both matrices. Note that the gradients of
		:attr:`mat1` is a coalesced sparse tensor.
		
		Args:
		    mat1 (SparseTensor): the first sparse matrix to be multiplied
		    mat2 (Tensor): the second matrix to be multiplied, which could be sparse or dense
		
		Shape:
		    The format of the output tensor of this function follows:
		    - sparse x sparse -> sparse
		    - sparse x dense -> dense
		
		Example::
		
		    >>> a = torch.randn(2, 3).to_sparse().requires_grad_(True)
		    >>> a
		    tensor(indices=tensor([[0, 0, 0, 1, 1, 1],
		                           [0, 1, 2, 0, 1, 2]]),
		           values=tensor([ 1.5901,  0.0183, -0.6146,  1.8061, -0.0112,  0.6302]),
		           size=(2, 3), nnz=6, layout=torch.sparse_coo, requires_grad=True)
		
		    >>> b = torch.randn(3, 2, requires_grad=True)
		    >>> b
		    tensor([[-0.6479,  0.7874],
		            [-1.2056,  0.5641],
		            [-1.1716, -0.9923]], requires_grad=True)
		
		    >>> y = torch.sparse.mm(a, b)
		    >>> y
		    tensor([[-0.3323,  1.8723],
		            [-1.8951,  0.7904]], grad_fn=<SparseAddmmBackward>)
		    >>> y.sum().backward()
		    >>> a.grad
		    tensor(indices=tensor([[0, 0, 0, 1, 1, 1],
		                           [0, 1, 2, 0, 1, 2]]),
		           values=tensor([ 0.1394, -0.6415, -2.1639,  0.1394, -0.6415, -2.1639]),
		           size=(2, 3), nnz=6, layout=torch.sparse_coo)
	**/
	static public function mm(mat1:Dynamic, mat2:Dynamic):Dynamic;
	/**
		Applies a softmax function.
		
		Softmax is defined as:
		
		:math:`\text{Softmax}(x_{i}) = \frac{exp(x_i)}{\sum_j exp(x_j)}`
		
		where :math:`i, j` run over sparse tensor indices and unspecified
		entries are ignores. This is equivalent to defining unspecified
		entries as negative infinity so that :math:`exp(x_k) = 0` when the
		entry with index :math:`k` has not specified.
		
		It is applied to all slices along `dim`, and will re-scale them so
		that the elements lie in the range `[0, 1]` and sum to 1.
		
		Args:
		    input (Tensor): input
		    dim (int): A dimension along which softmax will be computed.
		    dtype (:class:`torch.dtype`, optional): the desired data type
		      of returned tensor.  If specified, the input tensor is
		      casted to :attr:`dtype` before the operation is
		      performed. This is useful for preventing data type
		      overflows. Default: None
	**/
	static public function softmax(input:Dynamic, dim:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Returns the sum of each row of the sparse tensor :attr:`input` in the given
		dimensions :attr:`dim`. If :attr:`dim` is a list of dimensions,
		reduce over all of them. When sum over all ``sparse_dim``, this method
		returns a dense tensor instead of a sparse tensor.
		
		All summed :attr:`dim` are squeezed (see :func:`torch.squeeze`), resulting an output
		tensor having :attr:`dim` fewer dimensions than :attr:`input`.
		
		During backward, only gradients at ``nnz`` locations of :attr:`input`
		will propagate back. Note that the gradients of :attr:`input` is coalesced.
		
		Args:
		    input (Tensor): the input sparse tensor
		    dim (int or tuple of ints): a dimension or a list of dimensions to reduce. Default: reduce
		        over all dims.
		    dtype (:class:`torch.dtype`, optional): the desired data type of returned Tensor.
		        Default: dtype of :attr:`input`.
		
		Example::
		
		    >>> nnz = 3
		    >>> dims = [5, 5, 2, 3]
		    >>> I = torch.cat([torch.randint(0, dims[0], size=(nnz,)),
		                       torch.randint(0, dims[1], size=(nnz,))], 0).reshape(2, nnz)
		    >>> V = torch.randn(nnz, dims[2], dims[3])
		    >>> size = torch.Size(dims)
		    >>> S = torch.sparse_coo_tensor(I, V, size)
		    >>> S
		    tensor(indices=tensor([[2, 0, 3],
		                           [2, 4, 1]]),
		           values=tensor([[[-0.6438, -1.6467,  1.4004],
		                           [ 0.3411,  0.0918, -0.2312]],
		
		                          [[ 0.5348,  0.0634, -2.0494],
		                           [-0.7125, -1.0646,  2.1844]],
		
		                          [[ 0.1276,  0.1874, -0.6334],
		                           [-1.9682, -0.5340,  0.7483]]]),
		           size=(5, 5, 2, 3), nnz=3, layout=torch.sparse_coo)
		
		    # when sum over only part of sparse_dims, return a sparse tensor
		    >>> torch.sparse.sum(S, [1, 3])
		    tensor(indices=tensor([[0, 2, 3]]),
		           values=tensor([[-1.4512,  0.4073],
		                          [-0.8901,  0.2017],
		                          [-0.3183, -1.7539]]),
		           size=(5, 2), nnz=3, layout=torch.sparse_coo)
		
		    # when sum over all sparse dim, return a dense tensor
		    # with summed dims squeezed
		    >>> torch.sparse.sum(S, [0, 1, 3])
		    tensor([-2.6596, -1.1450])
	**/
	static public function sum(input:Dynamic, ?dim:Dynamic, ?dtype:Dynamic):Dynamic;
}