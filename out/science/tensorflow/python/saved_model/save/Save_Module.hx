/* This file is generated, do not edit! */
package tensorflow.python.saved_model.save;
@:pythonImport("tensorflow.python.saved_model.save") extern class Save_Module {
	static public var _NUM_DISPLAY_UNTRACED_FUNCTIONS : Dynamic;
	static public var _SAVE_V2_LABEL : Dynamic;
	static public var _UNCOPIABLE_DTYPES : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Creates a MetaGraph under a save context.
		
		Args:
		  obj: A trackable object to build the MetaGraph from.
		  signatures: Can be a `tf.function` with an input signature specified or the
		    result of `f.get_concrete_function` on a `@tf.function`-decorated function
		    `f`. `signatures` may also be a dictionary, in which case it maps from
		    signature keys to `tf.function` instances. If None, finds signature to
		    export from the `@tf.function`-decorated methods in `obj`.
		  options: `tf.saved_model.SaveOptions` object that specifies options for
		    saving.
		  meta_graph_def: Optional, the MetaGraphDef proto fill.
		
		Raises:
		  AssertionError: If `export_meta_graph` is executing inside a `tf.function`.
		  ValueError: If `obj` is not trackable.
		
		Returns:
		  meta_graph_def: Filled MetaGraphDef proto
		  exported_graph: `tf.Graph` object generated from `obj`.
		  object_saver: `util.TrackableSaver` of the `obj` and its dependencies.
		  asset_info: `_AssetInfo` tuple containing external assets in the `obj`.
	**/
	static public function _build_meta_graph(obj:Dynamic, signatures:Dynamic, options:Dynamic, ?meta_graph_def:Dynamic):Dynamic;
	/**
		Creates a MetaGraph containing the resources and functions of an object.
	**/
	static public function _build_meta_graph_impl(obj:Dynamic, signatures:Dynamic, options:Dynamic, ?meta_graph_def:Dynamic):Dynamic;
	/**
		Calls `function` in the exported graph, using mapped resource captures.
	**/
	static public function _call_function_with_mapped_captures(_function:Dynamic, args:Dynamic, resource_map:Dynamic):Dynamic;
	/**
		Exports debug information from graph to file.
		
		Creates and writes GraphDebugInfo with traces for ops in all functions of the
		exported_graph.
		
		Args:
		  exported_graph: A Graph that has been created by tracing a saveable view.
		  export_dir: SavedModel directory in which to write the debug info.
	**/
	static public function _export_debug_info(exported_graph:Dynamic, export_dir:Dynamic):Dynamic;
	/**
		Generates a MetaGraph which calls `signature_functions`.
		
		Args:
		  meta_graph_def: The MetaGraphDef proto to fill.
		  saveable_view: The _SaveableView being exported.
		  signature_functions: A dictionary mapping signature keys to concrete
		    functions containing signatures to add to the MetaGraph.
		  namespace_whitelist: List of strings containing whitelisted op namespaces.
		  save_custom_gradients: Whether to save custom gradients.
		
		Returns:
		  A tuple of (_AssetInfo, Graph) containing the captured assets and
		  exported Graph generated from tracing the saveable_view.
	**/
	static public function _fill_meta_graph_def(meta_graph_def:Dynamic, saveable_view:Dynamic, signature_functions:Dynamic, namespace_whitelist:Dynamic, save_custom_gradients:Dynamic):Dynamic;
	/**
		Generates global and individual save/restore concrete functions.
		
		The global functions records the ops to save and restore the entire object to
		a file prefix, while the individual functions save and restore value tensors
		for resources.
		
		This function is intended to run on the output of
		`graph_view.get_checkpoint_factories_and_keys(object_names)`, which returns
		the generated a map of `_CheckpointFactoryData`.
		
		Args:
		  checkpoint_factory_map: A dictionary mapping trackable objects to
		    _CheckpointFactoryData.
		
		Returns:
		  Tuple of (
		    saveable_fn_map: Maps obj -> factory name -> (concrete save, restore)
		    )
	**/
	static public function _gen_save_and_restore_functions(checkpoint_factory_map:Dynamic):Dynamic;
	/**
		Validates and calls `signature_functions` in the default graph.
		
		Args:
		  signature_functions: A dictionary mapping string keys to concrete TensorFlow
		    functions (e.g. from `signature_serialization.canonicalize_signatures`)
		    which will be used to generate SignatureDefs.
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
	/**
		Tries to find the original captured tensor if capture more than once.
	**/
	static public function _get_outer_most_capture(fn:Dynamic, capture:Dynamic, func_graph_map:Dynamic):Dynamic;
	/**
		Iterates through each op in the function and returns the op type and op.
	**/
	static public function _iterate_op_types(fn:Dynamic):Dynamic;
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
		Add `trackable_asset` to `asset_info` and `resource_map`.
	**/
	static public function _process_asset(trackable_asset:Dynamic, asset_info:Dynamic, resource_map:Dynamic):Dynamic;
	/**
		Save a SavedObjectGraph proto for `root`.
	**/
	static public function _serialize_object_graph(saveable_view:Dynamic, asset_file_def_index:Dynamic):Dynamic;
	static public function _tensor_dict_to_tensorinfo(tensor_dict:Dynamic):Dynamic;
	/**
		Creates a sanitized name scope from user signature and input names.
		
		Concatenates signature and input names, sanitizing as needed to be a valid
		scope name.
		
		Args:
		  signature_key: The user-provided key for the signature.
		  user_input_name: The user-provided name for the input placeholder.
		
		Returns:
		  A name scope that is safe to be used in tf.name_scope().
	**/
	static public function _to_safe_name_scope(signature_key:Dynamic, user_input_name:Dynamic):Dynamic;
	/**
		Traces gradient functions and records them in the SaveableView.
	**/
	static public function _trace_gradient_functions(graph:Dynamic, saveable_view:Dynamic):Dynamic;
	/**
		Create concrete functions from `CapturableResource` objects.
	**/
	static public function _trace_resource_initializers(accessible_objects:Dynamic):Dynamic;
	/**
		Verifies that all namespaced ops in the graph are whitelisted.
		
		Args:
		 graph_def: the GraphDef to validate.
		 namespace_whitelist: a list of namespaces to allow. If `None`, all will be
		   allowed. If an op does not have a namespace, it will be allowed.
		
		Raises:
		 ValueError: If the graph contains ops that violate the whitelist.
	**/
	static public function _verify_ops(graph_def:Dynamic, namespace_whitelist:Dynamic):Dynamic;
	/**
		Saves an object into SavedObject proto.
	**/
	static public function _write_object_proto(obj:Dynamic, proto:Dynamic, asset_file_def_index:Dynamic, function_name_map:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Exports the MetaGraph proto of the `obj` to a file.
		
		This function goes through the same procedures saved_model.save goes to
		produce the given object's MetaGraph, then saves it to the given file. It
		skips saving checkpoint information, and is useful when all one wants is the
		graph defining the model.
		
		Args:
		  obj: A trackable object to build the MetaGraph from.
		  filename: The file into which to write the MetaGraph.
		  signatures: Optional, either a `tf.function` with an input signature
		    specified or the result of `f.get_concrete_function` on a
		    `@tf.function`-decorated function `f`, in which case `f` will be used to
		    generate a signature for the SavedModel under the default serving
		    signature key. `signatures` may also be a dictionary, in which case it
		    maps from signature keys to either `tf.function` instances with input
		    signatures or concrete functions. The keys of such a dictionary may be
		    arbitrary strings, but will typically be from the
		    `tf.saved_model.signature_constants` module.
		  options: Optional, `tf.saved_model.SaveOptions` object that specifies
		    options for saving.
	**/
	static public function export_meta_graph(obj:Dynamic, filename:Dynamic, ?signatures:Dynamic, ?options:Dynamic):Dynamic;
	static public var print_function : Dynamic;
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
		Saves a SavedModel while returning all saved nodes and their paths.
		
		Please see `tf.saved_model.save` for details.
		
		Args:
		  obj: A trackable object to export.
		  export_dir: A directory in which to write the SavedModel.
		  signatures: A function or dictionary of functions to save in the SavedModel
		    as signatures.
		  options: `tf.saved_model.SaveOptions` object for configuring save options.
		  experimental_skip_checkpoint: If set to `True`, the checkpoint will not
		    be written.
		
		Returns:
		  A tuple of (a list of saved nodes in the order they are serialized to the
		    `SavedObjectGraph`, dictionary mapping nodes to one possible path from
		    the root node to the key node)
	**/
	static public function save_and_return_nodes(obj:Dynamic, export_dir:Dynamic, ?signatures:Dynamic, ?options:Dynamic, ?experimental_skip_checkpoint:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}