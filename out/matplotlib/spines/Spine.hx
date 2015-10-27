/* This file is generated, do not edit! */
package matplotlib.spines;
@:native("matplotlib.spines.Spine") extern class Spine {
	static public function circular_spine(args:haxe.extern.Rest<Dynamic>):Void;
	public function cla():Void;
	public function draw(args:haxe.extern.Rest<Dynamic>):Void;
	public function get_bounds():Void;
	public function get_patch_transform():Void;
	public function get_path():Void;
	public function get_position():Void;
	public function get_smart_bounds():Void;
	public function get_spine_transform():Void;
	public function is_frame_like():Void;
	static public function linear_spine(args:haxe.extern.Rest<Dynamic>):Void;
	public function register_axis(axis:Dynamic):Void;
	public function set_bounds(low:Dynamic, high:Dynamic):Void;
	public function set_color(c:Dynamic):Void;
	public function set_patch_circle(center:Dynamic, radius:Dynamic):Void;
	public function set_patch_line():Void;
	public function set_position(position:Dynamic):Void;
	public function set_smart_bounds(value:Dynamic):Void;
}