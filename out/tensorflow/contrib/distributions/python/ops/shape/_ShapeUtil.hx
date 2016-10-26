/* This file is generated, do not edit! */
package tensorflow.contrib.distributions.python.ops.shape;
@:pythonImport("tensorflow.contrib.distributions.python.ops.shape", "_ShapeUtil") extern class _ShapeUtil {
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
		Construct ShapeUtil with known sample, batch, and/or event ndims.
		
		Typically, batch_ndims and event_ndims are fixed throughout the lifetime of
		a Distribution.
		
		Args:
		  batch_ndims: number of dims (rank) of the batch portion of indexes of a
		    `Tensor`.  A "batch" is a non-identical distribution, i.e, Normal with
		    different parameters.
		  event_ndims: number of dims (rank) of the event portion of indexes of a
		    `Tensor`. An "event" is what is sampled from a distribution, i.e., a
		    trivariate Normal has an event shape of [3] and a 4 dimensional Wishart
		    has an event shape of [4, 4].
		  name: `String`. The name to give Ops created by this class.
		
		Raises:
		  ValueError: if batch_ndims or event_ndims are invalid.
	**/
	@:native("__init__")
	public function ___init__(?batch_ndims:Dynamic, ?event_ndims:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Construct ShapeUtil with known sample, batch, and/or event ndims.
		
		Typically, batch_ndims and event_ndims are fixed throughout the lifetime of
		a Distribution.
		
		Args:
		  batch_ndims: number of dims (rank) of the batch portion of indexes of a
		    `Tensor`.  A "batch" is a non-identical distribution, i.e, Normal with
		    different parameters.
		  event_ndims: number of dims (rank) of the event portion of indexes of a
		    `Tensor`. An "event" is what is sampled from a distribution, i.e., a
		    trivariate Normal has an event shape of [3] and a 4 dimensional Wishart
		    has an event shape of [4, 4].
		  name: `String`. The name to give Ops created by this class.
		
		Raises:
		  ValueError: if batch_ndims or event_ndims are invalid.
	**/
	public function new(?batch_ndims:Dynamic, ?event_ndims:Dynamic, ?name:Dynamic):Void;
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
		Returns number of dimensions corresponding to non-identical draws.
	**/
	public var batch_ndims : Dynamic;
	/**
		Returns number of dimensions needed to index a sample's coordinates.
	**/
	public var event_ndims : Dynamic;
	/**
		Returns dimension indexes corresponding to batch.
		
		Convenience function; identical to:
		
		```python
		get_dims(x, sample=False, batch=True, event=False)
		```
		
		Args:
		  x: `Tensor`.
		
		Raises:
		  ValueError: if `x.get_shape().ndims` is `None`
		
		Returns:
		  List enumerating batch dimensions.
	**/
	public function get_batch_dims(x:Dynamic):Dynamic;
	/**
		Returns shape corresponding to batch.
		
		Convenience function; identical to:
		
		```python
		get_shape(x, sample=False, batch=True, event=False)
		```
		
		Args:
		  x: `Tensor`.
		
		Returns:
		  List describing batch shape if known statically, `Tensor` otherwise.
	**/
	public function get_batch_shape(x:Dynamic):Dynamic;
	/**
		Returns subset of tensor's dimension indexes (indexes into shape).
		
		Args:
		  x: `Tensor`.
		  sample: `Boolean`. Include sample dimensions or not.
		  batch: `Boolean`. Include batch dimensions or not.
		  event: `Boolean`. Include event dimensions or not.
		
		Raises:
		  ValueError: if `x.get_shape().ndims` is `None`
		
		Returns:
		  List enumerating requested dimensions.
	**/
	public function get_dims(x:Dynamic, ?sample:Dynamic, ?batch:Dynamic, ?event:Dynamic):Dynamic;
	/**
		Returns dimension indexes corresponding to event.
		
		Convenience function; identical to:
		
		```python
		get_dims(x, sample=False, batch=False, event=True)
		```
		
		Args:
		  x: `Tensor`.
		
		Raises:
		  ValueError: if `x.get_shape().ndims` is `None`
		
		Returns:
		  List enumerating event dimensions.
	**/
	public function get_event_dims(x:Dynamic):Dynamic;
	/**
		Returns shape corresponding to event.
		
		Convenience function; identical to:
		
		```python
		get_shape(x, sample=False, batch=False, event=True)
		```
		
		Args:
		  x: `Tensor`.
		
		Returns:
		  List describing event shape if known statically, `Tensor` otherwise.
	**/
	public function get_event_shape(x:Dynamic):Dynamic;
	/**
		Get tensor ndims (rank).
		
		Args:
		  x: `Tensor`.
		  name: `String`. The name to give this op.
		
		Raises:
		  ValueError: if ndims is not statically known.
		
		Returns:
		  `Scalar` number of dimensions associated with a `Tensor`.
	**/
	public function get_ndims(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns dimension indexes corresponding to sample.
		
		Convenience function; identical to:
		
		```python
		get_dims(x, sample=True, batch=False, event=False)
		```
		
		Args:
		  x: `Tensor`.
		
		Raises:
		  ValueError: if `x.get_shape().ndims` is `None`
		
		Returns:
		  List enumerating sample dimensions.
	**/
	public function get_sample_dims(x:Dynamic):Dynamic;
	/**
		Returns number of dimensions corresponding to iid draws.
		
		Args:
		  x: `Tensor`.
		
		Raises:
		  ValueError: if batch_ndims or event_ndims are not statically known.
		  ValueError: if static sample_ndims does not match inferred
		
		Returns:
		  Scalar number of dimensions associated with a sample.
	**/
	public function get_sample_ndims(x:Dynamic):Dynamic;
	/**
		Returns shape corresponding to sample.
		
		Convenience function; identical to:
		
		```python
		get_shape(x, sample=True, batch=False, event=False)
		```
		
		Args:
		  x: `Tensor`.
		
		Returns:
		  List describing sample shape if known statically, `Tensor` otherwise.
	**/
	public function get_sample_shape(x:Dynamic):Dynamic;
	/**
		Returns subset of tensor's shape (size of dimensions).
		
		Args:
		  x: `Tensor`.
		  sample: `Boolean`. Include sample shape or not.
		  batch: `Boolean`. Include batch shape or not.
		  event: `Boolean`. Include event shape or not.
		  name: `String`. The name to give this op.
		
		Raises:
		  ValueError: if `x.get_shape().ndims` is `None`
		
		Returns:
		  List describing event shape if known statically, `Tensor` otherwise.
	**/
	public function get_shape(x:Dynamic, ?sample:Dynamic, ?batch:Dynamic, ?event:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Name given to ops created by this class.
	**/
	public var name : Dynamic;
}