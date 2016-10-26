/* This file is generated, do not edit! */
package tensorflow.contrib.distributions.python.ops.bijector;
@:pythonImport("tensorflow.contrib.distributions.python.ops.bijector", "_Bijector") extern class _Bijector {
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Constructs Bijector.
		
		A bijector transforms random variables into new random variables. Managing
		shape is typically an important piece of this so a Bijector is usually
		composed of ShapeUtil. The ShapeUtil object handles input shape checks as
		well as reshaping/transposing for easier linear algebra operations.
		
		Example:
		```python
		# Create the Y = g(X) = X transform which operates on 4-Tensors of vectors.
		identity = Identity(ShapeUtil(batch_ndims=4, event_ndims=1))
		
		# Create the Y = g(X) = exp(X) transform which operates on matrices.
		exp = Exp(ShapeUtil(batch_ndims=0, event_ndims=2))
		```
		
		See Bijector subclass doc for more details and examples.
		
		Args:
		  shaper: object used for managing and manipulating shape, typically an
		    instance of ShapeUtil.
		  name: The name to give Ops created by the initializer.
	**/
	@:native("__init__")
	public function ___init__(?shaper:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Constructs Bijector.
		
		A bijector transforms random variables into new random variables. Managing
		shape is typically an important piece of this so a Bijector is usually
		composed of ShapeUtil. The ShapeUtil object handles input shape checks as
		well as reshaping/transposing for easier linear algebra operations.
		
		Example:
		```python
		# Create the Y = g(X) = X transform which operates on 4-Tensors of vectors.
		identity = Identity(ShapeUtil(batch_ndims=4, event_ndims=1))
		
		# Create the Y = g(X) = exp(X) transform which operates on matrices.
		exp = Exp(ShapeUtil(batch_ndims=0, event_ndims=2))
		```
		
		See Bijector subclass doc for more details and examples.
		
		Args:
		  shaper: object used for managing and manipulating shape, typically an
		    instance of ShapeUtil.
		  name: The name to give Ops created by the initializer.
	**/
	public function new(?shaper:Dynamic, ?name:Dynamic):Void;
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
	/**
		Subclass implementation of forward().
		
		Args:
		  x: `Tensor`. The input to the "forward" evaluation.
		
		Raises:
		  `NotImplementedError`: if subclass implementation not provided
		
		Returns:
		  `Tensor`.
	**/
	public function _forward(x:Dynamic):Dynamic;
	/**
		Subclass implementation of inverse().
		
		Args:
		  x: `Tensor`. The input to the "inverse" evaluation.
		
		Raises:
		  `NotImplementedError`: if subclass implementation not provided
		
		Returns:
		  `Tensor`.
	**/
	public function _inverse(x:Dynamic):Dynamic;
	/**
		Subclass implementation of inverse_and_inverse_log_det_jacobian().
		
		Args:
		  x: `Tensor`. The input to the "inverse" evaluation.
		
		Returns:
		  List of two `Tensor` items, inverse and inverse_log_det_jacobian.
	**/
	public function _inverse_and_inverse_log_det_jacobian(x:Dynamic):Dynamic;
	/**
		Subclass implementation of inverse_log_det_jacobian().
		
		Args:
		  x: `Tensor`. The input to the "inverse" Jacobian evaluation.
		
		Raises:
		  `NotImplementedError`: if subclass implementation not provided
		
		Returns:
		  `Tensor`.
	**/
	public function _inverse_log_det_jacobian(x:Dynamic):Dynamic;
	/**
		Returns the forward bijector evaluation, i.e., X = g(Y).
		
		Args:
		  x: `Tensor`. The input to the "forward" evaluation.
		  name: The name to give this op.
		
		Returns:
		  `Tensor`.
	**/
	public function forward(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns the inverse bijector evaluation, i.e., X = g^{-1}(Y).
		
		Args:
		  x: `Tensor`. The input to the "inverse" evaluation.
		  name: The name to give this op.
		
		Returns:
		  `Tensor`.
	**/
	public function inverse(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns both the inverse evaluation and inverse_log_det_jacobian.
		
		Enables possibly more efficient calculation when both inverse and
		corresponding Jacobian are needed.
		
		See `inverse()`, `inverse_log_det_jacobian()` for more details.
		
		Args:
		  x: `Tensor`. The input to the "inverse" Jacobian evaluation.
		  name: The name to give this op.
		
		Returns:
		  `Tensor`.
	**/
	public function inverse_and_inverse_log_det_jacobian(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns the (log o det o Jacobian o inverse)(x).
		
		Mathematically, returns: log(det(dY/dX g^{-1}))(Y).
		
		Args:
		  x: `Tensor`. The input to the "inverse" Jacobian evaluation.
		  name: The name to give this op.
		
		Returns:
		  `Tensor`.
	**/
	public function inverse_log_det_jacobian(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns the string name of this bijector.
	**/
	public var name : Dynamic;
	/**
		Returns shape object used to manage shape constraints.
	**/
	public var shaper : Dynamic;
}