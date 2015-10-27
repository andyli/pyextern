/* This file is generated, do not edit! */
package matplotlib.legend;
@:native("matplotlib.legend.Legend") extern class Legend {
	public var codes : Dynamic;
	public function contains(event:Dynamic):Void;
	public function draggable(?state:Dynamic = null, ?use_blit:Dynamic = false, ?update:Dynamic):Void;
	public function draw(args:haxe.extern.Rest<Dynamic>):Void;
	public function draw_frame(b:Dynamic):Void;
	public function get_bbox_to_anchor():Void;
	public function get_children():Void;
	static public function get_default_handler_map():Void;
	public function get_frame():Void;
	public function get_frame_on():Void;
	static public function get_legend_handler(legend_handler_map:Dynamic, orig_handle:Dynamic):Void;
	public function get_legend_handler_map():Void;
	public function get_lines():Void;
	public function get_patches():Void;
	public function get_texts():Void;
	public function get_title():Void;
	public function get_window_extent(args:haxe.extern.Rest<Dynamic>):Void;
	public function set_bbox_to_anchor(bbox:Dynamic, ?transform:Dynamic = null):Void;
	static public function set_default_handler_map(handler_map:Dynamic):Void;
	public function set_frame_on(b:Dynamic):Void;
	public function set_title(title:Dynamic, ?prop:Dynamic = null):Void;
	static public function update_default_handler_map(handler_map:Dynamic):Void;
	public var zorder : Dynamic;
}