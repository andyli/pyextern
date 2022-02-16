/* This file is generated, do not edit! */
package tensorflow.lite.toco.logging.gen_html;
@:pythonImport("tensorflow.lite.toco.logging.gen_html") extern class Gen_html_Module {
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
	/**
		Generates an HTML report about the conversion process.
		
		Args:
		  conversion_log_dir: A string specifying the file directory of the conversion
		    logs. It's required that before calling this function, the
		    `conversion_log_dir`
		    already contains the following files: `toco_log_before.pb`,
		      `toco_log_after.pb`, `toco_tf_graph.dot`,
		      `toco_tflite_graph.dot`.
		  quantization_enabled: A boolean, passed from the tflite converter to
		    indicate whether post-training quantization is enabled during conversion.
		  tflite_graph_path: A string, the filepath to the converted TFLite model.
		
		Raises:
		  IOError: When any of the required files doesn't exist.
	**/
	static public function gen_conversion_log_html(conversion_log_dir:Dynamic, quantization_enabled:Dynamic, tflite_graph_path:Dynamic):Dynamic;
	/**
		Parses op_signature and returns a string denoting the input tensor type.
		
		Args:
		  op_signature: a string specifying the signature of a particular operator.
		    The signature of an operator contains the input tensor's shape and type,
		    output tensor's shape and type, operator's name and its version. It has
		    the following schema:
		    INPUT:input_1_shape::input_1_type::input_2_shape::input_2_type::..
		      ::OUTPUT:output_1_shape::output_1_type::output_2_shape::output_2_type::
		      ..::NAME:operator_name ::VERSION:operator_version
		   An example of an operator signature is:
		   INPUT:[1,73,73,160]::float::[64,1,1,160]::float::[64]::float::
		   OUTPUT:[1,73,73,64]::float::NAME:Conv::VERSION:1
		
		Returns:
		  A string denoting the input tensors' type. In the form of shape/type
		  separated
		  by comma. For example:
		  shape:[1,73,73,160],type:float,shape:[64,1,1,160],type:float,shape:[64],
		  type:float
	**/
	static public function get_input_type_from_signature(op_signature:Dynamic):Dynamic;
	static public function get_operator_type(op_name:Dynamic, conversion_log:Dynamic):Dynamic;
	static public function html_escape(text:Dynamic):Dynamic;
	static public var html_escape_table : Dynamic;
	static public var print_function : Dynamic;
}