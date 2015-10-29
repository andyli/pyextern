/* This file is generated, do not edit! */
package numpy.distutils;
@:pythonImport("numpy.distutils.line_endings") extern class Line_endings {
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
		Replace CRLF with LF in argument files.  Print names of changed files.
	**/
	static public function dos2unix(file:Dynamic):Dynamic;
	static public function dos2unix_dir(dir_name:Dynamic):Dynamic;
	static public function dos2unix_one_dir(modified_files:Dynamic, dir_name:Dynamic, file_names:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Replace LF with CRLF in argument files.  Print names of changed files.
	**/
	static public function unix2dos(file:Dynamic):Dynamic;
	static public function unix2dos_dir(dir_name:Dynamic):Dynamic;
	static public function unix2dos_one_dir(modified_files:Dynamic, dir_name:Dynamic, file_names:Dynamic):Dynamic;
}