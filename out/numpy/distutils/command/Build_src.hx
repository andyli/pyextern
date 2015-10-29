/* This file is generated, do not edit! */
package numpy.distutils.command;
@:pythonImport("numpy.distutils.command.build_src") extern class Build_src {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Matches zero or more characters at the beginning of the string.
	**/
	static public function _f2py_module_name_match(?string:Dynamic, ?pos:Dynamic, ?endpos:Dynamic, ?pattern:Dynamic):Dynamic;
	/**
		Matches zero or more characters at the beginning of the string.
	**/
	static public function _f2py_user_module_name_match(?string:Dynamic, ?pos:Dynamic, ?endpos:Dynamic, ?pattern:Dynamic):Dynamic;
	/**
		Matches zero or more characters at the beginning of the string.
	**/
	static public function _f_pyf_ext_match(?string:Dynamic, ?pos:Dynamic, ?endpos:Dynamic, ?pattern:Dynamic):Dynamic;
	static public function _find_swig_target(target_dir:Dynamic, name:Dynamic):Dynamic;
	/**
		Scan through string looking for a match, and return a corresponding match object instance.
		
		Return None if no position in the string matches.
	**/
	static public function _has_c_header(?string:Dynamic, ?pos:Dynamic, ?endpos:Dynamic, ?pattern:Dynamic):Dynamic;
	/**
		Scan through string looking for a match, and return a corresponding match object instance.
		
		Return None if no position in the string matches.
	**/
	static public function _has_cpp_header(?string:Dynamic, ?pos:Dynamic, ?endpos:Dynamic, ?pattern:Dynamic):Dynamic;
	/**
		Matches zero or more characters at the beginning of the string.
	**/
	static public function _header_ext_match(?string:Dynamic, ?pos:Dynamic, ?endpos:Dynamic, ?pattern:Dynamic):Dynamic;
	/**
		Matches zero or more characters at the beginning of the string.
	**/
	static public function _swig_module_name_match(?string:Dynamic, ?pos:Dynamic, ?endpos:Dynamic, ?pattern:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public function appendpath(prefix:Dynamic, path:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Matches zero or more characters at the beginning of the string.
	**/
	static public function fortran_ext_match(?string:Dynamic, ?pos:Dynamic, ?endpos:Dynamic, ?pattern:Dynamic):Dynamic;
	static public function get_cmd(cmdname:Dynamic, ?_cache:Dynamic):Dynamic;
	static public function get_f2py_modulename(source:Dynamic):Dynamic;
	/**
		Return a string that identifies the current platform.  This is used
		mainly to distinguish platform-specific build directories and
		platform-specific built distributions.  Typically includes the OS name
		and version and the architecture (as supplied by 'os.uname()'),
		although the exact information included depends on the OS; eg. for IRIX
		the architecture isn't particularly important (IRIX only runs on SGI
		hardware), but for Linux the kernel version isn't particularly
		important.
		
		Examples of returned values:
		   linux-i586
		   linux-alpha (?)
		   solaris-2.6-sun4u
		   irix-5.3
		   irix64-6.2
		
		Windows will return one of:
		   win-amd64 (64bit Windows on AMD64 (aka x86_64, Intel64, EM64T, etc)
		   win-ia64 (64bit Windows on Itanium)
		   win32 (all others - specifically, sys.platform is returned)
		
		For other non-POSIX platforms, currently just returns 'sys.platform'.
	**/
	static public function get_platform():Dynamic;
	static public function get_swig_modulename(source:Dynamic):Dynamic;
	static public function get_swig_target(source:Dynamic):Dynamic;
	static public function have_pyrex():Dynamic;
	static public function is_sequence(seq:Dynamic):Dynamic;
	static public function is_string(s:Dynamic):Dynamic;
	/**
		Return true if 'source' exists and is more recently modified than
		'target', or if 'source' exists and 'target' doesn't.  Return false if
		both exist and 'target' is the same age or younger than 'source'.
		Raise DistutilsFileError if 'source' does not exist.
	**/
	static public function newer(source:Dynamic, target:Dynamic):Dynamic;
	/**
		Return true if 'target' is out-of-date with respect to any file
		listed in 'sources'.  In other words, if 'target' exists and is newer
		than every file in 'sources', return false; otherwise return true.
		'missing' controls what we do when a source file is missing; the
		default ("error") is to blow up with an OSError from inside 'stat()';
		if it is "ignore", we silently drop any missing source files; if it is
		"newer", any missing source files make us assume that 'target' is
		out-of-date (this is handy in "dry-run" mode: it'll make you pretend to
		carry out commands that wouldn't work because inputs are missing, but
		that doesn't matter because you're not actually going to run the
		commands).
	**/
	static public function newer_group(sources:Dynamic, target:Dynamic, ?missing:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public function process_c_file(source:Dynamic):Dynamic;
	static public function process_f_file(source:Dynamic):Dynamic;
	/**
		Substitute any occurence of @foo@ by d['foo'] from source file into
		target.
	**/
	static public function subst_vars(target:Dynamic, source:Dynamic, d:Dynamic):Dynamic;
}