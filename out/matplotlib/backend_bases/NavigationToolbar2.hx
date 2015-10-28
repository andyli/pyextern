/* This file is generated, do not edit! */
package matplotlib.backend_bases;
@:pythonImport("matplotlib.backend_bases", "NavigationToolbar2") extern class NavigationToolbar2 {
	public function back(?varargs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function drag_pan(event:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function drag_zoom(event:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function draw(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function draw_rubberband(event:Dynamic, x0:Dynamic, y0:Dynamic, x1:Dynamic, y1:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function dynamic_update(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function forward(?varargs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function home(?varargs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function mouse_move(event:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function pan(?varargs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function press(event:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function press_pan(event:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function press_zoom(event:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function push_current(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function release(event:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function release_pan(event:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function release_zoom(event:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function save_figure(?varargs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function set_cursor(cursor:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function set_history_buttons(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function set_message(s:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public var toolitems : Dynamic;
	public function update(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function zoom(?varargs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}