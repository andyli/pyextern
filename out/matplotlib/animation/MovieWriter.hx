/* This file is generated, do not edit! */
package matplotlib.animation;
@:native("matplotlib.animation.MovieWriter") extern class MovieWriter {
	static public function bin_path():Void;
	public function cleanup():Void;
	public function finish():Void;
	public var frame_size : Dynamic;
	public function grab_frame(args:haxe.extern.Rest<Dynamic>):Void;
	static public function isAvailable():Void;
	public function saving(args:haxe.extern.Rest<Dynamic>):Void;
	public function setup(args:haxe.extern.Rest<Dynamic>):Void;
}