/* This file is generated, do not edit! */
package pandas.plotting._matplotlib.style;
@:pythonImport("pandas.plotting._matplotlib.style") extern class Style_Module {
	static public function Collection(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Color(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Iterator(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Sequence(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var TYPE_CHECKING : Dynamic;
	static public function Union(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Cycle colors until achieving max of `num_colors` or length of `colors`.
		
		Extra colors will be ignored by matplotlib if there are more colors
		than needed and nothing needs to be done here.
	**/
	static public function _cycle_colors(colors:Dynamic, num_colors:Dynamic):Dynamic;
	/**
		Derive colors from either `colormap`, `color_type` or `color` inputs.
		
		Get a list of colors either from `colormap`, or from `color`,
		or from `color_type` (if both `colormap` and `color` are None).
		
		Parameters
		----------
		color : str or sequence, optional
		    Color(s) to be used for deriving sequence of colors.
		    Can be either be a single color (single color string, or sequence of floats
		    representing a single color), or a sequence of colors.
		colormap : :py:class:`matplotlib.colors.Colormap`, optional
		    Matplotlib colormap.
		    When provided, the resulting colors will be derived from the colormap.
		color_type : {"default", "random"}, optional
		    Type of colors to derive. Used if provided `color` and `colormap` are None.
		    Ignored if either `color` or `colormap`` are not None.
		num_colors : int
		    Number of colors to be extracted.
		
		Returns
		-------
		list
		    List of colors extracted.
		
		Warns
		-----
		UserWarning
		    If both `colormap` and `color` are provided.
		    Parameter `color` will override.
	**/
	static public function _derive_colors(color:Dynamic, colormap:Dynamic, color_type:Dynamic, num_colors:Dynamic):Dynamic;
	/**
		Yield colors from string of several letters or from collection of colors.
	**/
	static public function _gen_list_of_colors_from_iterable(color:Dynamic):Dynamic;
	/**
		Get instance of matplotlib colormap.
	**/
	static public function _get_cmap_instance(colormap:Dynamic):Dynamic;
	/**
		Get colors from user input color.
	**/
	static public function _get_colors_from_color(color:Dynamic):Dynamic;
	/**
		Get colors from user input color type.
	**/
	static public function _get_colors_from_color_type(color_type:Dynamic, num_colors:Dynamic):Dynamic;
	/**
		Get colors from colormap.
	**/
	static public function _get_colors_from_colormap(colormap:Dynamic, num_colors:Dynamic):Dynamic;
	/**
		Get `num_colors` of default colors from matplotlib rc params.
	**/
	static public function _get_default_colors(num_colors:Dynamic):Dynamic;
	/**
		Get `num_colors` of random colors.
	**/
	static public function _get_random_colors(num_colors:Dynamic):Dynamic;
	/**
		Check if color comprises a sequence of floats representing color.
	**/
	static public function _is_floats_color(color:Dynamic):Dynamic;
	/**
		Check if `color` is a single color, not a sequence of colors.
		
		Single color is of these kinds:
		    - Named color "red", "C0", "firebrick"
		    - Alias "g"
		    - Sequence of floats, such as (0.1, 0.2, 0.3) or (0.1, 0.2, 0.3, 0.4).
		
		See Also
		--------
		_is_single_string_color
	**/
	static public function _is_single_color(color:Dynamic):Dynamic;
	/**
		Check if `color` is a single string color.
		
		Examples of single string colors:
		    - 'r'
		    - 'g'
		    - 'red'
		    - 'green'
		    - 'C3'
		    - 'firebrick'
		
		Parameters
		----------
		color : Color
		    Color string or sequence of floats.
		
		Returns
		-------
		bool
		    True if `color` looks like a valid color.
		    False otherwise.
	**/
	static public function _is_single_string_color(color:Dynamic):Dynamic;
	/**
		Get a random color represented as a list of length 3
	**/
	static public function _random_color(column:Dynamic):Dynamic;
	static public var annotations : Dynamic;
	/**
		Cast a value to a type.
		
		This returns the value unchanged.  To the type checker this
		signals that the return value has the designated type, but at
		runtime we intentionally don't check anything (we want this
		to be as fast as possible).
	**/
	@:native("cast")
	static public function _cast(typ:Dynamic, val:Dynamic):Dynamic;
	/**
		Get standard colors based on `colormap`, `color_type` or `color` inputs.
		
		Parameters
		----------
		num_colors : int
		    Minimum number of colors to be returned.
		    Ignored if `color` is a dictionary.
		colormap : :py:class:`matplotlib.colors.Colormap`, optional
		    Matplotlib colormap.
		    When provided, the resulting colors will be derived from the colormap.
		color_type : {"default", "random"}, optional
		    Type of colors to derive. Used if provided `color` and `colormap` are None.
		    Ignored if either `color` or `colormap` are not None.
		color : dict or str or sequence, optional
		    Color(s) to be used for deriving sequence of colors.
		    Can be either be a dictionary, or a single color (single color string,
		    or sequence of floats representing a single color),
		    or a sequence of colors.
		
		Returns
		-------
		dict or list
		    Standard colors. Can either be a mapping if `color` was a dictionary,
		    or a list of colors with a length of `num_colors` or more.
		
		Warns
		-----
		UserWarning
		    If both `colormap` and `color` are provided.
		    Parameter `color` will override.
	**/
	static public function get_standard_colors(num_colors:Dynamic, ?colormap:Dynamic, ?color_type:Dynamic, ?color:Dynamic):Dynamic;
	/**
		Check if the object is list-like.
		
		Objects that are considered list-like are for example Python
		lists, tuples, sets, NumPy arrays, and Pandas Series.
		
		Strings and datetime objects, however, are not considered list-like.
		
		Parameters
		----------
		obj : object
		    Object to check.
		allow_sets : bool, default True
		    If this parameter is False, sets will not be considered list-like.
		
		Returns
		-------
		bool
		    Whether `obj` has list-like properties.
		
		Examples
		--------
		>>> import datetime
		>>> is_list_like([1, 2, 3])
		True
		>>> is_list_like({1, 2, 3})
		True
		>>> is_list_like(datetime.datetime(2017, 1, 1))
		False
		>>> is_list_like("foo")
		False
		>>> is_list_like(1)
		False
		>>> is_list_like(np.array([2]))
		True
		>>> is_list_like(np.array(2))
		False
	**/
	static public function is_list_like(args:haxe.extern.Rest<Dynamic>):Dynamic;
}