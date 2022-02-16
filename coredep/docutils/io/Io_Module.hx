/* This file is generated, do not edit! */
package docutils.io;
@:pythonImport("docutils.io") extern class Io_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __docformat__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Test, whether the encoding of `stream` matches `encoding`.
		
		Returns
		
		:None:  if `encoding` or `stream.encoding` are not a valid encoding
		        argument (e.g. ``None``) or `stream.encoding is missing.
		:True:  if the encoding argument resolves to the same value as `encoding`,
		:False: if the encodings differ.
	**/
	static public function check_encoding(stream:Dynamic, encoding:Dynamic):Dynamic;
	static public var locale_encoding : Dynamic;
	static public var print_function : Dynamic;
}