/* This file is generated, do not edit! */
package numpy.testing;
@:native("numpy.testing.decorators") extern class Decorators {
	static public function deprecated(?conditional:Dynamic = true):Dynamic;
	static public function knownfailureif(fail_condition:Dynamic, ?msg:Dynamic = null):Dynamic;
	static public function setastest(?tf:Dynamic = true):Void;
	static public function skipif(skip_condition:Dynamic, ?msg:Dynamic = null):Dynamic;
	static public function slow(t:Dynamic):Dynamic;
}