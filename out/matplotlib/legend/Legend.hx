/* This file is generated, do not edit! */
package matplotlib.legend;
@:pythonImport("matplotlib.legend", "Legend") extern class Legend {
	public var codes : Dynamic;
	public function contains(event:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function draggable(?state:Dynamic = null, ?use_blit:Dynamic = false, ?update:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function draw(?varargs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function draw_frame(b:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function get_bbox_to_anchor(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function get_children(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function get_default_handler_map(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function get_frame(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function get_frame_on(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function get_legend_handler(legend_handler_map:Dynamic, orig_handle:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function get_legend_handler_map(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function get_lines(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function get_patches(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function get_texts(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function get_title(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function get_window_extent(?varargs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function set_bbox_to_anchor(bbox:Dynamic, ?transform:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function set_default_handler_map(handler_map:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function set_frame_on(b:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function set_title(title:Dynamic, ?prop:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function update_default_handler_map(handler_map:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public var zorder : Dynamic;
}