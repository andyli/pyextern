/* This file is generated, do not edit! */
package matplotlib.backend_bases;
@:native("matplotlib.backend_bases.NavigationToolbar2") extern class NavigationToolbar2 {
	public function back(args:haxe.extern.Rest<Dynamic>):Void;
	public function drag_pan(event:Dynamic):Void;
	public function drag_zoom(event:Dynamic):Void;
	public function draw():Void;
	public function draw_rubberband(event:Dynamic, x0:Dynamic, y0:Dynamic, x1:Dynamic, y1:Dynamic):Void;
	public function dynamic_update():Void;
	public function forward(args:haxe.extern.Rest<Dynamic>):Void;
	public function home(args:haxe.extern.Rest<Dynamic>):Void;
	public function mouse_move(event:Dynamic):Void;
	public function pan(args:haxe.extern.Rest<Dynamic>):Void;
	public function press(event:Dynamic):Void;
	public function press_pan(event:Dynamic):Void;
	public function press_zoom(event:Dynamic):Void;
	public function push_current():Void;
	public function release(event:Dynamic):Void;
	public function release_pan(event:Dynamic):Void;
	public function release_zoom(event:Dynamic):Void;
	public function save_figure(args:haxe.extern.Rest<Dynamic>):Void;
	public function set_cursor(cursor:Dynamic):Void;
	public function set_history_buttons():Void;
	public function set_message(s:Dynamic):Void;
	public var toolitems : Dynamic;
	public function update():Void;
	public function zoom(args:haxe.extern.Rest<Dynamic>):Void;
}