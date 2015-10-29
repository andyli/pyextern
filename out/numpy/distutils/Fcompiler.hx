/* This file is generated, do not edit! */
package numpy.distutils;
@:pythonImport("numpy.distutils.fcompiler") extern class Fcompiler {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _default_compilers : Dynamic;
	static public var _f77flags_re : Dynamic;
	static public function _find_existing_fcompiler(compiler_types:Dynamic, ?osname:Dynamic, ?platform:Dynamic, ?requiref90:Dynamic, ?c_compiler:Dynamic):Dynamic;
	/**
		Matches zero or more characters at the beginning of the string.
	**/
	static public function _free_f90_start(?string:Dynamic, ?pos:Dynamic, ?endpos:Dynamic, ?pattern:Dynamic):Dynamic;
	/**
		Scan through string looking for a match, and return a corresponding match object instance.
		
		Return None if no position in the string matches.
	**/
	static public function _has_f90_header(?string:Dynamic, ?pos:Dynamic, ?endpos:Dynamic, ?pattern:Dynamic):Dynamic;
	/**
		Scan through string looking for a match, and return a corresponding match object instance.
		
		Return None if no position in the string matches.
	**/
	static public function _has_f_header(?string:Dynamic, ?pos:Dynamic, ?endpos:Dynamic, ?pattern:Dynamic):Dynamic;
	/**
		Scan through string looking for a match, and return a corresponding match object instance.
		
		Return None if no position in the string matches.
	**/
	static public function _has_fix_header(?string:Dynamic, ?pos:Dynamic, ?endpos:Dynamic, ?pattern:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Return True if all items in lst are string objects. 
	**/
	static public function all_strings(lst:Dynamic):Dynamic;
	static public function available_fcompilers_for_platform(?osname:Dynamic, ?platform:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public function dummy_fortran_file():Dynamic;
	static public var failed_fcompilers : Dynamic;
	static public var fcompiler_aliases : Dynamic;
	static public var fcompiler_class : Dynamic;
	/**
		Return full path of a executable or None.
		
		Symbolic links are not followed.
	**/
	static public function find_executable(exe:Dynamic, ?path:Dynamic, ?_cache:Dynamic):Dynamic;
	static public function flaglist(s:Dynamic):Dynamic;
	static public function gen_lib_options(compiler:Dynamic, library_dirs:Dynamic, runtime_library_dirs:Dynamic, libraries:Dynamic):Dynamic;
	/**
		Determine the default Fortran compiler to use for the given
		platform.
	**/
	static public function get_default_fcompiler(?osname:Dynamic, ?platform:Dynamic, ?requiref90:Dynamic, ?c_compiler:Dynamic):Dynamic;
	static public function get_exception():Dynamic;
	/**
		Search the first 20 lines of fortran 77 code for line pattern
		  `CF77FLAGS(<fcompiler type>)=<f77 flags>`
		Return a dictionary {<fcompiler type>:<f77 flags>}.
	**/
	static public function get_f77flags(src:Dynamic):Dynamic;
	/**
		Return the directory containing the Python library (standard or
		site additions).
		
		If 'plat_specific' is true, return the directory containing
		platform-specific modules, i.e. any module from a non-pure-Python
		module distribution; otherwise, return the platform-shared library
		directory.  If 'standard_lib' is true, return the directory
		containing standard Python library modules; otherwise, return the
		directory for site-specific modules.
		
		If 'prefix' is supplied, use it instead of sys.base_prefix or
		sys.base_exec_prefix -- i.e., ignore 'plat_specific'.
	**/
	static public function get_python_lib(?plat_specific:Dynamic, ?standard_lib:Dynamic, ?prefix:Dynamic):Dynamic;
	/**
		Return the correct file extension for shared libraries.
		
		Parameters
		----------
		is_python_ext : bool, optional
		    Whether the shared library is a Python extension.  Default is False.
		
		Returns
		-------
		so_ext : str
		    The shared library extension.
		
		Notes
		-----
		For Python shared libs, `so_ext` will typically be '.so' on Linux and OS X,
		and '.pyd' on Windows.  For Python >= 3.2 `so_ext` has a tag prepended on
		POSIX systems according to PEP 3149.  For Python 3.2 this is implemented on
		Linux, but not on OS X.
	**/
	static public function get_shared_lib_extension(?is_python_ext:Dynamic):Dynamic;
	static public function has_f90_header(src:Dynamic):Dynamic;
	/**
		Matches zero or more characters at the beginning of the string.
	**/
	static public function is_f_file(?string:Dynamic, ?pos:Dynamic, ?endpos:Dynamic, ?pattern:Dynamic):Dynamic;
	/**
		Check if file is in free format Fortran.
	**/
	static public function is_free_format(file:Dynamic):Dynamic;
	static public function is_sequence(seq:Dynamic):Dynamic;
	static public function is_sequence_of_strings(seq:Dynamic):Dynamic;
	static public function is_string(s:Dynamic):Dynamic;
	/**
		Cache all the FCompiler classes found in modules in the
		numpy.distutils.fcompiler package.
	**/
	static public function load_all_fcompiler_classes():Dynamic;
	static public function make_temp_file(?suffix:Dynamic, ?prefix:Dynamic, ?text:Dynamic):Dynamic;
	/**
		Generate an instance of some FCompiler subclass for the supplied
		platform/compiler combination.
	**/
	static public function new_fcompiler(?plat:Dynamic, ?compiler:Dynamic, ?verbose:Dynamic, ?dry_run:Dynamic, ?force:Dynamic, ?requiref90:Dynamic, ?c_compiler:Dynamic):Dynamic;
	static public function open_latin1(filename:Dynamic, ?mode:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Print list of available compilers (used by the "--help-fcompiler"
		option to "config_fc").
	**/
	static public function show_fcompilers(?dist:Dynamic):Dynamic;
	/**
		Split a string up according to Unix shell-like rules for quotes and
		backslashes.  In short: words are delimited by spaces, as long as those
		spaces are not escaped by a backslash, or inside a quoted string.
		Single and double quotes are equivalent, and the quote characters can
		be backslash-escaped.  The backslash is stripped from any two-character
		escape sequence, leaving only the escaped character.  The quote
		characters are stripped from any quoted string.  Returns a list of
		words.
	**/
	static public function split_quoted(s:Dynamic):Dynamic;
	static public function str2bool(s:Dynamic):Dynamic;
	/**
		Convert a string representation of truth to true (1) or false (0).
		
		True values are 'y', 'yes', 't', 'true', 'on', and '1'; false values
		are 'n', 'no', 'f', 'false', 'off', and '0'.  Raises ValueError if
		'val' is anything else.
	**/
	static public function strtobool(val:Dynamic):Dynamic;
}