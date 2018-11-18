/* This file is generated, do not edit! */
package tensorflow.python.keras.applications.inception_resnet_v2;
@:pythonImport("tensorflow.python.keras.applications.inception_resnet_v2") extern class Inception_resnet_v2_Module {
	static public function InceptionResNetV2(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	static public function decode_predictions(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var division : Dynamic;
	/**
		Decorator injecting tf.keras replacements for Keras modules.
		
		Arguments:
		    base_fun: Application function to decorate (e.g. `MobileNet`).
		
		Returns:
		    Decorated function that injects keyword argument for the tf.keras
		    modules required by the Applications.
	**/
	static public function keras_modules_injection(base_fun:Dynamic):Dynamic;
	static public function preprocess_input(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var print_function : Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}