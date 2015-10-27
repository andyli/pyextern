/* This file is generated, do not edit! */
package matplotlib.tri;
@:native("matplotlib.tri.Triangulation") extern class Triangulation {
	public function calculate_plane_coefficients(z:Dynamic):Void;
	public var edges : Dynamic;
	static public function get_from_args_and_kwargs(args:haxe.extern.Rest<Dynamic>):Void;
	public function get_masked_triangles():Void;
	public function get_trifinder():Void;
	public var neighbors : Dynamic;
	public function set_mask(mask:Dynamic):Void;
}