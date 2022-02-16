/* This file is generated, do not edit! */
package tensorflow.python.keras.engine.training_v1;
@:pythonImport("tensorflow.python.keras.engine.training_v1", "_TrainingEndpoint") extern class _TrainingEndpoint {
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
		Initialize the _TrainingEndpoint.
		
		Note that the output and output_name should be stable as long as the model
		structure doesn't change. The training_target suppose to be mutable since
		the information is provided via `compile()`
		
		Args:
		  output: the output tensor of the model.
		  output_name: the unique name of the output tensor.
		  loss_fn: the loss function for the output tensor.
		  loss_weight: float, the weights for the loss.
		  training_target: the _TrainingTarget for the model.
		  output_loss_metric: the metric object for the loss function.
		  sample_weight: the weights for how a sample is weighted during metric and
		    loss calculation. Could be None.
		  sample_weight_mode: string, 'temporal', 'samplewise' or None. The mode for
		    how the sample_weight is populated.
	**/
	@:native("__init__")
	public function ___init__(output:Dynamic, output_name:Dynamic, loss_fn:Dynamic, ?loss_weight:Dynamic, ?training_target:Dynamic, ?output_loss_metric:Dynamic, ?sample_weight:Dynamic, ?sample_weight_mode:Dynamic):Dynamic;
	/**
		Initialize the _TrainingEndpoint.
		
		Note that the output and output_name should be stable as long as the model
		structure doesn't change. The training_target suppose to be mutable since
		the information is provided via `compile()`
		
		Args:
		  output: the output tensor of the model.
		  output_name: the unique name of the output tensor.
		  loss_fn: the loss function for the output tensor.
		  loss_weight: float, the weights for the loss.
		  training_target: the _TrainingTarget for the model.
		  output_loss_metric: the metric object for the loss function.
		  sample_weight: the weights for how a sample is weighted during metric and
		    loss calculation. Could be None.
		  sample_weight_mode: string, 'temporal', 'samplewise' or None. The mode for
		    how the sample_weight is populated.
	**/
	public function new(output:Dynamic, output_name:Dynamic, loss_fn:Dynamic, ?loss_weight:Dynamic, ?training_target:Dynamic, ?output_loss_metric:Dynamic, ?sample_weight:Dynamic, ?sample_weight_mode:Dynamic):Void;
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
		Create training_target instance and update the self.training_target.
		
		Note that the input target should just be a tensor or None, and
		corresponding training target will be created based on the output and
		loss_fn.
		
		Args:
		  target: the target tensor for the current output. Could be None.
		  run_eagerly: boolean, whether the model is in run_eagerly mode.
		
		Raises:
		  ValueError if the training_target field for the current instance has
		  already been populated.
	**/
	public function create_training_target(target:Dynamic, ?run_eagerly:Dynamic):Dynamic;
	/**
		The output shape for the feedable target.
	**/
	public var feed_output_shape : Dynamic;
	public function has_feedable_training_target():Dynamic;
	public function has_training_target():Dynamic;
	public var loss_fn : Dynamic;
	public function loss_name():Dynamic;
	public var loss_weight : Dynamic;
	public var output : Dynamic;
	public var output_loss_metric : Dynamic;
	public var output_name : Dynamic;
	/**
		Populate the sample weight and based on the sample weight mode.
	**/
	public function populate_sample_weight(sample_weight:Dynamic, sample_weight_mode:Dynamic):Dynamic;
	public var sample_weight : Dynamic;
	public var sample_weight_mode : Dynamic;
	/**
		Check if the sample weight and the mode match or not.
	**/
	public function sample_weights_mismatch():Dynamic;
	public var shape : Dynamic;
	public function should_skip_target():Dynamic;
	public function should_skip_target_weights():Dynamic;
	public var training_target : Dynamic;
}