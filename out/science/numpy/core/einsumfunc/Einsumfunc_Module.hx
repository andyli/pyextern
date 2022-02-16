/* This file is generated, do not edit! */
package numpy.core.einsumfunc;
@:pythonImport("numpy.core.einsumfunc") extern class Einsumfunc_Module {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Checks if we can use BLAS (np.tensordot) call and its beneficial to do so.
		
		Parameters
		----------
		inputs : list of str
		    Specifies the subscripts for summation.
		result : str
		    Resulting summation.
		idx_removed : set
		    Indices that are removed in the summation
		
		
		Returns
		-------
		type : bool
		    Returns true if BLAS should and can be used, else False
		
		Notes
		-----
		If the operations is BLAS level 1 or 2 and is not already aligned
		we default back to einsum as the memory movement to copy is more
		costly than the operation itself.
		
		
		Examples
		--------
		
		# Standard GEMM operation
		>>> _can_dot(['ij', 'jk'], 'ik', set('j'))
		True
		
		# Can use the standard BLAS, but requires odd data movement
		>>> _can_dot(['ijj', 'jk'], 'ik', set('j'))
		False
		
		# DDOT where the memory is not aligned
		>>> _can_dot(['ijk', 'ikj'], '', set('ijk'))
		False
	**/
	static public function _can_dot(inputs:Dynamic, result:Dynamic, idx_removed:Dynamic):Bool;
	/**
		Computes the product of the elements in indices based on the dictionary
		idx_dict.
		
		Parameters
		----------
		indices : iterable
		    Indices to base the product on.
		idx_dict : dictionary
		    Dictionary of index sizes
		
		Returns
		-------
		ret : int
		    The resulting product.
		
		Examples
		--------
		>>> _compute_size_by_dict('abbc', {'a': 2, 'b':3, 'c':5})
		90
	**/
	static public function _compute_size_by_dict(indices:Dynamic, idx_dict:Dynamic):Int;
	static public function _einsum_dispatcher(?operands:python.VarArgs<Dynamic>, ?out:Dynamic, ?optimize:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function _einsum_path_dispatcher(?operands:python.VarArgs<Dynamic>, ?optimize:Dynamic, ?einsum_call:Dynamic):Dynamic;
	/**
		Finds the contraction for a given set of input and output sets.
		
		Parameters
		----------
		positions : iterable
		    Integer positions of terms used in the contraction.
		input_sets : list
		    List of sets that represent the lhs side of the einsum subscript
		output_set : set
		    Set that represents the rhs side of the overall einsum subscript
		
		Returns
		-------
		new_result : set
		    The indices of the resulting contraction
		remaining : list
		    List of sets that have not been contracted, the new set is appended to
		    the end of this list
		idx_removed : set
		    Indices removed from the entire contraction
		idx_contraction : set
		    The indices used in the current contraction
		
		Examples
		--------
		
		# A simple dot product test case
		>>> pos = (0, 1)
		>>> isets = [set('ab'), set('bc')]
		>>> oset = set('ac')
		>>> _find_contraction(pos, isets, oset)
		({'a', 'c'}, [{'a', 'c'}], {'b'}, {'a', 'b', 'c'})
		
		# A more complex case with additional terms in the contraction
		>>> pos = (0, 2)
		>>> isets = [set('abd'), set('ac'), set('bdc')]
		>>> oset = set('ac')
		>>> _find_contraction(pos, isets, oset)
		({'a', 'c'}, [{'a', 'c'}, {'a', 'c'}], {'b', 'd'}, {'a', 'b', 'c', 'd'})
	**/
	static public function _find_contraction(positions:Dynamic, input_sets:Dynamic, output_set:Dynamic):Dynamic;
	/**
		Computes the number of FLOPS in the contraction.
		
		Parameters
		----------
		idx_contraction : iterable
		    The indices involved in the contraction
		inner : bool
		    Does this contraction require an inner product?
		num_terms : int
		    The number of terms in a contraction
		size_dictionary : dict
		    The size of each of the indices in idx_contraction
		
		Returns
		-------
		flop_count : int
		    The total number of FLOPS required for the contraction.
		
		Examples
		--------
		
		>>> _flop_count('abc', False, 1, {'a': 2, 'b':3, 'c':5})
		30
		
		>>> _flop_count('abc', True, 2, {'a': 2, 'b':3, 'c':5})
		60
	**/
	static public function _flop_count(idx_contraction:Dynamic, inner:Dynamic, num_terms:Dynamic, size_dictionary:Dynamic):Int;
	/**
		Finds the path by contracting the best pair until the input list is
		exhausted. The best pair is found by minimizing the tuple
		``(-prod(indices_removed), cost)``.  What this amounts to is prioritizing
		matrix multiplication or inner product operations, then Hadamard like
		operations, and finally outer operations. Outer products are limited by
		``memory_limit``. This algorithm scales cubically with respect to the
		number of elements in the list ``input_sets``.
		
		Parameters
		----------
		input_sets : list
		    List of sets that represent the lhs side of the einsum subscript
		output_set : set
		    Set that represents the rhs side of the overall einsum subscript
		idx_dict : dictionary
		    Dictionary of index sizes
		memory_limit : int
		    The maximum number of elements in a temporary array
		
		Returns
		-------
		path : list
		    The greedy contraction order within the memory limit constraint.
		
		Examples
		--------
		>>> isets = [set('abd'), set('ac'), set('bdc')]
		>>> oset = set()
		>>> idx_sizes = {'a': 1, 'b':2, 'c':3, 'd':4}
		>>> _greedy_path(isets, oset, idx_sizes, 5000)
		[(0, 2), (0, 1)]
	**/
	static public function _greedy_path(input_sets:Dynamic, output_set:Dynamic, idx_dict:Dynamic, memory_limit:Dynamic):Array<Dynamic>;
	/**
		Computes all possible pair contractions, sieves the results based
		on ``memory_limit`` and returns the lowest cost path. This algorithm
		scales factorial with respect to the elements in the list ``input_sets``.
		
		Parameters
		----------
		input_sets : list
		    List of sets that represent the lhs side of the einsum subscript
		output_set : set
		    Set that represents the rhs side of the overall einsum subscript
		idx_dict : dictionary
		    Dictionary of index sizes
		memory_limit : int
		    The maximum number of elements in a temporary array
		
		Returns
		-------
		path : list
		    The optimal contraction order within the memory limit constraint.
		
		Examples
		--------
		>>> isets = [set('abd'), set('ac'), set('bdc')]
		>>> oset = set()
		>>> idx_sizes = {'a': 1, 'b':2, 'c':3, 'd':4}
		>>> _optimal_path(isets, oset, idx_sizes, 5000)
		[(0, 2), (0, 1)]
	**/
	static public function _optimal_path(input_sets:Dynamic, output_set:Dynamic, idx_dict:Dynamic, memory_limit:Dynamic):Array<Dynamic>;
	/**
		A reproduction of einsum c side einsum parsing in python.
		
		Returns
		-------
		input_strings : str
		    Parsed input strings
		output_string : str
		    Parsed output string
		operands : list of array_like
		    The operands to use in the numpy contraction
		
		Examples
		--------
		The operand list is simplified to reduce printing:
		
		>>> np.random.seed(123)
		>>> a = np.random.rand(4, 4)
		>>> b = np.random.rand(4, 4, 4)
		>>> _parse_einsum_input(('...a,...a->...', a, b))
		('za,xza', 'xz', [a, b]) # may vary
		
		>>> _parse_einsum_input((a, [Ellipsis, 0], b, [Ellipsis, 0]))
		('za,xza', 'xz', [a, b]) # may vary
	**/
	static public function _parse_einsum_input(operands:Dynamic):String;
	/**
		Compute the cost (removed size + flops) and resultant indices for
		performing the contraction specified by ``positions``.
		
		Parameters
		----------
		positions : tuple of int
		    The locations of the proposed tensors to contract.
		input_sets : list of sets
		    The indices found on each tensors.
		output_set : set
		    The output indices of the expression.
		idx_dict : dict
		    Mapping of each index to its size.
		memory_limit : int
		    The total allowed size for an intermediary tensor.
		path_cost : int
		    The contraction cost so far.
		naive_cost : int
		    The cost of the unoptimized expression.
		
		Returns
		-------
		cost : (int, int)
		    A tuple containing the size of any indices removed, and the flop cost.
		positions : tuple of int
		    The locations of the proposed tensors to contract.
		new_input_sets : list of sets
		    The resulting new list of indices if this proposed contraction is performed.
	**/
	static public function _parse_possible_contraction(positions:Dynamic, input_sets:Dynamic, output_set:Dynamic, idx_dict:Dynamic, memory_limit:Dynamic, path_cost:Dynamic, naive_cost:Dynamic):Dynamic;
	/**
		Update the positions and provisional input_sets of ``results`` based on
		performing the contraction result ``best``. Remove any involving the tensors
		contracted.
		
		Parameters
		----------
		results : list
		    List of contraction results produced by ``_parse_possible_contraction``.
		best : list
		    The best contraction of ``results`` i.e. the one that will be performed.
		
		Returns
		-------
		mod_results : list
		    The list of modified results, updated with outcome of ``best`` contraction.
	**/
	static public function _update_other_results(results:Dynamic, best:Dynamic):Array<Dynamic>;
	/**
		Decorator for adding dispatch with the __array_function__ protocol.
		
		See NEP-18 for example usage.
		
		Parameters
		----------
		dispatcher : callable
		    Function that when called like ``dispatcher(*args, **kwargs)`` with
		    arguments from the NumPy function call returns an iterable of
		    array-like arguments to check for ``__array_function__``.
		module : str, optional
		    __module__ attribute to set on new function, e.g., ``module='numpy'``.
		    By default, module is copied from the decorated function.
		verify : bool, optional
		    If True, verify the that the signature of the dispatcher and decorated
		    function signatures match exactly: all required and optional arguments
		    should appear in order with the same names, but the default values for
		    all optional arguments should be ``None``. Only disable verification
		    if the dispatcher's signature needs to deviate for some particular
		    reason, e.g., because the function has a signature like
		    ``func(*args, **kwargs)``.
		docs_from_dispatcher : bool, optional
		    If True, copy docs from the dispatcher function onto the dispatched
		    function, rather than from the implementation. This is useful for
		    functions defined in C, which otherwise don't have docstrings.
		
		Returns
		-------
		Function suitable for decorating the implementation of a NumPy function.
	**/
	static public function array_function_dispatch(dispatcher:Dynamic, ?module:Dynamic, ?verify:Dynamic, ?docs_from_dispatcher:Dynamic):Dynamic;
	/**
		asanyarray(a, dtype=None, order=None, *, like=None)
		
		Convert the input to an ndarray, but pass ndarray subclasses through.
		
		Parameters
		----------
		a : array_like
		    Input data, in any form that can be converted to an array.  This
		    includes scalars, lists, lists of tuples, tuples, tuples of tuples,
		    tuples of lists, and ndarrays.
		dtype : data-type, optional
		    By default, the data-type is inferred from the input data.
		order : {'C', 'F', 'A', 'K'}, optional
		    Memory layout.  'A' and 'K' depend on the order of input array a.
		    'C' row-major (C-style),
		    'F' column-major (Fortran-style) memory representation.
		    'A' (any) means 'F' if `a` is Fortran contiguous, 'C' otherwise
		    'K' (keep) preserve input order
		    Defaults to 'C'.
		like : array_like
		    Reference object to allow the creation of arrays which are not
		    NumPy arrays. If an array-like passed in as ``like`` supports
		    the ``__array_function__`` protocol, the result will be defined
		    by it. In this case, it ensures the creation of an array object
		    compatible with that passed in via this argument.
		
		    .. versionadded:: 1.20.0
		
		Returns
		-------
		out : ndarray or an ndarray subclass
		    Array interpretation of `a`.  If `a` is an ndarray or a subclass
		    of ndarray, it is returned as-is and no copy is performed.
		
		See Also
		--------
		asarray : Similar function which always returns ndarrays.
		ascontiguousarray : Convert input to a contiguous array.
		asfarray : Convert input to a floating point ndarray.
		asfortranarray : Convert input to an ndarray with column-major
		                 memory order.
		asarray_chkfinite : Similar function which checks input for NaNs and
		                    Infs.
		fromiter : Create an array from an iterator.
		fromfunction : Construct an array by executing a function on grid
		               positions.
		
		Examples
		--------
		Convert a list into an array:
		
		>>> a = [1, 2]
		>>> np.asanyarray(a)
		array([1, 2])
		
		Instances of `ndarray` subclasses are passed through as-is:
		
		>>> a = np.array([(1.0, 2), (3.0, 4)], dtype='f4,i4').view(np.recarray)
		>>> np.asanyarray(a) is a
		True
	**/
	static public function asanyarray(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		c_einsum(subscripts, *operands, out=None, dtype=None, order='K',
		       casting='safe')
		
		*This documentation shadows that of the native python implementation of the `einsum` function,
		except all references and examples related to the `optimize` argument (v 0.12.0) have been removed.*
		
		Evaluates the Einstein summation convention on the operands.
		
		Using the Einstein summation convention, many common multi-dimensional,
		linear algebraic array operations can be represented in a simple fashion.
		In *implicit* mode `einsum` computes these values.
		
		In *explicit* mode, `einsum` provides further flexibility to compute
		other array operations that might not be considered classical Einstein
		summation operations, by disabling, or forcing summation over specified
		subscript labels.
		
		See the notes and examples for clarification.
		
		Parameters
		----------
		subscripts : str
		    Specifies the subscripts for summation as comma separated list of
		    subscript labels. An implicit (classical Einstein summation)
		    calculation is performed unless the explicit indicator '->' is
		    included as well as subscript labels of the precise output form.
		operands : list of array_like
		    These are the arrays for the operation.
		out : ndarray, optional
		    If provided, the calculation is done into this array.
		dtype : {data-type, None}, optional
		    If provided, forces the calculation to use the data type specified.
		    Note that you may have to also give a more liberal `casting`
		    parameter to allow the conversions. Default is None.
		order : {'C', 'F', 'A', 'K'}, optional
		    Controls the memory layout of the output. 'C' means it should
		    be C contiguous. 'F' means it should be Fortran contiguous,
		    'A' means it should be 'F' if the inputs are all 'F', 'C' otherwise.
		    'K' means it should be as close to the layout of the inputs as
		    is possible, including arbitrarily permuted axes.
		    Default is 'K'.
		casting : {'no', 'equiv', 'safe', 'same_kind', 'unsafe'}, optional
		    Controls what kind of data casting may occur.  Setting this to
		    'unsafe' is not recommended, as it can adversely affect accumulations.
		
		      * 'no' means the data types should not be cast at all.
		      * 'equiv' means only byte-order changes are allowed.
		      * 'safe' means only casts which can preserve values are allowed.
		      * 'same_kind' means only safe casts or casts within a kind,
		        like float64 to float32, are allowed.
		      * 'unsafe' means any data conversions may be done.
		
		    Default is 'safe'.
		optimize : {False, True, 'greedy', 'optimal'}, optional
		    Controls if intermediate optimization should occur. No optimization
		    will occur if False and True will default to the 'greedy' algorithm.
		    Also accepts an explicit contraction list from the ``np.einsum_path``
		    function. See ``np.einsum_path`` for more details. Defaults to False.
		
		Returns
		-------
		output : ndarray
		    The calculation based on the Einstein summation convention.
		
		See Also
		--------
		einsum_path, dot, inner, outer, tensordot, linalg.multi_dot
		
		Notes
		-----
		.. versionadded:: 1.6.0
		
		The Einstein summation convention can be used to compute
		many multi-dimensional, linear algebraic array operations. `einsum`
		provides a succinct way of representing these.
		
		A non-exhaustive list of these operations,
		which can be computed by `einsum`, is shown below along with examples:
		
		* Trace of an array, :py:func:`numpy.trace`.
		* Return a diagonal, :py:func:`numpy.diag`.
		* Array axis summations, :py:func:`numpy.sum`.
		* Transpositions and permutations, :py:func:`numpy.transpose`.
		* Matrix multiplication and dot product, :py:func:`numpy.matmul` :py:func:`numpy.dot`.
		* Vector inner and outer products, :py:func:`numpy.inner` :py:func:`numpy.outer`.
		* Broadcasting, element-wise and scalar multiplication, :py:func:`numpy.multiply`.
		* Tensor contractions, :py:func:`numpy.tensordot`.
		* Chained array operations, in efficient calculation order, :py:func:`numpy.einsum_path`.
		
		The subscripts string is a comma-separated list of subscript labels,
		where each label refers to a dimension of the corresponding operand.
		Whenever a label is repeated it is summed, so ``np.einsum('i,i', a, b)``
		is equivalent to :py:func:`np.inner(a,b) <numpy.inner>`. If a label
		appears only once, it is not summed, so ``np.einsum('i', a)`` produces a
		view of ``a`` with no changes. A further example ``np.einsum('ij,jk', a, b)``
		describes traditional matrix multiplication and is equivalent to
		:py:func:`np.matmul(a,b) <numpy.matmul>`. Repeated subscript labels in one
		operand take the diagonal. For example, ``np.einsum('ii', a)`` is equivalent
		to :py:func:`np.trace(a) <numpy.trace>`.
		
		In *implicit mode*, the chosen subscripts are important
		since the axes of the output are reordered alphabetically.  This
		means that ``np.einsum('ij', a)`` doesn't affect a 2D array, while
		``np.einsum('ji', a)`` takes its transpose. Additionally,
		``np.einsum('ij,jk', a, b)`` returns a matrix multiplication, while,
		``np.einsum('ij,jh', a, b)`` returns the transpose of the
		multiplication since subscript 'h' precedes subscript 'i'.
		
		In *explicit mode* the output can be directly controlled by
		specifying output subscript labels.  This requires the
		identifier '->' as well as the list of output subscript labels.
		This feature increases the flexibility of the function since
		summing can be disabled or forced when required. The call
		``np.einsum('i->', a)`` is like :py:func:`np.sum(a, axis=-1) <numpy.sum>`,
		and ``np.einsum('ii->i', a)`` is like :py:func:`np.diag(a) <numpy.diag>`.
		The difference is that `einsum` does not allow broadcasting by default.
		Additionally ``np.einsum('ij,jh->ih', a, b)`` directly specifies the
		order of the output subscript labels and therefore returns matrix
		multiplication, unlike the example above in implicit mode.
		
		To enable and control broadcasting, use an ellipsis.  Default
		NumPy-style broadcasting is done by adding an ellipsis
		to the left of each term, like ``np.einsum('...ii->...i', a)``.
		To take the trace along the first and last axes,
		you can do ``np.einsum('i...i', a)``, or to do a matrix-matrix
		product with the left-most indices instead of rightmost, one can do
		``np.einsum('ij...,jk...->ik...', a, b)``.
		
		When there is only one operand, no axes are summed, and no output
		parameter is provided, a view into the operand is returned instead
		of a new array.  Thus, taking the diagonal as ``np.einsum('ii->i', a)``
		produces a view (changed in version 1.10.0).
		
		`einsum` also provides an alternative way to provide the subscripts
		and operands as ``einsum(op0, sublist0, op1, sublist1, ..., [sublistout])``.
		If the output shape is not provided in this format `einsum` will be
		calculated in implicit mode, otherwise it will be performed explicitly.
		The examples below have corresponding `einsum` calls with the two
		parameter methods.
		
		.. versionadded:: 1.10.0
		
		Views returned from einsum are now writeable whenever the input array
		is writeable. For example, ``np.einsum('ijk...->kji...', a)`` will now
		have the same effect as :py:func:`np.swapaxes(a, 0, 2) <numpy.swapaxes>`
		and ``np.einsum('ii->i', a)`` will return a writeable view of the diagonal
		of a 2D array.
		
		Examples
		--------
		>>> a = np.arange(25).reshape(5,5)
		>>> b = np.arange(5)
		>>> c = np.arange(6).reshape(2,3)
		
		Trace of a matrix:
		
		>>> np.einsum('ii', a)
		60
		>>> np.einsum(a, [0,0])
		60
		>>> np.trace(a)
		60
		
		Extract the diagonal (requires explicit form):
		
		>>> np.einsum('ii->i', a)
		array([ 0,  6, 12, 18, 24])
		>>> np.einsum(a, [0,0], [0])
		array([ 0,  6, 12, 18, 24])
		>>> np.diag(a)
		array([ 0,  6, 12, 18, 24])
		
		Sum over an axis (requires explicit form):
		
		>>> np.einsum('ij->i', a)
		array([ 10,  35,  60,  85, 110])
		>>> np.einsum(a, [0,1], [0])
		array([ 10,  35,  60,  85, 110])
		>>> np.sum(a, axis=1)
		array([ 10,  35,  60,  85, 110])
		
		For higher dimensional arrays summing a single axis can be done with ellipsis:
		
		>>> np.einsum('...j->...', a)
		array([ 10,  35,  60,  85, 110])
		>>> np.einsum(a, [Ellipsis,1], [Ellipsis])
		array([ 10,  35,  60,  85, 110])
		
		Compute a matrix transpose, or reorder any number of axes:
		
		>>> np.einsum('ji', c)
		array([[0, 3],
		       [1, 4],
		       [2, 5]])
		>>> np.einsum('ij->ji', c)
		array([[0, 3],
		       [1, 4],
		       [2, 5]])
		>>> np.einsum(c, [1,0])
		array([[0, 3],
		       [1, 4],
		       [2, 5]])
		>>> np.transpose(c)
		array([[0, 3],
		       [1, 4],
		       [2, 5]])
		
		Vector inner products:
		
		>>> np.einsum('i,i', b, b)
		30
		>>> np.einsum(b, [0], b, [0])
		30
		>>> np.inner(b,b)
		30
		
		Matrix vector multiplication:
		
		>>> np.einsum('ij,j', a, b)
		array([ 30,  80, 130, 180, 230])
		>>> np.einsum(a, [0,1], b, [1])
		array([ 30,  80, 130, 180, 230])
		>>> np.dot(a, b)
		array([ 30,  80, 130, 180, 230])
		>>> np.einsum('...j,j', a, b)
		array([ 30,  80, 130, 180, 230])
		
		Broadcasting and scalar multiplication:
		
		>>> np.einsum('..., ...', 3, c)
		array([[ 0,  3,  6],
		       [ 9, 12, 15]])
		>>> np.einsum(',ij', 3, c)
		array([[ 0,  3,  6],
		       [ 9, 12, 15]])
		>>> np.einsum(3, [Ellipsis], c, [Ellipsis])
		array([[ 0,  3,  6],
		       [ 9, 12, 15]])
		>>> np.multiply(3, c)
		array([[ 0,  3,  6],
		       [ 9, 12, 15]])
		
		Vector outer product:
		
		>>> np.einsum('i,j', np.arange(2)+1, b)
		array([[0, 1, 2, 3, 4],
		       [0, 2, 4, 6, 8]])
		>>> np.einsum(np.arange(2)+1, [0], b, [1])
		array([[0, 1, 2, 3, 4],
		       [0, 2, 4, 6, 8]])
		>>> np.outer(np.arange(2)+1, b)
		array([[0, 1, 2, 3, 4],
		       [0, 2, 4, 6, 8]])
		
		Tensor contraction:
		
		>>> a = np.arange(60.).reshape(3,4,5)
		>>> b = np.arange(24.).reshape(4,3,2)
		>>> np.einsum('ijk,jil->kl', a, b)
		array([[ 4400.,  4730.],
		       [ 4532.,  4874.],
		       [ 4664.,  5018.],
		       [ 4796.,  5162.],
		       [ 4928.,  5306.]])
		>>> np.einsum(a, [0,1,2], b, [1,0,3], [2,3])
		array([[ 4400.,  4730.],
		       [ 4532.,  4874.],
		       [ 4664.,  5018.],
		       [ 4796.,  5162.],
		       [ 4928.,  5306.]])
		>>> np.tensordot(a,b, axes=([1,0],[0,1]))
		array([[ 4400.,  4730.],
		       [ 4532.,  4874.],
		       [ 4664.,  5018.],
		       [ 4796.,  5162.],
		       [ 4928.,  5306.]])
		
		Writeable returned arrays (since version 1.10.0):
		
		>>> a = np.zeros((3, 3))
		>>> np.einsum('ii->i', a)[:] = 1
		>>> a
		array([[ 1.,  0.,  0.],
		       [ 0.,  1.,  0.],
		       [ 0.,  0.,  1.]])
		
		Example of ellipsis use:
		
		>>> a = np.arange(6).reshape((3,2))
		>>> b = np.arange(12).reshape((4,3))
		>>> np.einsum('ki,jk->ij', a, b)
		array([[10, 28, 46, 64],
		       [13, 40, 67, 94]])
		>>> np.einsum('ki,...k->i...', a, b)
		array([[10, 28, 46, 64],
		       [13, 40, 67, 94]])
		>>> np.einsum('k...,jk', a, b)
		array([[10, 28, 46, 64],
		       [13, 40, 67, 94]])
	**/
	static public function c_einsum(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		einsum(subscripts, *operands, out=None, dtype=None, order='K',
		       casting='safe', optimize=False)
		
		Evaluates the Einstein summation convention on the operands.
		
		Using the Einstein summation convention, many common multi-dimensional,
		linear algebraic array operations can be represented in a simple fashion.
		In *implicit* mode `einsum` computes these values.
		
		In *explicit* mode, `einsum` provides further flexibility to compute
		other array operations that might not be considered classical Einstein
		summation operations, by disabling, or forcing summation over specified
		subscript labels.
		
		See the notes and examples for clarification.
		
		Parameters
		----------
		subscripts : str
		    Specifies the subscripts for summation as comma separated list of
		    subscript labels. An implicit (classical Einstein summation)
		    calculation is performed unless the explicit indicator '->' is
		    included as well as subscript labels of the precise output form.
		operands : list of array_like
		    These are the arrays for the operation.
		out : ndarray, optional
		    If provided, the calculation is done into this array.
		dtype : {data-type, None}, optional
		    If provided, forces the calculation to use the data type specified.
		    Note that you may have to also give a more liberal `casting`
		    parameter to allow the conversions. Default is None.
		order : {'C', 'F', 'A', 'K'}, optional
		    Controls the memory layout of the output. 'C' means it should
		    be C contiguous. 'F' means it should be Fortran contiguous,
		    'A' means it should be 'F' if the inputs are all 'F', 'C' otherwise.
		    'K' means it should be as close to the layout as the inputs as
		    is possible, including arbitrarily permuted axes.
		    Default is 'K'.
		casting : {'no', 'equiv', 'safe', 'same_kind', 'unsafe'}, optional
		    Controls what kind of data casting may occur.  Setting this to
		    'unsafe' is not recommended, as it can adversely affect accumulations.
		
		      * 'no' means the data types should not be cast at all.
		      * 'equiv' means only byte-order changes are allowed.
		      * 'safe' means only casts which can preserve values are allowed.
		      * 'same_kind' means only safe casts or casts within a kind,
		        like float64 to float32, are allowed.
		      * 'unsafe' means any data conversions may be done.
		
		    Default is 'safe'.
		optimize : {False, True, 'greedy', 'optimal'}, optional
		    Controls if intermediate optimization should occur. No optimization
		    will occur if False and True will default to the 'greedy' algorithm.
		    Also accepts an explicit contraction list from the ``np.einsum_path``
		    function. See ``np.einsum_path`` for more details. Defaults to False.
		
		Returns
		-------
		output : ndarray
		    The calculation based on the Einstein summation convention.
		
		See Also
		--------
		einsum_path, dot, inner, outer, tensordot, linalg.multi_dot
		einops :
		    similar verbose interface is provided by
		    `einops <https://github.com/arogozhnikov/einops>`_ package to cover
		    additional operations: transpose, reshape/flatten, repeat/tile,
		    squeeze/unsqueeze and reductions.
		opt_einsum :
		    `opt_einsum <https://optimized-einsum.readthedocs.io/en/stable/>`_
		    optimizes contraction order for einsum-like expressions
		    in backend-agnostic manner.
		
		Notes
		-----
		.. versionadded:: 1.6.0
		
		The Einstein summation convention can be used to compute
		many multi-dimensional, linear algebraic array operations. `einsum`
		provides a succinct way of representing these.
		
		A non-exhaustive list of these operations,
		which can be computed by `einsum`, is shown below along with examples:
		
		* Trace of an array, :py:func:`numpy.trace`.
		* Return a diagonal, :py:func:`numpy.diag`.
		* Array axis summations, :py:func:`numpy.sum`.
		* Transpositions and permutations, :py:func:`numpy.transpose`.
		* Matrix multiplication and dot product, :py:func:`numpy.matmul` :py:func:`numpy.dot`.
		* Vector inner and outer products, :py:func:`numpy.inner` :py:func:`numpy.outer`.
		* Broadcasting, element-wise and scalar multiplication, :py:func:`numpy.multiply`.
		* Tensor contractions, :py:func:`numpy.tensordot`.
		* Chained array operations, in efficient calculation order, :py:func:`numpy.einsum_path`.
		
		The subscripts string is a comma-separated list of subscript labels,
		where each label refers to a dimension of the corresponding operand.
		Whenever a label is repeated it is summed, so ``np.einsum('i,i', a, b)``
		is equivalent to :py:func:`np.inner(a,b) <numpy.inner>`. If a label
		appears only once, it is not summed, so ``np.einsum('i', a)`` produces a
		view of ``a`` with no changes. A further example ``np.einsum('ij,jk', a, b)``
		describes traditional matrix multiplication and is equivalent to
		:py:func:`np.matmul(a,b) <numpy.matmul>`. Repeated subscript labels in one
		operand take the diagonal. For example, ``np.einsum('ii', a)`` is equivalent
		to :py:func:`np.trace(a) <numpy.trace>`.
		
		In *implicit mode*, the chosen subscripts are important
		since the axes of the output are reordered alphabetically.  This
		means that ``np.einsum('ij', a)`` doesn't affect a 2D array, while
		``np.einsum('ji', a)`` takes its transpose. Additionally,
		``np.einsum('ij,jk', a, b)`` returns a matrix multiplication, while,
		``np.einsum('ij,jh', a, b)`` returns the transpose of the
		multiplication since subscript 'h' precedes subscript 'i'.
		
		In *explicit mode* the output can be directly controlled by
		specifying output subscript labels.  This requires the
		identifier '->' as well as the list of output subscript labels.
		This feature increases the flexibility of the function since
		summing can be disabled or forced when required. The call
		``np.einsum('i->', a)`` is like :py:func:`np.sum(a, axis=-1) <numpy.sum>`,
		and ``np.einsum('ii->i', a)`` is like :py:func:`np.diag(a) <numpy.diag>`.
		The difference is that `einsum` does not allow broadcasting by default.
		Additionally ``np.einsum('ij,jh->ih', a, b)`` directly specifies the
		order of the output subscript labels and therefore returns matrix
		multiplication, unlike the example above in implicit mode.
		
		To enable and control broadcasting, use an ellipsis.  Default
		NumPy-style broadcasting is done by adding an ellipsis
		to the left of each term, like ``np.einsum('...ii->...i', a)``.
		To take the trace along the first and last axes,
		you can do ``np.einsum('i...i', a)``, or to do a matrix-matrix
		product with the left-most indices instead of rightmost, one can do
		``np.einsum('ij...,jk...->ik...', a, b)``.
		
		When there is only one operand, no axes are summed, and no output
		parameter is provided, a view into the operand is returned instead
		of a new array.  Thus, taking the diagonal as ``np.einsum('ii->i', a)``
		produces a view (changed in version 1.10.0).
		
		`einsum` also provides an alternative way to provide the subscripts
		and operands as ``einsum(op0, sublist0, op1, sublist1, ..., [sublistout])``.
		If the output shape is not provided in this format `einsum` will be
		calculated in implicit mode, otherwise it will be performed explicitly.
		The examples below have corresponding `einsum` calls with the two
		parameter methods.
		
		.. versionadded:: 1.10.0
		
		Views returned from einsum are now writeable whenever the input array
		is writeable. For example, ``np.einsum('ijk...->kji...', a)`` will now
		have the same effect as :py:func:`np.swapaxes(a, 0, 2) <numpy.swapaxes>`
		and ``np.einsum('ii->i', a)`` will return a writeable view of the diagonal
		of a 2D array.
		
		.. versionadded:: 1.12.0
		
		Added the ``optimize`` argument which will optimize the contraction order
		of an einsum expression. For a contraction with three or more operands this
		can greatly increase the computational efficiency at the cost of a larger
		memory footprint during computation.
		
		Typically a 'greedy' algorithm is applied which empirical tests have shown
		returns the optimal path in the majority of cases. In some cases 'optimal'
		will return the superlative path through a more expensive, exhaustive search.
		For iterative calculations it may be advisable to calculate the optimal path
		once and reuse that path by supplying it as an argument. An example is given
		below.
		
		See :py:func:`numpy.einsum_path` for more details.
		
		Examples
		--------
		>>> a = np.arange(25).reshape(5,5)
		>>> b = np.arange(5)
		>>> c = np.arange(6).reshape(2,3)
		
		Trace of a matrix:
		
		>>> np.einsum('ii', a)
		60
		>>> np.einsum(a, [0,0])
		60
		>>> np.trace(a)
		60
		
		Extract the diagonal (requires explicit form):
		
		>>> np.einsum('ii->i', a)
		array([ 0,  6, 12, 18, 24])
		>>> np.einsum(a, [0,0], [0])
		array([ 0,  6, 12, 18, 24])
		>>> np.diag(a)
		array([ 0,  6, 12, 18, 24])
		
		Sum over an axis (requires explicit form):
		
		>>> np.einsum('ij->i', a)
		array([ 10,  35,  60,  85, 110])
		>>> np.einsum(a, [0,1], [0])
		array([ 10,  35,  60,  85, 110])
		>>> np.sum(a, axis=1)
		array([ 10,  35,  60,  85, 110])
		
		For higher dimensional arrays summing a single axis can be done with ellipsis:
		
		>>> np.einsum('...j->...', a)
		array([ 10,  35,  60,  85, 110])
		>>> np.einsum(a, [Ellipsis,1], [Ellipsis])
		array([ 10,  35,  60,  85, 110])
		
		Compute a matrix transpose, or reorder any number of axes:
		
		>>> np.einsum('ji', c)
		array([[0, 3],
		       [1, 4],
		       [2, 5]])
		>>> np.einsum('ij->ji', c)
		array([[0, 3],
		       [1, 4],
		       [2, 5]])
		>>> np.einsum(c, [1,0])
		array([[0, 3],
		       [1, 4],
		       [2, 5]])
		>>> np.transpose(c)
		array([[0, 3],
		       [1, 4],
		       [2, 5]])
		
		Vector inner products:
		
		>>> np.einsum('i,i', b, b)
		30
		>>> np.einsum(b, [0], b, [0])
		30
		>>> np.inner(b,b)
		30
		
		Matrix vector multiplication:
		
		>>> np.einsum('ij,j', a, b)
		array([ 30,  80, 130, 180, 230])
		>>> np.einsum(a, [0,1], b, [1])
		array([ 30,  80, 130, 180, 230])
		>>> np.dot(a, b)
		array([ 30,  80, 130, 180, 230])
		>>> np.einsum('...j,j', a, b)
		array([ 30,  80, 130, 180, 230])
		
		Broadcasting and scalar multiplication:
		
		>>> np.einsum('..., ...', 3, c)
		array([[ 0,  3,  6],
		       [ 9, 12, 15]])
		>>> np.einsum(',ij', 3, c)
		array([[ 0,  3,  6],
		       [ 9, 12, 15]])
		>>> np.einsum(3, [Ellipsis], c, [Ellipsis])
		array([[ 0,  3,  6],
		       [ 9, 12, 15]])
		>>> np.multiply(3, c)
		array([[ 0,  3,  6],
		       [ 9, 12, 15]])
		
		Vector outer product:
		
		>>> np.einsum('i,j', np.arange(2)+1, b)
		array([[0, 1, 2, 3, 4],
		       [0, 2, 4, 6, 8]])
		>>> np.einsum(np.arange(2)+1, [0], b, [1])
		array([[0, 1, 2, 3, 4],
		       [0, 2, 4, 6, 8]])
		>>> np.outer(np.arange(2)+1, b)
		array([[0, 1, 2, 3, 4],
		       [0, 2, 4, 6, 8]])
		
		Tensor contraction:
		
		>>> a = np.arange(60.).reshape(3,4,5)
		>>> b = np.arange(24.).reshape(4,3,2)
		>>> np.einsum('ijk,jil->kl', a, b)
		array([[4400., 4730.],
		       [4532., 4874.],
		       [4664., 5018.],
		       [4796., 5162.],
		       [4928., 5306.]])
		>>> np.einsum(a, [0,1,2], b, [1,0,3], [2,3])
		array([[4400., 4730.],
		       [4532., 4874.],
		       [4664., 5018.],
		       [4796., 5162.],
		       [4928., 5306.]])
		>>> np.tensordot(a,b, axes=([1,0],[0,1]))
		array([[4400., 4730.],
		       [4532., 4874.],
		       [4664., 5018.],
		       [4796., 5162.],
		       [4928., 5306.]])
		
		Writeable returned arrays (since version 1.10.0):
		
		>>> a = np.zeros((3, 3))
		>>> np.einsum('ii->i', a)[:] = 1
		>>> a
		array([[1., 0., 0.],
		       [0., 1., 0.],
		       [0., 0., 1.]])
		
		Example of ellipsis use:
		
		>>> a = np.arange(6).reshape((3,2))
		>>> b = np.arange(12).reshape((4,3))
		>>> np.einsum('ki,jk->ij', a, b)
		array([[10, 28, 46, 64],
		       [13, 40, 67, 94]])
		>>> np.einsum('ki,...k->i...', a, b)
		array([[10, 28, 46, 64],
		       [13, 40, 67, 94]])
		>>> np.einsum('k...,jk', a, b)
		array([[10, 28, 46, 64],
		       [13, 40, 67, 94]])
		
		Chained array operations. For more complicated contractions, speed ups
		might be achieved by repeatedly computing a 'greedy' path or pre-computing the
		'optimal' path and repeatedly applying it, using an
		`einsum_path` insertion (since version 1.12.0). Performance improvements can be
		particularly significant with larger arrays:
		
		>>> a = np.ones(64).reshape(2,4,8)
		
		Basic `einsum`: ~1520ms  (benchmarked on 3.1GHz Intel i5.)
		
		>>> for iteration in range(500):
		...     _ = np.einsum('ijk,ilm,njm,nlk,abc->',a,a,a,a,a)
		
		Sub-optimal `einsum` (due to repeated path calculation time): ~330ms
		
		>>> for iteration in range(500):
		...     _ = np.einsum('ijk,ilm,njm,nlk,abc->',a,a,a,a,a, optimize='optimal')
		
		Greedy `einsum` (faster optimal path approximation): ~160ms
		
		>>> for iteration in range(500):
		...     _ = np.einsum('ijk,ilm,njm,nlk,abc->',a,a,a,a,a, optimize='greedy')
		
		Optimal `einsum` (best usage pattern in some use cases): ~110ms
		
		>>> path = np.einsum_path('ijk,ilm,njm,nlk,abc->',a,a,a,a,a, optimize='optimal')[0]
		>>> for iteration in range(500):
		...     _ = np.einsum('ijk,ilm,njm,nlk,abc->',a,a,a,a,a, optimize=path)
	**/
	static public function einsum(?operands:python.VarArgs<Dynamic>, ?out:Dynamic, ?optimize:Dynamic, ?kwargs:python.KwArgs<Dynamic>):numpy.Ndarray;
	/**
		einsum_path(subscripts, *operands, optimize='greedy')
		
		Evaluates the lowest cost contraction order for an einsum expression by
		considering the creation of intermediate arrays.
		
		Parameters
		----------
		subscripts : str
		    Specifies the subscripts for summation.
		*operands : list of array_like
		    These are the arrays for the operation.
		optimize : {bool, list, tuple, 'greedy', 'optimal'}
		    Choose the type of path. If a tuple is provided, the second argument is
		    assumed to be the maximum intermediate size created. If only a single
		    argument is provided the largest input or output array size is used
		    as a maximum intermediate size.
		
		    * if a list is given that starts with ``einsum_path``, uses this as the
		      contraction path
		    * if False no optimization is taken
		    * if True defaults to the 'greedy' algorithm
		    * 'optimal' An algorithm that combinatorially explores all possible
		      ways of contracting the listed tensors and choosest the least costly
		      path. Scales exponentially with the number of terms in the
		      contraction.
		    * 'greedy' An algorithm that chooses the best pair contraction
		      at each step. Effectively, this algorithm searches the largest inner,
		      Hadamard, and then outer products at each step. Scales cubically with
		      the number of terms in the contraction. Equivalent to the 'optimal'
		      path for most contractions.
		
		    Default is 'greedy'.
		
		Returns
		-------
		path : list of tuples
		    A list representation of the einsum path.
		string_repr : str
		    A printable representation of the einsum path.
		
		Notes
		-----
		The resulting path indicates which terms of the input contraction should be
		contracted first, the result of this contraction is then appended to the
		end of the contraction list. This list can then be iterated over until all
		intermediate contractions are complete.
		
		See Also
		--------
		einsum, linalg.multi_dot
		
		Examples
		--------
		
		We can begin with a chain dot example. In this case, it is optimal to
		contract the ``b`` and ``c`` tensors first as represented by the first
		element of the path ``(1, 2)``. The resulting tensor is added to the end
		of the contraction and the remaining contraction ``(0, 1)`` is then
		completed.
		
		>>> np.random.seed(123)
		>>> a = np.random.rand(2, 2)
		>>> b = np.random.rand(2, 5)
		>>> c = np.random.rand(5, 2)
		>>> path_info = np.einsum_path('ij,jk,kl->il', a, b, c, optimize='greedy')
		>>> print(path_info[0])
		['einsum_path', (1, 2), (0, 1)]
		>>> print(path_info[1])
		  Complete contraction:  ij,jk,kl->il # may vary
		         Naive scaling:  4
		     Optimized scaling:  3
		      Naive FLOP count:  1.600e+02
		  Optimized FLOP count:  5.600e+01
		   Theoretical speedup:  2.857
		  Largest intermediate:  4.000e+00 elements
		-------------------------------------------------------------------------
		scaling                  current                                remaining
		-------------------------------------------------------------------------
		   3                   kl,jk->jl                                ij,jl->il
		   3                   jl,ij->il                                   il->il
		
		
		A more complex index transformation example.
		
		>>> I = np.random.rand(10, 10, 10, 10)
		>>> C = np.random.rand(10, 10)
		>>> path_info = np.einsum_path('ea,fb,abcd,gc,hd->efgh', C, C, I, C, C,
		...                            optimize='greedy')
		
		>>> print(path_info[0])
		['einsum_path', (0, 2), (0, 3), (0, 2), (0, 1)]
		>>> print(path_info[1]) 
		  Complete contraction:  ea,fb,abcd,gc,hd->efgh # may vary
		         Naive scaling:  8
		     Optimized scaling:  5
		      Naive FLOP count:  8.000e+08
		  Optimized FLOP count:  8.000e+05
		   Theoretical speedup:  1000.000
		  Largest intermediate:  1.000e+04 elements
		--------------------------------------------------------------------------
		scaling                  current                                remaining
		--------------------------------------------------------------------------
		   5               abcd,ea->bcde                      fb,gc,hd,bcde->efgh
		   5               bcde,fb->cdef                         gc,hd,cdef->efgh
		   5               cdef,gc->defg                            hd,defg->efgh
		   5               defg,hd->efgh                               efgh->efgh
	**/
	static public function einsum_path(?operands:python.VarArgs<Dynamic>, ?optimize:Dynamic, ?einsum_call:Dynamic):Dynamic;
	static public var einsum_symbols : Dynamic;
	static public var einsum_symbols_set : Dynamic;
	/**
		Compute tensor dot product along specified axes.
		
		Given two tensors, `a` and `b`, and an array_like object containing
		two array_like objects, ``(a_axes, b_axes)``, sum the products of
		`a`'s and `b`'s elements (components) over the axes specified by
		``a_axes`` and ``b_axes``. The third argument can be a single non-negative
		integer_like scalar, ``N``; if it is such, then the last ``N`` dimensions
		of `a` and the first ``N`` dimensions of `b` are summed over.
		
		Parameters
		----------
		a, b : array_like
		    Tensors to "dot".
		
		axes : int or (2,) array_like
		    * integer_like
		      If an int N, sum over the last N axes of `a` and the first N axes
		      of `b` in order. The sizes of the corresponding axes must match.
		    * (2,) array_like
		      Or, a list of axes to be summed over, first sequence applying to `a`,
		      second to `b`. Both elements array_like must be of the same length.
		
		Returns
		-------
		output : ndarray
		    The tensor dot product of the input.
		
		See Also
		--------
		dot, einsum
		
		Notes
		-----
		Three common use cases are:
		    * ``axes = 0`` : tensor product :math:`a\otimes b`
		    * ``axes = 1`` : tensor dot product :math:`a\cdot b`
		    * ``axes = 2`` : (default) tensor double contraction :math:`a:b`
		
		When `axes` is integer_like, the sequence for evaluation will be: first
		the -Nth axis in `a` and 0th axis in `b`, and the -1th axis in `a` and
		Nth axis in `b` last.
		
		When there is more than one axis to sum over - and they are not the last
		(first) axes of `a` (`b`) - the argument `axes` should consist of
		two sequences of the same length, with the first axis to sum over given
		first in both sequences, the second axis second, and so forth.
		
		The shape of the result consists of the non-contracted axes of the
		first tensor, followed by the non-contracted axes of the second.
		
		Examples
		--------
		A "traditional" example:
		
		>>> a = np.arange(60.).reshape(3,4,5)
		>>> b = np.arange(24.).reshape(4,3,2)
		>>> c = np.tensordot(a,b, axes=([1,0],[0,1]))
		>>> c.shape
		(5, 2)
		>>> c
		array([[4400., 4730.],
		       [4532., 4874.],
		       [4664., 5018.],
		       [4796., 5162.],
		       [4928., 5306.]])
		>>> # A slower but equivalent way of computing the same...
		>>> d = np.zeros((5,2))
		>>> for i in range(5):
		...   for j in range(2):
		...     for k in range(3):
		...       for n in range(4):
		...         d[i,j] += a[k,n,i] * b[n,k,j]
		>>> c == d
		array([[ True,  True],
		       [ True,  True],
		       [ True,  True],
		       [ True,  True],
		       [ True,  True]])
		
		An extended example taking advantage of the overloading of + and \*:
		
		>>> a = np.array(range(1, 9))
		>>> a.shape = (2, 2, 2)
		>>> A = np.array(('a', 'b', 'c', 'd'), dtype=object)
		>>> A.shape = (2, 2)
		>>> a; A
		array([[[1, 2],
		        [3, 4]],
		       [[5, 6],
		        [7, 8]]])
		array([['a', 'b'],
		       ['c', 'd']], dtype=object)
		
		>>> np.tensordot(a, A) # third argument default is 2 for double-contraction
		array(['abbcccdddd', 'aaaaabbbbbbcccccccdddddddd'], dtype=object)
		
		>>> np.tensordot(a, A, 1)
		array([[['acc', 'bdd'],
		        ['aaacccc', 'bbbdddd']],
		       [['aaaaacccccc', 'bbbbbdddddd'],
		        ['aaaaaaacccccccc', 'bbbbbbbdddddddd']]], dtype=object)
		
		>>> np.tensordot(a, A, 0) # tensor product (result too long to incl.)
		array([[[[['a', 'b'],
		          ['c', 'd']],
		          ...
		
		>>> np.tensordot(a, A, (0, 1))
		array([[['abbbbb', 'cddddd'],
		        ['aabbbbbb', 'ccdddddd']],
		       [['aaabbbbbbb', 'cccddddddd'],
		        ['aaaabbbbbbbb', 'ccccdddddddd']]], dtype=object)
		
		>>> np.tensordot(a, A, (2, 1))
		array([[['abb', 'cdd'],
		        ['aaabbbb', 'cccdddd']],
		       [['aaaaabbbbbb', 'cccccdddddd'],
		        ['aaaaaaabbbbbbbb', 'cccccccdddddddd']]], dtype=object)
		
		>>> np.tensordot(a, A, ((0, 1), (0, 1)))
		array(['abbbcccccddddddd', 'aabbbbccccccdddddddd'], dtype=object)
		
		>>> np.tensordot(a, A, ((2, 1), (1, 0)))
		array(['acccbbdddd', 'aaaaacccccccbbbbbbdddddddd'], dtype=object)
	**/
	static public function tensordot(a:Dynamic, b:Dynamic, ?axes:Dynamic):numpy.Ndarray;
}