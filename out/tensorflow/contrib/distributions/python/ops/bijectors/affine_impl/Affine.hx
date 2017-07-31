/* This file is generated, do not edit! */
package tensorflow.contrib.distributions.python.ops.bijectors.affine_impl;
@:pythonImport("tensorflow.contrib.distributions.python.ops.bijectors.affine_impl", "Affine") extern class Affine {
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
	static public function __class__(name:Dynamic, bases:Dynamic, namespace:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		Instantiates the `Affine` bijector.
		
		This `Bijector` is initialized with `shift` `Tensor` and `scale` arguments,
		giving the forward operation:
		
		```none
		Y = g(X) = scale @ X + shift
		```
		
		where the `scale` term is logically equivalent to:
		
		```python
		scale = (
		  scale_identity_multiplier * tf.diag(tf.ones(d)) +
		  tf.diag(scale_diag) +
		  scale_tril +
		  scale_perturb_factor @ diag(scale_perturb_diag) @
		    tf.transpose([scale_perturb_factor])
		)
		```
		
		If none of `scale_identity_multiplier`, `scale_diag`, or `scale_tril` are
		specified then `scale += IdentityMatrix`. Otherwise specifying a
		`scale` argument has the semantics of `scale += Expand(arg)`, i.e.,
		`scale_diag != None` means `scale += tf.diag(scale_diag)`.
		
		Args:
		  shift: Floating-point `Tensor`. If this is set to `None`, no shift is
		    applied.
		  scale_identity_multiplier: floating point rank 0 `Tensor` representing a
		    scaling done to the identity matrix.
		    When `scale_identity_multiplier = scale_diag = scale_tril = None` then
		    `scale += IdentityMatrix`. Otherwise no scaled-identity-matrix is added
		    to `scale`.
		  scale_diag: Floating-point `Tensor` representing the diagonal matrix.
		    `scale_diag` has shape [N1, N2, ...  k], which represents a k x k
		    diagonal matrix.
		    When `None` no diagonal term is added to `scale`.
		  scale_tril: Floating-point `Tensor` representing the diagonal matrix.
		    `scale_diag` has shape [N1, N2, ...  k, k], which represents a k x k
		    lower triangular matrix.
		    When `None` no `scale_tril` term is added to `scale`.
		    The upper triangular elements above the diagonal are ignored.
		  scale_perturb_factor: Floating-point `Tensor` representing factor matrix
		    with last two dimensions of shape `(k, r)`. When `None`, no rank-r
		    update is added to `scale`.
		  scale_perturb_diag: Floating-point `Tensor` representing the diagonal
		    matrix. `scale_perturb_diag` has shape [N1, N2, ...  r], which
		    represents an `r x r` diagonal matrix. When `None` low rank updates will
		    take the form `scale_perturb_factor * scale_perturb_factor.T`.
		  event_ndims: Scalar `int32` `Tensor` indicating the number of dimensions
		    associated with a particular draw from the distribution. Must be 0 or 1.
		  validate_args: Python `bool` indicating whether arguments should be
		    checked for correctness.
		  name: Python `str` name given to ops managed by this object.
		
		Raises:
		  ValueError: if `perturb_diag` is specified but not `perturb_factor`.
		  TypeError: if `shift` has different `dtype` from `scale` arguments.
	**/
	@:native("__init__")
	public function ___init__(?shift:Dynamic, ?scale_identity_multiplier:Dynamic, ?scale_diag:Dynamic, ?scale_tril:Dynamic, ?scale_perturb_factor:Dynamic, ?scale_perturb_diag:Dynamic, ?event_ndims:Dynamic, ?validate_args:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Instantiates the `Affine` bijector.
		
		This `Bijector` is initialized with `shift` `Tensor` and `scale` arguments,
		giving the forward operation:
		
		```none
		Y = g(X) = scale @ X + shift
		```
		
		where the `scale` term is logically equivalent to:
		
		```python
		scale = (
		  scale_identity_multiplier * tf.diag(tf.ones(d)) +
		  tf.diag(scale_diag) +
		  scale_tril +
		  scale_perturb_factor @ diag(scale_perturb_diag) @
		    tf.transpose([scale_perturb_factor])
		)
		```
		
		If none of `scale_identity_multiplier`, `scale_diag`, or `scale_tril` are
		specified then `scale += IdentityMatrix`. Otherwise specifying a
		`scale` argument has the semantics of `scale += Expand(arg)`, i.e.,
		`scale_diag != None` means `scale += tf.diag(scale_diag)`.
		
		Args:
		  shift: Floating-point `Tensor`. If this is set to `None`, no shift is
		    applied.
		  scale_identity_multiplier: floating point rank 0 `Tensor` representing a
		    scaling done to the identity matrix.
		    When `scale_identity_multiplier = scale_diag = scale_tril = None` then
		    `scale += IdentityMatrix`. Otherwise no scaled-identity-matrix is added
		    to `scale`.
		  scale_diag: Floating-point `Tensor` representing the diagonal matrix.
		    `scale_diag` has shape [N1, N2, ...  k], which represents a k x k
		    diagonal matrix.
		    When `None` no diagonal term is added to `scale`.
		  scale_tril: Floating-point `Tensor` representing the diagonal matrix.
		    `scale_diag` has shape [N1, N2, ...  k, k], which represents a k x k
		    lower triangular matrix.
		    When `None` no `scale_tril` term is added to `scale`.
		    The upper triangular elements above the diagonal are ignored.
		  scale_perturb_factor: Floating-point `Tensor` representing factor matrix
		    with last two dimensions of shape `(k, r)`. When `None`, no rank-r
		    update is added to `scale`.
		  scale_perturb_diag: Floating-point `Tensor` representing the diagonal
		    matrix. `scale_perturb_diag` has shape [N1, N2, ...  r], which
		    represents an `r x r` diagonal matrix. When `None` low rank updates will
		    take the form `scale_perturb_factor * scale_perturb_factor.T`.
		  event_ndims: Scalar `int32` `Tensor` indicating the number of dimensions
		    associated with a particular draw from the distribution. Must be 0 or 1.
		  validate_args: Python `bool` indicating whether arguments should be
		    checked for correctness.
		  name: Python `str` name given to ops managed by this object.
		
		Raises:
		  ValueError: if `perturb_diag` is specified but not `perturb_factor`.
		  TypeError: if `shift` has different `dtype` from `scale` arguments.
	**/
	public function new(?shift:Dynamic, ?scale_identity_multiplier:Dynamic, ?scale_diag:Dynamic, ?scale_tril:Dynamic, ?scale_perturb_factor:Dynamic, ?scale_perturb_diag:Dynamic, ?event_ndims:Dynamic, ?validate_args:Dynamic, ?name:Dynamic):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	static public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	/**
		Helper which stores mapping info in forward/inverse dicts.
	**/
	public function _cache(mapping:Dynamic):Dynamic;
	public function _call_forward(x:Dynamic, name:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function _call_forward_log_det_jacobian(x:Dynamic, name:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function _call_inverse(y:Dynamic, name:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function _call_inverse_log_det_jacobian(y:Dynamic, name:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Construct `scale` from various components.
		
		Args:
		  identity_multiplier: floating point rank 0 `Tensor` representing a scaling
		    done to the identity matrix.
		  diag: Floating-point `Tensor` representing the diagonal matrix.
		    `scale_diag` has shape [N1, N2, ...  k], which represents a k x k
		    diagonal matrix.
		  tril: Floating-point `Tensor` representing the diagonal matrix.
		    `scale_tril` has shape [N1, N2, ...  k], which represents a k x k lower
		    triangular matrix.
		  perturb_diag: Floating-point `Tensor` representing the diagonal matrix of
		    the low rank update.
		  perturb_factor: Floating-point `Tensor` representing factor matrix.
		  event_ndims: Scalar `int32` `Tensor` indicating the number of dimensions
		    associated with a particular draw from the distribution. Must be 0 or 1
		  validate_args: Python `bool` indicating whether arguments should be
		    checked for correctness.
		
		Returns:
		  scale. In the case of scaling by a constant, scale is a
		  floating point `Tensor`. Otherwise, scale is an `OperatorPD`.
		
		Raises:
		  ValueError: if all of `tril`, `diag` and `identity_multiplier` are `None`.
	**/
	public function _create_scale_operator(identity_multiplier:Dynamic, diag:Dynamic, tril:Dynamic, perturb_diag:Dynamic, perturb_factor:Dynamic, event_ndims:Dynamic, validate_args:Dynamic):Dynamic;
	/**
		Return a 1D `int32` tensor: `range(rank(sample))[-event_ndims:]`.
	**/
	public function _event_dims_tensor(sample:Dynamic):Dynamic;
	/**
		Subclass implementation for `forward` public function.
	**/
	public function _forward(x:Dynamic):Dynamic;
	/**
		Subclass implementation for `forward_event_shape` public function.
	**/
	public function _forward_event_shape(input_shape:Dynamic):Dynamic;
	/**
		Subclass implementation for `forward_event_shape_tensor` function.
	**/
	public function _forward_event_shape_tensor(input_shape:Dynamic):Dynamic;
	/**
		Subclass implementation of `forward_log_det_jacobian`.
	**/
	public function _forward_log_det_jacobian(x:Dynamic):Dynamic;
	/**
		Return batch_ndims.
	**/
	public function _infer_batch_ndims():Dynamic;
	/**
		Subclass implementation for `inverse` public function.
	**/
	public function _inverse(y:Dynamic):Dynamic;
	/**
		Subclass implementation for `inverse_event_shape` public function.
	**/
	public function _inverse_event_shape(output_shape:Dynamic):Dynamic;
	/**
		Subclass implementation for `inverse_event_shape_tensor` function.
	**/
	public function _inverse_event_shape_tensor(output_shape:Dynamic):Dynamic;
	/**
		Subclass implementation of `inverse_log_det_jacobian` public function.
	**/
	public function _inverse_log_det_jacobian(y:Dynamic):Dynamic;
	/**
		Helper which retrieves mapping info from forward/inverse dicts.
	**/
	public function _lookup(?x:Dynamic, ?y:Dynamic, ?kwargs:Dynamic):Dynamic;
	/**
		Helper to check dtype when self.dtype is known.
	**/
	public function _maybe_assert_dtype(x:Dynamic):Dynamic;
	/**
		Check that the init arg `identity_multiplier` is valid.
	**/
	public function _maybe_validate_identity_multiplier(identity_multiplier:Dynamic, validate_args:Dynamic):Dynamic;
	/**
		Helper function to standardize op scope.
	**/
	public function _name_scope(?name:Dynamic, ?values:Dynamic):Dynamic;
	/**
		Helper to preprocess a diagonal matrix.
	**/
	public function _preprocess_diag(identity_multiplier:Dynamic, diag:Dynamic, event_ndims:Dynamic):Dynamic;
	/**
		Helper to preprocess a lower triangular matrix.
	**/
	public function _preprocess_tril(identity_multiplier:Dynamic, diag:Dynamic, tril:Dynamic, event_ndims:Dynamic):Dynamic;
	/**
		Helper to __init__ which gets matrix in batch-ready form.
	**/
	public function _process_matrix(matrix:Dynamic, min_rank:Dynamic, event_ndims:Dynamic):Dynamic;
	/**
		dtype of `Tensor`s transformable by this distribution.
	**/
	public var dtype : Dynamic;
	/**
		Returns then number of event dimensions this bijector operates on.
	**/
	public var event_ndims : Dynamic;
	/**
		Returns the forward `Bijector` evaluation, i.e., X = g(Y).
		
		Args:
		  x: `Tensor`. The input to the "forward" evaluation.
		  name: The name to give this op.
		
		Returns:
		  `Tensor`.
		
		Raises:
		  TypeError: if `self.dtype` is specified and `x.dtype` is not
		    `self.dtype`.
		  NotImplementedError: if `_forward` is not implemented.
	**/
	public function forward(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Shape of a single sample from a single batch as a `TensorShape`.
		
		Same meaning as `forward_event_shape_tensor`. May be only partially defined.
		
		Args:
		  input_shape: `TensorShape` indicating event-portion shape passed into
		    `forward` function.
		
		Returns:
		  forward_event_shape_tensor: `TensorShape` indicating event-portion shape
		    after applying `forward`. Possibly unknown.
	**/
	public function forward_event_shape(input_shape:Dynamic):Dynamic;
	/**
		Shape of a single sample from a single batch as an `int32` 1D `Tensor`.
		
		Args:
		  input_shape: `Tensor`, `int32` vector indicating event-portion shape
		    passed into `forward` function.
		  name: name to give to the op
		
		Returns:
		  forward_event_shape_tensor: `Tensor`, `int32` vector indicating
		    event-portion shape after applying `forward`.
	**/
	public function forward_event_shape_tensor(input_shape:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns both the forward_log_det_jacobian.
		
		Args:
		  x: `Tensor`. The input to the "forward" Jacobian evaluation.
		  name: The name to give this op.
		
		Returns:
		  `Tensor`.
		
		Raises:
		  TypeError: if `self.dtype` is specified and `y.dtype` is not
		    `self.dtype`.
		  NotImplementedError: if neither `_forward_log_det_jacobian`
		    nor {`_inverse`, `_inverse_log_det_jacobian`} are implemented.
	**/
	public function forward_log_det_jacobian(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns this `Bijector`'s graph_parents as a Python list.
	**/
	public var graph_parents : Dynamic;
	/**
		Returns the inverse `Bijector` evaluation, i.e., X = g^{-1}(Y).
		
		Args:
		  y: `Tensor`. The input to the "inverse" evaluation.
		  name: The name to give this op.
		
		Returns:
		  `Tensor`.
		
		Raises:
		  TypeError: if `self.dtype` is specified and `y.dtype` is not
		    `self.dtype`.
		  NotImplementedError: if `_inverse` is not implemented.
	**/
	public function inverse(y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Shape of a single sample from a single batch as a `TensorShape`.
		
		Same meaning as `inverse_event_shape_tensor`. May be only partially defined.
		
		Args:
		  output_shape: `TensorShape` indicating event-portion shape passed into
		    `inverse` function.
		
		Returns:
		  inverse_event_shape_tensor: `TensorShape` indicating event-portion shape
		    after applying `inverse`. Possibly unknown.
	**/
	public function inverse_event_shape(output_shape:Dynamic):Dynamic;
	/**
		Shape of a single sample from a single batch as an `int32` 1D `Tensor`.
		
		Args:
		  output_shape: `Tensor`, `int32` vector indicating event-portion shape
		    passed into `inverse` function.
		  name: name to give to the op
		
		Returns:
		  inverse_event_shape_tensor: `Tensor`, `int32` vector indicating
		    event-portion shape after applying `inverse`.
	**/
	public function inverse_event_shape_tensor(output_shape:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns the (log o det o Jacobian o inverse)(y).
		
		Mathematically, returns: `log(det(dX/dY))(Y)`. (Recall that: `X=g^{-1}(Y)`.)
		
		Note that `forward_log_det_jacobian` is the negative of this function.
		
		Args:
		  y: `Tensor`. The input to the "inverse" Jacobian evaluation.
		  name: The name to give this op.
		
		Returns:
		  `Tensor`.
		
		Raises:
		  TypeError: if `self.dtype` is specified and `y.dtype` is not
		    `self.dtype`.
		  NotImplementedError: if `_inverse_log_det_jacobian` is not implemented.
	**/
	public function inverse_log_det_jacobian(y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns true iff the Jacobian is not a function of x.
		
		Note: Jacobian is either constant for both forward and inverse or neither.
		
		Returns:
		  is_constant_jacobian: Python `bool`.
	**/
	public var is_constant_jacobian : Dynamic;
	/**
		Returns the string name of this `Bijector`.
	**/
	public var name : Dynamic;
	/**
		The `scale` `LinearOperator` in `Y = scale @ X + shift`.
	**/
	public var scale : Dynamic;
	/**
		The `shift` `Tensor` in `Y = scale @ X + shift`.
	**/
	public var shift : Dynamic;
	/**
		Returns True if Tensor arguments will be validated.
	**/
	public var validate_args : Dynamic;
}