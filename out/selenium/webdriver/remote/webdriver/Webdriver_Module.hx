/* This file is generated, do not edit! */
package selenium.webdriver.remote.webdriver;
@:pythonImport("selenium.webdriver.remote.webdriver") extern class Webdriver_Module {
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
}