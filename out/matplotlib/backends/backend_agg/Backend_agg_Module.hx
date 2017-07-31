/* This file is generated, do not edit! */
package matplotlib.backends.backend_agg;
@:pythonImport("matplotlib.backends.backend_agg") extern class Backend_agg_Module {
	static public var LOAD_DEFAULT : Dynamic;
	static public var LOAD_FORCE_AUTOHINT : Dynamic;
	static public var LOAD_NO_AUTOHINT : Dynamic;
	static public var LOAD_NO_HINTING : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _has_pil : Dynamic;
	static public var absolute_import : Dynamic;
	static public var backend_version : Dynamic;
	/**
		cos(x)
		
		Return the cosine of x (measured in radians).
	**/
	static public function cos(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var division : Dynamic;
	static public function findfont(prop:Dynamic, ?kw:python.KwArgs<Dynamic>):Dynamic;
	/**
		FT2Font(ttffile)
		
		Create a new FT2Font object
		The following global font attributes are defined:
		  num_faces              number of faces in file
		  face_flags             face flags  (int type); see the ft2font constants
		  style_flags            style flags  (int type); see the ft2font constants
		  num_glyphs             number of glyphs in the face
		  family_name            face family name
		  style_name             face syle name
		  num_fixed_sizes        number of bitmap in the face
		  scalable               face is scalable
		
		The following are available, if scalable is true:
		  bbox                   face global bounding box (xmin, ymin, xmax, ymax)
		  units_per_EM           number of font units covered by the EM
		  ascender               ascender in 26.6 units
		  descender              descender in 26.6 units
		  height                 height in 26.6 units; used to compute a default
		                         line spacing (baseline-to-baseline distance)
		  max_advance_width      maximum horizontal cursor advance for all glyphs
		  max_advance_height     same for vertical layout
		  underline_position     vertical position of the underline bar
		  underline_thickness    vertical thickness of the underline
		  postscript_name        PostScript name of the font
	**/
	static public function get_font(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function get_hinting_flag():Dynamic;
	/**
		Return True if *obj* looks like a string
	**/
	static public function is_string_like(obj:Dynamic):Dynamic;
	/**
		Create a new figure manager instance
	**/
	static public function new_figure_manager(num:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Create a new figure manager instance for the given figure.
	**/
	static public function new_figure_manager_given_figure(num:Dynamic, figure:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		radians(x)
		
		Convert angle x from degrees to radians.
	**/
	static public function radians(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var rcParams : Dynamic;
	/**
		Return a dictionary that contains those keys that appear in both
		d and keys, with values from d.
	**/
	static public function restrict_dict(d:Dynamic, keys:Dynamic):Dynamic;
	/**
		sin(x)
		
		Return the sine of x (measured in radians).
	**/
	static public function sin(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var unicode_literals : Dynamic;
	static public var verbose : Dynamic;
}