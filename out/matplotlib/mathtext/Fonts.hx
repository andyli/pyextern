/* This file is generated, do not edit! */
package matplotlib.mathtext;
@:pythonImport("matplotlib.mathtext", "Fonts") extern class Fonts {
	public function destroy(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function get_kern(font1:Dynamic, fontclass1:Dynamic, sym1:Dynamic, fontsize1:Dynamic, font2:Dynamic, fontclass2:Dynamic, sym2:Dynamic, fontsize2:Dynamic, dpi:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function get_metrics(font:Dynamic, font_class:Dynamic, sym:Dynamic, fontsize:Dynamic, dpi:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function get_results(box:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function get_sized_alternatives_for_symbol(fontname:Dynamic, sym:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function get_underline_thickness(font:Dynamic, fontsize:Dynamic, dpi:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function get_used_characters(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function get_xheight(font:Dynamic, fontsize:Dynamic, dpi:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function render_glyph(ox:Dynamic, oy:Dynamic, facename:Dynamic, font_class:Dynamic, sym:Dynamic, fontsize:Dynamic, dpi:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function render_rect_filled(x1:Dynamic, y1:Dynamic, x2:Dynamic, y2:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function set_canvas_size(w:Dynamic, h:Dynamic, d:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}