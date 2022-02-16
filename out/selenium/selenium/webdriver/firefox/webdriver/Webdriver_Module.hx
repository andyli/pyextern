/* This file is generated, do not edit! */
package selenium.webdriver.firefox.webdriver;
@:pythonImport("selenium.webdriver.firefox.webdriver") extern class Webdriver_Module {
	static public var DEFAULT_EXECUTABLE_PATH : Dynamic;
	static public var DEFAULT_LOG_PATH : Dynamic;
	static public var DEFAULT_SERVICE_LOG_PATH : Dynamic;
	static public function NoReturn(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Decode the Base64 encoded bytes-like object or ASCII string s.
		
		Optional altchars must be a bytes-like object or ASCII string of length 2
		which specifies the alternative alphabet used instead of the '+' and '/'
		characters.
		
		The result is returned as a bytes object.  A binascii.Error is raised if
		s is incorrectly padded.
		
		If validate is False (the default), characters that are neither in the
		normal base-64 alphabet nor the alternative alphabet are discarded prior
		to the padding check.  If validate is True, these non-alphabet characters
		in the input result in a binascii.Error.
	**/
	static public function b64decode(s:Dynamic, ?altchars:Dynamic, ?validate:Dynamic):Dynamic;
	/**
		@contextmanager decorator.
		
		Typical usage:
		
		    @contextmanager
		    def some_generator(<arguments>):
		        <setup>
		        try:
		            yield <value>
		        finally:
		            <cleanup>
		
		This makes this:
		
		    with some_generator(<arguments>) as <variable>:
		        <body>
		
		equivalent to this:
		
		    <setup>
		    try:
		        <variable> = <value>
		        <body>
		    finally:
		        <cleanup>
	**/
	static public function contextmanager(func:Dynamic):Dynamic;
	/**
		Recursively delete a directory tree.
		
		If ignore_errors is set, errors are ignored; otherwise, if onerror
		is set, it is called to handle the error with arguments (func,
		path, exc_info) where func is platform and implementation dependent;
		path is the argument to that function that caused it to fail; and
		exc_info is a tuple returned by sys.exc_info().  If ignore_errors
		is false and onerror is None, an exception is raised.
	**/
	static public function rmtree(path:Dynamic, ?ignore_errors:Dynamic, ?onerror:Dynamic):Dynamic;
}