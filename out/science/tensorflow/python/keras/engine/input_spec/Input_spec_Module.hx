/* This file is generated, do not edit! */
package tensorflow.python.keras.engine.input_spec;
@:pythonImport("tensorflow.python.keras.engine.input_spec") extern class Input_spec_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Checks compatibility between the layer and provided inputs.
		
		This checks that the tensor(s) `inputs` verify the input assumptions
		of a layer (if any). If not, a clear and actional exception gets raised.
		
		Args:
		    input_spec: An InputSpec instance, list of InputSpec instances, a nested
		        structure of InputSpec instances, or None.
		    inputs: Input tensor, list of input tensors, or a nested structure of
		        input tensors.
		    layer_name: String, name of the layer (for error message formatting).
		
		Raises:
		    ValueError: in case of mismatch between
		        the provided inputs and the expectations of the layer.
	**/
	static public function assert_input_compatibility(input_spec:Dynamic, inputs:Dynamic, layer_name:Dynamic):Dynamic;
	static public function display_shape(shape:Dynamic):Dynamic;
	static public function keras_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Returns a tf.TensorShape object that matches the shape specifications.
		
		If the InputSpec's shape or ndim is defined, this method will return a fully
		or partially-known shape. Otherwise, the returned TensorShape is None.
		
		Args:
		  spec: an InputSpec object.
		
		Returns:
		  a tf.TensorShape object
	**/
	static public function to_tensor_shape(spec:Dynamic):Dynamic;
	/**
		Converts a Keras InputSpec object to a TensorSpec.
	**/
	static public function to_tensor_spec(input_spec:Dynamic, ?default_dtype:Dynamic):Dynamic;
}