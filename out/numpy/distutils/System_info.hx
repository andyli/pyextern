/* This file is generated, do not edit! */
package numpy.distutils;
@:pythonImport("numpy.distutils.system_info") extern class System_info {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _bits : Dynamic;
	static public var _cached_atlas_version : Dynamic;
	static public var absolute_import : Dynamic;
	static public var atlas_version_c_text : Dynamic;
	/**
		Return a list of existing paths composed by all combinations of
		items from arguments.
	**/
	static public function combine_paths(args:Dynamic, kws:Dynamic):Dynamic;
	static public var default_include_dirs : Dynamic;
	static public var default_lib_dirs : Dynamic;
	static public var default_runtime_dirs : Dynamic;
	static public var default_src_dirs : Dynamic;
	static public var default_x11_include_dirs : Dynamic;
	static public var default_x11_lib_dirs : Dynamic;
	static public function dict_append(d:Dynamic, kws:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Return (status,output) of executed command.
		
		Parameters
		----------
		command : str
		    A concatenated string of executable and arguments.
		execute_in : str
		    Before running command ``cd execute_in`` and after ``cd -``.
		use_shell : {bool, None}, optional
		    If True, execute ``sh -c command``. Default None (True)
		use_tee : {bool, None}, optional
		    If True use tee. Default None (True)
		
		
		Returns
		-------
		res : str
		    Both stdout and stderr messages.
		
		Notes
		-----
		On NT, DOS systems the returned status is correct for external commands.
		Wild cards will not work for non-posix systems or when use_shell=0.
	**/
	static public function exec_command(command:Dynamic, ?execute_in:Dynamic, ?use_shell:Dynamic, ?use_tee:Dynamic, ?_with_python:Dynamic, env:Dynamic):Dynamic;
	/**
		Return full path of a executable or None.
		
		Symbolic links are not followed.
	**/
	static public function find_executable(exe:Dynamic, ?path:Dynamic, ?_cache:Dynamic):Dynamic;
	static public function get_atlas_version(config:Dynamic):Dynamic;
	static public function get_exception():Dynamic;
	/**
		notfound_action:
		  0 - do nothing
		  1 - display warning message
		  2 - raise error
	**/
	static public function get_info(name:Dynamic, ?notfound_action:Dynamic):Dynamic;
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
	static public function get_pythonexe():Dynamic;
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
	/**
		Returns a list of files named 'fname' from
		1) System-wide directory (directory-location of this module)
		2) Users HOME directory (os.environ['HOME'])
		3) Local directory
	**/
	static public function get_standard_file(fname:Dynamic):Dynamic;
	/**
		Return a list of paths matching a pathname pattern.
		
		The pattern may contain simple shell-style wildcards a la
		fnmatch. However, unlike fnmatch, filenames starting with a
		dot are special cases that are not matched by '*' and '?'
		patterns.
		
		If recursive is true, the pattern '**' will match any files and
		zero or more directories and subdirectories.
	**/
	static public function glob(pathname:Dynamic, ?recursive:Dynamic):Dynamic;
	static public var inv_language_map : Dynamic;
	static public function is_sequence(seq:Dynamic):Dynamic;
	static public function is_string(s:Dynamic):Dynamic;
	static public var language_map : Dynamic;
	/**
		Return a list of library paths valid on 32 or 64 bit systems.
		
		Inputs:
		  paths : sequence
		    A sequence of strings (typically paths)
		  bits : int
		    An integer, the only valid values are 32 or 64.  A ValueError exception
		  is raised otherwise.
		
		Examples:
		
		Consider a list of directories
		>>> paths = ['/usr/X11R6/lib','/usr/X11/lib','/usr/lib']
		
		For a 32-bit platform, this is already valid:
		>>> np.distutils.system_info.libpaths(paths,32)
		['/usr/X11R6/lib', '/usr/X11/lib', '/usr/lib']
		
		On 64 bits, we prepend the '64' postfix
		>>> np.distutils.system_info.libpaths(paths,64)
		['/usr/X11R6/lib64', '/usr/X11R6/lib', '/usr/X11/lib64', '/usr/X11/lib',
		'/usr/lib64', '/usr/lib']
	**/
	static public function libpaths(paths:Dynamic, bits:Dynamic):Dynamic;
	static public var p : Dynamic;
	static public function parseCmdLine(?argv:Dynamic):Dynamic;
	static public var platform_bits : Dynamic;
	static public var print_function : Dynamic;
	/**
		reduce(function, sequence[, initial]) -> value
		
		Apply a function of two arguments cumulatively to the items of a sequence,
		from left to right, so as to reduce the sequence to a single value.
		For example, reduce(lambda x, y: x+y, [1, 2, 3, 4, 5]) calculates
		((((1+2)+3)+4)+5).  If initial is present, it is placed before the items
		of the sequence in the calculation, and serves as a default when the
		sequence is empty.
	**/
	static public function reduce(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function show_all(?argv:Dynamic):Dynamic;
	static public var so_ext : Dynamic;
	static public var tmp : Dynamic;
	static public var triplet : Dynamic;
}