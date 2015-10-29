/* This file is generated, do not edit! */
package numpy.distutils;
@:pythonImport("numpy.distutils.exec_command") extern class Exec_command {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _exec_command(command:Dynamic, ?use_shell:Dynamic, ?use_tee:Dynamic, env:Dynamic):Dynamic;
	static public function _exec_command_posix(command:Dynamic, ?use_shell:Dynamic, ?use_tee:Dynamic, env:Dynamic):Dynamic;
	static public function _exec_command_python(command:Dynamic, ?exec_command_dir:Dynamic, env:Dynamic):Dynamic;
	static public function _preserve_environment(names:Dynamic):Dynamic;
	/**
		Returns True if 'stream' supports the file descriptor and allows fileno().
	**/
	static public function _supports_fileno(stream:Dynamic):Dynamic;
	static public function _update_environment(env:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
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
	static public function get_exception():Dynamic;
	static public function get_pythonexe():Dynamic;
	static public function is_sequence(seq:Dynamic):Dynamic;
	static public function make_temp_file(?suffix:Dynamic, ?prefix:Dynamic, ?text:Dynamic):Dynamic;
	static public function open_latin1(filename:Dynamic, ?mode:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public function quote_arg(arg:Dynamic):Dynamic;
	static public function temp_file_name():Dynamic;
	static public function test(kws:Dynamic):Dynamic;
	static public function test_cl(kws:Dynamic):Dynamic;
	static public function test_execute_in(kws:Dynamic):Dynamic;
	static public function test_nt(kws:Dynamic):Dynamic;
	static public function test_posix(kws:Dynamic):Dynamic;
	static public function test_svn(kws:Dynamic):Dynamic;
}