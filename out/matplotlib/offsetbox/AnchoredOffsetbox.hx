/* This file is generated, do not edit! */
package matplotlib.offsetbox;
@:pythonImport("matplotlib.offsetbox", "AnchoredOffsetbox") extern class AnchoredOffsetbox {
	public function draw(renderer:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function get_bbox_to_anchor(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function get_child(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function get_children(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function get_extent(renderer:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function get_window_extent(renderer:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function set_bbox_to_anchor(bbox:Dynamic, ?transform:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function set_child(child:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function update_frame(bbox:Dynamic, ?fontsize:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public var zorder : Dynamic;
}