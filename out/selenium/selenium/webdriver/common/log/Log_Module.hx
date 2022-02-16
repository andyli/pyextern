/* This file is generated, do not edit! */
package selenium.webdriver.common.log;
@:pythonImport("selenium.webdriver.common.log") extern class Log_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
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
	static public var cdp : Dynamic;
	static public function import_cdp():Dynamic;
	/**
		Import a module.
		
		The 'package' argument is required when performing a relative import. It
		specifies the package to use as the anchor point from which to resolve the
		relative import to an absolute import.
	**/
	static public function import_module(name:Dynamic, ?_package:Dynamic):Dynamic;
}