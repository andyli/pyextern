/* This file is generated, do not edit! */
package tensorflow._api.v1.compat.v1.saved_model;
@:pythonImport("tensorflow._api.v1.compat.v1.saved_model") extern class Saved_model_Module {
	static public var ASSETS_DIRECTORY : Dynamic;
	static public var ASSETS_KEY : Dynamic;
	static public var CLASSIFY_INPUTS : Dynamic;
	static public var CLASSIFY_METHOD_NAME : Dynamic;
	static public var CLASSIFY_OUTPUT_CLASSES : Dynamic;
	static public var CLASSIFY_OUTPUT_SCORES : Dynamic;
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
		      constitutent Tensors are used.
		
		Returns:
		  A TensorInfo protocol buffer constructed based on the supplied argument.
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
		Returns the Tensor or SparseTensor described by a TensorInfo proto. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		This function will only be available through the v1 compatibility library as tf.compat.v1.saved_model.utils.get_tensor_from_tensor_info or tf.compat.v1.saved_model.get_tensor_from_tensor_info.
		
		Args:
		  tensor_info: A TensorInfo proto describing a Tensor or SparseTensor.
		  graph: The tf.Graph in which tensors are looked up. If None, the
		      current default graph is used.
		  import_scope: If not None, names in `tensor_info` are prefixed with this
		      string before lookup.
		
		Returns:
		  The Tensor or SparseTensor in `graph` described by `tensor_info`.
		
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
	**/
	static public function load(sess:Dynamic, tags:Dynamic, export_dir:Dynamic, ?import_scope:Dynamic, ?saver_kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		    `tag_constants.SERVING`)
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