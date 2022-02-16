/* This file is generated, do not edit! */
package seaborn.palettes;
@:pythonImport("seaborn.palettes") extern class Palettes_Module {
	static public var MPL_QUAL_PALS : Dynamic;
	static public var QUAL_PALETTES : Dynamic;
	static public var QUAL_PALETTE_SIZES : Dynamic;
	static public var SEABORN_PALETTES : Dynamic;
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Add some more flexibility to color choices.
	**/
	static public function _color_to_rgb(color:Dynamic, input:Dynamic):Dynamic;
	/**
		Turn stringified cubehelix params into args/kwargs.
	**/
	static public function _parse_cubehelix_args(argstr:Dynamic):Dynamic;
	/**
		Make a palette that blends between a list of colors.
		
		Parameters
		----------
		colors : sequence of colors in various formats interpreted by ``input``
		    hex code, html color name, or tuple in ``input`` space.
		n_colors : int, optional
		    Number of colors in the palette.
		as_cmap : bool, optional
		    If True, return a :class:`matplotlib.colors.Colormap`.
		
		Returns
		-------
		list of RGB tuples or :class:`matplotlib.colors.Colormap`
	**/
	static public function blend_palette(colors:Dynamic, ?n_colors:Dynamic, ?as_cmap:Dynamic, ?input:Dynamic):Dynamic;
	/**
		Return a list of colors or continuous colormap defining a palette.
		
		Possible ``palette`` values include:
		    - Name of a seaborn palette (deep, muted, bright, pastel, dark, colorblind)
		    - Name of matplotlib colormap
		    - 'husl' or 'hls'
		    - 'ch:<cubehelix arguments>'
		    - 'light:<color>', 'dark:<color>', 'blend:<color>,<color>',
		    - A sequence of colors in any format matplotlib accepts
		
		Calling this function with ``palette=None`` will return the current
		matplotlib color cycle.
		
		This function can also be used in a ``with`` statement to temporarily
		set the color cycle for a plot or set of plots.
		
		See the :ref:`tutorial <palette_tutorial>` for more information.
		
		Parameters
		----------
		palette : None, string, or sequence, optional
		    Name of palette or None to return current palette. If a sequence, input
		    colors are used but possibly cycled and desaturated.
		n_colors : int, optional
		    Number of colors in the palette. If ``None``, the default will depend
		    on how ``palette`` is specified. Named palettes default to 6 colors,
		    but grabbing the current palette or passing in a list of colors will
		    not change the number of colors unless this is specified. Asking for
		    more colors than exist in the palette will cause it to cycle. Ignored
		    when ``as_cmap`` is True.
		desat : float, optional
		    Proportion to desaturate each color by.
		as_cmap : bool
		    If True, return a :class:`matplotlib.colors.Colormap`.
		
		Returns
		-------
		list of RGB tuples or :class:`matplotlib.colors.Colormap`
		
		See Also
		--------
		set_palette : Set the default color cycle for all plots.
		set_color_codes : Reassign color codes like ``"b"``, ``"g"``, etc. to
		                  colors from one of the seaborn palettes.
		
		Examples
		--------
		
		.. include:: ../docstrings/color_palette.rst
	**/
	static public function color_palette(?palette:Dynamic, ?n_colors:Dynamic, ?desat:Dynamic, ?as_cmap:Dynamic):Dynamic;
	/**
		Make a palette with color names from Crayola crayons.
		
		Colors are taken from here:
		https://en.wikipedia.org/wiki/List_of_Crayola_crayon_colors
		
		This is just a simple wrapper around the ``seaborn.crayons`` dictionary.
		
		Parameters
		----------
		colors : list of strings
		    List of keys in the ``seaborn.crayons`` dictionary.
		
		Returns
		-------
		palette : seaborn color palette
		    Returns the list of colors as rgb tuples in an object that behaves like
		    other seaborn color palettes.
		
		See Also
		--------
		xkcd_palette : Make a palette with named colors from the XKCD color survey.
	**/
	static public function crayon_palette(colors:Dynamic):Dynamic;
	static public var crayons : Dynamic;
	/**
		Make a sequential palette from the cubehelix system.
		
		This produces a colormap with linearly-decreasing (or increasing)
		brightness. That means that information will be preserved if printed to
		black and white or viewed by someone who is colorblind.  "cubehelix" is
		also available as a matplotlib-based palette, but this function gives the
		user more control over the look of the palette and has a different set of
		defaults.
		
		In addition to using this function, it is also possible to generate a
		cubehelix palette generally in seaborn using a string-shorthand; see the
		example below.
		
		Parameters
		----------
		n_colors : int
		    Number of colors in the palette.
		start : float, 0 <= start <= 3
		    The hue at the start of the helix.
		rot : float
		    Rotations around the hue wheel over the range of the palette.
		gamma : float 0 <= gamma
		    Gamma factor to emphasize darker (gamma < 1) or lighter (gamma > 1)
		    colors.
		hue : float, 0 <= hue <= 1
		    Saturation of the colors.
		dark : float 0 <= dark <= 1
		    Intensity of the darkest color in the palette.
		light : float 0 <= light <= 1
		    Intensity of the lightest color in the palette.
		reverse : bool
		    If True, the palette will go from dark to light.
		as_cmap : bool
		    If True, return a :class:`matplotlib.colors.Colormap`.
		
		Returns
		-------
		list of RGB tuples or :class:`matplotlib.colors.Colormap`
		
		See Also
		--------
		choose_cubehelix_palette : Launch an interactive widget to select cubehelix
		                           palette parameters.
		dark_palette : Create a sequential palette with dark low values.
		light_palette : Create a sequential palette with bright low values.
		
		References
		----------
		Green, D. A. (2011). "A colour scheme for the display of astronomical
		intensity images". Bulletin of the Astromical Society of India, Vol. 39,
		p. 289-295.
		
		Examples
		--------
		
		Generate the default palette:
		
		.. plot::
		    :context: close-figs
		
		    >>> import seaborn as sns; sns.set_theme()
		    >>> sns.palplot(sns.cubehelix_palette())
		
		Rotate backwards from the same starting location:
		
		.. plot::
		    :context: close-figs
		
		    >>> sns.palplot(sns.cubehelix_palette(rot=-.4))
		
		Use a different starting point and shorter rotation:
		
		.. plot::
		    :context: close-figs
		
		    >>> sns.palplot(sns.cubehelix_palette(start=2.8, rot=.1))
		
		Reverse the direction of the lightness ramp:
		
		.. plot::
		    :context: close-figs
		
		    >>> sns.palplot(sns.cubehelix_palette(reverse=True))
		
		Generate a colormap object:
		
		.. plot::
		    :context: close-figs
		
		    >>> from numpy import arange
		    >>> x = arange(25).reshape(5, 5)
		    >>> cmap = sns.cubehelix_palette(as_cmap=True)
		    >>> ax = sns.heatmap(x, cmap=cmap)
		
		Use the full lightness range:
		
		.. plot::
		    :context: close-figs
		
		    >>> cmap = sns.cubehelix_palette(dark=0, light=1, as_cmap=True)
		    >>> ax = sns.heatmap(x, cmap=cmap)
		
		Use through the :func:`color_palette` interface:
		
		.. plot::
		    :context: close-figs
		
		    >>> sns.palplot(sns.color_palette("ch:2,r=.2,l=.6"))
	**/
	static public function cubehelix_palette(?n_colors:Dynamic, ?start:Dynamic, ?rot:Dynamic, ?gamma:Dynamic, ?hue:Dynamic, ?light:Dynamic, ?dark:Dynamic, ?reverse:Dynamic, ?as_cmap:Dynamic):Dynamic;
	/**
		Make a sequential palette that blends from dark to ``color``.
		
		This kind of palette is good for data that range between relatively
		uninteresting low values and interesting high values.
		
		The ``color`` parameter can be specified in a number of ways, including
		all options for defining a color in matplotlib and several additional
		color spaces that are handled by seaborn. You can also use the database
		of named colors from the XKCD color survey.
		
		If you are using the IPython notebook, you can also choose this palette
		interactively with the :func:`choose_dark_palette` function.
		
		Parameters
		----------
		color : base color for high values
		    hex, rgb-tuple, or html color name
		n_colors : int, optional
		    number of colors in the palette
		reverse : bool, optional
		    if True, reverse the direction of the blend
		as_cmap : bool, optional
		    If True, return a :class:`matplotlib.colors.Colormap`.
		input : {'rgb', 'hls', 'husl', xkcd'}
		    Color space to interpret the input color. The first three options
		    apply to tuple inputs and the latter applies to string inputs.
		
		Returns
		-------
		list of RGB tuples or :class:`matplotlib.colors.Colormap`
		
		See Also
		--------
		light_palette : Create a sequential palette with bright low values.
		diverging_palette : Create a diverging palette with two colors.
		
		Examples
		--------
		
		Generate a palette from an HTML color:
		
		.. plot::
		    :context: close-figs
		
		    >>> import seaborn as sns; sns.set_theme()
		    >>> sns.palplot(sns.dark_palette("purple"))
		
		Generate a palette that decreases in lightness:
		
		.. plot::
		    :context: close-figs
		
		    >>> sns.palplot(sns.dark_palette("seagreen", reverse=True))
		
		Generate a palette from an HUSL-space seed:
		
		.. plot::
		    :context: close-figs
		
		    >>> sns.palplot(sns.dark_palette((260, 75, 60), input="husl"))
		
		Generate a colormap object:
		
		.. plot::
		    :context: close-figs
		
		    >>> from numpy import arange
		    >>> x = arange(25).reshape(5, 5)
		    >>> cmap = sns.dark_palette("#2ecc71", as_cmap=True)
		    >>> ax = sns.heatmap(x, cmap=cmap)
	**/
	static public function dark_palette(color:Dynamic, ?n_colors:Dynamic, ?reverse:Dynamic, ?as_cmap:Dynamic, ?input:Dynamic):Dynamic;
	/**
		Decrease the saturation channel of a color by some percent.
		
		Parameters
		----------
		color : matplotlib color
		    hex, rgb-tuple, or html color name
		prop : float
		    saturation channel of color will be multiplied by this value
		
		Returns
		-------
		new_color : rgb tuple
		    desaturated color code in RGB tuple representation
	**/
	static public function desaturate(color:Dynamic, prop:Dynamic):Dynamic;
	/**
		Make a diverging palette between two HUSL colors.
		
		If you are using the IPython notebook, you can also choose this palette
		interactively with the :func:`choose_diverging_palette` function.
		
		Parameters
		----------
		h_neg, h_pos : float in [0, 359]
		    Anchor hues for negative and positive extents of the map.
		s : float in [0, 100], optional
		    Anchor saturation for both extents of the map.
		l : float in [0, 100], optional
		    Anchor lightness for both extents of the map.
		sep : int, optional
		    Size of the intermediate region.
		n : int, optional
		    Number of colors in the palette (if not returning a cmap)
		center : {"light", "dark"}, optional
		    Whether the center of the palette is light or dark
		as_cmap : bool, optional
		    If True, return a :class:`matplotlib.colors.Colormap`.
		
		Returns
		-------
		list of RGB tuples or :class:`matplotlib.colors.Colormap`
		
		See Also
		--------
		dark_palette : Create a sequential palette with dark values.
		light_palette : Create a sequential palette with light values.
		
		Examples
		--------
		
		Generate a blue-white-red palette:
		
		.. plot::
		    :context: close-figs
		
		    >>> import seaborn as sns; sns.set_theme()
		    >>> sns.palplot(sns.diverging_palette(240, 10, n=9))
		
		Generate a brighter green-white-purple palette:
		
		.. plot::
		    :context: close-figs
		
		    >>> sns.palplot(sns.diverging_palette(150, 275, s=80, l=55, n=9))
		
		Generate a blue-black-red palette:
		
		.. plot::
		    :context: close-figs
		
		    >>> sns.palplot(sns.diverging_palette(250, 15, s=75, l=40,
		    ...                                   n=9, center="dark"))
		
		Generate a colormap object:
		
		.. plot::
		    :context: close-figs
		
		    >>> from numpy import arange
		    >>> x = arange(25).reshape(5, 5)
		    >>> cmap = sns.diverging_palette(220, 20, as_cmap=True)
		    >>> ax = sns.heatmap(x, cmap=cmap)
	**/
	static public function diverging_palette(h_neg:Dynamic, h_pos:Dynamic, ?s:Dynamic, ?l:Dynamic, ?sep:Dynamic, ?n:Dynamic, ?center:Dynamic, ?as_cmap:Dynamic):Dynamic;
	/**
		Return the list of colors in the current matplotlib color cycle
		
		Parameters
		----------
		None
		
		Returns
		-------
		colors : list
		    List of matplotlib colors in the current cycle, or dark gray if
		    the current color cycle is empty.
	**/
	static public function get_color_cycle():Array<Dynamic>;
	/**
		Get a set of evenly spaced colors in HLS hue space.
		
		h, l, and s should be between 0 and 1
		
		Parameters
		----------
		
		n_colors : int
		    number of colors in the palette
		h : float
		    first hue
		l : float
		    lightness
		s : float
		    saturation
		
		Returns
		-------
		list of RGB tuples or :class:`matplotlib.colors.Colormap`
		
		See Also
		--------
		husl_palette : Make a palette using evenly spaced hues in the HUSL system.
		
		Examples
		--------
		
		Create a palette of 10 colors with the default parameters:
		
		.. plot::
		    :context: close-figs
		
		    >>> import seaborn as sns; sns.set_theme()
		    >>> sns.palplot(sns.hls_palette(10))
		
		Create a palette of 10 colors that begins at a different hue value:
		
		.. plot::
		    :context: close-figs
		
		    >>> sns.palplot(sns.hls_palette(10, h=.5))
		
		Create a palette of 10 colors that are darker than the default:
		
		.. plot::
		    :context: close-figs
		
		    >>> sns.palplot(sns.hls_palette(10, l=.4))
		
		Create a palette of 10 colors that are less saturated than the default:
		
		.. plot::
		    :context: close-figs
		
		    >>> sns.palplot(sns.hls_palette(10, s=.4))
	**/
	static public function hls_palette(?n_colors:Dynamic, ?h:Dynamic, ?l:Dynamic, ?s:Dynamic, ?as_cmap:Dynamic):Dynamic;
	/**
		Get a set of evenly spaced colors in HUSL hue space.
		
		h, s, and l should be between 0 and 1
		
		Parameters
		----------
		
		n_colors : int
		    number of colors in the palette
		h : float
		    first hue
		s : float
		    saturation
		l : float
		    lightness
		
		Returns
		-------
		list of RGB tuples or :class:`matplotlib.colors.Colormap`
		
		See Also
		--------
		hls_palette : Make a palette using evently spaced circular hues in the
		              HSL system.
		
		Examples
		--------
		
		Create a palette of 10 colors with the default parameters:
		
		.. plot::
		    :context: close-figs
		
		    >>> import seaborn as sns; sns.set_theme()
		    >>> sns.palplot(sns.husl_palette(10))
		
		Create a palette of 10 colors that begins at a different hue value:
		
		.. plot::
		    :context: close-figs
		
		    >>> sns.palplot(sns.husl_palette(10, h=.5))
		
		Create a palette of 10 colors that are darker than the default:
		
		.. plot::
		    :context: close-figs
		
		    >>> sns.palplot(sns.husl_palette(10, l=.4))
		
		Create a palette of 10 colors that are less saturated than the default:
		
		.. plot::
		    :context: close-figs
		
		    >>> sns.palplot(sns.husl_palette(10, s=.4))
	**/
	static public function husl_palette(?n_colors:Dynamic, ?h:Dynamic, ?s:Dynamic, ?l:Dynamic, ?as_cmap:Dynamic):Dynamic;
	/**
		Make a sequential palette that blends from light to ``color``.
		
		This kind of palette is good for data that range between relatively
		uninteresting low values and interesting high values.
		
		The ``color`` parameter can be specified in a number of ways, including
		all options for defining a color in matplotlib and several additional
		color spaces that are handled by seaborn. You can also use the database
		of named colors from the XKCD color survey.
		
		If you are using the IPython notebook, you can also choose this palette
		interactively with the :func:`choose_light_palette` function.
		
		Parameters
		----------
		color : base color for high values
		    hex code, html color name, or tuple in ``input`` space.
		n_colors : int, optional
		    number of colors in the palette
		reverse : bool, optional
		    if True, reverse the direction of the blend
		as_cmap : bool, optional
		    If True, return a :class:`matplotlib.colors.Colormap`.
		input : {'rgb', 'hls', 'husl', xkcd'}
		    Color space to interpret the input color. The first three options
		    apply to tuple inputs and the latter applies to string inputs.
		
		Returns
		-------
		list of RGB tuples or :class:`matplotlib.colors.Colormap`
		
		See Also
		--------
		dark_palette : Create a sequential palette with dark low values.
		diverging_palette : Create a diverging palette with two colors.
		
		Examples
		--------
		
		Generate a palette from an HTML color:
		
		.. plot::
		    :context: close-figs
		
		    >>> import seaborn as sns; sns.set_theme()
		    >>> sns.palplot(sns.light_palette("purple"))
		
		Generate a palette that increases in lightness:
		
		.. plot::
		    :context: close-figs
		
		    >>> sns.palplot(sns.light_palette("seagreen", reverse=True))
		
		Generate a palette from an HUSL-space seed:
		
		.. plot::
		    :context: close-figs
		
		    >>> sns.palplot(sns.light_palette((260, 75, 60), input="husl"))
		
		Generate a colormap object:
		
		.. plot::
		    :context: close-figs
		
		    >>> from numpy import arange
		    >>> x = arange(25).reshape(5, 5)
		    >>> cmap = sns.light_palette("#2ecc71", as_cmap=True)
		    >>> ax = sns.heatmap(x, cmap=cmap)
	**/
	static public function light_palette(color:Dynamic, ?n_colors:Dynamic, ?reverse:Dynamic, ?as_cmap:Dynamic, ?input:Dynamic):Dynamic;
	/**
		Return discrete colors from a matplotlib palette.
		
		Note that this handles the qualitative colorbrewer palettes
		properly, although if you ask for more colors than a particular
		qualitative palette can provide you will get fewer than you are
		expecting. In contrast, asking for qualitative color brewer palettes
		using :func:`color_palette` will return the expected number of colors,
		but they will cycle.
		
		If you are using the IPython notebook, you can also use the function
		:func:`choose_colorbrewer_palette` to interactively select palettes.
		
		Parameters
		----------
		name : string
		    Name of the palette. This should be a named matplotlib colormap.
		n_colors : int
		    Number of discrete colors in the palette.
		
		Returns
		-------
		list of RGB tuples or :class:`matplotlib.colors.Colormap`
		
		Examples
		--------
		
		Create a qualitative colorbrewer palette with 8 colors:
		
		.. plot::
		    :context: close-figs
		
		    >>> import seaborn as sns; sns.set_theme()
		    >>> sns.palplot(sns.mpl_palette("Set2", 8))
		
		Create a sequential colorbrewer palette:
		
		.. plot::
		    :context: close-figs
		
		    >>> sns.palplot(sns.mpl_palette("Blues"))
		
		Create a diverging palette:
		
		.. plot::
		    :context: close-figs
		
		    >>> sns.palplot(sns.mpl_palette("seismic", 8))
		
		Create a "dark" sequential palette:
		
		.. plot::
		    :context: close-figs
		
		    >>> sns.palplot(sns.mpl_palette("GnBu_d"))
	**/
	static public function mpl_palette(name:Dynamic, ?n_colors:Dynamic, ?as_cmap:Dynamic):Dynamic;
	/**
		Change how matplotlib color shorthands are interpreted.
		
		Calling this will change how shorthand codes like "b" or "g"
		are interpreted by matplotlib in subsequent plots.
		
		Parameters
		----------
		palette : {deep, muted, pastel, dark, bright, colorblind}
		    Named seaborn palette to use as the source of colors.
		
		See Also
		--------
		set : Color codes can be set through the high-level seaborn style
		      manager.
		set_palette : Color codes can also be set through the function that
		              sets the matplotlib color cycle.
		
		Examples
		--------
		
		Map matplotlib color codes to the default seaborn palette.
		
		.. plot::
		    :context: close-figs
		
		    >>> import matplotlib.pyplot as plt
		    >>> import seaborn as sns; sns.set_theme()
		    >>> sns.set_color_codes()
		    >>> _ = plt.plot([0, 1], color="r")
		
		Use a different seaborn palette.
		
		.. plot::
		    :context: close-figs
		
		    >>> sns.set_color_codes("dark")
		    >>> _ = plt.plot([0, 1], color="g")
		    >>> _ = plt.plot([0, 2], color="m")
	**/
	static public function set_color_codes(?palette:Dynamic):Dynamic;
	/**
		Make a palette with color names from the xkcd color survey.
		
		See xkcd for the full list of colors: https://xkcd.com/color/rgb/
		
		This is just a simple wrapper around the ``seaborn.xkcd_rgb`` dictionary.
		
		Parameters
		----------
		colors : list of strings
		    List of keys in the ``seaborn.xkcd_rgb`` dictionary.
		
		Returns
		-------
		palette : seaborn color palette
		    Returns the list of colors as RGB tuples in an object that behaves like
		    other seaborn color palettes.
		
		See Also
		--------
		crayon_palette : Make a palette with Crayola crayon colors.
	**/
	static public function xkcd_palette(colors:Dynamic):Dynamic;
	static public var xkcd_rgb : Dynamic;
}