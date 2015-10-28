/* This file is generated, do not edit! */
package matplotlib.colorbar;
@:pythonImport("matplotlib.colorbar", "ColorbarBase") extern class ColorbarBase {
	public function add_lines(levels:Dynamic, colors:Dynamic, linewidths:Dynamic, ?erase:Dynamic = true, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public var ax : Dynamic;
	public function config_axis(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function draw_all(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function remove(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function set_alpha(alpha:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function set_label(?varargs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function set_ticklabels(ticklabels:Dynamic, ?update_ticks:Dynamic = true, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function set_ticks(ticks:Dynamic, ?update_ticks:Dynamic = true, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function update_ticks(?kwargs:python.KwArgs<Dynamic>):Dynamic;
}