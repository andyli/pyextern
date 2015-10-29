/* This file is generated, do not edit! */
package numpy.distutils.command;
@:pythonImport("numpy.distutils.command.build") extern class Build {
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
	static public var print_function : Dynamic;
	static public function show_fortran_compilers(?_cache:Dynamic):Dynamic;
}