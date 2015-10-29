/* This file is generated, do not edit! */
package matplotlib.tests;
@:pythonImport("matplotlib.tests.test_style") extern class Test_style {
	static public var DUMMY_SETTINGS : Dynamic;
	static public var PARAM : Dynamic;
	static public var STYLE_EXTENSION : Dynamic;
	static public var USER_LIBRARY_PATHS : Dynamic;
	static public var VALUE : Dynamic;
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
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	/**
		Context manager to create a style sheet in a temporary directory.
	**/
	static public function temp_style(style_name:Dynamic, ?settings:Dynamic):Dynamic;
	static public function test_available():Dynamic;
	static public function test_context():Dynamic;
	static public function test_use():Dynamic;
	static public function test_use_url():Dynamic;
	static public var unicode_literals : Dynamic;
}