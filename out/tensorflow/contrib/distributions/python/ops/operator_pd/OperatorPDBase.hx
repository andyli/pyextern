/* This file is generated, do not edit! */
package tensorflow.contrib.distributions.python.ops.operator_pd;
@:pythonImport("tensorflow.contrib.distributions.python.ops.operator_pd", "OperatorPDBase") extern class OperatorPDBase {
	static public var __abstractmethods__ : Dynamic;
	/**
		Metaclass for defining Abstract Base Classes (ABCs).
		
		Use this metaclass to create an ABC.  An ABC can be subclassed
		directly, and then acts as a mix-in class.  You can also register
		unrelated concrete classes (even built-in classes) and unrelated
		ABCs as 'virtual subclasses' -- these and their descendants will
		be considered subclasses of the registering ABC by the built-in
		issubclass() function, but the registering ABC won't show up in
		their MRO (Method Resolution Order) nor will method
		implementations defined by the registering ABC be callable (not
		even via super()).
	**/
	static public function __class__(name:Dynamic, bases:Dynamic, namespace:Dynamic):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
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
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Void;
	/**
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
	/**
		Return self<value.
	**/
	public function __lt__(value:Dynamic):Dynamic;
	static public var __module__ : Dynamic;
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
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	static public var _abc_cache : Dynamic;
	static public var _abc_negative_cache : Dynamic;
	static public var _abc_negative_cache_version : Dynamic;
	static public var _abc_registry : Dynamic;
	public function _add_to_tensor(mat:Dynamic):Dynamic;
	public function _batch_log_det():Dynamic;
	public function _batch_matmul(x:Dynamic, ?transpose_x:Dynamic):Dynamic;
	public function _batch_solve(rhs:Dynamic):Dynamic;
	public function _batch_sqrt_log_det():Dynamic;
	public function _batch_sqrt_matmul(x:Dynamic, ?transpose_x:Dynamic):Dynamic;
	public function _batch_sqrt_solve(rhs:Dynamic):Dynamic;
	public function _det():Dynamic;
	/**
		Helper to automatically call batch or singleton operation.
	**/
	public function _dispatch_based_on_batch(batch_method:Dynamic, singleton_method:Dynamic, ?args:python.KwArgs<Dynamic>):Dynamic;
	public function _inv_quadratic_form_on_vectors(x:Dynamic):Dynamic;
	/**
		Get the inverse quadratic form on vectors via a solve.
	**/
	public function _iqfov_via_solve(x:Dynamic):Dynamic;
	/**
		Get the inverse quadratic form on vectors via a sqrt_solve.
	**/
	public function _iqfov_via_sqrt_solve(x:Dynamic):Dynamic;
	public function _log_det():Dynamic;
	public function _matmul(x:Dynamic, ?transpose_x:Dynamic):Dynamic;
	public function _shape():Dynamic;
	public function _solve(rhs:Dynamic):Dynamic;
	public function _sqrt_log_det():Dynamic;
	public function _sqrt_matmul(x:Dynamic, ?transpose_x:Dynamic):Dynamic;
	public function _sqrt_solve(rhs:Dynamic):Dynamic;
	public function _sqrt_to_dense():Dynamic;
	public function _to_dense():Dynamic;
	/**
		Add matrix represented by this operator to `mat`.  Equiv to `A + mat`.
		
		Args:
		  mat:  `Tensor` with same `dtype` and shape broadcastable to `self`.
		  name:  A name to give this `Op`.
		
		Returns:
		  A `Tensor` with broadcast shape and same `dtype` as `self`.
	**/
	public function add_to_tensor(mat:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Shape of batches associated with this operator.
		
		If this operator represents the batch matrix `A` with
		`A.shape = [N1,...,Nn, k, k]`, the `batch_shape` is `[N1,...,Nn]`.
		
		Args:
		  name:  A name scope to use for ops added by this method.
		
		Returns:
		  `int32` `Tensor`
	**/
	public function batch_shape(?name:Dynamic):Dynamic;
	/**
		Determinant for every batch member.
		
		Args:
		  name:  A name scope to use for ops added by this method.
		
		Returns:
		  Determinant for every batch member.
	**/
	public function det(?name:Dynamic):Dynamic;
	/**
		Data type of matrix elements of `A`.
	**/
	public var dtype : Dynamic;
	/**
		`TensorShape` with batch shape.  Statically determined if possible.
		
		If this operator represents the batch matrix `A` with
		`A.shape = [N1,...,Nn, k, k]`, then this returns `TensorShape([N1,...,Nn])`
		
		Returns:
		  `TensorShape`, statically determined, may be undefined.
	**/
	public function get_batch_shape():Dynamic;
	/**
		Static `TensorShape` of entire operator.
		
		If this operator represents the batch matrix `A` with
		`A.shape = [N1,...,Nn, k, k]`, then this returns
		`TensorShape([N1,...,Nn, k, k])`
		
		Returns:
		  `TensorShape`, statically determined, may be undefined.
	**/
	public function get_shape():Dynamic;
	/**
		`TensorShape` of vectors this operator will work with.
		
		If this operator represents the batch matrix `A` with
		`A.shape = [N1,...,Nn, k, k]`, then this returns
		`TensorShape([N1,...,Nn, k])`
		
		Returns:
		  `TensorShape`, statically determined, may be undefined.
	**/
	public function get_vector_shape():Dynamic;
	/**
		List of tensors that were provided as initialization inputs.
	**/
	public var inputs : Dynamic;
	/**
		Compute the quadratic form: `x^T A^{-1} x` where `x` is a batch vector.
		
		`x` is a batch vector with compatible shape if
		
		```
		self.shape = [N1,...,Nn] + [k, k]
		x.shape = [M1,...,Mm] + [N1,...,Nn] + [k]
		```
		
		Args:
		  x: `Tensor` with compatible batch vector shape and same `dtype` as self.
		  name:  A name scope to use for ops added by this method.
		
		Returns:
		  `Tensor` with shape `[M1,...,Mm] + [N1,...,Nn]` and same `dtype`
		    as `self`.
	**/
	public function inv_quadratic_form_on_vectors(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Log of the determinant for every batch member.
		
		Args:
		  name:  A name scope to use for ops added by this method.
		
		Returns:
		  Logarithm of determinant for every batch member.
	**/
	public function log_det(?name:Dynamic):Dynamic;
	/**
		Left (batch) matmul `x` by this matrix:  `Ax`.
		
		`x` is a batch matrix with compatible shape if
		
		```
		self.shape = [N1,...,Nn] + [k, k]
		x.shape = [N1,...,Nn] + [k, r]
		```
		
		Args:
		  x: `Tensor` with shape `self.batch_shape + [k, r]` and same `dtype` as
		    this `Operator`.
		  transpose_x: If `True`, `x` is transposed before multiplication.
		  name:  A name to give this `Op`.
		
		Returns:
		  A result equivalent to `tf.batch_matmul(self.to_dense(), x)`.
	**/
	public function matmul(x:Dynamic, ?transpose_x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		String name identifying this `Operator`.
	**/
	public var name : Dynamic;
	/**
		Tensor rank.  Equivalent to `tf.rank(A)`.  Will equal `n + 2`.
		
		If this operator represents the batch matrix `A` with
		`A.shape = [N1,...,Nn, k, k]`, the `rank` is `n + 2`.
		
		Args:
		  name:  A name scope to use for ops added by this method.
		
		Returns:
		  `int32` `Tensor`
	**/
	public function rank(?name:Dynamic):Dynamic;
	/**
		Equivalent to `tf.shape(A).`  Equal to `[N1,...,Nn, k, k]`, `n >= 0`.
		
		Args:
		  name:  A name scope to use for ops added by this method.
		
		Returns:
		  `int32` `Tensor`
	**/
	public function shape(?name:Dynamic):Dynamic;
	/**
		Solve `r` batch systems: `A X = rhs`.
		
		`rhs` is a batch matrix with compatible shape if
		
		```python
		self.shape = [N1,...,Nn] + [k, k]
		rhs.shape = [N1,...,Nn] + [k, r]
		```
		
		For every batch member, this is done in `O(r*k^2)` complexity using back
		substitution.
		
		```python
		# Solve one linear system (r = 1) for every member of the length 10 batch.
		A = ... # shape 10 x 2 x 2
		RHS = ... # shape 10 x 2 x 1
		operator.shape # = 10 x 2 x 2
		X = operator.squrt_solve(RHS)  # shape 10 x 2 x 1
		# operator.squrt_matmul(X) ~ RHS
		X[3, :, 0]  # Solution to the linear system A[3, :, :] x = RHS[3, :, 0]
		
		# Solve five linear systems (r = 5) for every member of the length 10 batch.
		operator.shape # = 10 x 2 x 2
		RHS = ... # shape 10 x 2 x 5
		...
		X[3, :, 2]  # Solution to the linear system A[3, :, :] x = RHS[3, :, 2]
		```
		
		Args:
		  rhs: `Tensor` with same `dtype` as this operator and compatible shape,
		    `rhs.shape = self.shape[:-1] + [r]` for `r >= 1`.
		  name:  A name scope to use for ops added by this method.
		
		Returns:
		  `Tensor` with same `dtype` and shape as `x`.
	**/
	public function solve(rhs:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Log of the determinant of the sqrt `S` for every batch member.
		
		Args:
		  name:  A name scope to use for ops added by this method.
		
		Returns:
		  Logarithm of determinant of the square root `S` for every batch member.
	**/
	public function sqrt_log_det(?name:Dynamic):Dynamic;
	/**
		Left (batch) matmul `x` by a sqrt of this matrix: `Sx` where `A = S S^T`.
		
		`x` is a batch matrix with compatible shape if
		
		```
		self.shape = [N1,...,Nn] + [k, k]
		x.shape = [N1,...,Nn] + [k, r]
		```
		
		Args:
		  x: `Tensor` with shape `self.batch_shape + [k, r]` and same `dtype` as
		    this `Operator`.
		  transpose_x: If `True`, `x` is transposed before multiplication.
		  name:  A name scope to use for ops added by this method.
		
		Returns:
		  A result equivalent to `tf.batch_matmul(self.sqrt_to_dense(), x)`.
	**/
	public function sqrt_matmul(x:Dynamic, ?transpose_x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Solve `r` batch systems involving sqrt: `S X = rhs` where `A = SS^T`.
		
		`rhs` is a batch matrix with compatible shape if
		
		```python
		self.shape = [N1,...,Nn] + [k, k]
		rhs.shape = [N1,...,Nn] + [k, r]
		```
		
		For every batch member, this is done in `O(r*k^2)` complexity using back
		substitution.
		
		```python
		# Solve one linear system (r = 1) for every member of the length 10 batch.
		A = ... # shape 10 x 2 x 2
		RHS = ... # shape 10 x 2 x 1
		operator.shape # = 10 x 2 x 2
		X = operator.squrt_solve(RHS)  # shape 10 x 2 x 1
		# operator.squrt_matmul(X) ~ RHS
		X[3, :, 0]  # Solution to the linear system S[3, :, :] x = RHS[3, :, 0]
		
		# Solve five linear systems (r = 5) for every member of the length 10 batch.
		operator.shape # = 10 x 2 x 2
		RHS = ... # shape 10 x 2 x 5
		...
		X[3, :, 2]  # Solution to the linear system S[3, :, :] x = RHS[3, :, 2]
		```
		
		Args:
		  rhs: `Tensor` with same `dtype` as this operator and compatible shape,
		    `rhs.shape = self.shape[:-1] + [r]` for `r >= 1`.
		  name:  A name scope to use for ops added by this method.
		
		Returns:
		  `Tensor` with same `dtype` and shape as `x`.
	**/
	public function sqrt_solve(rhs:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Return a dense (batch) matrix representing sqrt of this operator.
	**/
	public function sqrt_to_dense(?name:Dynamic):Dynamic;
	/**
		Return a dense (batch) matrix representing this operator.
	**/
	public function to_dense(?name:Dynamic):Dynamic;
	/**
		Shape of (batch) vectors that this (batch) matrix will multiply.
		
		If this operator represents the batch matrix `A` with
		`A.shape = [N1,...,Nn, k, k]`, the `vector_shape` is `[N1,...,Nn, k]`.
		
		Args:
		  name:  A name scope to use for ops added by this method.
		
		Returns:
		  `int32` `Tensor`
	**/
	public function vector_shape(?name:Dynamic):Dynamic;
	/**
		Dimension of vector space on which this acts.  The `k` in `R^k`.
		
		If this operator represents the batch matrix `A` with
		`A.shape = [N1,...,Nn, k, k]`, the `vector_space_dimension` is `k`.
		
		Args:
		  name:  A name scope to use for ops added by this method.
		
		Returns:
		  `int32` `Tensor`
	**/
	public function vector_space_dimension(?name:Dynamic):Dynamic;
	/**
		Whether to verify that this `Operator` is positive definite.
	**/
	public var verify_pd : Dynamic;
}