/* This file is generated, do not edit! */
package matplotlib.animation;
@:pythonImport("matplotlib.animation", "FileMovieWriter") extern class FileMovieWriter {
	public function cleanup(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function finish(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public var frame_format : Dynamic;
	public function grab_frame(?varargs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function setup(fig:Dynamic, outfile:Dynamic, dpi:Dynamic, ?frame_prefix:Dynamic, ?clear_temp:Dynamic = true, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}