/* This file is generated, do not edit! */
package selenium.webdriver.remote.webdriver;
@:pythonImport("selenium.webdriver.remote.webdriver") extern class Webdriver_Module {
	static public function Dict(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function List(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Optional(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public function Union(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var _OSS_W3C_CONVERSION : Dynamic;
	static public var _W3C_CAPABILITY_NAMES : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Makes a W3C alwaysMatch capabilities object.
		
		Filters out capability names that are not in the W3C spec. Spec-compliant
		drivers will reject requests containing unknown capability names.
		
		Moves the Firefox profile, if present, from the old location to the new Firefox
		options object.
		
		:Args:
		 - caps - A dictionary of capabilities requested by the caller.
	**/
	static public function _make_w3c_caps(caps:Dynamic):Dynamic;
	/**
		@asynccontextmanager decorator.
		
		Typical usage:
		
		    @asynccontextmanager
		    async def some_async_generator(<arguments>):
		        <setup>
		        try:
		            yield <value>
		        finally:
		            <cleanup>
		
		This makes this:
		
		    async with some_async_generator(<arguments>) as <variable>:
		        <body>
		
		equivalent to this:
		
		    <setup>
		    try:
		        <variable> = <value>
		        <body>
		    finally:
		        <cleanup>
	**/
	static public function asynccontextmanager(func:Dynamic):Dynamic;
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
	static public var cdp : Dynamic;
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
	static public function create_matches(options:Dynamic):Dynamic;
	static public function get_remote_connection(capabilities:Dynamic, command_executor:Dynamic, keep_alive:Dynamic, ?ignore_local_proxy:Dynamic):Dynamic;
	static public function import_cdp():Dynamic;
	/**
		Import a module.
		
		The 'package' argument is required when performing a relative import. It
		specifies the package to use as the anchor point from which to resolve the
		relative import to an absolute import.
	**/
	static public function import_module(name:Dynamic, ?_package:Dynamic):Dynamic;
}