/* This file is generated, do not edit! */
package tensorflow.python.layers.base;
@:pythonImport("tensorflow.python.layers.base") extern class Base_Module {
	static public var PER_GRAPH_LAYER_NAME_UIDS : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _add_elements_to_collection(elements:Dynamic, collection_list:Dynamic):Dynamic;
	static public function _object_list_uid(object_list:Dynamic):Dynamic;
	/**
		This normalizes a list/tuple or single element into a list.
		
		If a single element is passed, we return
		a list of size 1 containing the element.
		
		Arguments:
		  x: list or tuple or single element.
		
		Returns:
		  A list.
	**/
	static public function _to_list(x:Dynamic):Dynamic;
	static public function _to_snake_case(name:Dynamic):Dynamic;
	/**
		Makes a layer name (or arbitrary string) unique within a TensorFlow graph.
		
		Arguments:
		  name: String name to make unique.
		
		Returns:
		  Unique string name.
		
		Example:
		
		```
		  >>> _unique_layer_name('dense')
		  dense_1
		  >>> _unique_layer_name('dense')
		  dense_2
		```
	**/
	static public function _unique_layer_name(name:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}