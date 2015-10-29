/* This file is generated, do not edit! */
package numpy.distutils;
@:pythonImport("numpy.distutils.cpuinfo") extern class Cpuinfo {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	static public function command_by_line(cmd:Dynamic, ?successful_status:Dynamic, ?stacklevel:Dynamic):Dynamic;
	static public function command_info(?successful_status:Dynamic, ?stacklevel:Dynamic, kw:Dynamic):Dynamic;
	static public var cpu : Dynamic;
	static public var division : Dynamic;
	static public function get_exception():Dynamic;
	static public function getoutput(cmd:Dynamic, ?successful_status:Dynamic, ?stacklevel:Dynamic):Dynamic;
	/**
		Return (status, output) of executing cmd in a shell.
		
		Execute the string 'cmd' in a shell with 'check_output' and
		return a 2-tuple (status, output). Universal newlines mode is used,
		meaning that the result with be decoded to a string.
		
		A trailing newline is stripped from the output.
		The exit status for the command can be interpreted
		according to the rules for the function 'wait'. Example:
		
		>>> import subprocess
		>>> subprocess.getstatusoutput('ls /bin/ls')
		(0, '/bin/ls')
		>>> subprocess.getstatusoutput('cat /bin/junk')
		(256, 'cat: /bin/junk: No such file or directory')
		>>> subprocess.getstatusoutput('/bin/junk')
		(256, 'sh: /bin/junk: not found')
	**/
	static public function getstatusoutput(cmd:Dynamic):Dynamic;
	static public function key_value_from_command(cmd:Dynamic, sep:Dynamic, ?successful_status:Dynamic, ?stacklevel:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}