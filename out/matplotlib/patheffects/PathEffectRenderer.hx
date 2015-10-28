/* This file is generated, do not edit! */
package matplotlib.patheffects;
@:pythonImport("matplotlib.patheffects", "PathEffectRenderer") extern class PathEffectRenderer {
	public function copy_with_path_effect(path_effects:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function draw_markers(?varargs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function draw_path(gc:Dynamic, tpath:Dynamic, affine:Dynamic, ?rgbFace:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function draw_path_collection(?varargs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function points_to_pixels(points:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}