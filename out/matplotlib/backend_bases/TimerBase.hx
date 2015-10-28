/* This file is generated, do not edit! */
package matplotlib.backend_bases;
@:pythonImport("matplotlib.backend_bases", "TimerBase") extern class TimerBase {
	public function add_callback(?varargs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public var interval : Dynamic;
	public function remove_callback(?varargs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public var single_shot : Dynamic;
	public function start(?interval:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function stop(?kwargs:python.KwArgs<Dynamic>):Dynamic;
}