/* This file is generated, do not edit! */
package matplotlib.spines;
@:pythonImport("matplotlib.spines", "Spine") extern class Spine {
	static public function circular_spine(?varargs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function cla(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function draw(?varargs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function get_bounds(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function get_patch_transform(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function get_path(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function get_position(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function get_smart_bounds(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function get_spine_transform(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function is_frame_like(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function linear_spine(?varargs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function register_axis(axis:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function set_bounds(low:Dynamic, high:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function set_color(c:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function set_patch_circle(center:Dynamic, radius:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function set_patch_line(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function set_position(position:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function set_smart_bounds(value:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}