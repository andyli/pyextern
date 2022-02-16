/* This file is generated, do not edit! */
package tensorflow.compat.v1.saved_model.experimental;
@:pythonImport("tensorflow.compat.v1.saved_model.experimental") extern class Experimental_Module {
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
}