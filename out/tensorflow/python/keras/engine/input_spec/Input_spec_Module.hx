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
	static public var absolute_import : Dynamic;
	/**
		Checks compatibility between the layer and provided inputs.
		
		This checks that the tensor(s) `inputs` verify the input assumptions
		of a layer (if any). If not, a clear and actional exception gets raised.
		
		Arguments:
		    input_spec: An InputSpec instance, or None.
		    inputs: Input tensor or list of input tensors.
		    layer_name: String, name of the layer (for error message formatting).
		
		Raises:
		    ValueError: in case of mismatch between
		        the provided inputs and the expectations of the layer.
	**/
	static public function assert_input_compatibility(input_spec:Dynamic, inputs:Dynamic, layer_name:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}