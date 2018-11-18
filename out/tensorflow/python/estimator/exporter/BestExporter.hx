/* This file is generated, do not edit! */
package tensorflow.python.estimator.exporter;
@:pythonImport("tensorflow.python.estimator.exporter", "BestExporter") extern class BestExporter {
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
		Create an `Exporter` to use with `tf.estimator.EvalSpec`.
		
		Example of creating a BestExporter for training and evluation:
		```python
		def make_train_and_eval_fn():
		  # Set up feature columns.
		  categorial_feature_a = (
		      tf.feature_column.categorical_column_with_hash_bucket(...))
		  categorial_feature_a_emb = embedding_column(
		      categorical_column=categorial_feature_a, ...)
		  ...  # other feature columns
		
		  estimator = tf.estimator.DNNClassifier(
		      config=tf.estimator.RunConfig(
		          model_dir='/my_model', save_summary_steps=100),
		      feature_columns=[categorial_feature_a_emb, ...],
		      hidden_units=[1024, 512, 256])
		
		  serving_feature_spec = tf.feature_column.make_parse_example_spec(
		      categorial_feature_a_emb)
		  serving_input_receiver_fn = (
		      tf.estimator.export.build_parsing_serving_input_receiver_fn(
		      serving_feature_spec))
		
		  exporter = tf.estimator.BestExporter(
		      name="best_exporter",
		      serving_input_receiver_fn=serving_input_receiver_fn,
		      exports_to_keep=5)
		
		  train_spec = tf.estimator.TrainSpec(...)
		
		  eval_spec = [tf.estimator.EvalSpec(
		    input_fn=eval_input_fn,
		    steps=100,
		    exporters=exporter,
		    start_delay_secs=0,
		    throttle_secs=5)]
		
		  return tf.estimator.DistributedTrainingSpec(estimator, train_spec,
		                                              eval_spec)
		```
		
		Args:
		  name: unique name of this `Exporter` that is going to be used in the
		    export path.
		  serving_input_receiver_fn: a function that takes no arguments and returns
		    a `ServingInputReceiver`.
		  event_file_pattern: event file name pattern relative to model_dir. If
		    None, however, the exporter would not be preemption-safe. To be
		    preemption-safe, event_file_pattern should be specified.
		  compare_fn: a function that compares two evaluation results and returns
		    true if current evaluation result is better. Follows the signature:
		    * Args:
		      * `best_eval_result`: This is the evaluation result of the best model.
		      * `current_eval_result`: This is the evaluation result of current
		             candidate model.
		    * Returns:
		      True if current evaluation result is better; otherwise, False.
		  assets_extra: An optional dict specifying how to populate the assets.extra
		    directory within the exported SavedModel.  Each key should give the
		    destination path (including the filename) relative to the assets.extra
		    directory.  The corresponding value gives the full path of the source
		    file to be copied.  For example, the simple case of copying a single
		    file without renaming it is specified as `{'my_asset_file.txt':
		    '/path/to/my_asset_file.txt'}`.
		  as_text: whether to write the SavedModel proto in text format. Defaults to
		    `False`.
		  exports_to_keep: Number of exports to keep.  Older exports will be
		    garbage-collected.  Defaults to 5.  Set to `None` to disable garbage
		    collection.
		
		Raises:
		  ValueError: if any arguments is invalid.
	**/
	@:native("__init__")
	public function ___init__(?name:Dynamic, ?serving_input_receiver_fn:Dynamic, ?event_file_pattern:Dynamic, ?compare_fn:Dynamic, ?assets_extra:Dynamic, ?as_text:Dynamic, ?exports_to_keep:Dynamic):Dynamic;
	/**
		Create an `Exporter` to use with `tf.estimator.EvalSpec`.
		
		Example of creating a BestExporter for training and evluation:
		```python
		def make_train_and_eval_fn():
		  # Set up feature columns.
		  categorial_feature_a = (
		      tf.feature_column.categorical_column_with_hash_bucket(...))
		  categorial_feature_a_emb = embedding_column(
		      categorical_column=categorial_feature_a, ...)
		  ...  # other feature columns
		
		  estimator = tf.estimator.DNNClassifier(
		      config=tf.estimator.RunConfig(
		          model_dir='/my_model', save_summary_steps=100),
		      feature_columns=[categorial_feature_a_emb, ...],
		      hidden_units=[1024, 512, 256])
		
		  serving_feature_spec = tf.feature_column.make_parse_example_spec(
		      categorial_feature_a_emb)
		  serving_input_receiver_fn = (
		      tf.estimator.export.build_parsing_serving_input_receiver_fn(
		      serving_feature_spec))
		
		  exporter = tf.estimator.BestExporter(
		      name="best_exporter",
		      serving_input_receiver_fn=serving_input_receiver_fn,
		      exports_to_keep=5)
		
		  train_spec = tf.estimator.TrainSpec(...)
		
		  eval_spec = [tf.estimator.EvalSpec(
		    input_fn=eval_input_fn,
		    steps=100,
		    exporters=exporter,
		    start_delay_secs=0,
		    throttle_secs=5)]
		
		  return tf.estimator.DistributedTrainingSpec(estimator, train_spec,
		                                              eval_spec)
		```
		
		Args:
		  name: unique name of this `Exporter` that is going to be used in the
		    export path.
		  serving_input_receiver_fn: a function that takes no arguments and returns
		    a `ServingInputReceiver`.
		  event_file_pattern: event file name pattern relative to model_dir. If
		    None, however, the exporter would not be preemption-safe. To be
		    preemption-safe, event_file_pattern should be specified.
		  compare_fn: a function that compares two evaluation results and returns
		    true if current evaluation result is better. Follows the signature:
		    * Args:
		      * `best_eval_result`: This is the evaluation result of the best model.
		      * `current_eval_result`: This is the evaluation result of current
		             candidate model.
		    * Returns:
		      True if current evaluation result is better; otherwise, False.
		  assets_extra: An optional dict specifying how to populate the assets.extra
		    directory within the exported SavedModel.  Each key should give the
		    destination path (including the filename) relative to the assets.extra
		    directory.  The corresponding value gives the full path of the source
		    file to be copied.  For example, the simple case of copying a single
		    file without renaming it is specified as `{'my_asset_file.txt':
		    '/path/to/my_asset_file.txt'}`.
		  as_text: whether to write the SavedModel proto in text format. Defaults to
		    `False`.
		  exports_to_keep: Number of exports to keep.  Older exports will be
		    garbage-collected.  Defaults to 5.  Set to `None` to disable garbage
		    collection.
		
		Raises:
		  ValueError: if any arguments is invalid.
	**/
	public function new(?name:Dynamic, ?serving_input_receiver_fn:Dynamic, ?event_file_pattern:Dynamic, ?compare_fn:Dynamic, ?assets_extra:Dynamic, ?as_text:Dynamic, ?exports_to_keep:Dynamic):Void;
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
		Deletes older exports, retaining only a given number of the most recent.
		
		Export subdirectories are assumed to be named with monotonically increasing
		integers; the most recent are taken to be those with the largest values.
		
		Args:
		  export_dir_base: the base directory under which each export is in a
		    versioned subdirectory.
	**/
	public function _garbage_collect_exports(export_dir_base:Dynamic):Dynamic;
	/**
		Get the best eval result from event files.
		
		Args:
		  event_files: Absolute pattern of event files.
		
		Returns:
		  The best eval result.
	**/
	public function _get_best_eval_result(event_files:Dynamic):Dynamic;
	/**
		Exports the given `Estimator` to a specific format.
		
		Args:
		  estimator: the `Estimator` to export.
		  export_path: A string containing a directory where to write the export.
		  checkpoint_path: The checkpoint path to export.
		  eval_result: The output of `Estimator.evaluate` on this checkpoint.
		  is_the_final_export: This boolean is True when this is an export in the
		    end of training.  It is False for the intermediate exports during
		    the training.
		    When passing `Exporter` to `tf.estimator.train_and_evaluate`
		    `is_the_final_export` is always False if `TrainSpec.max_steps` is
		    `None`.
		
		Returns:
		  The string path to the exported directory or `None` if export is skipped.
	**/
	public function export(estimator:Dynamic, export_path:Dynamic, checkpoint_path:Dynamic, eval_result:Dynamic, is_the_final_export:Dynamic):Dynamic;
	/**
		Directory name.
		
		A directory name under the export base directory where exports of
		this type are written.  Should not be `None` nor empty.
	**/
	public var name : Dynamic;
}