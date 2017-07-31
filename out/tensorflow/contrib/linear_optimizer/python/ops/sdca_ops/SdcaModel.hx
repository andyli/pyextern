/* This file is generated, do not edit! */
package tensorflow.contrib.linear_optimizer.python.ops.sdca_ops;
@:pythonImport("tensorflow.contrib.linear_optimizer.python.ops.sdca_ops", "SdcaModel") extern class SdcaModel {
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
		Create a new sdca optimizer.
	**/
	@:native("__init__")
	public function ___init__(examples:Dynamic, variables:Dynamic, options:Dynamic):Dynamic;
	/**
		Create a new sdca optimizer.
	**/
	public function new(examples:Dynamic, variables:Dynamic, options:Dynamic):Void;
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
	public function _assertList(items:Dynamic, check_in:Dynamic):Dynamic;
	public function _assertSpecified(items:Dynamic, check_in:Dynamic):Dynamic;
	/**
		Converts input list to a set of tensors.
	**/
	public function _convert_n_to_tensor(input_list:Dynamic, ?as_ref:Dynamic):Dynamic;
	public function _create_slots():Dynamic;
	/**
		Computes the (un-normalized) l1 loss of the model.
	**/
	public function _l1_loss():Dynamic;
	/**
		Computes the (un-normalized) l2 loss of the model.
	**/
	public function _l2_loss(l2:Dynamic):Dynamic;
	/**
		Returns predictions of the form w*x.
	**/
	public function _linear_predictions(examples:Dynamic):Dynamic;
	public function _num_loss_partitions():Dynamic;
	public function _num_table_shards():Dynamic;
	public function _symmetric_l1_regularization():Dynamic;
	public function _symmetric_l2_regularization():Dynamic;
	/**
		Add operations to compute the approximate duality gap.
		
		Returns:
		  An Operation that computes the approximate duality gap over all
		  examples.
	**/
	public function approximate_duality_gap():Dynamic;
	/**
		Add operations to train a linear model by minimizing the loss function.
		
		Args:
		  global_step: Optional `Variable` to increment by one after the
		    variables have been updated.
		  name: Optional name for the returned operation.
		
		Returns:
		  An Operation that updates the variables passed in the constructor.
	**/
	public function minimize(?global_step:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Add operations to compute predictions by the model.
		
		If logistic_loss is being used, predicted probabilities are returned.
		Otherwise, (raw) linear predictions (w*x) are returned.
		
		Args:
		  examples: Examples to compute predictions on.
		
		Returns:
		  An Operation that computes the predictions for examples.
		
		Raises:
		  ValueError: if examples are not well defined.
	**/
	public function predictions(examples:Dynamic):Dynamic;
	/**
		Add operations to compute the loss with regularization loss included.
		
		Args:
		  examples: Examples to compute loss on.
		
		Returns:
		  An Operation that computes mean (regularized) loss for given set of
		  examples.
		Raises:
		  ValueError: if examples are not well defined.
	**/
	public function regularized_loss(examples:Dynamic):Dynamic;
	/**
		Add operations to compute the loss (without the regularization loss).
		
		Args:
		  examples: Examples to compute unregularized loss on.
		
		Returns:
		  An Operation that computes mean (unregularized) loss for given set of
		  examples.
		
		Raises:
		  ValueError: if examples are not well defined.
	**/
	public function unregularized_loss(examples:Dynamic):Dynamic;
	/**
		Updates the model weights.
		
		This function must be called on at least one worker after `minimize`.
		In distributed training this call can be omitted on non-chief workers to
		speed up training.
		
		Args:
		  train_op: The operation returned by the `minimize` call.
		
		Returns:
		  An Operation that updates the model weights.
	**/
	public function update_weights(train_op:Dynamic):Dynamic;
}