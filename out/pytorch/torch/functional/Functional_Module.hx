/* This file is generated, do not edit! */
package torch.functional;
@:pythonImport("torch.functional") extern class Functional_Module {
	static public function Any(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public function List(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Optional(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public function Sequence(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
	static public function _ListOrSeq(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _check_list_size(out_len:Dynamic, get_infos:Dynamic, out:Dynamic):Dynamic;
	static public function _consecutive_return_counts(input:Dynamic, ?return_inverse:Dynamic, ?return_counts:Dynamic, ?dim:Dynamic):Dynamic;
	/**
		Eliminates all but the first element from every consecutive group of equivalent elements.
		
		.. note:: This function is different from :func:`torch.unique` in the sense that this function
		    only eliminates consecutive duplicate values. This semantics is similar to `std::unique`
		    in C++.
		
		Args:
		    input (Tensor): the input tensor
		    return_inverse (bool): Whether to also return the indices for where
		        elements in the original input ended up in the returned unique list.
		    return_counts (bool): Whether to also return the counts for each unique
		        element.
		    dim (int): the dimension to apply unique. If ``None``, the unique of the
		        flattened input is returned. default: ``None``
		
		Returns:
		    (Tensor, Tensor (optional), Tensor (optional)): A tensor or a tuple of tensors containing
		
		        - **output** (*Tensor*): the output list of unique scalar elements.
		        - **inverse_indices** (*Tensor*): (optional) if
		          :attr:`return_inverse` is True, there will be an additional
		          returned tensor (same shape as input) representing the indices
		          for where elements in the original input map to in the output;
		          otherwise, this function will only return a single tensor.
		        - **counts** (*Tensor*): (optional) if
		          :attr:`return_counts` is True, there will be an additional
		          returned tensor (same shape as output or output.size(dim),
		          if dim was specified) representing the number of occurrences
		          for each unique value or tensor.
		
		Example::
		
		    >>> x = torch.tensor([1, 1, 2, 2, 3, 1, 1, 2])
		    >>> output = torch.unique_consecutive(x)
		    >>> output
		    tensor([1, 2, 3, 1, 2])
		
		    >>> output, inverse_indices = torch.unique_consecutive(x, return_inverse=True)
		    >>> output
		    tensor([1, 2, 3, 1, 2])
		    >>> inverse_indices
		    tensor([0, 0, 1, 1, 2, 3, 3, 4])
		
		    >>> output, counts = torch.unique_consecutive(x, return_counts=True)
		    >>> output
		    tensor([1, 2, 3, 1, 2])
		    >>> counts
		    tensor([2, 2, 1, 2, 1])
	**/
	static public function _consecutive_return_inverse(input:Dynamic, ?return_inverse:Dynamic, ?return_counts:Dynamic, ?dim:Dynamic):Dynamic;
	/**
		Eliminates all but the first element from every consecutive group of equivalent elements.
		
		.. note:: This function is different from :func:`torch.unique` in the sense that this function
		    only eliminates consecutive duplicate values. This semantics is similar to `std::unique`
		    in C++.
		
		Args:
		    input (Tensor): the input tensor
		    return_inverse (bool): Whether to also return the indices for where
		        elements in the original input ended up in the returned unique list.
		    return_counts (bool): Whether to also return the counts for each unique
		        element.
		    dim (int): the dimension to apply unique. If ``None``, the unique of the
		        flattened input is returned. default: ``None``
		
		Returns:
		    (Tensor, Tensor (optional), Tensor (optional)): A tensor or a tuple of tensors containing
		
		        - **output** (*Tensor*): the output list of unique scalar elements.
		        - **inverse_indices** (*Tensor*): (optional) if
		          :attr:`return_inverse` is True, there will be an additional
		          returned tensor (same shape as input) representing the indices
		          for where elements in the original input map to in the output;
		          otherwise, this function will only return a single tensor.
		        - **counts** (*Tensor*): (optional) if
		          :attr:`return_counts` is True, there will be an additional
		          returned tensor (same shape as output or output.size(dim),
		          if dim was specified) representing the number of occurrences
		          for each unique value or tensor.
		
		Example::
		
		    >>> x = torch.tensor([1, 1, 2, 2, 3, 1, 1, 2])
		    >>> output = torch.unique_consecutive(x)
		    >>> output
		    tensor([1, 2, 3, 1, 2])
		
		    >>> output, inverse_indices = torch.unique_consecutive(x, return_inverse=True)
		    >>> output
		    tensor([1, 2, 3, 1, 2])
		    >>> inverse_indices
		    tensor([0, 0, 1, 1, 2, 3, 3, 4])
		
		    >>> output, counts = torch.unique_consecutive(x, return_counts=True)
		    >>> output
		    tensor([1, 2, 3, 1, 2])
		    >>> counts
		    tensor([2, 2, 1, 2, 1])
	**/
	static public function _consecutive_return_inverse_false(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Eliminates all but the first element from every consecutive group of equivalent elements.
		
		.. note:: This function is different from :func:`torch.unique` in the sense that this function
		    only eliminates consecutive duplicate values. This semantics is similar to `std::unique`
		    in C++.
		
		Args:
		    input (Tensor): the input tensor
		    return_inverse (bool): Whether to also return the indices for where
		        elements in the original input ended up in the returned unique list.
		    return_counts (bool): Whether to also return the counts for each unique
		        element.
		    dim (int): the dimension to apply unique. If ``None``, the unique of the
		        flattened input is returned. default: ``None``
		
		Returns:
		    (Tensor, Tensor (optional), Tensor (optional)): A tensor or a tuple of tensors containing
		
		        - **output** (*Tensor*): the output list of unique scalar elements.
		        - **inverse_indices** (*Tensor*): (optional) if
		          :attr:`return_inverse` is True, there will be an additional
		          returned tensor (same shape as input) representing the indices
		          for where elements in the original input map to in the output;
		          otherwise, this function will only return a single tensor.
		        - **counts** (*Tensor*): (optional) if
		          :attr:`return_counts` is True, there will be an additional
		          returned tensor (same shape as output or output.size(dim),
		          if dim was specified) representing the number of occurrences
		          for each unique value or tensor.
		
		Example::
		
		    >>> x = torch.tensor([1, 1, 2, 2, 3, 1, 1, 2])
		    >>> output = torch.unique_consecutive(x)
		    >>> output
		    tensor([1, 2, 3, 1, 2])
		
		    >>> output, inverse_indices = torch.unique_consecutive(x, return_inverse=True)
		    >>> output
		    tensor([1, 2, 3, 1, 2])
		    >>> inverse_indices
		    tensor([0, 0, 1, 1, 2, 3, 3, 4])
		
		    >>> output, counts = torch.unique_consecutive(x, return_counts=True)
		    >>> output
		    tensor([1, 2, 3, 1, 2])
		    >>> counts
		    tensor([2, 2, 1, 2, 1])
	**/
	static public function _consecutive_return_inverse_true(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function _consecutive_return_output(input:Dynamic, ?return_inverse:Dynamic, ?return_counts:Dynamic, ?dim:Dynamic):Dynamic;
	/**
		Computes the LU factorization of a matrix or batches of matrices
		:attr:`A`. Returns a tuple containing the LU factorization and
		pivots of :attr:`A`.  Pivoting is done if :attr:`pivot` is set to
		``True``.
		
		.. note::
		    * The pivots returned by the function are 1-indexed. If :attr:`pivot`
		      is ``False``, then the returned pivots is a tensor filled with
		      zeros of the appropriate size.
		    * LU factorization with :attr:`pivot` = ``False`` is not available
		      for CPU, and attempting to do so will throw an error. However,
		      LU factorization with :attr:`pivot` = ``False`` is available for
		      CUDA.
		    * This function does not check if the factorization was successful
		      or not if :attr:`get_infos` is ``True`` since the status of the
		      factorization is present in the third element of the return tuple.
		    * In the case of batches of square matrices with size less or equal
		      to 32 on a CUDA device, the LU factorization is repeated for
		      singular matrices due to the bug in the MAGMA library
		      (see magma issue 13).
		    * ``L``, ``U``, and ``P`` can be derived using :func:`torch.lu_unpack`.
		
		.. warning::
		    The gradients of this function will only be finite when :attr:`A` is full rank.
		    This is because the LU decomposition is just differentiable at full rank matrices.
		    Furthermore, if :attr:`A` is close to not being full rank,
		    the gradient will be numerically unstable as it depends on the computation of :math:`L^{-1}` and :math:`U^{-1}`.
		
		Args:
		    A (Tensor): the tensor to factor of size :math:`(*, m, n)`
		    pivot (bool, optional): controls whether pivoting is done. Default: ``True``
		    get_infos (bool, optional): if set to ``True``, returns an info IntTensor.
		                                Default: ``False``
		    out (tuple, optional): optional output tuple. If :attr:`get_infos` is ``True``,
		                           then the elements in the tuple are Tensor, IntTensor,
		                           and IntTensor. If :attr:`get_infos` is ``False``, then the
		                           elements in the tuple are Tensor, IntTensor. Default: ``None``
		
		Returns:
		    (Tensor, IntTensor, IntTensor (optional)): A tuple of tensors containing
		
		        - **factorization** (*Tensor*): the factorization of size :math:`(*, m, n)`
		
		        - **pivots** (*IntTensor*): the pivots of size :math:`(*, \text{min}(m, n))`.
		          ``pivots`` stores all the intermediate transpositions of rows.
		          The final permutation ``perm`` could be reconstructed by
		          applying ``swap(perm[i], perm[pivots[i] - 1])`` for ``i = 0, ..., pivots.size(-1) - 1``,
		          where ``perm`` is initially the identity permutation of :math:`m` elements
		          (essentially this is what :func:`torch.lu_unpack` is doing).
		
		        - **infos** (*IntTensor*, *optional*): if :attr:`get_infos` is ``True``, this is a tensor of
		          size :math:`(*)` where non-zero values indicate whether factorization for the matrix or
		          each minibatch has succeeded or failed
		
		Example::
		
		    >>> A = torch.randn(2, 3, 3)
		    >>> A_LU, pivots = torch.lu(A)
		    >>> A_LU
		    tensor([[[ 1.3506,  2.5558, -0.0816],
		             [ 0.1684,  1.1551,  0.1940],
		             [ 0.1193,  0.6189, -0.5497]],
		
		            [[ 0.4526,  1.2526, -0.3285],
		             [-0.7988,  0.7175, -0.9701],
		             [ 0.2634, -0.9255, -0.3459]]])
		    >>> pivots
		    tensor([[ 3,  3,  3],
		            [ 3,  3,  3]], dtype=torch.int32)
		    >>> A_LU, pivots, info = torch.lu(A, get_infos=True)
		    >>> if info.nonzero().size(0) == 0:
		    ...   print('LU factorization succeeded for all samples!')
		    LU factorization succeeded for all samples!
	**/
	static public function _lu_impl(A:Dynamic, ?pivot:Dynamic, ?get_infos:Dynamic, ?out:Dynamic):Dynamic;
	static public function _lu_no_infos(A:Dynamic, ?pivot:Dynamic, ?get_infos:Dynamic, ?out:Dynamic):Dynamic;
	static public function _lu_with_infos(A:Dynamic, ?pivot:Dynamic, ?get_infos:Dynamic, ?out:Dynamic):Dynamic;
	static public function _meshgrid(?tensors:python.VarArgs<Dynamic>, indexing:Dynamic):Dynamic;
	static public function _return_counts(input:Dynamic, ?sorted:Dynamic, ?return_inverse:Dynamic, ?return_counts:Dynamic, ?dim:Dynamic):Dynamic;
	/**
		Returns the unique elements of the input tensor.
		
		.. note:: This function is different from :func:`torch.unique_consecutive` in the sense that
		    this function also eliminates non-consecutive duplicate values.
		
		.. note:: Currently in the CUDA implementation and the CPU implementation when dim is specified,
		    `torch.unique` always sort the tensor at the beginning regardless of the `sort` argument.
		    Sorting could be slow, so if your input tensor is already sorted, it is recommended to use
		    :func:`torch.unique_consecutive` which avoids the sorting.
		
		Args:
		    input (Tensor): the input tensor
		    sorted (bool): Whether to sort the unique elements in ascending order
		        before returning as output.
		    return_inverse (bool): Whether to also return the indices for where
		        elements in the original input ended up in the returned unique list.
		    return_counts (bool): Whether to also return the counts for each unique
		        element.
		    dim (int): the dimension to apply unique. If ``None``, the unique of the
		        flattened input is returned. default: ``None``
		
		Returns:
		    (Tensor, Tensor (optional), Tensor (optional)): A tensor or a tuple of tensors containing
		
		        - **output** (*Tensor*): the output list of unique scalar elements.
		        - **inverse_indices** (*Tensor*): (optional) if
		          :attr:`return_inverse` is True, there will be an additional
		          returned tensor (same shape as input) representing the indices
		          for where elements in the original input map to in the output;
		          otherwise, this function will only return a single tensor.
		        - **counts** (*Tensor*): (optional) if
		          :attr:`return_counts` is True, there will be an additional
		          returned tensor (same shape as output or output.size(dim),
		          if dim was specified) representing the number of occurrences
		          for each unique value or tensor.
		
		Example::
		
		    >>> output = torch.unique(torch.tensor([1, 3, 2, 3], dtype=torch.long))
		    >>> output
		    tensor([ 2,  3,  1])
		
		    >>> output, inverse_indices = torch.unique(
		    ...     torch.tensor([1, 3, 2, 3], dtype=torch.long), sorted=True, return_inverse=True)
		    >>> output
		    tensor([ 1,  2,  3])
		    >>> inverse_indices
		    tensor([ 0,  2,  1,  2])
		
		    >>> output, inverse_indices = torch.unique(
		    ...     torch.tensor([[1, 3], [2, 3]], dtype=torch.long), sorted=True, return_inverse=True)
		    >>> output
		    tensor([ 1,  2,  3])
		    >>> inverse_indices
		    tensor([[ 0,  2],
		            [ 1,  2]])
	**/
	static public function _return_inverse(input:Dynamic, ?sorted:Dynamic, ?return_inverse:Dynamic, ?return_counts:Dynamic, ?dim:Dynamic):Dynamic;
	/**
		Returns the unique elements of the input tensor.
		
		.. note:: This function is different from :func:`torch.unique_consecutive` in the sense that
		    this function also eliminates non-consecutive duplicate values.
		
		.. note:: Currently in the CUDA implementation and the CPU implementation when dim is specified,
		    `torch.unique` always sort the tensor at the beginning regardless of the `sort` argument.
		    Sorting could be slow, so if your input tensor is already sorted, it is recommended to use
		    :func:`torch.unique_consecutive` which avoids the sorting.
		
		Args:
		    input (Tensor): the input tensor
		    sorted (bool): Whether to sort the unique elements in ascending order
		        before returning as output.
		    return_inverse (bool): Whether to also return the indices for where
		        elements in the original input ended up in the returned unique list.
		    return_counts (bool): Whether to also return the counts for each unique
		        element.
		    dim (int): the dimension to apply unique. If ``None``, the unique of the
		        flattened input is returned. default: ``None``
		
		Returns:
		    (Tensor, Tensor (optional), Tensor (optional)): A tensor or a tuple of tensors containing
		
		        - **output** (*Tensor*): the output list of unique scalar elements.
		        - **inverse_indices** (*Tensor*): (optional) if
		          :attr:`return_inverse` is True, there will be an additional
		          returned tensor (same shape as input) representing the indices
		          for where elements in the original input map to in the output;
		          otherwise, this function will only return a single tensor.
		        - **counts** (*Tensor*): (optional) if
		          :attr:`return_counts` is True, there will be an additional
		          returned tensor (same shape as output or output.size(dim),
		          if dim was specified) representing the number of occurrences
		          for each unique value or tensor.
		
		Example::
		
		    >>> output = torch.unique(torch.tensor([1, 3, 2, 3], dtype=torch.long))
		    >>> output
		    tensor([ 2,  3,  1])
		
		    >>> output, inverse_indices = torch.unique(
		    ...     torch.tensor([1, 3, 2, 3], dtype=torch.long), sorted=True, return_inverse=True)
		    >>> output
		    tensor([ 1,  2,  3])
		    >>> inverse_indices
		    tensor([ 0,  2,  1,  2])
		
		    >>> output, inverse_indices = torch.unique(
		    ...     torch.tensor([[1, 3], [2, 3]], dtype=torch.long), sorted=True, return_inverse=True)
		    >>> output
		    tensor([ 1,  2,  3])
		    >>> inverse_indices
		    tensor([[ 0,  2],
		            [ 1,  2]])
	**/
	static public function _return_inverse_false(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Returns the unique elements of the input tensor.
		
		.. note:: This function is different from :func:`torch.unique_consecutive` in the sense that
		    this function also eliminates non-consecutive duplicate values.
		
		.. note:: Currently in the CUDA implementation and the CPU implementation when dim is specified,
		    `torch.unique` always sort the tensor at the beginning regardless of the `sort` argument.
		    Sorting could be slow, so if your input tensor is already sorted, it is recommended to use
		    :func:`torch.unique_consecutive` which avoids the sorting.
		
		Args:
		    input (Tensor): the input tensor
		    sorted (bool): Whether to sort the unique elements in ascending order
		        before returning as output.
		    return_inverse (bool): Whether to also return the indices for where
		        elements in the original input ended up in the returned unique list.
		    return_counts (bool): Whether to also return the counts for each unique
		        element.
		    dim (int): the dimension to apply unique. If ``None``, the unique of the
		        flattened input is returned. default: ``None``
		
		Returns:
		    (Tensor, Tensor (optional), Tensor (optional)): A tensor or a tuple of tensors containing
		
		        - **output** (*Tensor*): the output list of unique scalar elements.
		        - **inverse_indices** (*Tensor*): (optional) if
		          :attr:`return_inverse` is True, there will be an additional
		          returned tensor (same shape as input) representing the indices
		          for where elements in the original input map to in the output;
		          otherwise, this function will only return a single tensor.
		        - **counts** (*Tensor*): (optional) if
		          :attr:`return_counts` is True, there will be an additional
		          returned tensor (same shape as output or output.size(dim),
		          if dim was specified) representing the number of occurrences
		          for each unique value or tensor.
		
		Example::
		
		    >>> output = torch.unique(torch.tensor([1, 3, 2, 3], dtype=torch.long))
		    >>> output
		    tensor([ 2,  3,  1])
		
		    >>> output, inverse_indices = torch.unique(
		    ...     torch.tensor([1, 3, 2, 3], dtype=torch.long), sorted=True, return_inverse=True)
		    >>> output
		    tensor([ 1,  2,  3])
		    >>> inverse_indices
		    tensor([ 0,  2,  1,  2])
		
		    >>> output, inverse_indices = torch.unique(
		    ...     torch.tensor([[1, 3], [2, 3]], dtype=torch.long), sorted=True, return_inverse=True)
		    >>> output
		    tensor([ 1,  2,  3])
		    >>> inverse_indices
		    tensor([[ 0,  2],
		            [ 1,  2]])
	**/
	static public function _return_inverse_true(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function _return_output(input:Dynamic, ?sorted:Dynamic, ?return_inverse:Dynamic, ?return_counts:Dynamic, ?dim:Dynamic):Dynamic;
	/**
		Eliminates all but the first element from every consecutive group of equivalent elements.
		
		.. note:: This function is different from :func:`torch.unique` in the sense that this function
		    only eliminates consecutive duplicate values. This semantics is similar to `std::unique`
		    in C++.
		
		Args:
		    input (Tensor): the input tensor
		    return_inverse (bool): Whether to also return the indices for where
		        elements in the original input ended up in the returned unique list.
		    return_counts (bool): Whether to also return the counts for each unique
		        element.
		    dim (int): the dimension to apply unique. If ``None``, the unique of the
		        flattened input is returned. default: ``None``
		
		Returns:
		    (Tensor, Tensor (optional), Tensor (optional)): A tensor or a tuple of tensors containing
		
		        - **output** (*Tensor*): the output list of unique scalar elements.
		        - **inverse_indices** (*Tensor*): (optional) if
		          :attr:`return_inverse` is True, there will be an additional
		          returned tensor (same shape as input) representing the indices
		          for where elements in the original input map to in the output;
		          otherwise, this function will only return a single tensor.
		        - **counts** (*Tensor*): (optional) if
		          :attr:`return_counts` is True, there will be an additional
		          returned tensor (same shape as output or output.size(dim),
		          if dim was specified) representing the number of occurrences
		          for each unique value or tensor.
		
		Example::
		
		    >>> x = torch.tensor([1, 1, 2, 2, 3, 1, 1, 2])
		    >>> output = torch.unique_consecutive(x)
		    >>> output
		    tensor([1, 2, 3, 1, 2])
		
		    >>> output, inverse_indices = torch.unique_consecutive(x, return_inverse=True)
		    >>> output
		    tensor([1, 2, 3, 1, 2])
		    >>> inverse_indices
		    tensor([0, 0, 1, 1, 2, 3, 3, 4])
		
		    >>> output, counts = torch.unique_consecutive(x, return_counts=True)
		    >>> output
		    tensor([1, 2, 3, 1, 2])
		    >>> counts
		    tensor([2, 2, 1, 2, 1])
	**/
	static public function _unique_consecutive_impl(input:Dynamic, ?return_inverse:Dynamic, ?return_counts:Dynamic, ?dim:Dynamic):Dynamic;
	/**
		Returns the unique elements of the input tensor.
		
		.. note:: This function is different from :func:`torch.unique_consecutive` in the sense that
		    this function also eliminates non-consecutive duplicate values.
		
		.. note:: Currently in the CUDA implementation and the CPU implementation when dim is specified,
		    `torch.unique` always sort the tensor at the beginning regardless of the `sort` argument.
		    Sorting could be slow, so if your input tensor is already sorted, it is recommended to use
		    :func:`torch.unique_consecutive` which avoids the sorting.
		
		Args:
		    input (Tensor): the input tensor
		    sorted (bool): Whether to sort the unique elements in ascending order
		        before returning as output.
		    return_inverse (bool): Whether to also return the indices for where
		        elements in the original input ended up in the returned unique list.
		    return_counts (bool): Whether to also return the counts for each unique
		        element.
		    dim (int): the dimension to apply unique. If ``None``, the unique of the
		        flattened input is returned. default: ``None``
		
		Returns:
		    (Tensor, Tensor (optional), Tensor (optional)): A tensor or a tuple of tensors containing
		
		        - **output** (*Tensor*): the output list of unique scalar elements.
		        - **inverse_indices** (*Tensor*): (optional) if
		          :attr:`return_inverse` is True, there will be an additional
		          returned tensor (same shape as input) representing the indices
		          for where elements in the original input map to in the output;
		          otherwise, this function will only return a single tensor.
		        - **counts** (*Tensor*): (optional) if
		          :attr:`return_counts` is True, there will be an additional
		          returned tensor (same shape as output or output.size(dim),
		          if dim was specified) representing the number of occurrences
		          for each unique value or tensor.
		
		Example::
		
		    >>> output = torch.unique(torch.tensor([1, 3, 2, 3], dtype=torch.long))
		    >>> output
		    tensor([ 2,  3,  1])
		
		    >>> output, inverse_indices = torch.unique(
		    ...     torch.tensor([1, 3, 2, 3], dtype=torch.long), sorted=True, return_inverse=True)
		    >>> output
		    tensor([ 1,  2,  3])
		    >>> inverse_indices
		    tensor([ 0,  2,  1,  2])
		
		    >>> output, inverse_indices = torch.unique(
		    ...     torch.tensor([[1, 3], [2, 3]], dtype=torch.long), sorted=True, return_inverse=True)
		    >>> output
		    tensor([ 1,  2,  3])
		    >>> inverse_indices
		    tensor([[ 0,  2],
		            [ 1,  2]])
	**/
	static public function _unique_impl(input:Dynamic, ?sorted:Dynamic, ?return_inverse:Dynamic, ?return_counts:Dynamic, ?dim:Dynamic):Dynamic;
	static public function _unique_impl_out(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function align_tensors(?tensors:python.VarArgs<Dynamic>):Dynamic;
	/**
		Returns a 1-dimensional view of each input tensor with zero dimensions.
		Input tensors with one or more dimensions are returned as-is.
		
		Args:
		    input (Tensor or list of Tensors)
		
		Returns:
		    output (Tensor or tuple of Tensors)
		
		Example::
		
		    >>> x = torch.randn(2)
		    >>> x
		    tensor([1.4584, 0.7583])
		    >>> torch.atleast_1d(x)
		    tensor([1.4584, 0.7583])
		    >>> x = torch.tensor(1.)
		    >>> x
		    tensor(1.)
		    >>> torch.atleast_1d(x)
		    tensor([1.])
		    >>> x = torch.tensor(0.5)
		    >>> y = torch.tensor(1.)
		    >>> torch.atleast_1d((x,y))
		    (tensor([0.5000]), tensor([1.]))
	**/
	static public function atleast_1d(?tensors:python.VarArgs<Dynamic>):Dynamic;
	/**
		Returns a 2-dimensional view of each input tensor with zero dimensions.
		Input tensors with two or more dimensions are returned as-is.
		
		Args:
		    input (Tensor or list of Tensors)
		
		Returns:
		    output (Tensor or tuple of Tensors)
		
		Example::
		
		    >>> x = torch.tensor(1.)
		    >>> x
		    tensor(1.)
		    >>> torch.atleast_2d(x)
		    tensor([[1.]])
		    >>> x = torch.randn(2,2)
		    >>> x
		    tensor([[2.2086, 2.5165],
		            [0.1757, 0.5194]])
		    >>> torch.atleast_2d(x)
		    tensor([[2.2086, 2.5165],
		            [0.1757, 0.5194]])
		    >>> x = torch.tensor(0.5)
		    >>> y = torch.tensor(1.)
		    >>> torch.atleast_2d((x,y))
		    (tensor([[0.5000]]), tensor([[1.]]))
	**/
	static public function atleast_2d(?tensors:python.VarArgs<Dynamic>):Dynamic;
	/**
		Returns a 3-dimensional view of each input tensor with zero dimensions.
		Input tensors with three or more dimensions are returned as-is.
		
		Args:
		    input (Tensor or list of Tensors)
		
		Returns:
		    output (Tensor or tuple of Tensors)
		
		Example:
		
		    >>> x = torch.tensor(0.5)
		    >>> x
		    tensor(0.5000)
		    >>> torch.atleast_3d(x)
		    tensor([[[0.5000]]])
		    >>> y = torch.randn(2,2)
		    >>> y
		    tensor([[-0.8079,  0.7460],
		            [-1.1647,  1.4734]])
		    >>> torch.atleast_3d(y)
		    tensor([[[-0.8079],
		            [ 0.7460]],
		            <BLANKLINE>
		            [[-1.1647],
		            [ 1.4734]]])
		    >>> x = torch.randn(1,1,1)
		    >>> x
		    tensor([[[-1.5689]]])
		    >>> torch.atleast_3d(x)
		    tensor([[[-1.5689]]])
		    >>> x = torch.tensor(0.5)
		    >>> y = torch.tensor(1.)
		    >>> torch.atleast_3d((x,y))
		    (tensor([[[0.5000]]]), tensor([[[1.]]]))
	**/
	static public function atleast_3d(?tensors:python.VarArgs<Dynamic>):Dynamic;
	/**
		Create a block diagonal matrix from provided tensors.
		
		Args:
		    *tensors: One or more tensors with 0, 1, or 2 dimensions.
		
		Returns:
		    Tensor: A 2 dimensional tensor with all the input tensors arranged in
		    order such that their upper left and lower right corners are
		    diagonally adjacent. All other elements are set to 0.
		
		Example::
		
		    >>> import torch
		    >>> A = torch.tensor([[0, 1], [1, 0]])
		    >>> B = torch.tensor([[3, 4, 5], [6, 7, 8]])
		    >>> C = torch.tensor(7)
		    >>> D = torch.tensor([1, 2, 3])
		    >>> E = torch.tensor([[4], [5], [6]])
		    >>> torch.block_diag(A, B, C, D, E)
		    tensor([[0, 1, 0, 0, 0, 0, 0, 0, 0, 0],
		            [1, 0, 0, 0, 0, 0, 0, 0, 0, 0],
		            [0, 0, 3, 4, 5, 0, 0, 0, 0, 0],
		            [0, 0, 6, 7, 8, 0, 0, 0, 0, 0],
		            [0, 0, 0, 0, 0, 7, 0, 0, 0, 0],
		            [0, 0, 0, 0, 0, 0, 1, 2, 3, 0],
		            [0, 0, 0, 0, 0, 0, 0, 0, 0, 4],
		            [0, 0, 0, 0, 0, 0, 0, 0, 0, 5],
		            [0, 0, 0, 0, 0, 0, 0, 0, 0, 6]])
	**/
	static public function block_diag(?tensors:python.VarArgs<Dynamic>):Dynamic;
	/**
		Dispatches to either of 2 script functions based on a boolean argument.
		In TorchScript, the boolean argument must be constant so that the correct
		function to use can be determined at compile time.
	**/
	static public function boolean_dispatch(arg_name:Dynamic, arg_index:Dynamic, _default:Dynamic, if_true:Dynamic, if_false:Dynamic, module_name:Dynamic, func_name:Dynamic):Dynamic;
	/**
		broadcast_shapes(*shapes) -> Size
		
		Similar to :func:`broadcast_tensors` but for shapes.
		
		This is equivalent to
		``torch.broadcast_tensors(*map(torch.empty, shapes))[0].shape``
		but avoids the need create to intermediate tensors. This is useful for
		broadcasting tensors of common batch shape but different rightmost shape,
		e.g. to broadcast mean vectors with covariance matrices.
		
		Example::
		
		    >>> torch.broadcast_shapes((2,), (3, 1), (1, 1, 1))
		    torch.Size([1, 3, 2])
		
		Args:
		    \*shapes (torch.Size): Shapes of tensors.
		
		Returns:
		    shape (torch.Size): A shape compatible with all input shapes.
		
		Raises:
		    RuntimeError: If shapes are incompatible.
	**/
	static public function broadcast_shapes(?shapes:python.VarArgs<Dynamic>):Dynamic;
	/**
		broadcast_tensors(*tensors) -> List of Tensors
		
		Broadcasts the given tensors according to :ref:`broadcasting-semantics`.
		
		Args:
		    *tensors: any number of tensors of the same type
		
		.. warning::
		
		    More than one element of a broadcasted tensor may refer to a single
		    memory location. As a result, in-place operations (especially ones that
		    are vectorized) may result in incorrect behavior. If you need to write
		    to the tensors, please clone them first.
		
		Example::
		
		    >>> x = torch.arange(3).view(1, 3)
		    >>> y = torch.arange(2).view(2, 1)
		    >>> a, b = torch.broadcast_tensors(x, y)
		    >>> a.size()
		    torch.Size([2, 3])
		    >>> a
		    tensor([[0, 1, 2],
		            [0, 1, 2]])
	**/
	static public function broadcast_tensors(?tensors:python.VarArgs<Dynamic>):Dynamic;
	/**
		Do cartesian product of the given sequence of tensors. The behavior is similar to
		python's `itertools.product`.
		
		Args:
		    *tensors: any number of 1 dimensional tensors.
		
		Returns:
		    Tensor: A tensor equivalent to converting all the input tensors into lists,
		    do `itertools.product` on these lists, and finally convert the resulting list
		    into tensor.
		
		Example::
		
		    >>> a = [1, 2, 3]
		    >>> b = [4, 5]
		    >>> list(itertools.product(a, b))
		    [(1, 4), (1, 5), (2, 4), (2, 5), (3, 4), (3, 5)]
		    >>> tensor_a = torch.tensor(a)
		    >>> tensor_b = torch.tensor(b)
		    >>> torch.cartesian_prod(tensor_a, tensor_b)
		    tensor([[1, 4],
		            [1, 5],
		            [2, 4],
		            [2, 5],
		            [3, 4],
		            [3, 5]])
	**/
	static public function cartesian_prod(?tensors:python.VarArgs<Dynamic>):Dynamic;
	/**
		Computes batched the p-norm distance between each pair of the two collections of row vectors.
		
		Args:
		    x1 (Tensor): input tensor of shape :math:`B \times P \times M`.
		    x2 (Tensor): input tensor of shape :math:`B \times R \times M`.
		    p: p value for the p-norm distance to calculate between each vector pair
		        :math:`\in [0, \infty]`.
		    compute_mode:
		        'use_mm_for_euclid_dist_if_necessary' - will use matrix multiplication approach to calculate
		        euclidean distance (p = 2) if P > 25 or R > 25
		        'use_mm_for_euclid_dist' - will always use matrix multiplication approach to calculate
		        euclidean distance (p = 2)
		        'donot_use_mm_for_euclid_dist' - will never use matrix multiplication approach to calculate
		        euclidean distance (p = 2)
		        Default: use_mm_for_euclid_dist_if_necessary.
		
		If x1 has shape :math:`B \times P \times M` and x2 has shape :math:`B \times R \times M` then the
		output will have shape :math:`B \times P \times R`.
		
		This function is equivalent to `scipy.spatial.distance.cdist(input,'minkowski', p=p)`
		if :math:`p \in (0, \infty)`. When :math:`p = 0` it is equivalent to
		`scipy.spatial.distance.cdist(input, 'hamming') * M`. When :math:`p = \infty`, the closest
		scipy function is `scipy.spatial.distance.cdist(xn, lambda x, y: np.abs(x - y).max())`.
		
		Example:
		
		    >>> a = torch.tensor([[0.9041,  0.0196], [-0.3108, -2.4423], [-0.4821,  1.059]])
		    >>> a
		    tensor([[ 0.9041,  0.0196],
		            [-0.3108, -2.4423],
		            [-0.4821,  1.0590]])
		    >>> b = torch.tensor([[-2.1763, -0.4713], [-0.6986,  1.3702]])
		    >>> b
		    tensor([[-2.1763, -0.4713],
		            [-0.6986,  1.3702]])
		    >>> torch.cdist(a, b, p=2)
		    tensor([[3.1193, 2.0959],
		            [2.7138, 3.8322],
		            [2.2830, 0.3791]])
	**/
	static public function cdist(x1:Dynamic, x2:Dynamic, ?p:Dynamic, ?compute_mode:Dynamic):Dynamic;
	/**
		Returns the matrix product of the :math:`N` 2-D tensors. This product is efficiently computed
		using the matrix chain order algorithm which selects the order in which incurs the lowest cost in terms
		of arithmetic operations (`[CLRS]`_). Note that since this is a function to compute the product, :math:`N`
		needs to be greater than or equal to 2; if equal to 2 then a trivial matrix-matrix product is returned.
		If :math:`N` is 1, then this is a no-op - the original matrix is returned as is.
		
		.. warning::
		
		    :func:`torch.chain_matmul` is deprecated and will be removed in a future PyTorch release.
		    Use :func:`torch.linalg.multi_dot` instead, which accepts a list of two or more tensors
		    rather than multiple arguments.
		
		Args:
		    matrices (Tensors...): a sequence of 2 or more 2-D tensors whose product is to be determined.
		    out (Tensor, optional): the output tensor. Ignored if :attr:`out` = ``None``.
		
		Returns:
		    Tensor: if the :math:`i^{th}` tensor was of dimensions :math:`p_{i} \times p_{i + 1}`, then the product
		    would be of dimensions :math:`p_{1} \times p_{N + 1}`.
		
		Example::
		
		    >>> a = torch.randn(3, 4)
		    >>> b = torch.randn(4, 5)
		    >>> c = torch.randn(5, 6)
		    >>> d = torch.randn(6, 7)
		    >>> torch.chain_matmul(a, b, c, d)
		    tensor([[ -2.3375,  -3.9790,  -4.1119,  -6.6577,   9.5609, -11.5095,  -3.2614],
		            [ 21.4038,   3.3378,  -8.4982,  -5.2457, -10.2561,  -2.4684,   2.7163],
		            [ -0.9647,  -5.8917,  -2.3213,  -5.2284,  12.8615, -12.2816,  -2.5095]])
		
		.. _`[CLRS]`: https://mitpress.mit.edu/books/introduction-algorithms-third-edition
	**/
	static public function chain_matmul(?matrices:python.VarArgs<Dynamic>, ?out:Dynamic):Dynamic;
	/**
		einsum(equation, *operands) -> Tensor
		
		Sums the product of the elements of the input :attr:`operands` along dimensions specified using a notation
		based on the Einstein summation convention.
		
		Einsum allows computing many common multi-dimensional linear algebraic array operations by representing them
		in a short-hand format based on the Einstein summation convention, given by :attr:`equation`. The details of
		this format are described below, but the general idea is to label every dimension of the input :attr:`operands`
		with some subscript and define which subscripts are part of the output. The output is then computed by summing
		the product of the elements of the :attr:`operands` along the dimensions whose subscripts are not part of the
		output. For example, matrix multiplication can be computed using einsum as `torch.einsum("ij,jk->ik", A, B)`.
		Here, j is the summation subscript and i and k the output subscripts (see section below for more details on why).
		
		Equation:
		
		    The :attr:`equation` string specifies the subscripts (letters in `[a-zA-Z]`) for each dimension of
		    the input :attr:`operands` in the same order as the dimensions, separating subcripts for each operand by a
		    comma (','), e.g. `'ij,jk'` specify subscripts for two 2D operands. The dimensions labeled with the same subscript
		    must be broadcastable, that is, their size must either match or be `1`. The exception is if a subscript is
		    repeated for the same input operand, in which case the dimensions labeled with this subscript for this operand
		    must match in size and the operand will be replaced by its diagonal along these dimensions. The subscripts that
		    appear exactly once in the :attr:`equation` will be part of the output, sorted in increasing alphabetical order.
		    The output is computed by multiplying the input :attr:`operands` element-wise, with their dimensions aligned based
		    on the subscripts, and then summing out the dimensions whose subscripts are not part of the output.
		
		    Optionally, the output subscripts can be explicitly defined by adding an arrow ('->') at the end of the equation
		    followed by the subscripts for the output. For instance, the following equation computes the transpose of a
		    matrix multiplication: 'ij,jk->ki'. The output subscripts must appear at least once for some input operand and
		    at most once for the output.
		
		    Ellipsis ('...') can be used in place of subscripts to broadcast the dimensions covered by the ellipsis.
		    Each input operand may contain at most one ellipsis which will cover the dimensions not covered by subscripts,
		    e.g. for an input operand with 5 dimensions, the ellipsis in the equation `'ab...c'` cover the third and fourth
		    dimensions. The ellipsis does not need to cover the same number of dimensions across the :attr:`operands` but the
		    'shape' of the ellipsis (the size of the dimensions covered by them) must broadcast together. If the output is not
		    explicitly defined with the arrow ('->') notation, the ellipsis will come first in the output (left-most dimensions),
		    before the subscript labels that appear exactly once for the input operands. e.g. the following equation implements
		    batch matrix multiplication `'...ij,...jk'`.
		
		    A few final notes: the equation may contain whitespaces between the different elements (subscripts, ellipsis,
		    arrow and comma) but something like `'. . .'` is not valid. An empty string `''` is valid for scalar operands.
		
		.. note::
		
		    ``torch.einsum`` handles ellipsis ('...') differently from NumPy in that it allows dimensions
		    covered by the ellipsis to be summed over, that is, ellipsis are not required to be part of the output.
		
		.. note::
		
		    This function does not optimize the given expression, so a different formula for the same computation may
		    run faster or consume less memory. Projects like opt_einsum (https://optimized-einsum.readthedocs.io/en/stable/)
		    can optimize the formula for you.
		
		.. note::
		
		    As of PyTorch 1.10 :func:`torch.einsum` also supports the sublist format (see examples below). In this format,
		    subscripts for each operand are specified by sublists, list of integers in the range [0, 52). These sublists
		    follow their operands, and an extra sublist can appear at the end of the input to specify the output's
		    subscripts., e.g. `torch.einsum(op1, sublist1, op2, sublist2, ..., [subslist_out])`. Python's `Ellipsis` object
		    may be provided in a sublist to enable broadcasting as described in the Equation section above.
		
		Args:
		    equation (string): The subscripts for the Einstein summation.
		    operands (List[Tensor]): The tensors to compute the Einstein summation of.
		
		Examples::
		
		    # trace
		    >>> torch.einsum('ii', torch.randn(4, 4))
		    tensor(-1.2104)
		
		    # diagonal
		    >>> torch.einsum('ii->i', torch.randn(4, 4))
		    tensor([-0.1034,  0.7952, -0.2433,  0.4545])
		
		    # outer product
		    >>> x = torch.randn(5)
		    >>> y = torch.randn(4)
		    >>> torch.einsum('i,j->ij', x, y)
		    tensor([[ 0.1156, -0.2897, -0.3918,  0.4963],
		            [-0.3744,  0.9381,  1.2685, -1.6070],
		            [ 0.7208, -1.8058, -2.4419,  3.0936],
		            [ 0.1713, -0.4291, -0.5802,  0.7350],
		            [ 0.5704, -1.4290, -1.9323,  2.4480]])
		
		    # batch matrix multiplication
		    >>> As = torch.randn(3,2,5)
		    >>> Bs = torch.randn(3,5,4)
		    >>> torch.einsum('bij,bjk->bik', As, Bs)
		    tensor([[[-1.0564, -1.5904,  3.2023,  3.1271],
		            [-1.6706, -0.8097, -0.8025, -2.1183]],
		
		            [[ 4.2239,  0.3107, -0.5756, -0.2354],
		            [-1.4558, -0.3460,  1.5087, -0.8530]],
		
		            [[ 2.8153,  1.8787, -4.3839, -1.2112],
		            [ 0.3728, -2.1131,  0.0921,  0.8305]]])
		
		    # with sublist format and ellipsis
		    >>> torch.einsum(As, [..., 0, 1], Bs, [..., 1, 2], [..., 0, 2])
		    tensor([[[-1.0564, -1.5904,  3.2023,  3.1271],
		            [-1.6706, -0.8097, -0.8025, -2.1183]],
		
		            [[ 4.2239,  0.3107, -0.5756, -0.2354],
		            [-1.4558, -0.3460,  1.5087, -0.8530]],
		
		            [[ 2.8153,  1.8787, -4.3839, -1.2112],
		            [ 0.3728, -2.1131,  0.0921,  0.8305]]])
		
		    # batch permute
		    >>> A = torch.randn(2, 3, 4, 5)
		    >>> torch.einsum('...ij->...ji', A).shape
		    torch.Size([2, 3, 5, 4])
		
		    # equivalent to torch.nn.functional.bilinear
		    >>> A = torch.randn(3,5,4)
		    >>> l = torch.randn(2,5)
		    >>> r = torch.randn(2,4)
		    >>> torch.einsum('bn,anm,bm->ba', l, A, r)
		    tensor([[-0.3430, -5.2405,  0.4494],
		            [ 0.3311,  5.5201, -3.0356]])
	**/
	static public function einsum(?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		Implement a function with checks for ``__torch_function__`` overrides.
		
		See torch::autograd::handle_torch_function for the equivalent of this
		function in the C++ implementation.
		
		Arguments
		---------
		public_api : function
		    Function exposed by the public torch API originally called like
		    ``public_api(*args, **kwargs)`` on which arguments are now being
		    checked.
		relevant_args : iterable
		    Iterable of arguments to check for __torch_function__ methods.
		args : tuple
		    Arbitrary positional arguments originally passed into ``public_api``.
		kwargs : tuple
		    Arbitrary keyword arguments originally passed into ``public_api``.
		
		Returns
		-------
		object
		    Result from calling ``implementation`` or an ``__torch_function__``
		    method, as appropriate.
		
		Raises
		------
		TypeError : if no implementation is found.
		
		Example
		-------
		>>> def func(a):
		...     if type(a) is not torch.Tensor:  # This will make func dispatchable by __torch_function__
		...         return handle_torch_function(func, (a,), a)
		...     return a + 0
	**/
	static public function handle_torch_function(public_api:Dynamic, relevant_args:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Check for __torch_function__ implementations in the elements of an iterable.
		Considers exact ``Tensor`` s and ``Parameter`` s non-dispatchable.
		Arguments
		---------
		relevant_args : iterable
		    Iterable or aguments to check for __torch_function__ methods.
		Returns
		-------
		bool
		    True if any of the elements of relevant_args have __torch_function__
		    implementations, False otherwise.
		See Also
		________
		torch.is_tensor_like
		    Checks if something is a Tensor-like, including an exact ``Tensor``.
	**/
	static public function has_torch_function(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Special case of `has_torch_function` for single inputs.
		Instead of:
		  `has_torch_function((t,))`
		call:
		  `has_torch_function_unary(t)`
		which skips unnecessary packing and unpacking work.
	**/
	static public function has_torch_function_unary(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Special case of `has_torch_function` that skips tuple creation.
		
		This uses the METH_FASTCALL protocol introduced in Python 3.7; for 3.6
		and before it has roughly equivilent performance compared to
		`has_torch_function`.
		
		Instead of:
		  `has_torch_function((a, b))`
		call:
		  `has_torch_function_variadic(a, b)`
		which skips unnecessary packing and unpacking work.
	**/
	static public function has_torch_function_variadic(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Inverse short time Fourier Transform. This is expected to be the inverse of :func:`~torch.stft`.
		It has the same parameters (+ additional optional parameter of :attr:`length`) and it should return the
		least squares estimation of the original signal. The algorithm will check using the NOLA condition (
		nonzero overlap).
		
		Important consideration in the parameters :attr:`window` and :attr:`center` so that the envelop
		created by the summation of all the windows is never zero at certain point in time. Specifically,
		:math:`\sum_{t=-\infty}^{\infty} |w|^2[n-t\times hop\_length] \cancel{=} 0`.
		
		Since :func:`~torch.stft` discards elements at the end of the signal if they do not fit in a frame,
		``istft`` may return a shorter signal than the original signal (can occur if :attr:`center` is False
		since the signal isn't padded). If `length` is given in the arguments and is longer than expected,
		``istft`` will pad zeros to the end of the returned signal.
		
		If :attr:`center` is ``True``, then there will be padding e.g. ``'constant'``, ``'reflect'``, etc.
		Left padding can be trimmed off exactly because they can be calculated but right padding cannot be
		calculated without additional information.
		
		Example: Suppose the last window is:
		``[17, 18, 0, 0, 0]`` vs ``[18, 0, 0, 0, 0]``
		
		The :attr:`n_fft`, :attr:`hop_length`, :attr:`win_length` are all the same which prevents the calculation
		of right padding. These additional values could be zeros or a reflection of the signal so providing
		:attr:`length` could be useful. If :attr:`length` is ``None`` then padding will be aggressively removed
		(some loss of signal).
		
		[1] D. W. Griffin and J. S. Lim, "Signal estimation from modified short-time Fourier transform,"
		IEEE Trans. ASSP, vol.32, no.2, pp.236-243, Apr. 1984.
		
		Args:
		    input (Tensor): The input tensor. Expected to be output of :func:`~torch.stft`,
		        can either be complex (``channel``, ``fft_size``, ``n_frame``), or real
		        (``channel``, ``fft_size``, ``n_frame``, 2) where the ``channel``
		        dimension is optional.
		
		        .. deprecated:: 1.8.0
		           Real input is deprecated, use complex inputs as returned by
		           ``stft(..., return_complex=True)`` instead.
		    n_fft (int): Size of Fourier transform
		    hop_length (Optional[int]): The distance between neighboring sliding window frames.
		        (Default: ``n_fft // 4``)
		    win_length (Optional[int]): The size of window frame and STFT filter. (Default: ``n_fft``)
		    window (Optional[torch.Tensor]): The optional window function.
		        (Default: ``torch.ones(win_length)``)
		    center (bool): Whether :attr:`input` was padded on both sides so that the :math:`t`-th frame is
		        centered at time :math:`t \times \text{hop\_length}`.
		        (Default: ``True``)
		    normalized (bool): Whether the STFT was normalized. (Default: ``False``)
		    onesided (Optional[bool]): Whether the STFT was onesided.
		        (Default: ``True`` if ``n_fft != fft_size`` in the input size)
		    length (Optional[int]): The amount to trim the signal by (i.e. the
		        original signal length). (Default: whole signal)
		    return_complex (Optional[bool]):
		        Whether the output should be complex, or if the input should be
		        assumed to derive from a real signal and window.
		        Note that this is incompatible with ``onesided=True``.
		        (Default: ``False``)
		
		Returns:
		    Tensor: Least squares estimation of the original signal of size (..., signal_length)
	**/
	static public function istft(input:Dynamic, n_fft:Dynamic, ?hop_length:Dynamic, ?win_length:Dynamic, ?window:Dynamic, ?center:Dynamic, ?normalized:Dynamic, ?onesided:Dynamic, ?length:Dynamic, ?return_complex:Dynamic):Dynamic;
	/**
		Computes the LU factorization of a matrix or batches of matrices
		:attr:`A`. Returns a tuple containing the LU factorization and
		pivots of :attr:`A`.  Pivoting is done if :attr:`pivot` is set to
		``True``.
		
		.. note::
		    * The pivots returned by the function are 1-indexed. If :attr:`pivot`
		      is ``False``, then the returned pivots is a tensor filled with
		      zeros of the appropriate size.
		    * LU factorization with :attr:`pivot` = ``False`` is not available
		      for CPU, and attempting to do so will throw an error. However,
		      LU factorization with :attr:`pivot` = ``False`` is available for
		      CUDA.
		    * This function does not check if the factorization was successful
		      or not if :attr:`get_infos` is ``True`` since the status of the
		      factorization is present in the third element of the return tuple.
		    * In the case of batches of square matrices with size less or equal
		      to 32 on a CUDA device, the LU factorization is repeated for
		      singular matrices due to the bug in the MAGMA library
		      (see magma issue 13).
		    * ``L``, ``U``, and ``P`` can be derived using :func:`torch.lu_unpack`.
		
		.. warning::
		    The gradients of this function will only be finite when :attr:`A` is full rank.
		    This is because the LU decomposition is just differentiable at full rank matrices.
		    Furthermore, if :attr:`A` is close to not being full rank,
		    the gradient will be numerically unstable as it depends on the computation of :math:`L^{-1}` and :math:`U^{-1}`.
		
		Args:
		    A (Tensor): the tensor to factor of size :math:`(*, m, n)`
		    pivot (bool, optional): controls whether pivoting is done. Default: ``True``
		    get_infos (bool, optional): if set to ``True``, returns an info IntTensor.
		                                Default: ``False``
		    out (tuple, optional): optional output tuple. If :attr:`get_infos` is ``True``,
		                           then the elements in the tuple are Tensor, IntTensor,
		                           and IntTensor. If :attr:`get_infos` is ``False``, then the
		                           elements in the tuple are Tensor, IntTensor. Default: ``None``
		
		Returns:
		    (Tensor, IntTensor, IntTensor (optional)): A tuple of tensors containing
		
		        - **factorization** (*Tensor*): the factorization of size :math:`(*, m, n)`
		
		        - **pivots** (*IntTensor*): the pivots of size :math:`(*, \text{min}(m, n))`.
		          ``pivots`` stores all the intermediate transpositions of rows.
		          The final permutation ``perm`` could be reconstructed by
		          applying ``swap(perm[i], perm[pivots[i] - 1])`` for ``i = 0, ..., pivots.size(-1) - 1``,
		          where ``perm`` is initially the identity permutation of :math:`m` elements
		          (essentially this is what :func:`torch.lu_unpack` is doing).
		
		        - **infos** (*IntTensor*, *optional*): if :attr:`get_infos` is ``True``, this is a tensor of
		          size :math:`(*)` where non-zero values indicate whether factorization for the matrix or
		          each minibatch has succeeded or failed
		
		Example::
		
		    >>> A = torch.randn(2, 3, 3)
		    >>> A_LU, pivots = torch.lu(A)
		    >>> A_LU
		    tensor([[[ 1.3506,  2.5558, -0.0816],
		             [ 0.1684,  1.1551,  0.1940],
		             [ 0.1193,  0.6189, -0.5497]],
		
		            [[ 0.4526,  1.2526, -0.3285],
		             [-0.7988,  0.7175, -0.9701],
		             [ 0.2634, -0.9255, -0.3459]]])
		    >>> pivots
		    tensor([[ 3,  3,  3],
		            [ 3,  3,  3]], dtype=torch.int32)
		    >>> A_LU, pivots, info = torch.lu(A, get_infos=True)
		    >>> if info.nonzero().size(0) == 0:
		    ...   print('LU factorization succeeded for all samples!')
		    LU factorization succeeded for all samples!
	**/
	static public function lu(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Creates grids of coordinates specified by the 1D inputs in `attr`:tensors.
		
		This is helpful when you want to visualize data over some
		range of inputs. See below for a plotting example.
		
		Given :math:`N` 1D tensors :math:`T_0 \ldots T_{N-1}` as
		inputs with corresponding sizes :math:`S_0 \ldots S_{N-1}`,
		this creates :math:`N` N-dimensional tensors :math:`G_0 \ldots
		G_{N-1}`, each with shape :math:`(S_0, ..., S_{N-1})` where
		the output :math:`G_i` is constructed by expanding :math:`T_i`
		to the result shape.
		
		.. note::
		    0D inputs are treated equivalently to 1D inputs of a
		    single element.
		
		.. warning::
		    `torch.meshgrid(*tensors)` currently has the same behavior
		    as calling `numpy.meshgrid(*arrays, indexing='ij')`.
		
		    In the future `torch.meshgrid` will transition to
		    `indexing='xy'` as the default.
		
		    https://github.com/pytorch/pytorch/issues/50276 tracks
		    this issue with the goal of migrating to NumPy's behavior.
		
		.. seealso::
		
		    :func:`torch.cartesian_prod` has the same effect but it
		    collects the data in a tensor of vectors.
		
		Args:
		    tensors (list of Tensor): list of scalars or 1 dimensional tensors. Scalars will be
		        treated as tensors of size :math:`(1,)` automatically
		
		    indexing: (str, optional): the indexing mode, either "xy"
		        or "ij", defaults to "ij". See warning for future changes.
		
		        If "xy" is selected, the first dimension corresponds
		        to the cardinality of the second input and the second
		        dimension corresponds to the cardinality of the first
		        input.
		
		        If "ij" is selected, the dimensions are in the same
		        order as the cardinality of the inputs.
		
		Returns:
		    seq (sequence of Tensors): If the input has :math:`N`
		    tensors of size :math:`S_0 \ldots S_{N-1}``, then the
		    output will also have :math:`N` tensors, where each tensor
		    is of shape :math:`(S_0, ..., S_{N-1})`.
		
		Example::
		
		    >>> x = torch.tensor([1, 2, 3])
		    >>> y = torch.tensor([4, 5, 6])
		
		    Observe the element-wise pairings across the grid, (1, 4),
		    (1, 5), ..., (3, 6). This is the same thing as the
		    cartesian product.
		    >>> grid_x, grid_y = torch.meshgrid(x, y, indexing='ij')
		    >>> grid_x
		    tensor([[1, 1, 1],
		            [2, 2, 2],
		            [3, 3, 3]])
		    >>> grid_y
		    tensor([[4, 5, 6],
		            [4, 5, 6],
		            [4, 5, 6]])
		
		    This correspondence can be seen when these grids are
		    stacked properly.
		    >>> torch.equal(torch.cat(tuple(torch.dstack([grid_x, grid_y]))),
		    ...             torch.cartesian_prod(x, y))
		    True
		
		    `torch.meshgrid` is commonly used to produce a grid for
		    plotting.
		    >>> import matplotlib.pyplot as plt
		    >>> xs = torch.linspace(-5, 5, steps=100)
		    >>> ys = torch.linspace(-5, 5, steps=100)
		    >>> x, y = torch.meshgrid(xs, ys, indexing='xy')
		    >>> z = torch.sin(torch.sqrt(x * x + y * y))
		    >>> ax = plt.axes(projection='3d')
		    >>> ax.plot_surface(x.numpy(), y.numpy(), z.numpy())
		    <mpl_toolkits.mplot3d.art3d.Poly3DCollection object at 0x7f8f30d40100>
		    >>> plt.show()
		
		.. image:: ../_static/img/meshgrid.png
		    :width: 512
	**/
	static public function meshgrid(?tensors:python.VarArgs<Dynamic>, ?indexing:Dynamic):Dynamic;
	/**
		Returns the matrix norm or vector norm of a given tensor.
		
		.. warning::
		
		    torch.norm is deprecated and may be removed in a future PyTorch release.
		    Its documentation and behavior may be incorrect, and it is no longer
		    actively maintained.
		
		    Use :func:`torch.linalg.norm`, instead, or :func:`torch.linalg.vector_norm`
		    when computing vector norms and :func:`torch.linalg.matrix_norm` when
		    computing matrix norms. Note, however, the signature for these functions
		    is slightly different than the signature for torch.norm.
		
		Args:
		    input (Tensor): The input tensor. Its data type must be either a floating
		        point or complex type. For complex inputs, the norm is calculated using the
		        absolute value of each element. If the input is complex and neither
		        :attr:`dtype` nor :attr:`out` is specified, the result's data type will
		        be the corresponding floating point type (e.g. float if :attr:`input` is
		        complexfloat).
		
		    p (int, float, inf, -inf, 'fro', 'nuc', optional): the order of norm. Default: ``'fro'``
		        The following norms can be calculated:
		
		        ======  ==============  ==========================
		        ord     matrix norm     vector norm
		        ======  ==============  ==========================
		        'fro'   Frobenius norm  --
		        'nuc'   nuclear norm    --
		        Number  --              sum(abs(x)**ord)**(1./ord)
		        ======  ==============  ==========================
		
		        The vector norm can be calculated across any number of dimensions.
		        The corresponding dimensions of :attr:`input` are flattened into
		        one dimension, and the norm is calculated on the flattened
		        dimension.
		
		        Frobenius norm produces the same result as ``p=2`` in all cases
		        except when :attr:`dim` is a list of three or more dims, in which
		        case Frobenius norm throws an error.
		
		        Nuclear norm can only be calculated across exactly two dimensions.
		
		    dim (int, tuple of ints, list of ints, optional):
		        Specifies which dimension or dimensions of :attr:`input` to
		        calculate the norm across. If :attr:`dim` is ``None``, the norm will
		        be calculated across all dimensions of :attr:`input`. If the norm
		        type indicated by :attr:`p` does not support the specified number of
		        dimensions, an error will occur.
		    keepdim (bool, optional): whether the output tensors have :attr:`dim`
		        retained or not. Ignored if :attr:`dim` = ``None`` and
		        :attr:`out` = ``None``. Default: ``False``
		    out (Tensor, optional): the output tensor. Ignored if
		        :attr:`dim` = ``None`` and :attr:`out` = ``None``.
		    dtype (:class:`torch.dtype`, optional): the desired data type of
		        returned tensor. If specified, the input tensor is casted to
		        :attr:`dtype` while performing the operation. Default: None.
		
		.. note::
		    Even though ``p='fro'`` supports any number of dimensions, the true
		    mathematical definition of Frobenius norm only applies to tensors with
		    exactly two dimensions. :func:`torch.linalg.norm` with ``ord='fro'`` aligns
		    with the mathematical definition, since it can only be applied across
		    exactly two dimensions.
		
		Example::
		
		    >>> import torch
		    >>> a = torch.arange(9, dtype= torch.float) - 4
		    >>> b = a.reshape((3, 3))
		    >>> torch.norm(a)
		    tensor(7.7460)
		    >>> torch.norm(b)
		    tensor(7.7460)
		    >>> torch.norm(a, float('inf'))
		    tensor(4.)
		    >>> torch.norm(b, float('inf'))
		    tensor(4.)
		    >>> c = torch.tensor([[ 1, 2, 3],[-1, 1, 4]] , dtype= torch.float)
		    >>> torch.norm(c, dim=0)
		    tensor([1.4142, 2.2361, 5.0000])
		    >>> torch.norm(c, dim=1)
		    tensor([3.7417, 4.2426])
		    >>> torch.norm(c, p=1, dim=1)
		    tensor([6., 6.])
		    >>> d = torch.arange(8, dtype= torch.float).reshape(2,2,2)
		    >>> torch.norm(d, dim=(1,2))
		    tensor([ 3.7417, 11.2250])
		    >>> torch.norm(d[0, :, :]), torch.norm(d[1, :, :])
		    (tensor(3.7417), tensor(11.2250))
	**/
	static public function norm(input:Dynamic, ?p:Dynamic, ?dim:Dynamic, ?keepdim:Dynamic, ?out:Dynamic, ?dtype:Dynamic):Dynamic;
	@:native("overload")
	static public function _overload(func:Dynamic):Dynamic;
	/**
		Performs linear Principal Component Analysis (PCA) on a low-rank
		matrix, batches of such matrices, or sparse matrix.
		
		This function returns a namedtuple ``(U, S, V)`` which is the
		nearly optimal approximation of a singular value decomposition of
		a centered matrix :math:`A` such that :math:`A = U diag(S) V^T`.
		
		.. note:: The relation of ``(U, S, V)`` to PCA is as follows:
		
		            - :math:`A` is a data matrix with ``m`` samples and
		              ``n`` features
		
		            - the :math:`V` columns represent the principal directions
		
		            - :math:`S ** 2 / (m - 1)` contains the eigenvalues of
		              :math:`A^T A / (m - 1)` which is the covariance of
		              ``A`` when ``center=True`` is provided.
		
		            - ``matmul(A, V[:, :k])`` projects data to the first k
		              principal components
		
		.. note:: Different from the standard SVD, the size of returned
		          matrices depend on the specified rank and q
		          values as follows:
		
		            - :math:`U` is m x q matrix
		
		            - :math:`S` is q-vector
		
		            - :math:`V` is n x q matrix
		
		.. note:: To obtain repeatable results, reset the seed for the
		          pseudorandom number generator
		
		Args:
		
		    A (Tensor): the input tensor of size :math:`(*, m, n)`
		
		    q (int, optional): a slightly overestimated rank of
		                       :math:`A`. By default, ``q = min(6, m,
		                       n)``.
		
		    center (bool, optional): if True, center the input tensor,
		                             otherwise, assume that the input is
		                             centered.
		
		    niter (int, optional): the number of subspace iterations to
		                           conduct; niter must be a nonnegative
		                           integer, and defaults to 2.
		
		References::
		
		    - Nathan Halko, Per-Gunnar Martinsson, and Joel Tropp, Finding
		      structure with randomness: probabilistic algorithms for
		      constructing approximate matrix decompositions,
		      arXiv:0909.4061 [math.NA; math.PR], 2009 (available at
		      `arXiv <http://arxiv.org/abs/0909.4061>`_).
	**/
	static public function pca_lowrank(A:Dynamic, ?q:Dynamic, ?center:Dynamic, ?niter:Dynamic):Dynamic;
	/**
		Splits the tensor into chunks. Each chunk is a view of the original tensor.
		
		If :attr:`split_size_or_sections` is an integer type, then :attr:`tensor` will
		be split into equally sized chunks (if possible). Last chunk will be smaller if
		the tensor size along the given dimension :attr:`dim` is not divisible by
		:attr:`split_size`.
		
		If :attr:`split_size_or_sections` is a list, then :attr:`tensor` will be split
		into ``len(split_size_or_sections)`` chunks with sizes in :attr:`dim` according
		to :attr:`split_size_or_sections`.
		
		Args:
		    tensor (Tensor): tensor to split.
		    split_size_or_sections (int) or (list(int)): size of a single chunk or
		        list of sizes for each chunk
		    dim (int): dimension along which to split the tensor.
		
		Example::
		
		    >>> a = torch.arange(10).reshape(5,2)
		    >>> a
		    tensor([[0, 1],
		            [2, 3],
		            [4, 5],
		            [6, 7],
		            [8, 9]])
		    >>> torch.split(a, 2)
		    (tensor([[0, 1],
		             [2, 3]]),
		     tensor([[4, 5],
		             [6, 7]]),
		     tensor([[8, 9]]))
		    >>> torch.split(a, [1,4])
		    (tensor([[0, 1]]),
		     tensor([[2, 3],
		             [4, 5],
		             [6, 7],
		             [8, 9]]))
	**/
	static public function split(tensor:Dynamic, split_size_or_sections:Dynamic, ?dim:Dynamic):Dynamic;
	/**
		Short-time Fourier transform (STFT).
		
		.. warning::
		    From version 1.8.0, :attr:`return_complex` must always be given
		    explicitly for real inputs and `return_complex=False` has been
		    deprecated. Strongly prefer `return_complex=True` as in a future
		    pytorch release, this function will only return complex tensors.
		
		    Note that :func:`torch.view_as_real` can be used to recover a real
		    tensor with an extra last dimension for real and imaginary components.
		
		The STFT computes the Fourier transform of short overlapping windows of the
		input. This giving frequency components of the signal as they change over
		time. The interface of this function is modeled after the librosa_ stft function.
		
		.. _librosa: https://librosa.org/doc/latest/generated/librosa.stft.html
		
		Ignoring the optional batch dimension, this method computes the following
		expression:
		
		.. math::
		    X[\omega, m] = \sum_{k = 0}^{\text{win\_length-1}}%
		                        \text{window}[k]\ \text{input}[m \times \text{hop\_length} + k]\ %
		                        \exp\left(- j \frac{2 \pi \cdot \omega k}{\text{win\_length}}\right),
		
		where :math:`m` is the index of the sliding window, and :math:`\omega` is
		the frequency :math:`0 \leq \omega < \text{n\_fft}` for ``onesided=False``,
		or :math:`0 \leq \omega < \lfloor \text{n\_fft} / 2 \rfloor + 1` for ``onesided=True``.
		
		* :attr:`input` must be either a 1-D time sequence or a 2-D batch of time
		  sequences.
		
		* If :attr:`hop_length` is ``None`` (default), it is treated as equal to
		  ``floor(n_fft / 4)``.
		
		* If :attr:`win_length` is ``None`` (default), it is treated as equal to
		  :attr:`n_fft`.
		
		* :attr:`window` can be a 1-D tensor of size :attr:`win_length`, e.g., from
		  :meth:`torch.hann_window`. If :attr:`window` is ``None`` (default), it is
		  treated as if having :math:`1` everywhere in the window. If
		  :math:`\text{win\_length} < \text{n\_fft}`, :attr:`window` will be padded on
		  both sides to length :attr:`n_fft` before being applied.
		
		* If :attr:`center` is ``True`` (default), :attr:`input` will be padded on
		  both sides so that the :math:`t`-th frame is centered at time
		  :math:`t \times \text{hop\_length}`. Otherwise, the :math:`t`-th frame
		  begins at time  :math:`t \times \text{hop\_length}`.
		
		* :attr:`pad_mode` determines the padding method used on :attr:`input` when
		  :attr:`center` is ``True``. See :meth:`torch.nn.functional.pad` for
		  all available options. Default is ``"reflect"``.
		
		* If :attr:`onesided` is ``True`` (default for real input), only values for
		  :math:`\omega` in :math:`\left[0, 1, 2, \dots, \left\lfloor
		  \frac{\text{n\_fft}}{2} \right\rfloor + 1\right]` are returned because
		  the real-to-complex Fourier transform satisfies the conjugate symmetry,
		  i.e., :math:`X[m, \omega] = X[m, \text{n\_fft} - \omega]^*`.
		  Note if the input or window tensors are complex, then :attr:`onesided`
		  output is not possible.
		
		* If :attr:`normalized` is ``True`` (default is ``False``), the function
		  returns the normalized STFT results, i.e., multiplied by :math:`(\text{frame\_length})^{-0.5}`.
		
		* If :attr:`return_complex` is ``True`` (default if input is complex), the
		  return is a ``input.dim() + 1`` dimensional complex tensor. If ``False``,
		  the output is a ``input.dim() + 2`` dimensional real tensor where the last
		  dimension represents the real and imaginary components.
		
		Returns either a complex tensor of size :math:`(* \times N \times T)` if
		:attr:`return_complex` is true, or a real tensor of size :math:`(* \times N
		\times T \times 2)`. Where :math:`*` is the optional batch size of
		:attr:`input`, :math:`N` is the number of frequencies where STFT is applied
		and :math:`T` is the total number of frames used.
		
		.. warning::
		  This function changed signature at version 0.4.1. Calling with the
		  previous signature may cause error or return incorrect result.
		
		Args:
		    input (Tensor): the input tensor
		    n_fft (int): size of Fourier transform
		    hop_length (int, optional): the distance between neighboring sliding window
		        frames. Default: ``None`` (treated as equal to ``floor(n_fft / 4)``)
		    win_length (int, optional): the size of window frame and STFT filter.
		        Default: ``None``  (treated as equal to :attr:`n_fft`)
		    window (Tensor, optional): the optional window function.
		        Default: ``None`` (treated as window of all :math:`1` s)
		    center (bool, optional): whether to pad :attr:`input` on both sides so
		        that the :math:`t`-th frame is centered at time :math:`t \times \text{hop\_length}`.
		        Default: ``True``
		    pad_mode (string, optional): controls the padding method used when
		        :attr:`center` is ``True``. Default: ``"reflect"``
		    normalized (bool, optional): controls whether to return the normalized STFT results
		         Default: ``False``
		    onesided (bool, optional): controls whether to return half of results to
		        avoid redundancy for real inputs.
		        Default: ``True`` for real :attr:`input` and :attr:`window`, ``False`` otherwise.
		    return_complex (bool, optional): whether to return a complex tensor, or
		        a real tensor with an extra last dimension for the real and
		        imaginary components.
		
		Returns:
		    Tensor: A tensor containing the STFT result with shape described above
	**/
	static public function stft(input:Dynamic, n_fft:Dynamic, ?hop_length:Dynamic, ?win_length:Dynamic, ?window:Dynamic, ?center:Dynamic, ?pad_mode:Dynamic, ?normalized:Dynamic, ?onesided:Dynamic, ?return_complex:Dynamic):Dynamic;
	/**
		Return the singular value decomposition ``(U, S, V)`` of a matrix,
		batches of matrices, or a sparse matrix :math:`A` such that
		:math:`A \approx U diag(S) V^T`. In case :math:`M` is given, then
		SVD is computed for the matrix :math:`A - M`.
		
		.. note:: The implementation is based on the Algorithm 5.1 from
		          Halko et al, 2009.
		
		.. note:: To obtain repeatable results, reset the seed for the
		          pseudorandom number generator
		
		.. note:: The input is assumed to be a low-rank matrix.
		
		.. note:: In general, use the full-rank SVD implementation
		          :func:`torch.linalg.svd` for dense matrices due to its 10-fold
		          higher performance characteristics. The low-rank SVD
		          will be useful for huge sparse matrices that
		          :func:`torch.linalg.svd` cannot handle.
		
		Args::
		    A (Tensor): the input tensor of size :math:`(*, m, n)`
		
		    q (int, optional): a slightly overestimated rank of A.
		
		    niter (int, optional): the number of subspace iterations to
		                           conduct; niter must be a nonnegative
		                           integer, and defaults to 2
		
		    M (Tensor, optional): the input tensor's mean of size
		                          :math:`(*, 1, n)`.
		
		References::
		    - Nathan Halko, Per-Gunnar Martinsson, and Joel Tropp, Finding
		      structure with randomness: probabilistic algorithms for
		      constructing approximate matrix decompositions,
		      arXiv:0909.4061 [math.NA; math.PR], 2009 (available at
		      `arXiv <https://arxiv.org/abs/0909.4061>`_).
	**/
	static public function svd_lowrank(A:Dynamic, ?q:Dynamic, ?niter:Dynamic, ?M:Dynamic):Dynamic;
	/**
		Returns a contraction of a and b over multiple dimensions.
		
		:attr:`tensordot` implements a generalized matrix product.
		
		Args:
		  a (Tensor): Left tensor to contract
		  b (Tensor): Right tensor to contract
		  dims (int or Tuple[List[int], List[int]] or List[List[int]] containing two lists or Tensor): number of dimensions to
		     contract or explicit lists of dimensions for :attr:`a` and
		     :attr:`b` respectively
		
		When called with a non-negative integer argument :attr:`dims` = :math:`d`, and
		the number of dimensions of :attr:`a` and :attr:`b` is :math:`m` and :math:`n`,
		respectively, :func:`~torch.tensordot` computes
		
		.. math::
		    r_{i_0,...,i_{m-d}, i_d,...,i_n}
		      = \sum_{k_0,...,k_{d-1}} a_{i_0,...,i_{m-d},k_0,...,k_{d-1}} \times b_{k_0,...,k_{d-1}, i_d,...,i_n}.
		
		When called with :attr:`dims` of the list form, the given dimensions will be contracted
		in place of the last :math:`d` of :attr:`a` and the first :math:`d` of :math:`b`. The sizes
		in these dimensions must match, but :func:`~torch.tensordot` will deal with broadcasted
		dimensions.
		
		Examples::
		
		    >>> a = torch.arange(60.).reshape(3, 4, 5)
		    >>> b = torch.arange(24.).reshape(4, 3, 2)
		    >>> torch.tensordot(a, b, dims=([1, 0], [0, 1]))
		    tensor([[4400., 4730.],
		            [4532., 4874.],
		            [4664., 5018.],
		            [4796., 5162.],
		            [4928., 5306.]])
		
		    >>> a = torch.randn(3, 4, 5, device='cuda')
		    >>> b = torch.randn(4, 5, 6, device='cuda')
		    >>> c = torch.tensordot(a, b, dims=2).cpu()
		    tensor([[ 8.3504, -2.5436,  6.2922,  2.7556, -1.0732,  3.2741],
		            [ 3.3161,  0.0704,  5.0187, -0.4079, -4.3126,  4.8744],
		            [ 0.8223,  3.9445,  3.2168, -0.2400,  3.4117,  1.7780]])
		
		    >>> a = torch.randn(3, 5, 4, 6)
		    >>> b = torch.randn(6, 4, 5, 3)
		    >>> torch.tensordot(a, b, dims=([2, 1, 3], [1, 2, 0]))
		    tensor([[  7.7193,  -2.4867, -10.3204],
		            [  1.5513, -14.4737,  -6.5113],
		            [ -0.2850,   4.2573,  -3.5997]])
	**/
	static public function tensordot(a:Dynamic, b:Dynamic, ?dims:Dynamic, ?out:Dynamic):Dynamic;
	/**
		Returns the unique elements of the input tensor.
		
		.. note:: This function is different from :func:`torch.unique_consecutive` in the sense that
		    this function also eliminates non-consecutive duplicate values.
		
		.. note:: Currently in the CUDA implementation and the CPU implementation when dim is specified,
		    `torch.unique` always sort the tensor at the beginning regardless of the `sort` argument.
		    Sorting could be slow, so if your input tensor is already sorted, it is recommended to use
		    :func:`torch.unique_consecutive` which avoids the sorting.
		
		Args:
		    input (Tensor): the input tensor
		    sorted (bool): Whether to sort the unique elements in ascending order
		        before returning as output.
		    return_inverse (bool): Whether to also return the indices for where
		        elements in the original input ended up in the returned unique list.
		    return_counts (bool): Whether to also return the counts for each unique
		        element.
		    dim (int): the dimension to apply unique. If ``None``, the unique of the
		        flattened input is returned. default: ``None``
		
		Returns:
		    (Tensor, Tensor (optional), Tensor (optional)): A tensor or a tuple of tensors containing
		
		        - **output** (*Tensor*): the output list of unique scalar elements.
		        - **inverse_indices** (*Tensor*): (optional) if
		          :attr:`return_inverse` is True, there will be an additional
		          returned tensor (same shape as input) representing the indices
		          for where elements in the original input map to in the output;
		          otherwise, this function will only return a single tensor.
		        - **counts** (*Tensor*): (optional) if
		          :attr:`return_counts` is True, there will be an additional
		          returned tensor (same shape as output or output.size(dim),
		          if dim was specified) representing the number of occurrences
		          for each unique value or tensor.
		
		Example::
		
		    >>> output = torch.unique(torch.tensor([1, 3, 2, 3], dtype=torch.long))
		    >>> output
		    tensor([ 2,  3,  1])
		
		    >>> output, inverse_indices = torch.unique(
		    ...     torch.tensor([1, 3, 2, 3], dtype=torch.long), sorted=True, return_inverse=True)
		    >>> output
		    tensor([ 1,  2,  3])
		    >>> inverse_indices
		    tensor([ 0,  2,  1,  2])
		
		    >>> output, inverse_indices = torch.unique(
		    ...     torch.tensor([[1, 3], [2, 3]], dtype=torch.long), sorted=True, return_inverse=True)
		    >>> output
		    tensor([ 1,  2,  3])
		    >>> inverse_indices
		    tensor([[ 0,  2],
		            [ 1,  2]])
	**/
	static public function unique(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Eliminates all but the first element from every consecutive group of equivalent elements.
		
		.. note:: This function is different from :func:`torch.unique` in the sense that this function
		    only eliminates consecutive duplicate values. This semantics is similar to `std::unique`
		    in C++.
		
		Args:
		    input (Tensor): the input tensor
		    return_inverse (bool): Whether to also return the indices for where
		        elements in the original input ended up in the returned unique list.
		    return_counts (bool): Whether to also return the counts for each unique
		        element.
		    dim (int): the dimension to apply unique. If ``None``, the unique of the
		        flattened input is returned. default: ``None``
		
		Returns:
		    (Tensor, Tensor (optional), Tensor (optional)): A tensor or a tuple of tensors containing
		
		        - **output** (*Tensor*): the output list of unique scalar elements.
		        - **inverse_indices** (*Tensor*): (optional) if
		          :attr:`return_inverse` is True, there will be an additional
		          returned tensor (same shape as input) representing the indices
		          for where elements in the original input map to in the output;
		          otherwise, this function will only return a single tensor.
		        - **counts** (*Tensor*): (optional) if
		          :attr:`return_counts` is True, there will be an additional
		          returned tensor (same shape as output or output.size(dim),
		          if dim was specified) representing the number of occurrences
		          for each unique value or tensor.
		
		Example::
		
		    >>> x = torch.tensor([1, 1, 2, 2, 3, 1, 1, 2])
		    >>> output = torch.unique_consecutive(x)
		    >>> output
		    tensor([1, 2, 3, 1, 2])
		
		    >>> output, inverse_indices = torch.unique_consecutive(x, return_inverse=True)
		    >>> output
		    tensor([1, 2, 3, 1, 2])
		    >>> inverse_indices
		    tensor([0, 0, 1, 1, 2, 3, 3, 4])
		
		    >>> output, counts = torch.unique_consecutive(x, return_counts=True)
		    >>> output
		    tensor([1, 2, 3, 1, 2])
		    >>> counts
		    tensor([2, 2, 1, 2, 1])
	**/
	static public function unique_consecutive(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}