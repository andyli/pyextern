/* This file is generated, do not edit! */
package tensorflow.contrib.learn.python.learn.estimators.head;
@:pythonImport("tensorflow.contrib.learn.python.learn.estimators.head", "_MultiHead") extern class _MultiHead {
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
		_Head to merges multiple _Head objects.
		
		Args:
		  heads: list of _Head objects.
		  loss_merger: function that takes a list of loss tensors for the heads
		    and returns the final loss tensor for the multi head.
		
		Raises:
		  ValueError: if any head does not have a name.
	**/
	@:native("__init__")
	public function ___init__(heads:Dynamic, loss_merger:Dynamic):Dynamic;
	/**
		_Head to merges multiple _Head objects.
		
		Args:
		  heads: list of _Head objects.
		  loss_merger: function that takes a list of loss tensors for the heads
		    and returns the final loss tensor for the multi head.
		
		Raises:
		  ValueError: if any head does not have a name.
	**/
	public function new(heads:Dynamic, loss_merger:Dynamic):Void;
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
		Merges list of ModelFnOps for eval.
		
		Args:
		  all_model_fn_ops: list of ModelFnOps for the individual heads.
		
		Returns:
		  ModelFnOps that merges all the heads for EVAL.
	**/
	public function _merge_eval(all_model_fn_ops:Dynamic):Dynamic;
	/**
		Merges list of ModelFnOps for inference.
		
		Args:
		  all_model_fn_ops: list of ModelFnOps for the individual heads.
		
		Returns:
		  ModelFnOps that Merges all the heads for INFER.
	**/
	public function _merge_infer(all_model_fn_ops:Dynamic):Dynamic;
	/**
		Merges list of ModelFnOps for training.
		
		Args:
		  all_model_fn_ops: list of ModelFnOps for the individual heads.
		  train_op_fn: Function to create train op. See `create_model_fn_ops`
		      documentation for more details.
		
		Returns:
		  ModelFnOps that merges all heads for TRAIN.
	**/
	public function _merge_train(all_model_fn_ops:Dynamic, train_op_fn:Dynamic):Dynamic;
	/**
		Splits logits for heads.
		
		Args:
		  logits: the logits tensor.
		
		Returns:
		  A list of logits for the individual heads.
	**/
	public function _split_logits(logits:Dynamic):Dynamic;
	/**
		See `_Head.create_model_fn_ops`.
		
		Args:
		  features: Input `dict` of `Tensor` objects.
		  mode: Estimator's `ModeKeys`.
		  labels: Labels `Tensor`, or `dict` of same.
		  train_op_fn: Function that takes a scalar loss and returns an op to
		      optimize with the loss.
		  logits: Concatenated logits for all heads or a dict of head name to logits
		      tensor. If concatenated logits, it should have (batchsize, x) shape
		      where x is the sum of `logits_dimension` of all the heads,
		      i.e., same as `logits_dimension` of this class. create_model_fn_ops
		      will split the logits tensor and pass logits of proper size to each
		      head. This is useful if we want to be agnostic about whether you
		      creating a single versus multihead. logits can also be a dict for
		      convenience where you are creating the head specific logits explicitly
		      and don't want to concatenate them yourself.
		  logits_input: tensor to build logits from.
		  scope: Optional scope for variable_scope. If provided, will be passed to
		    all heads. Most users will want to set this to `None`, so each head
		    constructs a separate variable_scope according to its `head_name`.
		
		Returns:
		  `ModelFnOps`.
		
		Raises:
		  ValueError: if `mode` is not recognized, or neither or both of `logits`
		      and `logits_input` is provided.
	**/
	public function create_model_fn_ops(features:Dynamic, mode:Dynamic, ?labels:Dynamic, ?train_op_fn:Dynamic, ?logits:Dynamic, ?logits_input:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Size of the last dimension of the logits `Tensor`.
		
		Typically, logits is of shape `[batch_size, logits_dimension]`.
		
		Returns:
		  The expected size of the `logits` tensor.
	**/
	public var logits_dimension : Dynamic;
}