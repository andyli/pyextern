/* This file is generated, do not edit! */
package tensorflow.contrib.estimator.python.estimator.exporter;
@:pythonImport("tensorflow.contrib.estimator.python.estimator.exporter", "StepsExporter") extern class StepsExporter {
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
		Create an `StepsExporter` to use with `tf.estimator.EvalSpec`.
		
		Example of creating a StepsExporter for training and evaluation:
		
		```python
		categorical_feature_a = categorical_column_with_hash_bucket(...)
		categorical_feature_b = categorical_column_with_hash_bucket(...)
		
		categorical_feature_a_emb = embedding_column(
		    categorical_column=categorical_feature_a, ...)
		categorical_feature_b_emb = embedding_column(
		    categorical_column=categorical_feature_b, ...)
		
		estimator = tf.estimator.DNNClassifier(
		    feature_columns=[categorical_feature_a_emb, categorical_feature_b_emb],
		    hidden_units=[1024, 512, 256])
		
		# Input pipeline for train and evaluate.
		def train_input_fn: # returns x, y
		  # please shuffle the data.
		  pass
		def eval_input_fn_eval: # returns x, y
		  pass
		
		exporter = tf.contrib.estimator.exporter.StepsExporter(
		    name="steps_exporter",
		    serving_input_receiver_fn=serving_input_receiver_fn,
		    event_file_pattern='eval/*.tfevents.*'
		    steps_to_keep=[...])
		
		train_spec = tf.estimator.TrainSpec(input_fn=train_input_fn, max_steps=1000)
		
		eval_spec = [tf.estimator.EvalSpec(
		  input_fn=eval_input_fn,
		  steps=1,
		  exporters=exporter,
		  start_delay_secs=0,
		  throttle_secs=5)]
		
		tf.estimator.train_and_evaluate(estimator, train_spec, eval_spec)
		
		# Models will be exported to estimator.model_dir in timestamped directories,
		# which can be used for serving, analysis with TFMA, or directly loaded in.
		# For example:
		export_dir = os.path.join(estimator.model_dir,
		                          <timestamped directory name>)
		
		with ops.Graph().as_default() as graph:
		  with session.Session(graph=graph) as sess:
		    tf.saved_model.loader.load(
		        sess, [tf.saved_model.tag_constants.SERVING], export_dir)
		
		```
		
		Args:
		  steps_to_keep: Non-empty list of positive integers containing
		    the step numbers at which the model should be exported. All the exports
		    will be kept, so there is no garbage collection.
		  name: Unique name of this `Exporter` that is going to be used in the
		    export path.
		  serving_input_receiver_fn: A function that takes no arguments and returns
		    a `ServingInputReceiver`.
		  event_file_pattern: Event file name pattern relative to model_dir. If
		    None, however, the exporter would not be preemption-safe. To be
		    preemption-safe, event_file_pattern should be specified.
		  assets_extra: An optional dict specifying how to populate the assets.extra
		    directory within the exported SavedModel.  Each key should give the
		    destination path (including the filename) relative to the assets.extra
		    directory.  The corresponding value gives the full path of the source
		    file to be copied.  For example, the simple case of copying a single
		    file without renaming it is specified as `{'my_asset_file.txt':
		    '/path/to/my_asset_file.txt'}`.
		  as_text: Whether to write the SavedModel proto in text format. Defaults to
		    `False`.
		
		Raises:
		  ValueError: If any arguments is invalid.
	**/
	@:native("__init__")
	public function ___init__(steps_to_keep:Dynamic, ?name:Dynamic, ?serving_input_receiver_fn:Dynamic, ?event_file_pattern:Dynamic, ?assets_extra:Dynamic, ?as_text:Dynamic):Dynamic;
	/**
		Create an `StepsExporter` to use with `tf.estimator.EvalSpec`.
		
		Example of creating a StepsExporter for training and evaluation:
		
		```python
		categorical_feature_a = categorical_column_with_hash_bucket(...)
		categorical_feature_b = categorical_column_with_hash_bucket(...)
		
		categorical_feature_a_emb = embedding_column(
		    categorical_column=categorical_feature_a, ...)
		categorical_feature_b_emb = embedding_column(
		    categorical_column=categorical_feature_b, ...)
		
		estimator = tf.estimator.DNNClassifier(
		    feature_columns=[categorical_feature_a_emb, categorical_feature_b_emb],
		    hidden_units=[1024, 512, 256])
		
		# Input pipeline for train and evaluate.
		def train_input_fn: # returns x, y
		  # please shuffle the data.
		  pass
		def eval_input_fn_eval: # returns x, y
		  pass
		
		exporter = tf.contrib.estimator.exporter.StepsExporter(
		    name="steps_exporter",
		    serving_input_receiver_fn=serving_input_receiver_fn,
		    event_file_pattern='eval/*.tfevents.*'
		    steps_to_keep=[...])
		
		train_spec = tf.estimator.TrainSpec(input_fn=train_input_fn, max_steps=1000)
		
		eval_spec = [tf.estimator.EvalSpec(
		  input_fn=eval_input_fn,
		  steps=1,
		  exporters=exporter,
		  start_delay_secs=0,
		  throttle_secs=5)]
		
		tf.estimator.train_and_evaluate(estimator, train_spec, eval_spec)
		
		# Models will be exported to estimator.model_dir in timestamped directories,
		# which can be used for serving, analysis with TFMA, or directly loaded in.
		# For example:
		export_dir = os.path.join(estimator.model_dir,
		                          <timestamped directory name>)
		
		with ops.Graph().as_default() as graph:
		  with session.Session(graph=graph) as sess:
		    tf.saved_model.loader.load(
		        sess, [tf.saved_model.tag_constants.SERVING], export_dir)
		
		```
		
		Args:
		  steps_to_keep: Non-empty list of positive integers containing
		    the step numbers at which the model should be exported. All the exports
		    will be kept, so there is no garbage collection.
		  name: Unique name of this `Exporter` that is going to be used in the
		    export path.
		  serving_input_receiver_fn: A function that takes no arguments and returns
		    a `ServingInputReceiver`.
		  event_file_pattern: Event file name pattern relative to model_dir. If
		    None, however, the exporter would not be preemption-safe. To be
		    preemption-safe, event_file_pattern should be specified.
		  assets_extra: An optional dict specifying how to populate the assets.extra
		    directory within the exported SavedModel.  Each key should give the
		    destination path (including the filename) relative to the assets.extra
		    directory.  The corresponding value gives the full path of the source
		    file to be copied.  For example, the simple case of copying a single
		    file without renaming it is specified as `{'my_asset_file.txt':
		    '/path/to/my_asset_file.txt'}`.
		  as_text: Whether to write the SavedModel proto in text format. Defaults to
		    `False`.
		
		Raises:
		  ValueError: If any arguments is invalid.
	**/
	public function new(steps_to_keep:Dynamic, ?name:Dynamic, ?serving_input_receiver_fn:Dynamic, ?event_file_pattern:Dynamic, ?assets_extra:Dynamic, ?as_text:Dynamic):Void;
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
	static public var _estimator_api_names : Dynamic;
	static public var _estimator_api_names_v1 : Dynamic;
	/**
		Get the steps that the model was evaluated at, from event files.
		
		Args:
		  event_files: Absolute pattern of event files.
		
		Returns:
		  steps_kept: A list of steps in which the model was evaluated.
	**/
	public function _get_kept_steps(event_files:Dynamic):Dynamic;
	/**
		Exports the given Estimator to a specific format.
		
		Args:
		  estimator: A `tf.estimator.Estimator` instance to export.
		  export_path: A string containing a directory where to write the export.
		  checkpoint_path: The checkpoint path to export.
		  eval_result: The output of Estimator.evaluate on this checkpoint.
		  is_the_final_export: This boolean is True when this is an export in the
		    end of training. It is False for the intermediate exports during the
		    training. When passing Exporter to tf.estimator.train_and_evaluate
		    is_the_final_export is always False if TrainSpec.max_steps is None.
		
		Returns:
		  The string path to the exported directory or None if export is skipped.
		
		Raises:
		  ValueError: If `eval_result` is None or doesn't have
		    `ops.GraphKeys.GLOBAL_STEP` as a key.
	**/
	public function export(estimator:Dynamic, export_path:Dynamic, checkpoint_path:Dynamic, eval_result:Dynamic, is_the_final_export:Dynamic):Dynamic;
	/**
		Directory name.
		
		A directory name under the export base directory where exports of
		this type are written.  Should not be `None` nor empty.
	**/
	public var name : Dynamic;
}