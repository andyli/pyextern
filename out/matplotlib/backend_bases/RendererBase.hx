/* This file is generated, do not edit! */
package matplotlib.backend_bases;
@:pythonImport("matplotlib.backend_bases", "RendererBase") extern class RendererBase {
	public function close_group(s:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function draw_gouraud_triangle(gc:Dynamic, points:Dynamic, colors:Dynamic, transform:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function draw_gouraud_triangles(gc:Dynamic, triangles_array:Dynamic, colors_array:Dynamic, transform:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function draw_image(gc:Dynamic, x:Dynamic, y:Dynamic, im:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function draw_markers(gc:Dynamic, marker_path:Dynamic, marker_trans:Dynamic, path:Dynamic, trans:Dynamic, ?rgbFace:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function draw_path(gc:Dynamic, path:Dynamic, transform:Dynamic, ?rgbFace:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function draw_path_collection(gc:Dynamic, master_transform:Dynamic, paths:Dynamic, all_transforms:Dynamic, offsets:Dynamic, offsetTrans:Dynamic, facecolors:Dynamic, edgecolors:Dynamic, linewidths:Dynamic, linestyles:Dynamic, antialiaseds:Dynamic, urls:Dynamic, offset_position:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function draw_quad_mesh(gc:Dynamic, master_transform:Dynamic, meshWidth:Dynamic, meshHeight:Dynamic, coordinates:Dynamic, offsets:Dynamic, offsetTrans:Dynamic, facecolors:Dynamic, antialiased:Dynamic, edgecolors:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function draw_tex(gc:Dynamic, x:Dynamic, y:Dynamic, s:Dynamic, prop:Dynamic, angle:Dynamic, ?ismath:Dynamic, ?mtext:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function draw_text(gc:Dynamic, x:Dynamic, y:Dynamic, s:Dynamic, prop:Dynamic, angle:Dynamic, ?ismath:Dynamic = false, ?mtext:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function flipy(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function get_canvas_width_height(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function get_image_magnification(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function get_texmanager(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function get_text_width_height_descent(s:Dynamic, prop:Dynamic, ismath:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function new_gc(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function open_group(s:Dynamic, ?gid:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function option_image_nocomposite(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function option_scale_image(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function points_to_pixels(points:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function start_filter(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function start_rasterizing(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function stop_filter(filter_func:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function stop_rasterizing(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function strip_math(s:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}