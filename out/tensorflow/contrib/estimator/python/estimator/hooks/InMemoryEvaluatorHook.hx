/* This file is generated, do not edit! */
package tensorflow.contrib.estimator.python.estimator.hooks;
@:pythonImport("tensorflow.contrib.estimator.python.estimator.hooks", "InMemoryEvaluatorHook") extern class InMemoryEvaluatorHook {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Initializes a `InMemoryEvaluatorHook`.
		
		Args:
		  estimator: A `tf.estimator.Estimator` instance to call evaluate.
		  input_fn:  Equivalent to the `input_fn` arg to `estimator.evaluate`. A
		    function that constructs the input data for evaluation.
		    See [Createing input functions](
		    https://tensorflow.org/guide/premade_estimators#create_input_functions)
		    for more information. The function should construct and return one of
		    the following:
		
		      * A 'tf.data.Dataset' object: Outputs of `Dataset` object must be a
		        tuple (features, labels) with same constraints as below.
		      * A tuple (features, labels): Where `features` is a `Tensor` or a
		        dictionary of string feature name to `Tensor` and `labels` is a
		        `Tensor` or a dictionary of string label name to `Tensor`. Both
		        `features` and `labels` are consumed by `model_fn`. They should
		        satisfy the expectation of `model_fn` from inputs.
		
		  steps: Equivalent to the `steps` arg to `estimator.evaluate`.  Number of
		    steps for which to evaluate model. If `None`, evaluates until `input_fn`
		    raises an end-of-input exception.
		  hooks: Equivalent to the `hooks` arg to `estimator.evaluate`. List of
		    `SessionRunHook` subclass instances. Used for callbacks inside the
		    evaluation call.
		  name:  Equivalent to the `name` arg to `estimator.evaluate`. Name of the
		    evaluation if user needs to run multiple evaluations on different data
		    sets, such as on training data vs test data. Metrics for different
		    evaluations are saved in separate folders, and appear separately in
		    tensorboard.
		  every_n_iter: `int`, runs the evaluator once every N training iteration.
		
		Raises:
		  ValueError: if `every_n_iter` is non-positive or it's not a single machine
		    training
	**/
	@:native("__init__")
	public function ___init__(estimator:Dynamic, input_fn:Dynamic, ?steps:Dynamic, ?hooks:Dynamic, ?name:Dynamic, ?every_n_iter:Dynamic):Dynamic;
	/**
		Initializes a `InMemoryEvaluatorHook`.
		
		Args:
		  estimator: A `tf.estimator.Estimator` instance to call evaluate.
		  input_fn:  Equivalent to the `input_fn` arg to `estimator.evaluate`. A
		    function that constructs the input data for evaluation.
		    See [Createing input functions](
		    https://tensorflow.org/guide/premade_estimators#create_input_functions)
		    for more information. The function should construct and return one of
		    the following:
		
		      * A 'tf.data.Dataset' object: Outputs of `Dataset` object must be a
		        tuple (features, labels) with same constraints as below.
		      * A tuple (features, labels): Where `features` is a `Tensor` or a
		        dictionary of string feature name to `Tensor` and `labels` is a
		        `Tensor` or a dictionary of string label name to `Tensor`. Both
		        `features` and `labels` are consumed by `model_fn`. They should
		        satisfy the expectation of `model_fn` from inputs.
		
		  steps: Equivalent to the `steps` arg to `estimator.evaluate`.  Number of
		    steps for which to evaluate model. If `None`, evaluates until `input_fn`
		    raises an end-of-input exception.
		  hooks: Equivalent to the `hooks` arg to `estimator.evaluate`. List of
		    `SessionRunHook` subclass instances. Used for callbacks inside the
		    evaluation call.
		  name:  Equivalent to the `name` arg to `estimator.evaluate`. Name of the
		    evaluation if user needs to run multiple evaluations on different data
		    sets, such as on training data vs test data. Metrics for different
		    evaluations are saved in separate folders, and appear separately in
		    tensorboard.
		  every_n_iter: `int`, runs the evaluator once every N training iteration.
		
		Raises:
		  ValueError: if `every_n_iter` is non-positive or it's not a single machine
		    training
	**/
	public function new(estimator:Dynamic, input_fn:Dynamic, ?steps:Dynamic, ?hooks:Dynamic, ?name:Dynamic, ?every_n_iter:Dynamic):Void;
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
	public function _evaluate(train_session:Dynamic):Dynamic;
	static public var _tf_api_names : Dynamic;
	static public var _tf_api_names_v1 : Dynamic;
	/**
		Does first run which shows the eval metrics before training.
	**/
	public function after_create_session(session:Dynamic, coord:Dynamic):Dynamic;
	/**
		Runs evaluator.
	**/
	public function after_run(run_context:Dynamic, run_values:Dynamic):Dynamic;
	/**
		Called before each call to run().
		
		You can return from this call a `SessionRunArgs` object indicating ops or
		tensors to add to the upcoming `run()` call.  These ops/tensors will be run
		together with the ops/tensors originally passed to the original run() call.
		The run args you return can also contain feeds to be added to the run()
		call.
		
		The `run_context` argument is a `SessionRunContext` that provides
		information about the upcoming `run()` call: the originally requested
		op/tensors, the TensorFlow Session.
		
		At this point graph is finalized and you can not add ops.
		
		Args:
		  run_context: A `SessionRunContext` object.
		
		Returns:
		  None or a `SessionRunArgs` object.
	**/
	public function before_run(run_context:Dynamic):Dynamic;
	/**
		Build eval graph and restoring op.
	**/
	public function begin():Dynamic;
	/**
		Runs evaluator for final model.
	**/
	public function end(session:Dynamic):Dynamic;
}