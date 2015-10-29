/* This file is generated, do not edit! */
package numpy.distutils;
@:pythonImport("numpy.distutils.core") extern class Core {
	static public var DEBUG : Dynamic;
	static public var USAGE : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _check_append_ext_library(libraries:Dynamic, lib_name:Dynamic, build_info:Dynamic):Dynamic;
	static public function _check_append_library(libraries:Dynamic, item:Dynamic):Dynamic;
	/**
		Return True if command line does not contain any
		help or display requests.
	**/
	static public function _command_line_ok(?_cache:Dynamic):Dynamic;
	static public function _dict_append(d:Dynamic, kws:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var extension_keywords : Dynamic;
	static public function gen_usage(script_name:Dynamic):Dynamic;
	static public function get_data_files(data:Dynamic):Dynamic;
	static public function get_distribution(?always:Dynamic):Dynamic;
	static public var have_setuptools : Dynamic;
	static public function is_sequence(seq:Dynamic):Dynamic;
	static public function is_string(s:Dynamic):Dynamic;
	static public var numpy_cmdclass : Dynamic;
	/**
		The gateway to the Distutils: do everything your setup script needs
		to do, in a highly flexible and user-driven way.  Briefly: create a
		Distribution instance; find and parse config files; parse the command
		line; run each Distutils command found there, customized by the options
		supplied to 'setup()' (as keyword arguments), in config files, and on
		the command line.
		
		The Distribution instance might be an instance of a class supplied via
		the 'distclass' keyword argument to 'setup'; if no such class is
		supplied, then the Distribution class (in dist.py) is instantiated.
		All other arguments to 'setup' (except for 'cmdclass') are used to set
		attributes of the Distribution instance.
		
		The 'cmdclass' argument, if supplied, is a dictionary mapping command
		names to command classes.  Each command encountered on the command line
		will be turned into a command class, which is in turn instantiated; any
		class found in 'cmdclass' is used in place of the default, which is
		(for command 'foo_bar') class 'foo_bar' in module
		'distutils.command.foo_bar'.  The command class must provide a
		'user_options' attribute which is a list of option specifiers for
		'distutils.fancy_getopt'.  Any command-line options between the current
		and the next command are used to set attributes of the current command
		object.
		
		When the entire command-line has been successfully parsed, calls the
		'run()' method on each command object in turn.  This method will be
		driven entirely by the Distribution object (which each command object
		has a reference to, thanks to its constructor), and the
		command-specific options that became attributes of each command
		object.
	**/
	static public function old_setup(attrs:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Run a setup script in a somewhat controlled environment, and
		return the Distribution instance that drives things.  This is useful
		if you need to find out the distribution meta-data (passed as
		keyword args from 'script' to 'setup()', or the contents of the
		config files or command-line.
		
		'script_name' is a file that will be read and run with 'exec()';
		'sys.argv[0]' will be replaced with 'script' for the duration of the
		call.  'script_args' is a list of strings; if supplied,
		'sys.argv[1:]' will be replaced by 'script_args' for the duration of
		the call.
		
		'stop_after' tells 'setup()' when to stop processing; possible
		values:
		  init
		    stop after the Distribution instance has been created and
		    populated with the keyword arguments to 'setup()'
		  config
		    stop after config files have been parsed (and their data
		    stored in the Distribution instance)
		  commandline
		    stop after the command-line ('sys.argv[1:]' or 'script_args')
		    have been parsed (and the data stored in the Distribution)
		  run [default]
		    stop after all commands have been run (the same as if 'setup()'
		    had been called in the usual way
		
		Returns the Distribution instance, which provides all information
		used to drive the Distutils.
	**/
	static public function run_setup(script_name:Dynamic, ?script_args:Dynamic, ?stop_after:Dynamic):Dynamic;
	static public function setup(attr:Dynamic):Dynamic;
	static public var setup_keywords : Dynamic;
}