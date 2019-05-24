/* This file is generated, do not edit! */
package tensorflow.saved_model.experimental;
@:pythonImport("tensorflow.saved_model.experimental") extern class Experimental_Module {
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
		Exports the Checkpointable object `obj` to [SavedModel format](https://github.com/tensorflow/tensorflow/blob/master/tensorflow/python/saved_model/README.md).
		
		Example usage:
		
		```python
		class Adder(tf.train.Checkpoint):
		
		  @tf.function(input_signature=[tf.TensorSpec(shape=None, dtype=tf.float32)])
		  def add(self, x):
		    return x + x + 1.
		
		to_export = Adder()
		tf.saved_model.save(to_export, '/tmp/adder')
		```
		
		The resulting SavedModel is then servable with an input named "x", its value
		having any shape and dtype float32.
		
		The optional `signatures` argument controls which methods in `obj` will be
		available to programs which consume `SavedModel`s, for example serving
		APIs. Python functions may be decorated with
		`@tf.function(input_signature=...)` and passed as signatures directly, or
		lazily with a call to `get_concrete_function` on the method decorated with
		`@tf.function`.
		
		If the `signatures` argument is omitted, `obj` will be searched for
		`@tf.function`-decorated methods. If exactly one `@tf.function` is found, that
		method will be used as the default signature for the SavedModel. This behavior
		is expected to change in the future, when a corresponding
		`tf.saved_model.load` symbol is added. At that point signatures will be
		completely optional, and any `@tf.function` attached to `obj` or its
		dependencies will be exported for use with `load`.
		
		When invoking a signature in an exported SavedModel, `Tensor` arguments are
		identified by name. These names will come from the Python function's argument
		names by default. They may be overridden by specifying a `name=...` argument
		in the corresponding `tf.TensorSpec` object. Explicit naming is required if
		multiple `Tensor`s are passed through a single argument to the Python
		function.
		
		The outputs of functions used as `signatures` must either be flat lists, in
		which case outputs will be numbered, or a dictionary mapping string keys to
		`Tensor`, in which case the keys will be used to name outputs.
		
		Since `tf.keras.Model` objects are also Checkpointable, this function can be
		used to export Keras models. For example, exporting with a signature
		specified:
		
		```python
		class Model(tf.keras.Model):
		
		  @tf.function(input_signature=[tf.TensorSpec(shape=[None], dtype=tf.string)])
		  def serve(self, serialized):
		    ...
		
		m = Model()
		tf.saved_model.save(m, '/tmp/saved_model/')
		```
		
		Exporting from a function without a fixed signature:
		
		```python
		class Model(tf.keras.Model):
		
		  @tf.function
		  def call(self, x):
		    ...
		
		m = Model()
		tf.saved_model.save(
		    m, '/tmp/saved_model/',
		    signatures=m.call.get_concrete_function(
		        tf.TensorSpec(shape=[None, 3], dtype=tf.float32, name="inp")))
		```
		
		`tf.keras.Model` instances constructed from inputs and outputs already have a
		signature and so do not require a `@tf.function` decorator or a `signatures`
		argument. If neither are specified, the model's forward pass is exported.
		
		```python
		x = input_layer.Input((4,), name="x")
		y = core.Dense(5, name="out")(x)
		model = training.Model(x, y)
		tf.saved_model.save(model, '/tmp/saved_model/')
		# The exported SavedModel takes "x" with shape [None, 4] and returns "out"
		# with shape [None, 5]
		```
		
		Variables must be tracked by assigning them to an attribute of a tracked
		object or to an attribute of `obj` directly. TensorFlow objects (e.g. layers
		from `tf.keras.layers`, optimizers from `tf.train`) track their variables
		automatically. This is the same tracking scheme that `tf.train.Checkpoint`
		uses, and an exported `Checkpoint` object may be restored as a training
		checkpoint by pointing `tf.train.Checkpoint.restore` to the SavedModel's
		"variables/" subdirectory. Currently variables are the only stateful objects
		supported by `tf.saved_model.save`, but others (e.g. tables) will be supported
		in the future.
		
		`tf.function` does not hard-code device annotations from outside the function
		body, instead using the calling context's device. This means for example that
		exporting a model which runs on a GPU and serving it on a CPU will generally
		work, with some exceptions. `tf.device` annotations inside the body of the
		function will be hard-coded in the exported model; this type of annotation is
		discouraged. Device-specific operations, e.g. with "cuDNN" in the name or with
		device-specific layouts, may cause issues. Currently a `DistributionStrategy`
		is another exception: active distribution strategies will cause device
		placements to be hard-coded in a function. Exporting a single-device
		computation and importing under a `DistributionStrategy` is not currently
		supported, but may be in the future.
		
		SavedModels exported with `tf.saved_model.save` [strip default-valued
		attributes](https://github.com/tensorflow/tensorflow/blob/master/tensorflow/python/saved_model/README.md#stripping-default-valued-attributes)
		automatically, which removes one source of incompatibilities when the consumer
		of a SavedModel is running an older TensorFlow version than the
		producer. There are however other sources of incompatibilities which are not
		handled automatically, such as when the exported model contains operations
		which the consumer does not have definitions for.
		
		The current implementation of `tf.saved_model.save` targets serving use-cases,
		but omits information which will be necessary for the planned future
		implementation of `tf.saved_model.load`. Exported models using the current
		`save` implementation, and other existing SavedModels, will not be compatible
		with `tf.saved_model.load` when it is implemented. Further, `save` will in the
		future attempt to export `@tf.function`-decorated methods which it does not
		currently inspect, so some objects which are exportable today will raise
		exceptions on export in the future (e.g. due to complex/non-serializable
		default arguments). Such backwards-incompatible API changes are expected only
		prior to the TensorFlow 2.0 release.
		
		Args:
		  obj: A checkpointable object to export.
		  export_dir: A directory in which to write the SavedModel.
		  signatures: Optional, either a `tf.function` with an input signature
		    specified or the result of `f.get_concrete_function` on a
		    `@tf.function`-decorated function `f`, in which case `f` will be used to
		    generate a signature for the SavedModel under the default serving
		    signature key. `signatures` may also be a dictionary, in which case it
		    maps from signature keys to either `tf.function` instances with input
		    signatures or concrete functions. The keys of such a dictionary may be
		    arbitrary strings, but will typically be from the
		    `tf.saved_model.signature_constants` module.
		
		Raises:
		  ValueError: If `obj` is not checkpointable.
		
		@compatibility(eager)
		Not supported when graph building. From TensorFlow 1.x,
		`tf.enable_eager_execution()` must run first. May not be called from within a
		function body.
		@end_compatibility
	**/
	static public function save(obj:Dynamic, export_dir:Dynamic, ?signatures:Dynamic):Dynamic;
}