/* This file is generated, do not edit! */
package numpy;
@:pythonImport("numpy", "ufunc") extern class Ufunc {
	/**
		Call self as a function.
	**/
	public function __call__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	/**
		__dir__() -> list
		default dir() implementation
	**/
	public function __dir__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		default object formatter
	**/
	public function __format__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self>=value.
	**/
	public function __ge__(value:Dynamic):Dynamic;
	/**
		Return getattr(self, name).
	**/
	public function __getattribute__(name:Dynamic):Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
	/**
		Return self<value.
	**/
	public function __lt__(value:Dynamic):Dynamic;
	static public var __name__ : Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce_ex__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		__sizeof__() -> int
		size of object in memory, in bytes
	**/
	public function __sizeof__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return str(self).
	**/
	public function __str__():Dynamic;
	/**
		Abstract classes can override this to customize issubclass().
		
		This is invoked early on by abc.ABCMeta.__subclasscheck__().
		It should return True, False or NotImplemented.  If it returns
		NotImplemented, the normal algorithm is used.  Otherwise, it
		overrides the normal algorithm (and the outcome is cached).
	**/
	static public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		accumulate(array, axis=0, dtype=None, out=None)
		
		Accumulate the result of applying the operator to all elements.
		
		For a one-dimensional array, accumulate produces results equivalent to::
		
		  r = np.empty(len(A))
		  t = op.identity        # op = the ufunc being applied to A's  elements
		  for i in range(len(A)):
		      t = op(t, A[i])
		      r[i] = t
		  return r
		
		For example, add.accumulate() is equivalent to np.cumsum().
		
		For a multi-dimensional array, accumulate is applied along only one
		axis (axis zero by default; see Examples below) so repeated use is
		necessary if one wants to accumulate over multiple axes.
		
		Parameters
		----------
		array : array_like
		    The array to act on.
		axis : int, optional
		    The axis along which to apply the accumulation; default is zero.
		dtype : data-type code, optional
		    The data-type used to represent the intermediate results. Defaults
		    to the data-type of the output array if such is provided, or the
		    the data-type of the input array if no output array is provided.
		out : ndarray, optional
		    A location into which the result is stored. If not provided a
		    freshly-allocated array is returned.
		
		Returns
		-------
		r : ndarray
		    The accumulated values. If `out` was supplied, `r` is a reference to
		    `out`.
		
		Examples
		--------
		1-D array examples:
		
		>>> np.add.accumulate([2, 3, 5])
		array([ 2,  5, 10])
		>>> np.multiply.accumulate([2, 3, 5])
		array([ 2,  6, 30])
		
		2-D array examples:
		
		>>> I = np.eye(2)
		>>> I
		array([[ 1.,  0.],
		       [ 0.,  1.]])
		
		Accumulate along axis 0 (rows), down columns:
		
		>>> np.add.accumulate(I, 0)
		array([[ 1.,  0.],
		       [ 1.,  1.]])
		>>> np.add.accumulate(I) # no axis specified = axis zero
		array([[ 1.,  0.],
		       [ 1.,  1.]])
		
		Accumulate along axis 1 (columns), through rows:
		
		>>> np.add.accumulate(I, 1)
		array([[ 1.,  1.],
		       [ 0.,  1.]])
	**/
	public function accumulate(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		at(a, indices, b=None)
		
		Performs unbuffered in place operation on operand 'a' for elements
		specified by 'indices'. For addition ufunc, this method is equivalent to
		`a[indices] += b`, except that results are accumulated for elements that
		are indexed more than once. For example, `a[[0,0]] += 1` will only
		increment the first element once because of buffering, whereas
		`add.at(a, [0,0], 1)` will increment the first element twice.
		
		.. versionadded:: 1.8.0
		
		Parameters
		----------
		a : array_like
		    The array to perform in place operation on.
		indices : array_like or tuple
		    Array like index object or slice object for indexing into first
		    operand. If first operand has multiple dimensions, indices can be a
		    tuple of array like index objects or slice objects.
		b : array_like
		    Second operand for ufuncs requiring two operands. Operand must be
		    broadcastable over first operand after indexing or slicing.
		
		Examples
		--------
		Set items 0 and 1 to their negative values:
		
		>>> a = np.array([1, 2, 3, 4])
		>>> np.negative.at(a, [0, 1])
		>>> print(a)
		array([-1, -2, 3, 4])
		
		::
		
		Increment items 0 and 1, and increment item 2 twice:
		
		>>> a = np.array([1, 2, 3, 4])
		>>> np.add.at(a, [0, 1, 2, 2], 1)
		>>> print(a)
		array([2, 3, 5, 4])
		
		::
		
		Add items 0 and 1 in first array to second array,
		and store results in first array:
		
		>>> a = np.array([1, 2, 3, 4])
		>>> b = np.array([1, 2])
		>>> np.add.at(a, [0, 1], b)
		>>> print(a)
		array([2, 4, 3, 4])
	**/
	public function at(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		The identity value.
		
		Data attribute containing the identity element for the ufunc, if it has one.
		If it does not, the attribute value is None.
		
		Examples
		--------
		>>> np.add.identity
		0
		>>> np.multiply.identity
		1
		>>> np.power.identity
		1
		>>> print np.exp.identity
		None
	**/
	public var identity : Dynamic;
	/**
		The number of arguments.
		
		Data attribute containing the number of arguments the ufunc takes, including
		optional ones.
		
		Notes
		-----
		Typically this value will be one more than what you might expect because all
		ufuncs take  the optional "out" argument.
		
		Examples
		--------
		>>> np.add.nargs
		3
		>>> np.multiply.nargs
		3
		>>> np.power.nargs
		3
		>>> np.exp.nargs
		2
	**/
	public var nargs : Dynamic;
	/**
		The number of inputs.
		
		Data attribute containing the number of arguments the ufunc treats as input.
		
		Examples
		--------
		>>> np.add.nin
		2
		>>> np.multiply.nin
		2
		>>> np.power.nin
		2
		>>> np.exp.nin
		1
	**/
	public var nin : Dynamic;
	/**
		The number of outputs.
		
		Data attribute containing the number of arguments the ufunc treats as output.
		
		Notes
		-----
		Since all ufuncs can take output arguments, this will always be (at least) 1.
		
		Examples
		--------
		>>> np.add.nout
		1
		>>> np.multiply.nout
		1
		>>> np.power.nout
		1
		>>> np.exp.nout
		1
	**/
	public var nout : Dynamic;
	/**
		The number of types.
		
		The number of numerical NumPy types - of which there are 18 total - on which
		the ufunc can operate.
		
		See Also
		--------
		numpy.ufunc.types
		
		Examples
		--------
		>>> np.add.ntypes
		18
		>>> np.multiply.ntypes
		18
		>>> np.power.ntypes
		17
		>>> np.exp.ntypes
		7
		>>> np.remainder.ntypes
		14
	**/
	public var ntypes : Dynamic;
	/**
		outer(A, B)
		
		Apply the ufunc `op` to all pairs (a, b) with a in `A` and b in `B`.
		
		Let ``M = A.ndim``, ``N = B.ndim``. Then the result, `C`, of
		``op.outer(A, B)`` is an array of dimension M + N such that:
		
		.. math:: C[i_0, ..., i_{M-1}, j_0, ..., j_{N-1}] =
		   op(A[i_0, ..., i_{M-1}], B[j_0, ..., j_{N-1}])
		
		For `A` and `B` one-dimensional, this is equivalent to::
		
		  r = empty(len(A),len(B))
		  for i in range(len(A)):
		      for j in range(len(B)):
		          r[i,j] = op(A[i], B[j]) # op = ufunc in question
		
		Parameters
		----------
		A : array_like
		    First array
		B : array_like
		    Second array
		
		Returns
		-------
		r : ndarray
		    Output array
		
		See Also
		--------
		numpy.outer
		
		Examples
		--------
		>>> np.multiply.outer([1, 2, 3], [4, 5, 6])
		array([[ 4,  5,  6],
		       [ 8, 10, 12],
		       [12, 15, 18]])
		
		A multi-dimensional example:
		
		>>> A = np.array([[1, 2, 3], [4, 5, 6]])
		>>> A.shape
		(2, 3)
		>>> B = np.array([[1, 2, 3, 4]])
		>>> B.shape
		(1, 4)
		>>> C = np.multiply.outer(A, B)
		>>> C.shape; C
		(2, 3, 1, 4)
		array([[[[ 1,  2,  3,  4]],
		        [[ 2,  4,  6,  8]],
		        [[ 3,  6,  9, 12]]],
		       [[[ 4,  8, 12, 16]],
		        [[ 5, 10, 15, 20]],
		        [[ 6, 12, 18, 24]]]])
	**/
	public function outer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		reduce(a, axis=0, dtype=None, out=None, keepdims=False)
		
		Reduces `a`'s dimension by one, by applying ufunc along one axis.
		
		Let :math:`a.shape = (N_0, ..., N_i, ..., N_{M-1})`.  Then
		:math:`ufunc.reduce(a, axis=i)[k_0, ..,k_{i-1}, k_{i+1}, .., k_{M-1}]` =
		the result of iterating `j` over :math:`range(N_i)`, cumulatively applying
		ufunc to each :math:`a[k_0, ..,k_{i-1}, j, k_{i+1}, .., k_{M-1}]`.
		For a one-dimensional array, reduce produces results equivalent to:
		::
		
		 r = op.identity # op = ufunc
		 for i in range(len(A)):
		   r = op(r, A[i])
		 return r
		
		For example, add.reduce() is equivalent to sum().
		
		Parameters
		----------
		a : array_like
		    The array to act on.
		axis : None or int or tuple of ints, optional
		    Axis or axes along which a reduction is performed.
		    The default (`axis` = 0) is perform a reduction over the first
		    dimension of the input array. `axis` may be negative, in
		    which case it counts from the last to the first axis.
		
		    .. versionadded:: 1.7.0
		
		    If this is `None`, a reduction is performed over all the axes.
		    If this is a tuple of ints, a reduction is performed on multiple
		    axes, instead of a single axis or all the axes as before.
		
		    For operations which are either not commutative or not associative,
		    doing a reduction over multiple axes is not well-defined. The
		    ufuncs do not currently raise an exception in this case, but will
		    likely do so in the future.
		dtype : data-type code, optional
		    The type used to represent the intermediate results. Defaults
		    to the data-type of the output array if this is provided, or
		    the data-type of the input array if no output array is provided.
		out : ndarray, optional
		    A location into which the result is stored. If not provided, a
		    freshly-allocated array is returned.
		keepdims : bool, optional
		    If this is set to True, the axes which are reduced are left
		    in the result as dimensions with size one. With this option,
		    the result will broadcast correctly against the original `arr`.
		
		    .. versionadded:: 1.7.0
		
		Returns
		-------
		r : ndarray
		    The reduced array. If `out` was supplied, `r` is a reference to it.
		
		Examples
		--------
		>>> np.multiply.reduce([2,3,5])
		30
		
		A multi-dimensional array example:
		
		>>> X = np.arange(8).reshape((2,2,2))
		>>> X
		array([[[0, 1],
		        [2, 3]],
		       [[4, 5],
		        [6, 7]]])
		>>> np.add.reduce(X, 0)
		array([[ 4,  6],
		       [ 8, 10]])
		>>> np.add.reduce(X) # confirm: default axis value is 0
		array([[ 4,  6],
		       [ 8, 10]])
		>>> np.add.reduce(X, 1)
		array([[ 2,  4],
		       [10, 12]])
		>>> np.add.reduce(X, 2)
		array([[ 1,  5],
		       [ 9, 13]])
	**/
	public function reduce(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		reduceat(a, indices, axis=0, dtype=None, out=None)
		
		Performs a (local) reduce with specified slices over a single axis.
		
		For i in ``range(len(indices))``, `reduceat` computes
		``ufunc.reduce(a[indices[i]:indices[i+1]])``, which becomes the i-th
		generalized "row" parallel to `axis` in the final result (i.e., in a
		2-D array, for example, if `axis = 0`, it becomes the i-th row, but if
		`axis = 1`, it becomes the i-th column).  There are three exceptions to this:
		
		* when ``i = len(indices) - 1`` (so for the last index),
		  ``indices[i+1] = a.shape[axis]``.
		* if ``indices[i] >= indices[i + 1]``, the i-th generalized "row" is
		  simply ``a[indices[i]]``.
		* if ``indices[i] >= len(a)`` or ``indices[i] < 0``, an error is raised.
		
		The shape of the output depends on the size of `indices`, and may be
		larger than `a` (this happens if ``len(indices) > a.shape[axis]``).
		
		Parameters
		----------
		a : array_like
		    The array to act on.
		indices : array_like
		    Paired indices, comma separated (not colon), specifying slices to
		    reduce.
		axis : int, optional
		    The axis along which to apply the reduceat.
		dtype : data-type code, optional
		    The type used to represent the intermediate results. Defaults
		    to the data type of the output array if this is provided, or
		    the data type of the input array if no output array is provided.
		out : ndarray, optional
		    A location into which the result is stored. If not provided a
		    freshly-allocated array is returned.
		
		Returns
		-------
		r : ndarray
		    The reduced values. If `out` was supplied, `r` is a reference to
		    `out`.
		
		Notes
		-----
		A descriptive example:
		
		If `a` is 1-D, the function `ufunc.accumulate(a)` is the same as
		``ufunc.reduceat(a, indices)[::2]`` where `indices` is
		``range(len(array) - 1)`` with a zero placed
		in every other element:
		``indices = zeros(2 * len(a) - 1)``, ``indices[1::2] = range(1, len(a))``.
		
		Don't be fooled by this attribute's name: `reduceat(a)` is not
		necessarily smaller than `a`.
		
		Examples
		--------
		To take the running sum of four successive values:
		
		>>> np.add.reduceat(np.arange(8),[0,4, 1,5, 2,6, 3,7])[::2]
		array([ 6, 10, 14, 18])
		
		A 2-D example:
		
		>>> x = np.linspace(0, 15, 16).reshape(4,4)
		>>> x
		array([[  0.,   1.,   2.,   3.],
		       [  4.,   5.,   6.,   7.],
		       [  8.,   9.,  10.,  11.],
		       [ 12.,  13.,  14.,  15.]])
		
		::
		
		 # reduce such that the result has the following five rows:
		 # [row1 + row2 + row3]
		 # [row4]
		 # [row2]
		 # [row3]
		 # [row1 + row2 + row3 + row4]
		
		>>> np.add.reduceat(x, [0, 3, 1, 2, 0])
		array([[ 12.,  15.,  18.,  21.],
		       [ 12.,  13.,  14.,  15.],
		       [  4.,   5.,   6.,   7.],
		       [  8.,   9.,  10.,  11.],
		       [ 24.,  28.,  32.,  36.]])
		
		::
		
		 # reduce such that result has the following two columns:
		 # [col1 * col2 * col3, col4]
		
		>>> np.multiply.reduceat(x, [0, 3], 1)
		array([[    0.,     3.],
		       [  120.,     7.],
		       [  720.,    11.],
		       [ 2184.,    15.]])
	**/
	public function reduceat(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var signature : Dynamic;
	/**
		Returns a list with types grouped input->output.
		
		Data attribute listing the data-type "Domain-Range" groupings the ufunc can
		deliver. The data-types are given using the character codes.
		
		See Also
		--------
		numpy.ufunc.ntypes
		
		Examples
		--------
		>>> np.add.types
		['??->?', 'bb->b', 'BB->B', 'hh->h', 'HH->H', 'ii->i', 'II->I', 'll->l',
		'LL->L', 'qq->q', 'QQ->Q', 'ff->f', 'dd->d', 'gg->g', 'FF->F', 'DD->D',
		'GG->G', 'OO->O']
		
		>>> np.multiply.types
		['??->?', 'bb->b', 'BB->B', 'hh->h', 'HH->H', 'ii->i', 'II->I', 'll->l',
		'LL->L', 'qq->q', 'QQ->Q', 'ff->f', 'dd->d', 'gg->g', 'FF->F', 'DD->D',
		'GG->G', 'OO->O']
		
		>>> np.power.types
		['bb->b', 'BB->B', 'hh->h', 'HH->H', 'ii->i', 'II->I', 'll->l', 'LL->L',
		'qq->q', 'QQ->Q', 'ff->f', 'dd->d', 'gg->g', 'FF->F', 'DD->D', 'GG->G',
		'OO->O']
		
		>>> np.exp.types
		['f->f', 'd->d', 'g->g', 'F->F', 'D->D', 'G->G', 'O->O']
		
		>>> np.remainder.types
		['bb->b', 'BB->B', 'hh->h', 'HH->H', 'ii->i', 'II->I', 'll->l', 'LL->L',
		'qq->q', 'QQ->Q', 'ff->f', 'dd->d', 'gg->g', 'OO->O']
	**/
	public var types : Dynamic;
}