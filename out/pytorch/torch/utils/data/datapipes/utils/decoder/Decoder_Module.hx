/* This file is generated, do not edit! */
package torch.utils.data.datapipes.utils.decoder;
@:pythonImport("torch.utils.data.datapipes.utils.decoder") extern class Decoder_Module {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function audiohandler(extension:Dynamic, data:Dynamic):Dynamic;
	static public function basichandlers(extension:Dynamic, data:Dynamic):Dynamic;
	static public function extension_extract_fn(pathname:Dynamic):Dynamic;
	/**
		Returns a decoder handler function for the list of extensions.
		Extensions can be a space separated list of extensions.
		Extensions can contain dots, in which case the corresponding number
		of extension components must be present in the key given to f.
		Comparisons are case insensitive.
		Examples:
		handle_extension("jpg jpeg", my_decode_jpg)  # invoked for any file.jpg
		handle_extension("seg.jpg", special_case_jpg)  # invoked only for file.seg.jpg
	**/
	static public function handle_extension(extensions:Dynamic, f:Dynamic):Dynamic;
	static public function imagehandler(imagespec:Dynamic):Dynamic;
	static public var imagespecs : Dynamic;
	static public function mathandler(?loadmat_kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function videohandler(extension:Dynamic, data:Dynamic):Dynamic;
}