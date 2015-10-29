/* This file is generated, do not edit! */
package numpy.distutils.fcompiler;
@:pythonImport("numpy.distutils.fcompiler.ibm") extern class Ibm {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
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
	/**
		Return full path of a executable or None.
		
		Symbolic links are not followed.
	**/
	static public function find_executable(exe:Dynamic, ?path:Dynamic, ?_cache:Dynamic):Dynamic;
	static public function make_temp_file(?suffix:Dynamic, ?prefix:Dynamic, ?text:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}