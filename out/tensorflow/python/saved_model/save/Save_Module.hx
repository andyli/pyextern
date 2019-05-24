/* This file is generated, do not edit! */
package tensorflow.python.saved_model.save;
@:pythonImport("tensorflow.python.saved_model.save") extern class Save_Module {
	static public var DEFAULT_SIGNATURE_ATTR : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Calls `function` in the exported graph, using mapped resource captures.
	**/
	static public function _call_function_with_mapped_captures(_function:Dynamic, args:Dynamic, resource_map:Dynamic):Dynamic;
	/**
		Converts `signatures` into a dictionary of concrete functions.
	**/
	static public function _canonicalize_signatures(signatures:Dynamic):Dynamic;
	/**
		Generates a MetaGraph which calls `signature_functions`.
		
		Args:
		  meta_graph_def: The MetaGraphDef proto to fill.
		  obj: The checkpointable object being exported.
		  signature_functions: A dictionary mapping signature keys to concrete
		    functions containing signatures to add to the MetaGraph.
		  object_saver: A CheckpointableSaver to add to the MetaGraph.
		
		Returns:
		  An _AssetInfo, which contains information to help creating the SavedModel.
	**/
	static public function _fill_meta_graph_def(meta_graph_def:Dynamic, obj:Dynamic, signature_functions:Dynamic, object_saver:Dynamic):Dynamic;
	/**
		Iterate over `root`'s attributes, finding traced functions.
	**/
	static public function _find_function_to_export(root:Dynamic):Dynamic;
	/**
		Validates and calls `signature_functions` in the default graph.
		
		Args:
		  signature_functions: A dictionary mapping string keys to concrete TensorFlow
		    functions (e.g. from `_canonicalize_signatures`) which will be used to
		    generate SignatureDefs.
		  resource_map: A dictionary mapping from resource tensors in the eager
		    context to resource tensors in the Graph being exported. This dictionary
		    is used to re-bind resources captured by functions to tensors which will
		    exist in the SavedModel.
		
		Returns:
		  Each function in the `signature_functions` dictionary is called with
		  placeholder Tensors, generating a function call operation and output
		  Tensors. The placeholder Tensors, the function call operation, and the
		  output Tensors from the function call are part of the default Graph.
		
		  This function then returns a dictionary with the same structure as
		  `signature_functions`, with the concrete functions replaced by SignatureDefs
		  implicitly containing information about how to call each function from a
		  TensorFlow 1.x Session / the C++ Loader API. These SignatureDefs reference
		  the generated placeholders and Tensor outputs by name.
		
		  The caller is expected to include the default Graph set while calling this
		  function as a MetaGraph in a SavedModel, including the returned
		  SignatureDefs as part of that MetaGraph.
	**/
	static public function _generate_signatures(signature_functions:Dynamic, resource_map:Dynamic):Dynamic;
	static public function _is_flat(sequence:Dynamic):Dynamic;
	/**
		Maps eager tensors captured by a function to Graph resources for export.
		
		Args:
		  original_captures: A dictionary mapping from tensors captured by the
		    function to interior placeholders for those tensors (inside the function
		    body).
		  resource_map: A dictionary mapping from resource tensors owned by the eager
		    context to resource tensors in the exported graph.
		
		Returns:
		  A list of stand-in tensors which belong to the exported graph, corresponding
		  to the function's captures.
		
		Raises:
		  AssertionError: If the function references a resource which is not part of
		    `resource_map`.
	**/
	static public function _map_captures_to_created_tensors(original_captures:Dynamic, resource_map:Dynamic):Dynamic;
	/**
		Creates exterior placeholders in the exported graph for function arguments.
		
		Functions have two types of inputs: tensors captured from the outside (eager)
		context, and arguments to the function which we expect to receive from the
		user at each call. `_map_captures_to_created_tensors` replaces
		captured tensors with stand-ins (typically these are resource dtype tensors
		associated with variables). `_map_function_inputs_to_created_inputs` runs over
		every argument, creating a new placeholder for each which will belong to the
		exported graph rather than the function body.
		
		Args:
		  function_arguments: A list of argument placeholders in the function body.
		  signature_key: The name of the signature being exported, for error messages.
		  function_name: The name of the function, for error messages.
		
		Returns:
		  A tuple of (mapped_inputs, exterior_placeholders)
		    mapped_inputs: A list with entries corresponding to `function_arguments`
		      containing all of the inputs of the function gathered from the exported
		      graph (both captured resources and arguments).
		    exterior_argument_placeholders: A dictionary mapping from argument names
		      to placeholders in the exported graph, containing the explicit arguments
		      to the function which a user is expected to provide.
		
		Raises:
		  ValueError: If argument names are not unique.
	**/
	static public function _map_function_arguments_to_created_inputs(function_arguments:Dynamic, signature_key:Dynamic, function_name:Dynamic):Dynamic;
	/**
		Makes new resource handle ops corresponding to existing resource tensors.
		
		Creates resource handle ops in the current default graph, whereas
		`accessible_objects` will be from an eager context. Resource mapping adds
		resource handle ops to the main GraphDef of a SavedModel, which allows the C++
		loader API to interact with variables.
		
		Args:
		  accessible_objects: A list of objects, some of which may contain resources,
		    to create replacements for.
		
		Returns:
		  A tuple of (object_map, resource_map, asset_info):
		    object_map: A dictionary mapping from object in `accessible_objects` to
		      replacement objects created to hold the new resource tensors.
		    resource_map: A dictionary mapping from resource tensors extracted from
		      `accessible_objects` to newly created resource tensors.
		    asset_info: An _AssetInfo tuple describing external assets referenced from
		      accessible_objects.
	**/
	static public function _map_resources(accessible_objects:Dynamic):Dynamic;
	/**
		Construct an output dictionary from unnormalized function outputs.
	**/
	static public function _normalize_outputs(outputs:Dynamic, function_name:Dynamic, signature_key:Dynamic):Dynamic;
	/**
		Add `trackable_asset` to `asset_info` and `resource_map`.
	**/
	static public function _process_asset(trackable_asset:Dynamic, asset_info:Dynamic, resource_map:Dynamic):Dynamic;
	static public function _tensor_dict_to_tensorinfo(tensor_dict:Dynamic):Dynamic;
	/**
		Create concrete functions from `TrackableResource` objects.
	**/
	static public function _trace_resource_initializers(accessible_objects:Dynamic):Dynamic;
	/**
		Save a SavedObjectGraph proto for `root`.
	**/
	static public function _write_object_graph(root:Dynamic, export_dir:Dynamic, asset_file_def_index:Dynamic):Dynamic;
	/**
		Saves an object into SavedObject proto.
	**/
	static public function _write_object_proto(obj:Dynamic, proto:Dynamic, asset_file_def_index:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
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
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}