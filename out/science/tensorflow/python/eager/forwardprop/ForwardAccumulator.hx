/* This file is generated, do not edit! */
package tensorflow.python.eager.forwardprop;
@:pythonImport("tensorflow.python.eager.forwardprop", "ForwardAccumulator") extern class ForwardAccumulator {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		Default dir() implementation.
	**/
	public function __dir__():Dynamic;
	static public var __doc__ : Dynamic;
	public function __enter__():Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	public function __exit__(typ:Dynamic, value:Dynamic, traceback:Dynamic):Dynamic;
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
		Specify tensors to watch and their Jacobian-vector products.
		
		Mathematically, `tangents` is a vector right-multiplying the Jacobian matrix
		(a Jacobian-vector product) for the function computed while this accumulator
		is active. Since JVPs are computed in forward mode as the computation
		happens, this vector must be supplied in advance.
		
		Listing a single tensor multiple times in `primals` raises an
		exception. Excluding a tensor from `primals` is equivalent to watching it
		with a tangent tensor of zeros.
		
		Args:
		  primals: A tensor or nested structure of tensors to watch.
		  tangents: A tensor or nested structure of tensors, with the same nesting
		    structure as `primals`, with each element being a vector with the same
		    size as the corresponding primal element.
		
		Raises:
		  ValueError: If the same tensor or variable is specified multiple times in
		    `primals`.
	**/
	@:native("__init__")
	public function ___init__(primals:Dynamic, tangents:Dynamic):Dynamic;
	/**
		Specify tensors to watch and their Jacobian-vector products.
		
		Mathematically, `tangents` is a vector right-multiplying the Jacobian matrix
		(a Jacobian-vector product) for the function computed while this accumulator
		is active. Since JVPs are computed in forward mode as the computation
		happens, this vector must be supplied in advance.
		
		Listing a single tensor multiple times in `primals` raises an
		exception. Excluding a tensor from `primals` is equivalent to watching it
		with a tangent tensor of zeros.
		
		Args:
		  primals: A tensor or nested structure of tensors to watch.
		  tangents: A tensor or nested structure of tensors, with the same nesting
		    structure as `primals`, with each element being a vector with the same
		    size as the corresponding primal element.
		
		Raises:
		  ValueError: If the same tensor or variable is specified multiple times in
		    `primals`.
	**/
	public function new(primals:Dynamic, tangents:Dynamic):Void;
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
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	/**
		Factory constructor to test accumulator on batches of tangents.
		
		Args:
		  primals: A tensor or nested structure of tensors to watch.
		  tangents: A tensor or nested structure of tensors, with the same nesting
		    structure as `primals`, with each element being a vector with compatible
		    shape `[None] + primal.shape` of the corresponding primal element.
		
		Returns:
		  A batch accumulator object.
	**/
	static public function _batch_accumulator(primals:Dynamic, tangents:Dynamic):Dynamic;
	public function _pop_accumulator():Dynamic;
	public function _push_accumulator():Dynamic;
	static public var _tf_api_names : Dynamic;
	static public var _tf_api_names_v1 : Dynamic;
	/**
		Ensures that `primals` are being traced by this accumulator.
		
		Mathematically, `tangents` is a vector right-multiplying the Jacobian matrix
		(a Jacobian-vector product) for the function computed while this accumulator
		is active. Since JVPs are computed in forward mode as the computation
		happens, this vector must be supplied in advance.
		
		Watching a single tensor multiple times sums each of its `tangents`. Any
		un-watched tensor has zeros for its tangent vector.
		
		Args:
		  primals: A Tensor or list of Tensors.
		  tangents: A Tensor or list of Tensors matching `primals`.
	**/
	public function _watch(primals:Dynamic, tangents:Dynamic):Dynamic;
	/**
		Fetches the Jacobian-vector product computed for `primals`.
		
		Note that this method performs no computation, and simply looks up a JVP
		that was already computed (unlike backprop using a `tf.GradientTape`, where
		the computation happens on the call to `tape.gradient`).
		
		Args:
		  primals: A watched Tensor or structure of Tensors to fetch the JVPs for.
		  unconnected_gradients: A value which can either hold 'none' or 'zero' and
		    alters the value which will be returned if no JVP was computed for
		    `primals`. The possible values and effects are detailed in
		    'tf.UnconnectedGradients' and it defaults to 'none'.
		
		Returns:
		  Tensors with the same shapes and dtypes as `primals`, or None if no JVP
		  is available.
	**/
	public function jvp(primals:Dynamic, ?unconnected_gradients:Dynamic):Dynamic;
}