/* This file is generated, do not edit! */
package theano.tensor.raw_random;
@:pythonImport("theano.tensor.raw_random") extern class Raw_random_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __docformat__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Return indices over each shape that broadcast them to match out_shape.
		
		The first returned list is equivalent to numpy.ndindex(out_shape),
		the other returned lists are indices corresponding to the other shapes,
		such that looping over these indices produce tensors of shape out_shape.
		In particular, the indices over broadcasted dimensions should all be 0.
		
		The shapes should have the same length as out_shape. If they are longer,
		the right-most dimensions are ignored.
	**/
	static public function _generate_broadcasting_indices(out_shape:Dynamic, ?shapes:python.VarArgs<Dynamic>):Dynamic;
	/**
		Infer the number of dimensions from the shape or the other arguments.
		
		Returns
		-------
		(int, variable, tuple) triple, where the variable is an integer vector,
		and the tuple contains Booleans
		    The first element returned is the inferred number of dimensions.
		    The second element is the shape inferred (combining symbolic and
		    constant informations from shape and args).
		    The third element is a broadcasting pattern corresponding to that shape.
	**/
	static public function _infer_ndim_bcast(ndim:Dynamic, shape:Dynamic, ?args:python.VarArgs<Dynamic>):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Sample n times with probability of success prob for each trial,
		return the number of successes.
		
		If the size argument is ambiguous on the number of dimensions, ndim
		may be a plain integer to supplement the missing information.
		
		If size is None, the output shape will be determined by the shapes
		of n and prob.
	**/
	static public function binomial(random_state:Dynamic, ?size:Dynamic, ?n:Dynamic, ?p:Dynamic, ?ndim:Dynamic, ?dtype:Dynamic, ?prob:Dynamic):Dynamic;
	/**
		Choose values from `a` with or without replacement. `a` can be a 1-D array
		or a positive scalar. If `a` is a scalar, the samples are drawn from the
		range 0,...,a-1.
		
		If the size argument is ambiguous on the number of dimensions, ndim
		may be a plain integer to supplement the missing information.
		
		If size is None, a scalar will be returned.
	**/
	static public function choice(random_state:Dynamic, ?size:Dynamic, ?a:Dynamic, ?replace:Dynamic, ?p:Dynamic, ?ndim:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Helper function to draw random numbers using numpy's choice function.
		
		This is a generalization of numpy.random.choice that coerces
		`replace` to a bool and replaces `p` with None when p is a vector
		of 0 elements.
	**/
	static public function choice_helper(random_state:Dynamic, a:Dynamic, replace:Dynamic, p:Dynamic, size:Dynamic):Dynamic;
	/**
		Shallow copy operation on arbitrary Python objects.
		
		See the module's __doc__ string for more info.
	**/
	static public function copy(x:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Sample from one or more multinomial distributions defined by
		one-dimensional slices in pvals.
		
		Parameters
		----------
		pvals
		    A tensor of shape "nmulti+(L,)" describing each multinomial
		    distribution.  This tensor must have the property that
		    numpy.allclose(pvals.sum(axis=-1), 1) is true.
		size
		    A vector of shape information for the output; this can also
		    specify the "nmulti" part of pvals' shape.  A -1 in the k'th position
		    from the right means to borrow the k'th position from the
		    right in nmulti. (See examples below.)
		    Default ``None`` means size=nmulti.
		n
		    The number of experiments to simulate for each
		    multinomial. This can be a scalar, or tensor, it will be
		    broadcasted to have shape "nmulti".
		dtype
		    The dtype of the return value (which will represent counts)
		
		Returns
		-------
		tensor
		    Tensor of len(size)+1 dimensions, and shape[-1]==L, with
		    the specified ``dtype``, with the experiment counts. See
		    examples to understand the shape of the return value, which is
		    derived from both size and pvals.shape. In return value rval,
		    "numpy.allclose(rval.sum(axis=-1), n)" will be true.
		
		Extended Summary
		----------------
		For example, to simulate n experiments from each multinomial in a batch of
		size B:
		
		    size=None, pvals.shape=(B,L) --> rval.shape=[B,L]
		
		    rval[i,j] is the count of possibility j in the i'th distribution (row)
		    in pvals.
		
		Using size:
		
		    size=(1,-1), pvals.shape=(A,B,L)
		    --> rval.shape=[1,B,L], and requires that A==1.
		
		    rval[k,i,j] is the count of possibility j in the distribution specified
		    by pvals[k,i].
		
		Using size for broadcasting of pvals:
		
		    size=(10, 1, -1), pvals.shape=(A, B, L)
		    --> rval.shape=[10,1,B,L], and requires that A==1.
		
		    rval[l,k,i,j] is the count of possibility j in the
		    distribution specified by pvals[k,i], in the l'th of 10
		    draws.
	**/
	static public function multinomial(random_state:Dynamic, ?size:Dynamic, ?n:Dynamic, ?pvals:Dynamic, ?ndim:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Helper function drawing from multinomial distributions.
		
		This is a generalization of numpy.random.multinomial to the case where
		n and pvals are tensors.
	**/
	static public function multinomial_helper(random_state:Dynamic, n:Dynamic, pvals:Dynamic, size:Dynamic):Dynamic;
	/**
		Sample from a normal distribution centered on avg with
		the specified standard deviation (std).
		
		If the size argument is ambiguous on the number of dimensions, ndim
		may be a plain integer to supplement the missing information.
		
		If size is None, the output shape will be determined by the shapes
		of avg and std.
		
		If dtype is not specified, it will be inferred from the dtype of
		avg and std, but will be at least as precise as floatX.
	**/
	static public function normal(random_state:Dynamic, ?size:Dynamic, ?avg:Dynamic, ?std:Dynamic, ?ndim:Dynamic, ?dtype:Dynamic):Dynamic;
	static public var optdb : Dynamic;
	/**
		Return permutations of the integers between 0 and n-1.
		
		Returns them as many times as required by size. For instance, if size=(p,q),
		p*q permutations will be generated, and the output shape will be (p,q,n),
		because each permutation is of size n.
		
		Theano tries to infer the number of dimensions from the length of
		the size argument and the shape of n, but you may always specify it
		with the `ndim` parameter.
		
		Notes
		-----
		Note that the output will then be of dimension ndim+1.
	**/
	static public function permutation(random_state:Dynamic, ?size:Dynamic, ?n:Dynamic, ?ndim:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Helper function to generate permutations from integers.
		
		permutation_helper(random_state, n, (1,)) will generate a permutation of
		integers 0..n-1.
		In general, it will generate as many such permutation as required by shape.
		For instance, if shape=(p,q), p*q permutations will be generated, and the
		output shape will be (p,q,n), because each permutation is of size n.
		
		If you wish to perform a permutation of the elements of an existing vector,
		see shuffle_row_elements.
		
		This is a generalization of numpy.random.permutation to tensors.
		Otherwise it behaves the same.
	**/
	static public function permutation_helper(random_state:Dynamic, n:Dynamic, shape:Dynamic):Dynamic;
	/**
		Draw samples from a Poisson distribution.
		
		The Poisson distribution is the limit of the Binomial distribution for
		large N.
		
		Parameters
		----------
		lam : float or ndarray-like of the same shape as size parameter
		    Expectation of interval, should be >= 0.
		size: int or tuple of ints, optional
		    Output shape. If the given shape is, e.g., (m, n, k), then m * n * k
		    samples are drawn.
		dtype
		    The dtype of the return value (which will represent counts).
		
		size or ndim must be given.
	**/
	static public function poisson(random_state:Dynamic, ?size:Dynamic, ?lam:Dynamic, ?ndim:Dynamic, ?dtype:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Sample a random integer between low and high, both inclusive.
		
		If the size argument is ambiguous on the number of dimensions, ndim
		may be a plain integer to supplement the missing information.
		
		If size is None, the output shape will be determined by the shapes
		of low and high.
	**/
	static public function random_integers(random_state:Dynamic, ?size:Dynamic, ?low:Dynamic, ?high:Dynamic, ?ndim:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Helper function to draw random integers.
		
		This is a generalization of numpy.random.random_integers to the case where
		low and high are tensors.
		
		Since random_integers is deprecated it calls randint() instead.
	**/
	static public function random_integers_helper(random_state:Dynamic, low:Dynamic, high:Dynamic, size:Dynamic):Dynamic;
	static public var random_make_inplace : Dynamic;
	static public function random_state_type(?name:Dynamic):Dynamic;
	/**
		reduce(function, sequence[, initial]) -> value
		
		Apply a function of two arguments cumulatively to the items of a sequence,
		from left to right, so as to reduce the sequence to a single value.
		For example, reduce(lambda x, y: x+y, [1, 2, 3, 4, 5]) calculates
		((((1+2)+3)+4)+5).  If initial is present, it is placed before the items
		of the sequence in the calculation, and serves as a default when the
		sequence is empty.
	**/
	static public function reduce(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var string_types : Dynamic;
	/**
		Sample from a uniform distribution between low and high.
		
		If the size argument is ambiguous on the number of dimensions, ndim
		may be a plain integer to supplement the missing information.
		
		If size is None, the output shape will be determined by the shapes
		of low and high.
		
		If dtype is not specified, it will be inferred from the dtype of
		low and high, but will be at least as precise as floatX.
	**/
	static public function uniform(random_state:Dynamic, ?size:Dynamic, ?low:Dynamic, ?high:Dynamic, ?ndim:Dynamic, ?dtype:Dynamic):Dynamic;
}