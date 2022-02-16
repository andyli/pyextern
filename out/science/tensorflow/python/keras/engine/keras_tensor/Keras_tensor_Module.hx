/* This file is generated, do not edit! */
package tensorflow.python.keras.engine.keras_tensor;
@:pythonImport("tensorflow.python.keras.engine.keras_tensor") extern class Keras_tensor_Module {
	static public var _MAX_TENSOR_RANK : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var keras_tensor_classes : Dynamic;
	/**
		Convert a traced (composite)tensor to a representative KerasTensor.
	**/
	static public function keras_tensor_from_tensor(tensor:Dynamic):Dynamic;
	/**
		Convert a TypeSpec to a representative KerasTensor.
	**/
	static public function keras_tensor_from_type_spec(type_spec:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Construct a graph placeholder to represent a KerasTensor when tracing.
	**/
	static public function keras_tensor_to_placeholder(x:Dynamic):Dynamic;
	/**
		Register a specialized KerasTensor subclass for a Tensor type.
	**/
	static public function register_keras_tensor_specialization(cls:Dynamic, keras_tensor_subclass:Dynamic):Dynamic;
}