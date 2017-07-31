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
		memory_limit_limit : int
		    The maximum number of elements in a temporary array
		
		Returns
		-------
		path : list
		    The greedy contraction order within the memory limit constraint.
		
		Examples
		--------
		>>> isets = [set('abd'), set('ac'), set('bdc')]
		>>> oset = set('')
		>>> idx_sizes = {'a': 1, 'b':2, 'c':3, 'd':4}
		>>> _path__greedy_path(isets, oset, idx_sizes, 5000)
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
		>>> oset = set('')
		>>> idx_sizes = {'a': 1, 'b':2, 'c':3, 'd':4}
		>>> _path__optimal_path(isets, oset, idx_sizes, 5000)
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
		
		>>> a = np.random.rand(4, 4)
		>>> b = np.random.rand(4, 4, 4)
		>>> __parse_einsum_input(('...a,...a->...', a, b))
		('za,xza', 'xz', [a, b])
		
		>>> __parse_einsum_input((a, [Ellipsis, 0], b, [Ellipsis, 0]))
		('za,xza', 'xz', [a, b])
	**/
	static public function _parse_einsum_input(operands:Dynamic):String;
	static public var absolute_import : Dynamic;
	/**
		Convert the input to an ndarray, but pass ndarray subclasses through.
		
		Parameters
		----------
		a : array_like
		    Input data, in any form that can be converted to an array.  This
		    includes scalars, lists, lists of tuples, tuples, tuples of tuples,
		    tuples of lists, and ndarrays.
		dtype : data-type, optional
		    By default, the data-type is inferred from the input data.
		order : {'C', 'F'}, optional
		    Whether to use row-major (C-style) or column-major
		    (Fortran-style) memory representation.  Defaults to 'C'.
		
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
		
		>>> a = np.matrix([1, 2])
		>>> np.asanyarray(a) is a
		True
	**/
	static public function asanyarray(a:Dynamic, ?dtype:Dynamic, ?order:Dynamic):Dynamic;
	/**
		Convert the input to an array.
		
		Parameters
		----------
		a : array_like
		    Input data, in any form that can be converted to an array.  This
		    includes lists, lists of tuples, tuples, tuples of tuples, tuples
		    of lists and ndarrays.
		dtype : data-type, optional
		    By default, the data-type is inferred from the input data.
		order : {'C', 'F'}, optional
		    Whether to use row-major (C-style) or
		    column-major (Fortran-style) memory representation.
		    Defaults to 'C'.
		
		Returns
		-------
		out : ndarray
		    Array interpretation of `a`.  No copy is performed if the input
		    is already an ndarray with matching dtype and order.  If `a` is a
		    subclass of ndarray, a base class ndarray is returned.
		
		See Also
		--------
		asanyarray : Similar function which passes through subclasses.
		ascontiguousarray : Convert input to a contiguous array.
		asfarray : Convert input to a floating point ndarray.
		asfortranarray : Convert input to an ndarray with column-major
		                 memory order.
		asarray_chkfinite : Similar function which checks input for NaNs and Infs.
		fromiter : Create an array from an iterator.
		fromfunction : Construct an array by executing a function on grid
		               positions.
		
		Examples
		--------
		Convert a list into an array:
		
		>>> a = [1, 2]
		>>> np.asarray(a)
		array([1, 2])
		
		Existing arrays are not copied:
		
		>>> a = np.array([1, 2])
		>>> np.asarray(a) is a
		True
		
		If `dtype` is set, array is copied only if dtype does not match:
		
		>>> a = np.array([1, 2], dtype=np.float32)
		>>> np.asarray(a, dtype=np.float32) is a
		True
		>>> np.asarray(a, dtype=np.float64) is a
		False
		
		Contrary to `asanyarray`, ndarray subclasses are not passed through:
		
		>>> issubclass(np.matrix, np.ndarray)
		True
		>>> a = np.matrix([[1, 2]])
		>>> np.asarray(a) is a
		False
		>>> np.asanyarray(a) is a
		True
	**/
	static public function asarray(a:Dynamic, ?dtype:Dynamic, ?order:Dynamic):numpy.Ndarray;
	static public function c_einsum(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var division : Dynamic;
	/**
		einsum(subscripts, *operands, out=None, dtype=None, order='K',
		       casting='safe', optimize=False)
		
		Evaluates the Einstein summation convention on the operands.
		
		Using the Einstein summation convention, many common multi-dimensional
		array operations can be represented in a simple fashion.  This function
		provides a way to compute such summations. The best way to understand this
		function is to try the examples below, which show how many common NumPy
		functions can be implemented as calls to `einsum`.
		
		Parameters
		----------
		subscripts : str
		    Specifies the subscripts for summation.
		operands : list of array_like
		    These are the arrays for the operation.
		out : {ndarray, None}, optional
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
		    function. See ``np.einsum_path`` for more details. Default is False.
		
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
		
		The subscripts string is a comma-separated list of subscript labels,
		where each label refers to a dimension of the corresponding operand.
		Repeated subscripts labels in one operand take the diagonal.  For example,
		``np.einsum('ii', a)`` is equivalent to ``np.trace(a)``.
		
		Whenever a label is repeated, it is summed, so ``np.einsum('i,i', a, b)``
		is equivalent to ``np.inner(a,b)``.  If a label appears only once,
		it is not summed, so ``np.einsum('i', a)`` produces a view of ``a``
		with no changes.
		
		The order of labels in the output is by default alphabetical.  This
		means that ``np.einsum('ij', a)`` doesn't affect a 2D array, while
		``np.einsum('ji', a)`` takes its transpose.
		
		The output can be controlled by specifying output subscript labels
		as well.  This specifies the label order, and allows summing to
		be disallowed or forced when desired.  The call ``np.einsum('i->', a)``
		is like ``np.sum(a, axis=-1)``, and ``np.einsum('ii->i', a)``
		is like ``np.diag(a)``.  The difference is that `einsum` does not
		allow broadcasting by default.
		
		To enable and control broadcasting, use an ellipsis.  Default
		NumPy-style broadcasting is done by adding an ellipsis
		to the left of each term, like ``np.einsum('...ii->...i', a)``.
		To take the trace along the first and last axes,
		you can do ``np.einsum('i...i', a)``, or to do a matrix-matrix
		product with the left-most indices instead of rightmost, you can do
		``np.einsum('ij...,jk...->ik...', a, b)``.
		
		When there is only one operand, no axes are summed, and no output
		parameter is provided, a view into the operand is returned instead
		of a new array.  Thus, taking the diagonal as ``np.einsum('ii->i', a)``
		produces a view.
		
		An alternative way to provide the subscripts and operands is as
		``einsum(op0, sublist0, op1, sublist1, ..., [sublistout])``. The examples
		below have corresponding `einsum` calls with the two parameter methods.
		
		.. versionadded:: 1.10.0
		
		Views returned from einsum are now writeable whenever the input array
		is writeable. For example, ``np.einsum('ijk...->kji...', a)`` will now
		have the same effect as ``np.swapaxes(a, 0, 2)`` and
		``np.einsum('ii->i', a)`` will return a writeable view of the diagonal
		of a 2D array.
		
		.. versionadded:: 1.12.0
		
		Added the ``optimize`` argument which will optimize the contraction order
		of an einsum expression. For a contraction with three or more operands this
		can greatly increase the computational efficiency at the cost of a larger
		memory footprint during computation.
		
		See ``np.einsum_path`` for more details.
		
		Examples
		--------
		>>> a = np.arange(25).reshape(5,5)
		>>> b = np.arange(5)
		>>> c = np.arange(6).reshape(2,3)
		
		>>> np.einsum('ii', a)
		60
		>>> np.einsum(a, [0,0])
		60
		>>> np.trace(a)
		60
		
		>>> np.einsum('ii->i', a)
		array([ 0,  6, 12, 18, 24])
		>>> np.einsum(a, [0,0], [0])
		array([ 0,  6, 12, 18, 24])
		>>> np.diag(a)
		array([ 0,  6, 12, 18, 24])
		
		>>> np.einsum('ij,j', a, b)
		array([ 30,  80, 130, 180, 230])
		>>> np.einsum(a, [0,1], b, [1])
		array([ 30,  80, 130, 180, 230])
		>>> np.dot(a, b)
		array([ 30,  80, 130, 180, 230])
		>>> np.einsum('...j,j', a, b)
		array([ 30,  80, 130, 180, 230])
		
		>>> np.einsum('ji', c)
		array([[0, 3],
		       [1, 4],
		       [2, 5]])
		>>> np.einsum(c, [1,0])
		array([[0, 3],
		       [1, 4],
		       [2, 5]])
		>>> c.T
		array([[0, 3],
		       [1, 4],
		       [2, 5]])
		
		>>> np.einsum('..., ...', 3, c)
		array([[ 0,  3,  6],
		       [ 9, 12, 15]])
		>>> np.einsum(',ij', 3, C)
		array([[ 0,  3,  6],
		       [ 9, 12, 15]])
		>>> np.einsum(3, [Ellipsis], c, [Ellipsis])
		array([[ 0,  3,  6],
		       [ 9, 12, 15]])
		>>> np.multiply(3, c)
		array([[ 0,  3,  6],
		       [ 9, 12, 15]])
		
		>>> np.einsum('i,i', b, b)
		30
		>>> np.einsum(b, [0], b, [0])
		30
		>>> np.inner(b,b)
		30
		
		>>> np.einsum('i,j', np.arange(2)+1, b)
		array([[0, 1, 2, 3, 4],
		       [0, 2, 4, 6, 8]])
		>>> np.einsum(np.arange(2)+1, [0], b, [1])
		array([[0, 1, 2, 3, 4],
		       [0, 2, 4, 6, 8]])
		>>> np.outer(np.arange(2)+1, b)
		array([[0, 1, 2, 3, 4],
		       [0, 2, 4, 6, 8]])
		
		>>> np.einsum('i...->...', a)
		array([50, 55, 60, 65, 70])
		>>> np.einsum(a, [0,Ellipsis], [Ellipsis])
		array([50, 55, 60, 65, 70])
		>>> np.sum(a, axis=0)
		array([50, 55, 60, 65, 70])
		
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
		
		>>> # since version 1.10.0
		>>> a = np.zeros((3, 3))
		>>> np.einsum('ii->i', a)[:] = 1
		>>> a
		array([[ 1.,  0.,  0.],
		       [ 0.,  1.,  0.],
		       [ 0.,  0.,  1.]])
	**/
	static public function einsum(?operands:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):numpy.Ndarray;
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
		contract the ``b`` and ``c`` tensors first as reprsented by the first
		element of the path ``(1, 2)``. The resulting tensor is added to the end
		of the contraction and the remaining contraction ``(0, 1)`` is then
		completed.
		
		>>> a = np.random.rand(2, 2)
		>>> b = np.random.rand(2, 5)
		>>> c = np.random.rand(5, 2)
		>>> path_info = np.einsum_path('ij,jk,kl->il', a, b, c, optimize='greedy')
		>>> print(path_info[0])
		['einsum_path', (1, 2), (0, 1)]
		>>> print(path_info[1])
		  Complete contraction:  ij,jk,kl->il
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
		                               optimize='greedy')
		
		>>> print(path_info[0])
		['einsum_path', (0, 2), (0, 3), (0, 2), (0, 1)]
		>>> print(path_info[1])
		  Complete contraction:  ea,fb,abcd,gc,hd->efgh
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
	static public function einsum_path(?operands:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var einsum_symbols : Dynamic;
	static public var einsum_symbols_set : Dynamic;
	static public var print_function : Dynamic;
	/**
		result_type(*arrays_and_dtypes)
		
		Returns the type that results from applying the NumPy
		type promotion rules to the arguments.
		
		Type promotion in NumPy works similarly to the rules in languages
		like C++, with some slight differences.  When both scalars and
		arrays are used, the array's type takes precedence and the actual value
		of the scalar is taken into account.
		
		For example, calculating 3*a, where a is an array of 32-bit floats,
		intuitively should result in a 32-bit float output.  If the 3 is a
		32-bit integer, the NumPy rules indicate it can't convert losslessly
		into a 32-bit float, so a 64-bit float should be the result type.
		By examining the value of the constant, '3', we see that it fits in
		an 8-bit integer, which can be cast losslessly into the 32-bit float.
		
		Parameters
		----------
		arrays_and_dtypes : list of arrays and dtypes
		    The operands of some operation whose result type is needed.
		
		Returns
		-------
		out : dtype
		    The result type.
		
		See also
		--------
		dtype, promote_types, min_scalar_type, can_cast
		
		Notes
		-----
		.. versionadded:: 1.6.0
		
		The specific algorithm used is as follows.
		
		Categories are determined by first checking which of boolean,
		integer (int/uint), or floating point (float/complex) the maximum
		kind of all the arrays and the scalars are.
		
		If there are only scalars or the maximum category of the scalars
		is higher than the maximum category of the arrays,
		the data types are combined with :func:`promote_types`
		to produce the return value.
		
		Otherwise, `min_scalar_type` is called on each array, and
		the resulting data types are all combined with :func:`promote_types`
		to produce the return value.
		
		The set of int values is not a subset of the uint values for types
		with the same number of bits, something not reflected in
		:func:`min_scalar_type`, but handled as a special case in `result_type`.
		
		Examples
		--------
		>>> np.result_type(3, np.arange(7, dtype='i1'))
		dtype('int8')
		
		>>> np.result_type('i4', 'c8')
		dtype('complex128')
		
		>>> np.result_type(3.0, -2)
		dtype('float64')
	**/
	static public function result_type(args:haxe.extern.Rest<Dynamic>):Dynamic;
}