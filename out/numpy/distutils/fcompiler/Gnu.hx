/* This file is generated, do not edit! */
package numpy.distutils.fcompiler;
@:pythonImport("numpy.distutils.fcompiler.gnu") extern class Gnu {
	static public var PIPE : Dynamic;
	static public var STDOUT : Dynamic;
	static public var TARGET_R : Dynamic;
	static public var _EXTRAFLAGS : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Return true if the architecture supports the -arch flag
	**/
	static public function _can_target(cmd:Dynamic, arch:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var compilers : Dynamic;
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
	static public function get_exception():Dynamic;
	static public function is_win32():Dynamic;
	static public function is_win64():Dynamic;
	/**
		Return name of MSVC runtime library if Python was built with MSVC >= 7
	**/
	static public function msvc_runtime_library():Dynamic;
	static public var print_function : Dynamic;
}