/* This file is generated, do not edit! */
package numpy.testing;
@:pythonImport("numpy.testing.decorators") extern class Decorators {
	static public function deprecated(?conditional:Dynamic = true, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function knownfailureif(fail_condition:Dynamic, ?msg:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function setastest(?tf:Dynamic = true, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function skipif(skip_condition:Dynamic, ?msg:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function slow(t:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}