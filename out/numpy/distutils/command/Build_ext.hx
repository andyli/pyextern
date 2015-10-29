/* This file is generated, do not edit! */
package numpy.distutils.command;
@:pythonImport("numpy.distutils.command.build_ext") extern class Build_ext {
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
		Return a list of existing paths composed by all combinations of
		items from arguments.
	**/
	static public function combine_paths(args:Dynamic, kws:Dynamic):Dynamic;
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
	/**
		Return four lists of filenames containing
		C, C++, Fortran, and Fortran 90 module sources,
		respectively.
	**/
	static public function filter_sources(sources:Dynamic):Dynamic;
	static public function get_build_architecture():Dynamic;
	static public function get_ext_source_files(ext:Dynamic):Dynamic;
	static public function get_numpy_include_dirs():Dynamic;
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
	/**
		Return True if sources contains C++ files 
	**/
	static public function has_cxx_sources(sources:Dynamic):Dynamic;
	/**
		Return True if sources contains Fortran files 
	**/
	static public function has_f_sources(sources:Dynamic):Dynamic;
	static public function is_sequence(seq:Dynamic):Dynamic;
	/**
		Return version major and minor of compiler instance if it is
		MSVC, raise an exception otherwise.
	**/
	static public function msvc_version(compiler:Dynamic):Dynamic;
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
	static public function show_fortran_compilers(?_cache:Dynamic):Dynamic;
}