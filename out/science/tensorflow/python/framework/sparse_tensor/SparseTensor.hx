/* This file is generated, do not edit! */
package tensorflow.python.framework.sparse_tensor;
@:pythonImport("tensorflow.python.framework.sparse_tensor", "SparseTensor") extern class SparseTensor {
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
		Default dir() implementation.
	**/
	public function __dir__():Dynamic;
	/**
		Component-wise divides a SparseTensor by a dense Tensor.
		
		*Limitation*: this Op only broadcasts the dense side to the sparse side, but not
		the other direction.
		
		Args:
		  sp_indices: A `Tensor` of type `int64`.
		    2-D.  `N x R` matrix with the indices of non-empty values in a
		    SparseTensor, possibly not in canonical ordering.
		  sp_values: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
		    1-D.  `N` non-empty values corresponding to `sp_indices`.
		  sp_shape: A `Tensor` of type `int64`.
		    1-D.  Shape of the input SparseTensor.
		  dense: A `Tensor`. Must have the same type as `sp_values`.
		    `R`-D.  The dense Tensor operand.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `sp_values`.
	**/
	static public function __div__(sp_x:Dynamic, y:Dynamic):Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		Default object formatter.
	**/
	public function __format__(format_spec:Dynamic):Dynamic;
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
		Creates a `SparseTensor`.
		
		Args:
		  indices: A 2-D int64 tensor of shape `[N, ndims]`.
		  values: A 1-D tensor of any type and shape `[N]`.
		  dense_shape: A 1-D int64 tensor of shape `[ndims]`.
		
		Raises:
		  ValueError: When building an eager SparseTensor if `dense_shape` is
		    unknown or contains unknown elements (None or -1).
	**/
	@:native("__init__")
	public function ___init__(indices:Dynamic, values:Dynamic, dense_shape:Dynamic):Dynamic;
	/**
		Creates a `SparseTensor`.
		
		Args:
		  indices: A 2-D int64 tensor of shape `[N, ndims]`.
		  values: A 1-D tensor of any type and shape `[N]`.
		  dense_shape: A 1-D int64 tensor of shape `[ndims]`.
		
		Raises:
		  ValueError: When building an eager SparseTensor if `dense_shape` is
		    unknown or contains unknown elements (None or -1).
	**/
	public function new(indices:Dynamic, values:Dynamic, dense_shape:Dynamic):Void;
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
		Component-wise multiplies a SparseTensor by a dense Tensor.
		
		The output locations corresponding to the implicitly zero elements in the sparse
		tensor will be zero (i.e., will not take up storage space), regardless of the
		contents of the dense tensor (even if it's +/-INF and that INF*0 == NaN).
		
		*Limitation*: this Op only broadcasts the dense side to the sparse side, but not
		the other direction.
		
		Args:
		  sp_indices: A `Tensor` of type `int64`.
		    2-D.  `N x R` matrix with the indices of non-empty values in a
		    SparseTensor, possibly not in canonical ordering.
		  sp_values: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `uint8`, `int16`, `int8`, `complex64`, `int64`, `qint8`, `quint8`, `qint32`, `bfloat16`, `uint16`, `complex128`, `half`, `uint32`, `uint64`.
		    1-D.  `N` non-empty values corresponding to `sp_indices`.
		  sp_shape: A `Tensor` of type `int64`.
		    1-D.  Shape of the input SparseTensor.
		  dense: A `Tensor`. Must have the same type as `sp_values`.
		    `R`-D.  The dense Tensor operand.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `sp_values`.
	**/
	static public function __mul__(sp_x:Dynamic, y:Dynamic):Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce__():Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce_ex__(protocol:Dynamic):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		Size of object in memory, in bytes.
	**/
	public function __sizeof__():Dynamic;
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
		Internal helper function for 'sp_t / dense_t'.
	**/
	static public function __truediv__(sp_x:Dynamic, y:Dynamic):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	static public var _abc_impl : Dynamic;
	/**
		Returns a list of `Operation`s that consume this `CompositeTensor`.
		
		Returns:
		  A list of `Operation`s.
		
		Raises:
		  RuntimeError: If this method is called while executing eagerly.
	**/
	public function _consumers():Dynamic;
	static public function _override_operator(_operator:Dynamic, func:Dynamic):Dynamic;
	/**
		Returns a TypeSpec given a shape invariant (used by `tf.while_loop`).
		
		Args:
		  shape: A `tf.TensorShape` object.  The shape invariant for this
		    `CompositeTensor`, or `None` if a default shape invariant should be used
		    (based on the value of this `CompositeTensor`).
		
		Returns:
		  A nested structure whose values are `tf.TensorShape` objects, specifying
		  the shape invariants for the tensors that comprise this `CompositeTensor`.
	**/
	public function _shape_invariant_to_type_spec(shape:Dynamic):Dynamic;
	static public var _tf_api_names : Dynamic;
	static public var _tf_api_names_v1 : Dynamic;
	/**
		A `TypeSpec` describing the type of this value.
	**/
	public var _type_spec : Dynamic;
	public function consumers():Dynamic;
	/**
		A 1-D Tensor of int64 representing the shape of the dense tensor.
	**/
	public var dense_shape : Dynamic;
	/**
		The `DType` of elements in this tensor.
	**/
	public var dtype : Dynamic;
	/**
		Evaluates this sparse tensor in a `Session`.
		
		Calling this method will execute all preceding operations that
		produce the inputs needed for the operation that produces this
		tensor.
		
		*N.B.* Before invoking `SparseTensor.eval()`, its graph must have been
		launched in a session, and either a default session must be
		available, or `session` must be specified explicitly.
		
		Args:
		  feed_dict: A dictionary that maps `Tensor` objects to feed values. See
		    `tf.Session.run` for a description of the valid feed values.
		  session: (Optional.) The `Session` to be used to evaluate this sparse
		    tensor. If none, the default session will be used.
		
		Returns:
		  A `SparseTensorValue` object.
	**/
	public function eval(?feed_dict:Dynamic, ?session:Dynamic):Dynamic;
	static public function from_value(sparse_tensor_value:Dynamic):Dynamic;
	/**
		Get the `TensorShape` representing the shape of the dense tensor.
		
		Returns:
		  A `TensorShape` object.
	**/
	public function get_shape():Dynamic;
	/**
		The `Graph` that contains the index, value, and dense_shape tensors.
	**/
	public var graph : Dynamic;
	/**
		The indices of non-zero values in the represented dense tensor.
		
		Returns:
		  A 2-D Tensor of int64 with dense_shape `[N, ndims]`, where `N` is the
		    number of non-zero values in the tensor, and `ndims` is the rank.
	**/
	public var indices : Dynamic;
	/**
		The `Operation` that produces `values` as an output.
	**/
	public var op : Dynamic;
	/**
		Get the `TensorShape` representing the shape of the dense tensor.
		
		Returns:
		  A `TensorShape` object.
	**/
	public var shape : Dynamic;
	/**
		The non-zero values in the represented dense tensor.
		
		Returns:
		  A 1-D Tensor of any data type.
	**/
	public var values : Dynamic;
	/**
		Returns a copy of `self` with `values` replaced by `new_values`.
		
		This method produces a new `SparseTensor` that has the same nonzero
		`indices` and same `dense_shape`, but updated values.
		
		Args:
		  new_values: The values of the new `SparseTensor`. Needs to have the same
		    shape as the current `.values` `Tensor`. May have a different type than
		    the current `values`.
		
		Returns:
		  A `SparseTensor` with identical indices and shape but updated values.
		
		Example usage:
		
		>>> st = tf.sparse.from_dense([[1, 0, 2, 0], [3, 0, 0, 4]])
		>>> tf.sparse.to_dense(st.with_values([10, 20, 30, 40]))  # 4 nonzero values
		<tf.Tensor: shape=(2, 4), dtype=int32, numpy=
		array([[10,  0, 20,  0],
		       [30,  0,  0, 40]], dtype=int32)>
	**/
	public function with_values(new_values:Dynamic):Dynamic;
}