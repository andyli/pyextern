/* This file is generated, do not edit! */
package docutils.parsers.rst.directives.images;
@:pythonImport("docutils.parsers.rst.directives.images") extern class Images_Module {
	static public var PIL : Dynamic;
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
		Return a case- and whitespace-normalized name.
	**/
	static public function fully_normalize_name(name:Dynamic):Dynamic;
	/**
		Auxiliary function to set options['classes'] and delete
		options['class'].
	**/
	static public function set_classes(options:Dynamic):Dynamic;
	/**
		OS-specific conversion from a relative URL of the 'file' scheme
		to a file system path; not recommended for general use.
	**/
	static public function url2pathname(pathname:Dynamic):Dynamic;
	/**
		Return a whitespace-normalized name.
	**/
	static public function whitespace_normalize_name(name:Dynamic):Dynamic;
}