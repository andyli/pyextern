/* This file is generated, do not edit! */
package torch.utils.model_dump;
@:pythonImport("torch.utils.model_dump") extern class Model_dump_Module {
	static public var DEFAULT_EXTRA_FILE_SIZE_LIMIT : Dynamic;
	static public function Dict(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Burn model info into the HTML skeleton.
		
		The result will render the hard-coded model info and
		have no external network dependencies for code or data.
	**/
	static public function burn_in_info(skeleton:Dynamic, info:Dynamic):Dynamic;
	/**
		Get a fully-inlined skeleton of the frontend.
		
		The returned HTML page has no external network dependencies for code.
		It can load model_info.json over HTTP, or be passed to burn_in_info.
	**/
	static public function get_inline_skeleton():Dynamic;
	/**
		Get JSON-friendly information about a model.
		
		The result is suitable for being saved as model_info.json,
		or passed to burn_in_info.
	**/
	static public function get_model_info(path_or_file:Dynamic, ?title:Dynamic, ?extra_file_size_limit:Dynamic):Dynamic;
	static public function get_storage_info(storage:Dynamic):Dynamic;
	static public function hierarchical_pickle(data:Dynamic):Dynamic;
	static public function main(argv:Dynamic, ?stdout:Dynamic):Dynamic;
}