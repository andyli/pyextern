/* This file is generated, do not edit! */
package numpy.distutils;
@:pythonImport("numpy.distutils.unixccompiler") extern class Unixccompiler {
	/**
		Compile a single source files with a Unix-style compiler.
	**/
	static public function UnixCCompiler__compile(self:Dynamic, obj:Dynamic, src:Dynamic, ext:Dynamic, cc_args:Dynamic, extra_postargs:Dynamic, pp_opts:Dynamic):Dynamic;
	/**
		Build a static library in a separate sub-process.
		
		Parameters
		----------
		objects : list or tuple of str
		    List of paths to object files used to build the static library.
		output_libname : str
		    The library name as an absolute or relative (if `output_dir` is used)
		    path.
		output_dir : str, optional
		    The path to the output directory. Default is None, in which case
		    the ``output_dir`` attribute of the UnixCCompiler instance.
		debug : bool, optional
		    This parameter is not used.
		target_lang : str, optional
		    This parameter is not used.
		
		Returns
		-------
		None
	**/
	static public function UnixCCompiler_create_static_lib(self:Dynamic, objects:Dynamic, output_libname:Dynamic, ?output_dir:Dynamic, ?debug:Dynamic, ?target_lang:Dynamic):Dynamic;
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
	static public function gen_lib_options(compiler:Dynamic, library_dirs:Dynamic, runtime_library_dirs:Dynamic, libraries:Dynamic):Dynamic;
	static public function gen_preprocess_options(macros:Dynamic, include_dirs:Dynamic):Dynamic;
	static public function get_exception():Dynamic;
	/**
		Return true if 'source' exists and is more recently modified than
		'target', or if 'source' exists and 'target' doesn't.  Return false if
		both exist and 'target' is the same age or younger than 'source'.
		Raise DistutilsFileError if 'source' does not exist.
	**/
	static public function newer(source:Dynamic, target:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public function replace_method(klass:Dynamic, method_name:Dynamic, func:Dynamic):Dynamic;
}