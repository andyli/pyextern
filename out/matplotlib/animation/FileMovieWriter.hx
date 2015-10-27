/* This file is generated, do not edit! */
package matplotlib.animation;
@:native("matplotlib.animation.FileMovieWriter") extern class FileMovieWriter {
	public function cleanup():Void;
	public function finish():Void;
	public var frame_format : Dynamic;
	public function grab_frame(args:haxe.extern.Rest<Dynamic>):Void;
	public function setup(fig:Dynamic, outfile:Dynamic, dpi:Dynamic, ?frame_prefix:Dynamic, ?clear_temp:Dynamic = true):Void;
}