/* This file is generated, do not edit! */
package matplotlib.animation;
@:pythonImport("matplotlib.animation", "MovieWriter") extern class MovieWriter {
	static public function bin_path(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function cleanup(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function finish(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public var frame_size : Dynamic;
	public function grab_frame(?varargs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function isAvailable(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function saving(?varargs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function setup(?varargs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}