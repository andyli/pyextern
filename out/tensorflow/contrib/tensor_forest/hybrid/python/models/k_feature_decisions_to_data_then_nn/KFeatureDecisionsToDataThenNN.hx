/* This file is generated, do not edit! */
package tensorflow.contrib.tensor_forest.hybrid.python.models.k_feature_decisions_to_data_then_nn;
@:pythonImport("tensorflow.contrib.tensor_forest.hybrid.python.models.k_feature_decisions_to_data_then_nn", "KFeatureDecisionsToDataThenNN") extern class KFeatureDecisionsToDataThenNN {
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
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(params:Dynamic, ?device_assigner:Dynamic, ?optimizer_class:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(params:Dynamic, ?device_assigner:Dynamic, ?optimizer_class:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Void;
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
	/**
		Returns an op that performs inference without a softmax.
	**/
	public function _base_inference(data:Dynamic, ?data_spec:Dynamic):Dynamic;
	public function _do_layer_inference(layer:Dynamic, data:Dynamic):Dynamic;
	/**
		Returns the op that performs inference on a batch of data.
	**/
	public function inference_graph(data:Dynamic, ?data_spec:Dynamic):Dynamic;
	/**
		The loss to minimize while training.
	**/
	public function loss(data:Dynamic, labels:Dynamic):Dynamic;
	public function predict_proba(data:Dynamic, ?data_spec:Dynamic):Dynamic;
	/**
		Returns the op that trains the hybrid model.
	**/
	public function training_graph(data:Dynamic, labels:Dynamic, ?data_spec:Dynamic, ?epoch:Dynamic):Dynamic;
	/**
		Returns an inference-without-softmax op for training purposes.
	**/
	public function training_inference_graph(data:Dynamic, ?data_spec:Dynamic):Dynamic;
	public function training_loss(data:Dynamic, labels:Dynamic):Dynamic;
	public function validation_loss(data:Dynamic, labels:Dynamic):Dynamic;
}