/* This file is generated, do not edit! */
package tensorflow.contrib.eager.python.evaluator;
@:pythonImport("tensorflow.contrib.eager.python.evaluator", "SparseSoftmaxEvaluator") extern class SparseSoftmaxEvaluator {
	/**
		Update metrics with a minibatch of input examples.
		
		Args:
		  *args:
		  **kwargs: Arguments representing an input mini-batch of examples to
		    pass to self.model.eval_data().
		
		Returns:
		  The op to execute or None if executing eagerly.
	**/
	public function __call__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(model:Dynamic, ?loss_key:Dynamic, ?label_key:Dynamic, ?predicted_class_key:Dynamic, ?weights_key:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(model:Dynamic, ?loss_key:Dynamic, ?label_key:Dynamic, ?predicted_class_key:Dynamic, ?weights_key:Dynamic):Void;
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
	/**
		Implementation of `all_metric_results` in the summary context.
	**/
	public function _all_metric_results():Dynamic;
	/**
		Computes results for all contained metrics.
		
		Args:
		  summary_logdir: An optional string. If specified, metric results
		    will be written as summaries to this directory.
		
		Returns:
		  A `dict` mapping string names to tensors.
	**/
	public function all_metric_results(?summary_logdir:Dynamic):Dynamic;
	/**
		Update metrics for `eval_data` dict (described above).
	**/
	public function call(eval_data:Dynamic):Dynamic;
	/**
		Convenience method for performing an eval on a Dataset.
		
		Args:
		  dataset: Dataset object with the input data to evaluate on.
		  *args:
		  **kwargs: Optional additional arguments to __call__(), except
		    `summary_logdir`: if specified, metrics will be written as summaries
		    to this directory.
		
		Returns:
		  @compatibility(eager)
		  When eager execution is enabled, this returns the result of performing
		  an evaluation as a dictionary. With graph execution, this returns a tuple
		  (init_op, call_op, results_op) which may be executed using this code:
		  ```python
		    sess.run(init_op)
		    try:
		      while True:
		        sess.run(call_op)
		    except tf.errors.OutOfRangeError:
		      pass
		    return sess.run(results_op)  # A dictionary
		
		    # equivalently:
		    return evaluator.run_evaluation(init_op, call_op, results_op, sess=sess)
		  ```
		  @end_compatibility
	**/
	public function evaluate_on_dataset(dataset:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return an op for initializing all contained uninitialized variables.
		
		Only for graph execution. Should be called after variables are created
		in the first execution of __call__().
		
		Returns:
		  An op.
		
		Raises:
		  RuntimeError: if eager execution is enabled.
		
		@compatibility(eager)
		Only for graph execution.
		@end_compatibility
	**/
	public function init_variables():Dynamic;
	public var metric_variables : Dynamic;
	/**
		Returns a list of (prefix, metric) pairs.
	**/
	public var metrics : Dynamic;
	public var model : Dynamic;
	/**
		Convenience method for running the ops returned by evaluate_on_dataset.
		
		Args:
		  init_op: An op that initializes/resets evaluation state.
		  call_op: An op that updates evaluation state on a mini-batch of examples.
		    Must generate an tf.errors.OutOfRangeError when done.
		  results_op: A dictionary of tensors that compute the final evaluation
		    results from the evaluation state.
		  sess: The Session to run the evaluation in. Defaults to the default
		    Session.
		
		Returns:
		  A dictionary of values, parallel to results_op.
		
		Raises:
		  RuntimeError: if eager execution is enabled.
		
		@compatibility(eager)
		Only for graph execution.
		@end_compatibility
	**/
	static public function run_evaluation(init_op:Dynamic, call_op:Dynamic, results_op:Dynamic, ?sess:Dynamic):Dynamic;
	/**
		Add a contained `Evaluator`.
		
		This is for delegating to another `Evaluator`, e.g. for when you have a
		model with multiple heads. Users should manually invoke the child
		`Evaluator`'s `call` method from their `call` method.
		
		Args:
		  prefix: A string. Metrics from `evaluator` are exported with this
		    prefix and a '/'.
		  evaluator: An `Evaluator` object.
		
		Returns:
		  The value of `evaluator` passed into this function.
		
		Raises:
		  RuntimeError: If called before __init__.
		  TypeError: If `evaluator` is not of the correct type.
		  ValueError: If an `Evaluator` has already been added with that `prefix`.
	**/
	public function track_evaluator(prefix:Dynamic, evaluator:Dynamic):Dynamic;
	/**
		Add a Metric to be tracked.
		
		Metrics can only be tracked by one `Evaluator`. Metrics must be
		tracked or they will not appear in `all_metric_results()`.
		
		Args:
		  metric: A `Metric` object.
		
		Returns:
		  The `metric` passed into this function.
		
		Raises:
		  RuntimeError: If called before __init__.
		  TypeError: If `metric` is not of the correct type.
		  ValueError: If there is a name collision between Metrics or `metric`
		    has already been added to another `Evaluator`.
	**/
	public function track_metric(metric:Dynamic):Dynamic;
}