/* This file is generated, do not edit! */
package tensorflow.python.keras.distribute.sidecar_evaluator;
@:pythonImport("tensorflow.python.keras.distribute.sidecar_evaluator", "SidecarEvaluator") extern class SidecarEvaluator {
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
		Initializes an `SidecarEvaluator` object.
		
		Args:
		  model: Model to use for evaluation. The model object used here should be a
		    `tf.keras.Model`, and should be the same as the one that is used in
		    training, where `tf.keras.Model`s are checkpointed. The model should
		    have one or more metrics compiled before using `SidecarEvaluator`.
		  data: The input data for evaluation. `SidecarEvaluator` supports all data
		    types that Keras `model.evaluate` supports as the input data `x`, such
		    as a `tf.data.Dataset`.
		  checkpoint_dir: Directory where checkpoint files are saved.
		  steps: Number of steps to perform evaluation for, when evaluating a single
		    checkpoint file. If `None`, evaluation continues until the dataset is
		    exhausted. For repeated evaluation dataset, user must specify `steps` to
		    avoid infinite evaluation loop.
		  max_evaluations: Maximum number of the checkpoint file to be evaluated,
		    for `SidecarEvaluator` to know when to stop. The evaluator will stop
		    after it evaluates a checkpoint filepath ending with
		    '<ckpt_name>-<max_evaluations>'. If using
		    `tf.train.CheckpointManager.save` for saving checkpoints, the kth saved
		    checkpoint has the filepath suffix '<ckpt_name>-<k>' (k=1 for the first
		    saved), and if checkpoints are saved every epoch after training, the
		    filepath saved at the kth epoch would end with '<ckpt_name>-<k>. Thus,
		    if training runs for n epochs, and the evaluator should end after the
		    training finishes, use n for this parameter. Note that this is not
		    necessarily equal to the number of total evaluations, since some
		    checkpoints may be skipped if evaluation is slower than checkpoint
		    creation. If `None`, `SidecarEvaluator` will evaluate indefinitely, and
		    the user must terminate evaluator program themselves.
		  callbacks: List of `keras.callbacks.Callback` instances to apply during
		    evaluation. See [callbacks](/api_docs/python/tf/keras/callbacks).
	**/
	@:native("__init__")
	public function ___init__(model:Dynamic, data:Dynamic, checkpoint_dir:Dynamic, ?steps:Dynamic, ?max_evaluations:Dynamic, ?callbacks:Dynamic):Dynamic;
	/**
		Initializes an `SidecarEvaluator` object.
		
		Args:
		  model: Model to use for evaluation. The model object used here should be a
		    `tf.keras.Model`, and should be the same as the one that is used in
		    training, where `tf.keras.Model`s are checkpointed. The model should
		    have one or more metrics compiled before using `SidecarEvaluator`.
		  data: The input data for evaluation. `SidecarEvaluator` supports all data
		    types that Keras `model.evaluate` supports as the input data `x`, such
		    as a `tf.data.Dataset`.
		  checkpoint_dir: Directory where checkpoint files are saved.
		  steps: Number of steps to perform evaluation for, when evaluating a single
		    checkpoint file. If `None`, evaluation continues until the dataset is
		    exhausted. For repeated evaluation dataset, user must specify `steps` to
		    avoid infinite evaluation loop.
		  max_evaluations: Maximum number of the checkpoint file to be evaluated,
		    for `SidecarEvaluator` to know when to stop. The evaluator will stop
		    after it evaluates a checkpoint filepath ending with
		    '<ckpt_name>-<max_evaluations>'. If using
		    `tf.train.CheckpointManager.save` for saving checkpoints, the kth saved
		    checkpoint has the filepath suffix '<ckpt_name>-<k>' (k=1 for the first
		    saved), and if checkpoints are saved every epoch after training, the
		    filepath saved at the kth epoch would end with '<ckpt_name>-<k>. Thus,
		    if training runs for n epochs, and the evaluator should end after the
		    training finishes, use n for this parameter. Note that this is not
		    necessarily equal to the number of total evaluations, since some
		    checkpoints may be skipped if evaluation is slower than checkpoint
		    creation. If `None`, `SidecarEvaluator` will evaluate indefinitely, and
		    the user must terminate evaluator program themselves.
		  callbacks: List of `keras.callbacks.Callback` instances to apply during
		    evaluation. See [callbacks](/api_docs/python/tf/keras/callbacks).
	**/
	public function new(model:Dynamic, data:Dynamic, checkpoint_dir:Dynamic, ?steps:Dynamic, ?max_evaluations:Dynamic, ?callbacks:Dynamic):Void;
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
		Starts the evaluation loop.
	**/
	public function start():Dynamic;
}