/* This file is generated, do not edit! */
package numpy.distutils;
@:pythonImport("numpy.distutils.mingw32ccompiler") extern class Mingw32ccompiler {
	static public var _MSVCRVER_TO_FULLVER : Dynamic;
	static public var _START : Dynamic;
	static public var _TABLE : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _build_import_library_amd64():Dynamic;
	/**
		Build the import libraries for Mingw32-gcc on Windows
		    
	**/
	static public function _build_import_library_x86():Dynamic;
	static public var absolute_import : Dynamic;
	static public function build_import_library():Dynamic;
	static public function build_msvcr_library(?debug:Dynamic):Dynamic;
	/**
		msver is the ms runtime version used for the MANIFEST.
	**/
	static public function check_embedded_msvcr_match_linked(msver:Dynamic):Dynamic;
	static public function configtest_name(config:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public function dump_table(dll:Dynamic):Dynamic;
	static public function find_dll(dll_name:Dynamic):Dynamic;
	static public function find_python_dll():Dynamic;
	static public function gen_lib_options(compiler:Dynamic, library_dirs:Dynamic, runtime_library_dirs:Dynamic, libraries:Dynamic):Dynamic;
	static public function gen_preprocess_options(macros:Dynamic, include_dirs:Dynamic):Dynamic;
	/**
		Given a dll file location,  get all its exported symbols and dump them
		into the given def file.
		
		The .def file will be overwritten
	**/
	static public function generate_def(dll:Dynamic, dfile:Dynamic):Dynamic;
	static public function generate_manifest(config:Dynamic):Dynamic;
	static public function get_build_architecture():Dynamic;
	/**
		Return the version of MSVC that was used to build Python.
		
		For Python 2.3 and up, the version number is included in
		sys.version.  For earlier versions, assume the compiler is MSVC 6.
	**/
	static public function get_build_msvc_version():Dynamic;
	static public function manifest_name(config:Dynamic):Dynamic;
	/**
		Return the rc file used to generate the res file which will be embedded
		as manifest for given manifest file name, of given type ('dll' or
		'exe').
		
		Parameters
		----------
		name : str
		        name of the manifest file to embed
		type : str {'dll', 'exe'}
		        type of the binary which will embed the manifest
	**/
	static public function manifest_rc(name:Dynamic, ?type:Dynamic):Dynamic;
	/**
		Given a major and minor version of the MSVCR, returns the
		corresponding XML file.
	**/
	static public function msvc_manifest_xml(maj:Dynamic, min:Dynamic):Dynamic;
	/**
		Return name of MSVC runtime library if Python was built with MSVC >= 7
	**/
	static public function msvc_runtime_library():Dynamic;
	static public var print_function : Dynamic;
	static public function rc_name(config:Dynamic):Dynamic;
}