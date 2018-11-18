/* This file is generated, do not edit! */
package tensorflow.contrib.distributions.python.ops.bijectors.power_transform;
@:pythonImport("tensorflow.contrib.distributions.python.ops.bijectors.power_transform", "PowerTransform") extern class PowerTransform {
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
		Instantiates the `PowerTransform` bijector. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed after 2018-10-01.
		Instructions for updating:
		The TensorFlow Distributions library has moved to TensorFlow Probability (https://github.com/tensorflow/probability). You should update all references to use `tfp.distributions` instead of `tf.contrib.distributions`.
		
		Args:
		  power: Python `float` scalar indicating the transform power, i.e.,
		    `Y = g(X) = (1 + X * c)**(1 / c)` where `c` is the `power`.
		  validate_args: Python `bool` indicating whether arguments should be
		    checked for correctness.
		  name: Python `str` name given to ops managed by this object.
		
		Raises:
		  ValueError: if `power < 0` or is not known statically.
	**/
	@:native("__init__")
	public function ___init__(?power:Dynamic, ?validate_args:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Instantiates the `PowerTransform` bijector. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed after 2018-10-01.
		Instructions for updating:
		The TensorFlow Distributions library has moved to TensorFlow Probability (https://github.com/tensorflow/probability). You should update all references to use `tfp.distributions` instead of `tf.contrib.distributions`.
		
		Args:
		  power: Python `float` scalar indicating the transform power, i.e.,
		    `Y = g(X) = (1 + X * c)**(1 / c)` where `c` is the `power`.
		  validate_args: Python `bool` indicating whether arguments should be
		    checked for correctness.
		  name: Python `str` name given to ops managed by this object.
		
		Raises:
		  ValueError: if `power < 0` or is not known statically.
	**/
	public function new(?power:Dynamic, ?validate_args:Dynamic, ?name:Dynamic):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public function _call_forward_log_det_jacobian(x:Dynamic, event_ndims:Dynamic, name:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function _call_inverse(y:Dynamic, name:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function _call_inverse_log_det_jacobian(y:Dynamic, event_ndims:Dynamic, name:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Check whether event_ndims is atleast min_event_ndims.
	**/
	public function _check_valid_event_ndims(min_event_ndims:Dynamic, event_ndims:Dynamic):Dynamic;
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
		Subclass implementation of `forward_log_det_jacobian` public function.
		
		In particular, this method differs from the public function, in that it
		does not take `event_ndims`. Thus, this implements the minimal Jacobian
		determinant calculation (i.e. over `forward_min_event_ndims`).
		
		Args:
		  x: `Tensor`. The input to the "forward_log_det_jacobian" evaluation.
		
		Returns:
		  forward_log_det_jacobian: `Tensor`, if this bijector is injective.
		    If not injective, returns the k-tuple containing jacobians for the
		    unique `k` points `(x1, ..., xk)` such that `g(xi) = y`.
	**/
	public function _forward_log_det_jacobian(x:Dynamic):Dynamic;
	/**
		Compute the reduction dimensions given event_ndims.
	**/
	public function _get_event_reduce_dims(min_event_ndims:Dynamic, event_ndims:Dynamic):Dynamic;
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
		
		In particular, this method differs from the public function, in that it
		does not take `event_ndims`. Thus, this implements the minimal Jacobian
		determinant calculation (i.e. over `inverse_min_event_ndims`).
		
		Args:
		  y: `Tensor`. The input to the "inverse_log_det_jacobian" evaluation.
		Returns:
		  inverse_log_det_jacobian: `Tensor`, if this bijector is injective.
		    If not injective, returns the k-tuple containing jacobians for the
		    unique `k` points `(x1, ..., xk)` such that `g(xi) = y`.
	**/
	public function _inverse_log_det_jacobian(y:Dynamic):Dynamic;
	/**
		Returns true iff the forward map `g` is injective (one-to-one function).
		
		**WARNING** This hidden property and its behavior are subject to change.
		
		Note:  Non-injective maps `g` are supported, provided their domain `D` can
		be partitioned into `k` disjoint subsets, `Union{D1, ..., Dk}`, such that,
		ignoring sets of measure zero, the restriction of `g` to each subset is a
		differentiable bijection onto `g(D)`.
		
		Returns:
		  is_injective: Python `bool`.
	**/
	public var _is_injective : Dynamic;
	/**
		Helper which retrieves mapping info from forward/inverse dicts.
	**/
	public function _lookup(?x:Dynamic, ?y:Dynamic, ?kwargs:Dynamic):Dynamic;
	/**
		Helper to check dtype when self.dtype is known.
	**/
	public function _maybe_assert_dtype(x:Dynamic):Dynamic;
	public function _maybe_assert_valid_x(x:Dynamic):Dynamic;
	public function _maybe_assert_valid_y(y:Dynamic):Dynamic;
	/**
		Helper which returns tries to return an integer static value.
	**/
	public function _maybe_get_static_event_ndims(event_ndims:Dynamic):Dynamic;
	/**
		Helper function to standardize op scope.
	**/
	public function _name_scope(?name:Dynamic, ?values:Dynamic):Dynamic;
	/**
		Reduce jacobian over event_ndims - min_event_ndims.
	**/
	public function _reduce_jacobian_det_over_event(y:Dynamic, ildj:Dynamic, min_event_ndims:Dynamic, event_ndims:Dynamic):Dynamic;
	/**
		dtype of `Tensor`s transformable by this distribution.
	**/
	public var dtype : Dynamic;
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
		  x: `Tensor`. The input to the "forward" Jacobian determinant evaluation.
		  event_ndims: Number of dimensions in the probabilistic events being
		    transformed. Must be greater than or equal to
		    `self.forward_min_event_ndims`. The result is summed over the final
		    dimensions to produce a scalar Jacobian determinant for each event,
		    i.e. it has shape `x.shape.ndims - event_ndims` dimensions.
		  name: The name to give this op.
		
		Returns:
		  `Tensor`, if this bijector is injective.
		    If not injective this is not implemented.
		
		Raises:
		  TypeError: if `self.dtype` is specified and `y.dtype` is not
		    `self.dtype`.
		  NotImplementedError: if neither `_forward_log_det_jacobian`
		    nor {`_inverse`, `_inverse_log_det_jacobian`} are implemented, or
		    this is a non-injective bijector.
	**/
	public function forward_log_det_jacobian(x:Dynamic, event_ndims:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns the minimal number of dimensions bijector.forward operates on.
	**/
	public var forward_min_event_ndims : Dynamic;
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
		  `Tensor`, if this bijector is injective.
		    If not injective, returns the k-tuple containing the unique
		    `k` points `(x1, ..., xk)` such that `g(xi) = y`.
		
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
		
		Note that `forward_log_det_jacobian` is the negative of this function,
		evaluated at `g^{-1}(y)`.
		
		Args:
		  y: `Tensor`. The input to the "inverse" Jacobian determinant evaluation.
		  event_ndims: Number of dimensions in the probabilistic events being
		    transformed. Must be greater than or equal to
		    `self.inverse_min_event_ndims`. The result is summed over the final
		    dimensions to produce a scalar Jacobian determinant for each event,
		    i.e. it has shape `y.shape.ndims - event_ndims` dimensions.
		  name: The name to give this op.
		
		Returns:
		  `Tensor`, if this bijector is injective.
		    If not injective, returns the tuple of local log det
		    Jacobians, `log(det(Dg_i^{-1}(y)))`, where `g_i` is the restriction
		    of `g` to the `ith` partition `Di`.
		
		Raises:
		  TypeError: if `self.dtype` is specified and `y.dtype` is not
		    `self.dtype`.
		  NotImplementedError: if `_inverse_log_det_jacobian` is not implemented.
	**/
	public function inverse_log_det_jacobian(y:Dynamic, event_ndims:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns the minimal number of dimensions bijector.inverse operates on.
	**/
	public var inverse_min_event_ndims : Dynamic;
	/**
		Returns true iff the Jacobian matrix is not a function of x.
		
		Note: Jacobian matrix is either constant for both forward and inverse or
		neither.
		
		Returns:
		  is_constant_jacobian: Python `bool`.
	**/
	public var is_constant_jacobian : Dynamic;
	/**
		Returns the string name of this `Bijector`.
	**/
	public var name : Dynamic;
	/**
		The `c` in: `Y = g(X) = (1 + X * c)**(1 / c)`.
	**/
	public var power : Dynamic;
	/**
		Returns True if Tensor arguments will be validated.
	**/
	public var validate_args : Dynamic;
}