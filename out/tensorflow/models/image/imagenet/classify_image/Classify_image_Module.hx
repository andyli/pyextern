/* This file is generated, do not edit! */
package tensorflow.models.image.imagenet.classify_image;
@:pythonImport("tensorflow.models.image.imagenet.classify_image") extern class Classify_image_Module {
	static public var DATA_URL : Dynamic;
	static public var FLAGS : Dynamic;
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
		Creates a graph from saved GraphDef file and returns a saver.
	**/
	static public function create_graph():Dynamic;
	static public var division : Dynamic;
	static public function main(_:Dynamic):Dynamic;
	/**
		Download and extract model tar file.
	**/
	static public function maybe_download_and_extract():Dynamic;
	static public var print_function : Dynamic;
	/**
		Runs inference on an image.
		
		Args:
		  image: Image file name.
		
		Returns:
		  Nothing
	**/
	static public function run_inference_on_image(image:Dynamic):Dynamic;
}