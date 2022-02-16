/* This file is generated, do not edit! */
package tensorflow.python.saved_model.simple_save;
@:pythonImport("tensorflow.python.saved_model.simple_save") extern class Simple_save_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
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
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}