/* This file is generated, do not edit! */
package numpy.f2py.f2py2e;
@:pythonImport("numpy.f2py.f2py2e") extern class F2py2e_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var __usage__ : Dynamic;
	static public var absolute_import : Dynamic;
	static public function buildmodules(lst:Dynamic):Dynamic;
	static public function callcrackfortran(files:Dynamic, options:Dynamic):Dynamic;
	static public function dict_append(d_out:Dynamic, d_in:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Write string to stream.
		Returns the number of characters written (which is always equal to
		the length of the string).
	**/
	static public function errmess(text:Dynamic):Dynamic;
	static public var f2py_version : Dynamic;
	/**
		Filter files by prefix and suffix.
	**/
	static public function filter_files(prefix:Dynamic, suffix:Dynamic, files:Dynamic, ?remove_prefix:Dynamic):Dynamic;
	static public function get_prefix(module:Dynamic):Dynamic;
	static public function main():Dynamic;
	static public var numpy_version : Dynamic;
	static public function outmess(t:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Do it all in one call!
	**/
	static public function run_compile():Dynamic;
	/**
		Run f2py as if string.join(comline_list,' ') is used as a command line.
		In case of using -h flag, return None.
	**/
	static public function run_main(comline_list:Dynamic):Dynamic;
	static public function scaninputline(inputline:Dynamic):Dynamic;
	/**
		Pretty-print a Python object to a stream [default is sys.stdout].
	**/
	static public function show(object:Dynamic, ?stream:Dynamic, ?indent:Dynamic, ?width:Dynamic, ?depth:Dynamic, ?compact:Dynamic):Dynamic;
}