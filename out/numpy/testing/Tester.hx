/* This file is generated, do not edit! */
package numpy.testing;
@:pythonImport("numpy.testing", "Tester") extern class Tester {
	public function bench(?label:Dynamic, ?verbose:Dynamic, ?extra_argv:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public var excludes : Dynamic;
	public function prepare_test_args(?label:Dynamic, ?verbose:Dynamic, ?extra_argv:Dynamic = null, ?doctests:Dynamic = false, ?coverage:Dynamic = false, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function test(?label:Dynamic, ?verbose:Dynamic, ?extra_argv:Dynamic = null, ?doctests:Dynamic = false, ?coverage:Dynamic = false, ?raise_warnings:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}