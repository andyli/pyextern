/* This file is generated, do not edit! */
package numpy.distutils;
@:pythonImport("numpy.distutils.lib2def") extern class Lib2def {
	static public var DATA_RE : Dynamic;
	static public var DEFAULT_NM : Dynamic;
	static public var DEF_HEADER : Dynamic;
	static public var FUNC_RE : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var __version__ : Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Returns the output of nm_cmd via a pipe.
		
		nm_output = getnam(nm_cmd = 'nm -Cs py_lib')
	**/
	static public function getnm(?nm_cmd:Dynamic):Dynamic;
	/**
		Outputs the final DEF file to a file defaulting to stdout.
		
		output_def(dlist, flist, header, file = sys.stdout)
	**/
	static public function output_def(dlist:Dynamic, flist:Dynamic, header:Dynamic, ?file:Dynamic):Dynamic;
	/**
		Parses the command-line arguments.
		
		libfile, deffile = parse_cmd()
	**/
	static public function parse_cmd():Dynamic;
	/**
		Returns a tuple of lists: dlist for the list of data
		symbols and flist for the list of function symbols.
		
		dlist, flist = parse_nm(nm_output)
	**/
	static public function parse_nm(nm_output:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public var py_ver : Dynamic;
}