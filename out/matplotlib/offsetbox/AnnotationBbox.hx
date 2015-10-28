/* This file is generated, do not edit! */
package matplotlib.offsetbox;
@:pythonImport("matplotlib.offsetbox", "AnnotationBbox") extern class AnnotationBbox {
	public var anncoords : Dynamic;
	public function contains(event:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function draw(renderer:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function get_children(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function get_fontsize(?s:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function set_figure(fig:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function set_fontsize(?s:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function update_positions(renderer:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public var xyann : Dynamic;
	public var zorder : Dynamic;
}