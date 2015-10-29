/* This file is generated, do not edit! */
package numpy.distutils.command;
@:pythonImport("numpy.distutils.command.config") extern class Config {
	static public var LANG_EXT : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Return True if the C compiler is GCC 4.x.
	**/
	static public function check_compiler_gcc4(cmd:Dynamic):Dynamic;
	/**
		Return True if the given function attribute is supported.
	**/
	static public function check_gcc_function_attribute(cmd:Dynamic, attribute:Dynamic, name:Dynamic):Dynamic;
	/**
		Return True if the given variable attribute is supported.
	**/
	static public function check_gcc_variable_attribute(cmd:Dynamic, attribute:Dynamic):Dynamic;
	/**
		Return the inline identifier (may be empty).
	**/
	static public function check_inline(cmd:Dynamic):Dynamic;
	/**
		Return the restrict identifier (may be empty).
	**/
	static public function check_restrict(cmd:Dynamic):Dynamic;
	/**
		Copy a file 'src' to 'dst'.  If 'dst' is a directory, then 'src' is
		copied there with the same name; otherwise, it must be a filename.  (If
		the file exists, it will be ruthlessly clobbered.)  If 'preserve_mode'
		is true (the default), the file's mode (type and permission bits, or
		whatever is analogous on the current platform) is copied.  If
		'preserve_times' is true (the default), the last-modified and
		last-access times are copied as well.  If 'update' is true, 'src' will
		only be copied if 'dst' does not exist, or if 'dst' does exist but is
		older than 'src'.
		
		'link' allows you to make hard links (os.link) or symbolic links
		(os.symlink) instead of copying: set it to "hard" or "sym"; if it is
		None (the default), files are copied.  Don't set 'link' on systems that
		don't support it: 'copy_file()' doesn't check if hard or symbolic
		linking is available. If hardlink fails, falls back to
		_copy_file_contents().
		
		Under Mac OS, uses the native file copy function in macostools; on
		other systems, uses '_copy_file_contents()' to copy file contents.
		
		Return a tuple (dest_name, copied): 'dest_name' is the actual name of
		the output file, and 'copied' is true if the file was copied (or would
		have been copied, if 'dry_run' true).
	**/
	static public function copy_file(src:Dynamic, dst:Dynamic, ?preserve_mode:Dynamic, ?preserve_times:Dynamic, ?update:Dynamic, ?link:Dynamic, ?verbose:Dynamic, ?dry_run:Dynamic):Dynamic;
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
	static public function generate_manifest(config:Dynamic):Dynamic;
	static public function get_exception():Dynamic;
	static public var print_function : Dynamic;
}