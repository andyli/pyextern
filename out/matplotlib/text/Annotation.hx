/* This file is generated, do not edit! */
package matplotlib.text;
@:native("matplotlib.text.Annotation") extern class Annotation {
	public var anncoords : Dynamic;
	public function contains(event:Dynamic):Void;
	public function draw(args:haxe.extern.Rest<Dynamic>):Void;
	public function get_window_extent(?renderer:Dynamic = null):Void;
	public function set_figure(fig:Dynamic):Void;
	public function update_bbox_position_size(renderer:Dynamic):Void;
	public function update_positions(renderer:Dynamic):Void;
	public var xyann : Dynamic;
}