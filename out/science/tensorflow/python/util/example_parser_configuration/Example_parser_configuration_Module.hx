/* This file is generated, do not edit! */
package tensorflow.python.util.example_parser_configuration;
@:pythonImport("tensorflow.python.util.example_parser_configuration") extern class Example_parser_configuration_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Extract ExampleParserConfig from ParseExample op.
	**/
	static public function _extract_from_parse_example(parse_example_op:Dynamic, sess:Dynamic):Dynamic;
	/**
		Extract ExampleParserConfig from ParseExampleV2 op.
	**/
	static public function _extract_from_parse_example_v2(parse_example_op:Dynamic, sess:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Returns an ExampleParserConfig proto.
		
		Args:
		  parse_example_op: A ParseExample or ParseExampleV2 `Operation`
		  sess: A tf.compat.v1.Session needed to obtain some configuration values.
		Returns:
		  A ExampleParserConfig proto.
		
		Raises:
		  ValueError: If attributes are inconsistent.
	**/
	static public function extract_example_parser_configuration(parse_example_op:Dynamic, sess:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}