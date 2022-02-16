/* This file is generated, do not edit! */
package tensorflow.lite.tools.visualize;
@:pythonImport("tensorflow.lite.tools.visualize") extern class Visualize_Module {
	/**
		Converts a builtin op code enum to a readable name.
	**/
	static public function BuiltinCodeToName(code:Dynamic):Dynamic;
	/**
		Converts an identifier in CamelCase to snake_case.
	**/
	static public function CamelCaseToSnakeCase(camel_case_input:Dynamic):Dynamic;
	static public function CreateDictFromFlatbuffer(buffer_data:Dynamic):Dynamic;
	/**
		Converts a hierarchy of FB objects into a nested dict.
		
		We avoid transforming big parts of the flat buffer into python arrays. This
		speeds conversion from ten minutes to a few seconds on big graphs.
		
		Args:
		  fb: a flat buffer structure. (i.e. ModelT)
		  preserve_as_numpy: true if all downstream np.arrays should be preserved.
		    false if all downstream np.array should become python arrays
		Returns:
		  A dictionary representing the flatbuffer rather than a flatbuffer object.
	**/
	static public function FlatbufferToDict(fb:Dynamic, preserve_as_numpy:Dynamic):Dynamic;
	/**
		Produces the HTML required to have a d3 visualization of the dag.
	**/
	static public function GenerateGraph(subgraph_idx:Dynamic, g:Dynamic, opcode_mapper:Dynamic):Dynamic;
	/**
		Given a list of object values and keys to print, make an HTML table.
		
		Args:
		  items: Items to print an array of dicts.
		  keys_to_print: (key, display_fn). `key` is a key in the object. i.e.
		    items[0][key] should exist. display_fn is the mapping function on display.
		    i.e. the displayed html cell will have the string returned by
		    `mapping_fn(items[0][key])`.
		  display_index: add a column which is the index of each row in `items`.
		
		Returns:
		  An html table.
	**/
	static public function GenerateTableHtml(items:Dynamic, keys_to_print:Dynamic, ?display_index:Dynamic):Dynamic;
	/**
		Converts a list of integers to the equivalent ASCII string.
	**/
	static public function NameListToString(name_list:Dynamic):Dynamic;
	/**
		Converts a numerical enum to a readable tensor type.
	**/
	static public function TensorTypeToName(tensor_type:Dynamic):Dynamic;
	static public var _CSS : Dynamic;
	static public var _D3_HTML_TEMPLATE : Dynamic;
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
		Returns html description with the given tflite model.
		
		Args:
		  tflite_input: TFLite flatbuffer model path or model object.
		  input_is_filepath: Tells if tflite_input is a model path or a model object.
		
		Returns:
		  Dump of the given tflite model in HTML format.
		
		Raises:
		  RuntimeError: If the input is not valid.
	**/
	static public function create_html(tflite_input:Dynamic, ?input_is_filepath:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public function main(argv:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}