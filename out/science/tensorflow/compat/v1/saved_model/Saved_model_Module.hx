/* This file is generated, do not edit! */
package tensorflow.compat.v1.saved_model;
@:pythonImport("tensorflow.compat.v1.saved_model") extern class Saved_model_Module {
	static public var ASSETS_DIRECTORY : Dynamic;
	static public var ASSETS_KEY : Dynamic;
	static public var CLASSIFY_INPUTS : Dynamic;
	static public var CLASSIFY_METHOD_NAME : Dynamic;
	static public var CLASSIFY_OUTPUT_CLASSES : Dynamic;
	static public var CLASSIFY_OUTPUT_SCORES : Dynamic;
	static public var DEBUG_DIRECTORY : Dynamic;
	static public var DEBUG_INFO_FILENAME_PB : Dynamic;
	static public var DEFAULT_SERVING_SIGNATURE_DEF_KEY : Dynamic;
	static public var GPU : Dynamic;
	static public var LEGACY_INIT_OP_KEY : Dynamic;
	static public var MAIN_OP_KEY : Dynamic;
	static public var PREDICT_INPUTS : Dynamic;
	static public var PREDICT_METHOD_NAME : Dynamic;
	static public var PREDICT_OUTPUTS : Dynamic;
	static public var REGRESS_INPUTS : Dynamic;
	static public var REGRESS_METHOD_NAME : Dynamic;
	static public var REGRESS_OUTPUTS : Dynamic;
	static public var SAVED_MODEL_FILENAME_PB : Dynamic;
	static public var SAVED_MODEL_FILENAME_PBTXT : Dynamic;
	static public var SAVED_MODEL_SCHEMA_VERSION : Dynamic;
	static public var SERVING : Dynamic;
	static public var TPU : Dynamic;
	static public var TRAINING : Dynamic;
	static public var VARIABLES_DIRECTORY : Dynamic;
	static public var VARIABLES_FILENAME : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Utility function to build a SignatureDef protocol buffer.
		
		Args:
		  inputs: Inputs of the SignatureDef defined as a proto map of string to
		      tensor info.
		  outputs: Outputs of the SignatureDef defined as a proto map of string to
		      tensor info.
		  method_name: Method name of the SignatureDef as a string.
		
		Returns:
		  A SignatureDef protocol buffer constructed based on the supplied arguments.
	**/
	static public function build_signature_def(?inputs:Dynamic, ?outputs:Dynamic, ?method_name:Dynamic):Dynamic;
	/**
		Utility function to build TensorInfo proto from a Tensor. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		This function will only be available through the v1 compatibility library as tf.compat.v1.saved_model.utils.build_tensor_info or tf.compat.v1.saved_model.build_tensor_info.
		
		Args:
		  tensor: Tensor or SparseTensor whose name, dtype and shape are used to
		      build the TensorInfo. For SparseTensors, the names of the three
		      constituent Tensors are used.
		
		Returns:
		  A TensorInfo protocol buffer constructed based on the supplied argument.
		
		Raises:
		  RuntimeError: If eager execution is enabled.
		
		@compatibility(TF2)
		This API is not compatible with eager execution as `tensor` needs to be a
		graph tensor, and there is no replacement for it in TensorFlow 2.x. To start
		writing programs using TensorFlow 2.x, please refer to the [Effective
		TensorFlow 2](https://www.tensorflow.org/guide/effective_tf2) guide.
		@end_compatibility
	**/
	static public function build_tensor_info(tensor:Dynamic):Dynamic;
	/**
		Creates classification signature from given examples and predictions.
		
		This function produces signatures intended for use with the TensorFlow Serving
		Classify API (tensorflow_serving/apis/prediction_service.proto), and so
		constrains the input and output types to those allowed by TensorFlow Serving.
		
		Args:
		  examples: A string `Tensor`, expected to accept serialized tf.Examples.
		  classes: A string `Tensor`.  Note that the ClassificationResponse message
		    requires that class labels are strings, not integers or anything else.
		  scores: a float `Tensor`.
		
		Returns:
		  A classification-flavored signature_def.
		
		Raises:
		  ValueError: If examples is `None`.
	**/
	static public function classification_signature_def(examples:Dynamic, classes:Dynamic, scores:Dynamic):Dynamic;
	/**
		Checks whether the provided export directory could contain a SavedModel.
		
		Note that the method does not load any data by itself. If the method returns
		`false`, the export directory definitely does not contain a SavedModel. If the
		method returns `true`, the export directory may contain a SavedModel but
		provides no guarantee that it can be loaded.
		
		Args:
		  export_dir: Absolute string path to possible export location. For example,
		              '/my/foo/model'.
		
		Returns:
		  True if the export directory contains SavedModel files, False otherwise.
	**/
	static public function contains_saved_model(export_dir:Dynamic):Dynamic;
	/**
		Returns the Tensor or CompositeTensor described by a TensorInfo proto. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		This function will only be available through the v1 compatibility library as tf.compat.v1.saved_model.utils.get_tensor_from_tensor_info or tf.compat.v1.saved_model.get_tensor_from_tensor_info.
		
		Args:
		  tensor_info: A TensorInfo proto describing a Tensor or SparseTensor or
		    CompositeTensor.
		  graph: The tf.Graph in which tensors are looked up. If None, the
		      current default graph is used.
		  import_scope: If not None, names in `tensor_info` are prefixed with this
		      string before lookup.
		
		Returns:
		  The Tensor or SparseTensor or CompositeTensor in `graph` described by
		  `tensor_info`.
		
		Raises:
		  KeyError: If `tensor_info` does not correspond to a tensor in `graph`.
		  ValueError: If `tensor_info` is malformed.
	**/
	static public function get_tensor_from_tensor_info(tensor_info:Dynamic, ?graph:Dynamic, ?import_scope:Dynamic):Dynamic;
	/**
		Determine whether a SignatureDef can be served by TensorFlow Serving.
	**/
	static public function is_valid_signature(signature_def:Dynamic):Dynamic;
	/**
		Loads the model from a SavedModel as specified by tags. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		This function will only be available through the v1 compatibility library as tf.compat.v1.saved_model.loader.load or tf.compat.v1.saved_model.load. There will be a new function for importing SavedModels in Tensorflow 2.0.
		
		Args:
		  sess: The TensorFlow session to restore the variables.
		  tags: Set of string tags to identify the required MetaGraphDef. These should
		      correspond to the tags used when saving the variables using the
		      SavedModel `save()` API.
		  export_dir: Directory in which the SavedModel protocol buffer and variables
		      to be loaded are located.
		  import_scope: Optional `string` -- if specified, prepend this string
		      followed by '/' to all loaded tensor names. This scope is applied to
		      tensor instances loaded into the passed session, but it is *not* written
		      through to the static `MetaGraphDef` protocol buffer that is returned.
		  **saver_kwargs: Optional keyword arguments passed through to Saver.
		
		Returns:
		  The `MetaGraphDef` protocol buffer loaded in the provided session. This
		  can be used to further extract signature-defs, collection-defs, etc.
		
		Raises:
		  RuntimeError: MetaGraphDef associated with the tags cannot be found.
		
		@compatibility(TF2)
		
		`tf.compat.v1.saved_model.load` or `tf.compat.v1.saved_model.loader.load` is
		not compatible with eager execution. Please use `tf.saved_model.load` instead
		to load your model. You can refer to the [SavedModel guide]
		(https://www.tensorflow.org/guide/saved_model) for more information as well as
		"Importing SavedModels from TensorFlow 1.x" in the [`tf.saved_model.load`]
		(https://www.tensorflow.org/api_docs/python/tf/saved_model/load) docstring.
		
		#### How to Map Arguments
		
		| TF1 Arg Name          | TF2 Arg Name    | Note                       |
		| :-------------------- | :-------------- | :------------------------- |
		| `sess`                | Not supported   | -                          |
		| `tags`                | `tags`          | -                          |
		| `export_dir`          | `export_dir`    | -                          |
		| `import_scope`        | Not supported   | Name scopes are not needed.
		:                       :                 : By default, variables are  :
		:                       :                 : associated with the loaded :
		:                       :                 : object and function names  :
		:                       :                 : are deduped.               :
		| `saver_kwargs`        | Not supported   | -                          |
		
		#### Before & After Usage Example
		
		Before:
		
		```
		with tf.compat.v1.Session(graph=tf.Graph()) as sess:
		  tf.compat.v1.saved_model.loader.load(sess, ["foo-tag"], export_dir)
		```
		
		After:
		
		```
		model = tf.saved_model.load(export_dir, tags=["foo-tag"])
		```
		@end_compatibility
	**/
	static public function load(sess:Dynamic, tags:Dynamic, export_dir:Dynamic, ?import_scope:Dynamic, ?saver_kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Load a SavedModel from `export_dir`.
		
		Signatures associated with the SavedModel are available as functions:
		
		```python
		imported = tf.saved_model.load(path)
		f = imported.signatures["serving_default"]
		print(f(x=tf.constant([[1.]])))
		```
		
		Objects exported with `tf.saved_model.save` additionally have trackable
		objects and functions assigned to attributes:
		
		```python
		exported = tf.train.Checkpoint(v=tf.Variable(3.))
		exported.f = tf.function(
		    lambda x: exported.v * x,
		    input_signature=[tf.TensorSpec(shape=None, dtype=tf.float32)])
		tf.saved_model.save(exported, path)
		imported = tf.saved_model.load(path)
		assert 3. == imported.v.numpy()
		assert 6. == imported.f(x=tf.constant(2.)).numpy()
		```
		
		_Loading Keras models_
		
		Keras models are trackable, so they can be saved to SavedModel. The object
		returned by `tf.saved_model.load` is not a Keras object (i.e. doesn't have
		`.fit`, `.predict`, etc. methods). A few attributes and functions are still
		available: `.variables`, `.trainable_variables` and `.__call__`.
		
		```python
		model = tf.keras.Model(...)
		tf.saved_model.save(model, path)
		imported = tf.saved_model.load(path)
		outputs = imported(inputs)
		```
		
		Use `tf.keras.models.load_model` to restore the Keras model.
		
		_Importing SavedModels from TensorFlow 1.x_
		
		SavedModels from `tf.estimator.Estimator` or 1.x SavedModel APIs have a flat
		graph instead of `tf.function` objects. These SavedModels will be loaded with
		the following attributes:
		
		* `.signatures`: A dictionary mapping signature names to functions.
		* `.prune(feeds, fetches) `: A method which allows you to extract
		  functions for new subgraphs. This is equivalent to importing the SavedModel
		  and naming feeds and fetches in a Session from TensorFlow 1.x.
		
		  ```python
		  imported = tf.saved_model.load(path_to_v1_saved_model)
		  pruned = imported.prune("x:0", "out:0")
		  pruned(tf.ones([]))
		  ```
		
		  See `tf.compat.v1.wrap_function` for details.
		* `.variables`: A list of imported variables.
		* `.graph`: The whole imported graph.
		* `.restore(save_path)`: A function that restores variables from a checkpoint
		  saved from `tf.compat.v1.Saver`.
		
		_Consuming SavedModels asynchronously_
		
		When consuming SavedModels asynchronously (the producer is a separate
		process), the SavedModel directory will appear before all files have been
		written, and `tf.saved_model.load` will fail if pointed at an incomplete
		SavedModel. Rather than checking for the directory, check for
		"saved_model_dir/saved_model.pb". This file is written atomically as the last
		`tf.saved_model.save` file operation.
		
		Args:
		  export_dir: The SavedModel directory to load from.
		  tags: A tag or sequence of tags identifying the MetaGraph to load. Optional
		    if the SavedModel contains a single MetaGraph, as for those exported from
		    `tf.saved_model.save`.
		  options: `tf.saved_model.LoadOptions` object that specifies options for
		    loading.
		
		Returns:
		  A trackable object with a `signatures` attribute mapping from signature
		  keys to functions. If the SavedModel was exported by `tf.saved_model.save`,
		  it also points to trackable objects, functions, debug info which it has been
		  saved.
		
		Raises:
		  ValueError: If `tags` don't match a MetaGraph in the SavedModel.
	**/
	static public function load_v2(export_dir:Dynamic, ?tags:Dynamic, ?options:Dynamic):Dynamic;
	/**
		Returns a main op to init variables, tables and restore the graph. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		This function will only be available through the v1 compatibility library as tf.compat.v1.saved_model.main_op_with_restore or tf.compat.v1.saved_model.main_op.main_op_with_restore.
		
		Returns the main op including the group of ops that initializes all
		variables, initialize local variables, initialize all tables and the restore
		op name.
		
		Args:
		  restore_op_name: Name of the op to use to restore the graph.
		
		Returns:
		  The set of ops to be run as part of the main op upon the load operation.
	**/
	static public function main_op_with_restore(restore_op_name:Dynamic):Dynamic;
	/**
		Checks whether the provided export directory could contain a SavedModel.
		
		Note that the method does not load any data by itself. If the method returns
		`false`, the export directory definitely does not contain a SavedModel. If the
		method returns `true`, the export directory may contain a SavedModel but
		provides no guarantee that it can be loaded.
		
		Args:
		  export_dir: Absolute string path to possible export location. For example,
		              '/my/foo/model'.
		
		Returns:
		  True if the export directory contains SavedModel files, False otherwise.
	**/
	static public function maybe_saved_model_directory(export_dir:Dynamic):Dynamic;
	/**
		Creates prediction signature from given inputs and outputs.
		
		This function produces signatures intended for use with the TensorFlow Serving
		Predict API (tensorflow_serving/apis/prediction_service.proto). This API
		imposes no constraints on the input and output types.
		
		Args:
		  inputs: dict of string to `Tensor`.
		  outputs: dict of string to `Tensor`.
		
		Returns:
		  A prediction-flavored signature_def.
		
		Raises:
		  ValueError: If inputs or outputs is `None`.
	**/
	static public function predict_signature_def(inputs:Dynamic, outputs:Dynamic):Dynamic;
	/**
		Creates regression signature from given examples and predictions.
		
		This function produces signatures intended for use with the TensorFlow Serving
		Regress API (tensorflow_serving/apis/prediction_service.proto), and so
		constrains the input and output types to those allowed by TensorFlow Serving.
		
		Args:
		  examples: A string `Tensor`, expected to accept serialized tf.Examples.
		  predictions: A float `Tensor`.
		
		Returns:
		  A regression-flavored signature_def.
		
		Raises:
		  ValueError: If examples is `None`.
	**/
	static public function regression_signature_def(examples:Dynamic, predictions:Dynamic):Dynamic;
	/**
		Exports a [tf.Module](https://www.tensorflow.org/api_docs/python/tf/Module) (and subclasses) `obj` to [SavedModel format](https://www.tensorflow.org/guide/saved_model#the_savedmodel_format_on_disk).
		
		The `obj` must inherit from the [`Trackable` class](https://github.com/tensorflow/tensorflow/blob/master/tensorflow/python/training/tracking/base.py#L591).
		
		Example usage:
		
		>>> class Adder(tf.Module):
		...   @tf.function(input_signature=[tf.TensorSpec(shape=[], dtype=tf.float32)])
		...   def add(self, x):
		...     return x + x
		
		>>> model = Adder()
		>>> tf.saved_model.save(model, '/tmp/adder')
		
		The resulting SavedModel is then servable with an input named "x", a scalar
		with dtype float32.
		
		_Signatures_
		
		Signatures define the input and output types for a computation. The optional
		save `signatures` argument controls which methods in `obj` will be
		available to programs which consume `SavedModel`s, for example, serving
		APIs. Python functions may be decorated with
		`@tf.function(input_signature=...)` and passed as signatures directly, or
		lazily with a call to `get_concrete_function` on the method decorated with
		`@tf.function`.
		
		Example:
		
		>>> class Adder(tf.Module):
		...   @tf.function
		...   def add(self, x):
		...     return x + x
		
		>>> model = Adder()
		>>> tf.saved_model.save(
		...   model, '/tmp/adder',signatures=model.add.get_concrete_function(
		...     tf.TensorSpec([], tf.float32)))
		
		If a `@tf.function` does not have an input signature and
		`get_concrete_function` is not called on that method, the function will not
		be directly callable in the restored SavedModel.
		
		Example:
		
		>>> class Adder(tf.Module):
		...   @tf.function
		...   def add(self, x):
		...     return x + x
		
		>>> model = Adder()
		>>> tf.saved_model.save(model, '/tmp/adder')
		>>> restored = tf.saved_model.load('/tmp/adder')
		>>> restored.add(1.)
		Traceback (most recent call last):
		...
		ValueError: Found zero restored functions for caller function.
		
		If the `signatures` argument is omitted, `obj` will be searched for
		`@tf.function`-decorated methods. If exactly one traced `@tf.function` is
		found, that method will be used as the default signature for the SavedModel.
		Else, any `@tf.function` attached to `obj` or its dependencies will be
		exported for use with `tf.saved_model.load`.
		
		When invoking a signature in an exported SavedModel, `Tensor` arguments are
		identified by name. These names will come from the Python function's argument
		names by default. They may be overridden by specifying a `name=...` argument
		in the corresponding `tf.TensorSpec` object. Explicit naming is required if
		multiple `Tensor`s are passed through a single argument to the Python
		function.
		
		The outputs of functions used as `signatures` must either be flat lists, in
		which case outputs will be numbered, or a dictionary mapping string keys to
		`Tensor`, in which case the keys will be used to name outputs.
		
		Signatures are available in objects returned by `tf.saved_model.load` as a
		`.signatures` attribute. This is a reserved attribute: `tf.saved_model.save`
		on an object with a custom `.signatures` attribute will raise an exception.
		
		_Using `tf.saved_model.save` with Keras models_
		
		While Keras has its own [saving and loading API](https://www.tensorflow.org/guide/keras/save_and_serialize),
		this function can be used to export Keras models. For example, exporting with
		a signature specified:
		
		>>> class Adder(tf.keras.Model):
		...   @tf.function(input_signature=[tf.TensorSpec(shape=[], dtype=tf.string)])
		...   def concat(self, x):
		...      return x + x
		
		>>> model = Adder()
		>>> tf.saved_model.save(model, '/tmp/adder')
		
		Exporting from a function without a fixed signature:
		
		>>> class Adder(tf.keras.Model):
		...   @tf.function
		...   def concat(self, x):
		...      return x + x
		
		>>> model = Adder()
		>>> tf.saved_model.save(
		...   model, '/tmp/adder',
		...   signatures=model.concat.get_concrete_function(
		...     tf.TensorSpec(shape=[], dtype=tf.string, name="string_input")))
		
		`tf.keras.Model` instances constructed from inputs and outputs already have a
		signature and so do not require a `@tf.function` decorator or a `signatures`
		argument. If neither are specified, the model's forward pass is exported.
		
		>>> x = tf.keras.layers.Input((4,), name="x")
		>>> y = tf.keras.layers.Dense(5, name="out")(x)
		>>> model = tf.keras.Model(x, y)
		>>> tf.saved_model.save(model, '/tmp/saved_model/')
		
		The exported SavedModel takes "x" with shape [None, 4] and returns "out"
		with shape [None, 5]
		
		_Variables and Checkpoints_
		
		Variables must be tracked by assigning them to an attribute of a tracked
		object or to an attribute of `obj` directly. TensorFlow objects (e.g. layers
		from `tf.keras.layers`, optimizers from `tf.train`) track their variables
		automatically. This is the same tracking scheme that `tf.train.Checkpoint`
		uses, and an exported `Checkpoint` object may be restored as a training
		checkpoint by pointing `tf.train.Checkpoint.restore` to the SavedModel's
		"variables/" subdirectory.
		
		`tf.function` does not hard-code device annotations from outside the function
		body, instead of using the calling context's device. This means for example
		that exporting a model that runs on a GPU and serving it on a CPU will
		generally work, with some exceptions:
		
		  * `tf.device` annotations inside the body of the function will be hard-coded
		    in the exported model; this type of annotation is discouraged.
		  * Device-specific operations, e.g. with "cuDNN" in the name or with
		    device-specific layouts, may cause issues.
		  * For `ConcreteFunctions`, active distribution strategies will cause device
		    placements to be hard-coded in the function.
		
		SavedModels exported with `tf.saved_model.save` [strip default-valued
		attributes](https://github.com/tensorflow/tensorflow/blob/master/tensorflow/python/saved_model/README.md#stripping-default-valued-attributes)
		automatically, which removes one source of incompatibilities when the consumer
		of a SavedModel is running an older TensorFlow version than the
		producer. There are however other sources of incompatibilities which are not
		handled automatically, such as when the exported model contains operations
		which the consumer does not have definitions for.
		
		Args:
		  obj: A trackable object (e.g. tf.Module or tf.train.Checkpoint) to export.
		  export_dir: A directory in which to write the SavedModel.
		  signatures: Optional, one of three types:
		    * a `tf.function` with an input signature specified, which will use the
		      default serving signature key,
		    * the result of `f.get_concrete_function` on a `@tf.function`-decorated
		      function `f`, in which case `f` will be used to generate a signature for
		      the SavedModel under the default serving signature key,
		    * a dictionary, which maps signature keys to either `tf.function`
		      instances with input signatures or concrete functions. Keys of such a
		      dictionary may be arbitrary strings, but will typically be from the
		      `tf.saved_model.signature_constants` module.
		  options: `tf.saved_model.SaveOptions` object for configuring save options.
		
		Raises:
		  ValueError: If `obj` is not trackable.
		
		@compatibility(eager)
		Not well supported when graph building. From TensorFlow 1.x,
		`tf.compat.v1.enable_eager_execution()` should run first. Calling
		tf.saved_model.save in a loop when graph building from TensorFlow 1.x will
		add new save operations to the default graph each iteration.
		
		May not be called from within a function body.
		@end_compatibility
	**/
	static public function save(obj:Dynamic, export_dir:Dynamic, ?signatures:Dynamic, ?options:Dynamic):Dynamic;
	/**
		Convenience function to build a SavedModel suitable for serving. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		This function will only be available through the v1 compatibility library as tf.compat.v1.saved_model.simple_save.
		
		In many common cases, saving models for serving will be as simple as:
		
		    simple_save(session,
		                export_dir,
		                inputs={"x": x, "y": y},
		                outputs={"z": z})
		
		Although in many cases it's not necessary to understand all of the many ways
		    to configure a SavedModel, this method has a few practical implications:
		  - It will be treated as a graph for inference / serving (i.e. uses the tag
		    `saved_model.SERVING`)
		  - The SavedModel will load in TensorFlow Serving and supports the
		    [Predict
		    API](https://github.com/tensorflow/serving/blob/master/tensorflow_serving/apis/predict.proto).
		    To use the Classify, Regress, or MultiInference APIs, please
		    use either
		    [tf.Estimator](https://www.tensorflow.org/api_docs/python/tf/estimator/Estimator)
		    or the lower level
		    [SavedModel
		    APIs](https://github.com/tensorflow/tensorflow/blob/master/tensorflow/python/saved_model/README.md).
		  - Some TensorFlow ops depend on information on disk or other information
		    called "assets". These are generally handled automatically by adding the
		    assets to the `GraphKeys.ASSET_FILEPATHS` collection. Only assets in that
		    collection are exported; if you need more custom behavior, you'll need to
		    use the
		    [SavedModelBuilder](https://github.com/tensorflow/tensorflow/blob/master/tensorflow/python/saved_model/builder.py).
		
		More information about SavedModel and signatures can be found here:
		https://github.com/tensorflow/tensorflow/blob/master/tensorflow/python/saved_model/README.md.
		
		Args:
		  session: The TensorFlow session from which to save the meta graph and
		      variables.
		  export_dir: The path to which the SavedModel will be stored.
		  inputs: dict mapping string input names to tensors. These are added
		      to the SignatureDef as the inputs.
		  outputs:  dict mapping string output names to tensors. These are added
		      to the SignatureDef as the outputs.
		  legacy_init_op: Legacy support for op or group of ops to execute after the
		      restore op upon a load.
	**/
	static public function simple_save(session:Dynamic, export_dir:Dynamic, inputs:Dynamic, outputs:Dynamic, ?legacy_init_op:Dynamic):Dynamic;
}