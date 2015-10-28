/* This file is generated, do not edit! */
package numpy;
@:pythonImport("numpy.matlib") extern class Matlib {
	static public function empty(shape:Dynamic, ?dtype:Dynamic = null, ?order:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function eye(n:Dynamic, ?M:Dynamic = null, ?k:Dynamic, ?dtype:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function identity(n:Dynamic, ?dtype:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function ones(shape:Dynamic, ?dtype:Dynamic = null, ?order:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function rand(?varargs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function randn(?varargs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function repmat(a:Dynamic, m:Dynamic, n:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function zeros(shape:Dynamic, ?dtype:Dynamic = null, ?order:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}