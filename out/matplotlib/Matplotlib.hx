/* This file is generated, do not edit! */
package matplotlib;
@:pythonImport("matplotlib") extern class Matplotlib {
	static public function use(arg:Dynamic, ?warn:Dynamic = true, ?force:Dynamic = false, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function get_backend(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function rcParams(?varargs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function rc(?varargs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function matplotlib_fname(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function rc_params(?fail_on_error:Dynamic = false, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function rc_params_from_file(fname:Dynamic, ?fail_on_error:Dynamic = false, ?use_default_template:Dynamic = true, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}