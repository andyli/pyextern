/* This file is generated, do not edit! */
package matplotlib.compat.subprocess;
@:pythonImport("matplotlib.compat.subprocess") extern class Subprocess_Module {
	static public var PIPE : Dynamic;
	static public var STDOUT : Dynamic;
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var __warningregistry__ : Dynamic;
	/**
		Run command with arguments and return its output.
		
		If the exit code was non-zero it raises a CalledProcessError.  The
		CalledProcessError object will have the return code in the returncode
		attribute and output in the output attribute.
		
		The arguments are the same as for the Popen constructor.  Example:
		
		>>> check_output(["ls", "-l", "/dev/null"])
		b'crw-rw-rw- 1 root root 1, 3 Oct 18  2007 /dev/null\n'
		
		The stdout argument is not allowed as it is used internally.
		To capture standard error in the result, use stderr=STDOUT.
		
		>>> check_output(["/bin/sh", "-c",
		...               "ls -l non_existent_file ; exit 0"],
		...              stderr=STDOUT)
		b'ls: non_existent_file: No such file or directory\n'
		
		There is an additional optional argument, "input", allowing you to
		pass a string to the subprocess's stdin.  If you use this argument
		you may not also use the Popen constructor's "stdin" argument, as
		it too will be used internally.  Example:
		
		>>> check_output(["sed", "-e", "s/foo/bar/"],
		...              input=b"when in the course of fooman events\n")
		b'when in the course of barman events\n'
		
		If universal_newlines=True is passed, the "input" argument must be a
		string and the return value will be a string rather than bytes.
	**/
	static public function check_output(?popenargs:python.VarArgs<Dynamic>, ?timeout:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Used to display deprecation in a standard way.
		
		Parameters
		----------
		since : str
		    The release at which this API became deprecated.
		
		message : str, optional
		    Override the default deprecation message.  The format
		    specifier `%(name)s` may be used for the name of the function,
		    and `%(alternative)s` may be used in the deprecation message
		    to insert the name of an alternative to the deprecated
		    function.  `%(obj_type)s` may be used to insert a friendly name
		    for the type of object being deprecated.
		
		name : str, optional
		    The name of the deprecated object.
		
		alternative : str, optional
		    An alternative API that the user may use in place of the deprecated
		    API.  The deprecation warning will tell the user about this alternative
		    if provided.
		
		pending : bool, optional
		    If True, uses a PendingDeprecationWarning instead of a
		    DeprecationWarning.  Cannot be used together with *removal*.
		
		removal : str, optional
		    The expected removal version.  With the default (an empty string), a
		    removal version is automatically computed from *since*.  Set to other
		    Falsy values to not schedule a removal date.  Cannot be used together
		    with *pending*.
		
		obj_type : str, optional
		    The object type being deprecated.
		
		addendum : str, optional
		    Additional text appended directly to the final message.
		
		Examples
		--------
		
		    Basic example::
		
		        # To warn of the deprecation of "matplotlib.name_of_module"
		        warn_deprecated('1.4.0', name='matplotlib.name_of_module',
		                        obj_type='module')
	**/
	static public function warn_deprecated(since:Dynamic, ?message:Dynamic, ?name:Dynamic, ?alternative:Dynamic, ?pending:Dynamic, ?obj_type:Dynamic, ?addendum:Dynamic, ?removal:Dynamic):Dynamic;
}