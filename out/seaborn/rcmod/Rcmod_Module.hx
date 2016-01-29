/* This file is generated, do not edit! */
package seaborn.rcmod;
@:pythonImport("seaborn.rcmod") extern class Rcmod_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _context_keys : Dynamic;
	static public var _style_keys : Dynamic;
	/**
		Return a parameter dict for the aesthetic style of the plots.
		
		This affects things like the color of the axes, whether a grid is
		enabled by default, and other aesthetic elements.
		
		This function returns an object that can be used in a ``with`` statement
		to temporarily change the style parameters.
		
		Parameters
		----------
		style : dict, None, or one of {darkgrid, whitegrid, dark, white, ticks}
		    A dictionary of parameters or the name of a preconfigured set.
		rc : dict, optional
		    Parameter mappings to override the values in the preset seaborn
		    style dictionaries. This only updates parameters that are
		    considered part of the style definition.
		
		Examples
		--------
		>>> st = axes_style("whitegrid")
		
		>>> set_style("ticks", {"xtick.major.size": 8, "ytick.major.size": 8})
		
		>>> import matplotlib.pyplot as plt
		>>> with axes_style("white"):
		...     f, ax = plt.subplots()
		...     ax.plot(x, y)               # doctest: +SKIP
		
		See Also
		--------
		set_style : set the matplotlib parameters for a seaborn theme
		plotting_context : return a parameter dict to to scale plot elements
		color_palette : define the color palette for a plot
	**/
	static public function axes_style(?style:Dynamic, ?rc:Dynamic):Dynamic;
	static public var mpl_ge_150 : Dynamic;
	/**
		Return a parameter dict to scale elements of the figure.
		
		This affects things like the size of the labels, lines, and other
		elements of the plot, but not the overall style. The base context
		is "notebook", and the other contexts are "paper", "talk", and "poster",
		which are version of the notebook parameters scaled by .8, 1.3, and 1.6,
		respectively.
		
		This function returns an object that can be used in a ``with`` statement
		to temporarily change the context parameters.
		
		Parameters
		----------
		context : dict, None, or one of {paper, notebook, talk, poster}
		    A dictionary of parameters or the name of a preconfigured set.
		font_scale : float, optional
		    Separate scaling factor to independently scale the size of the
		    font elements.
		rc : dict, optional
		    Parameter mappings to override the values in the preset seaborn
		    context dictionaries. This only updates parameters that are
		    considered part of the context definition.
		
		Examples
		--------
		>>> c = plotting_context("poster")
		
		>>> c = plotting_context("notebook", font_scale=1.5)
		
		>>> c = plotting_context("talk", rc={"lines.linewidth": 2})
		
		>>> import matplotlib.pyplot as plt
		>>> with plotting_context("paper"):
		...     f, ax = plt.subplots()
		...     ax.plot(x, y)                 # doctest: +SKIP
		
		See Also
		--------
		set_context : set the matplotlib parameters to scale plot elements
		axes_style : return a dict of parameters defining a figure style
		color_palette : define the color palette for a plot
	**/
	static public function plotting_context(?context:Dynamic, ?font_scale:Dynamic, ?rc:Dynamic):Dynamic;
	/**
		Restore all RC params to default settings.
	**/
	static public function reset_defaults():Dynamic;
	/**
		Restore all RC params to original settings (respects custom rc).
	**/
	static public function reset_orig():Dynamic;
	/**
		Set aesthetic parameters in one step.
		
		Each set of parameters can be set directly or temporarily, see the
		referenced functions below for more information.
		
		Parameters
		----------
		context : string or dict
		    Plotting context parameters, see :func:`plotting_context`
		style : string or dict
		    Axes style parameters, see :func:`axes_style`
		palette : string or sequence
		    Color palette, see :func:`color_palette`
		font : string
		    Font family, see matplotlib font manager.
		font_scale : float, optional
		    Separate scaling factor to independently scale the size of the
		    font elements.
		color_codes : bool
		    If ``True`` and ``palette`` is a seaborn palette, remap the shorthand
		    color codes (e.g. "b", "g", "r", etc.) to the colors from this palette.
		rc : dict or None
		    Dictionary of rc parameter mappings to override the above.
	**/
	static public function set(?context:Dynamic, ?style:Dynamic, ?palette:Dynamic, ?font:Dynamic, ?font_scale:Dynamic, ?color_codes:Dynamic, ?rc:Dynamic):Dynamic;
	/**
		Set the plotting context parameters.
		
		This affects things like the size of the labels, lines, and other
		elements of the plot, but not the overall style. The base context
		is "notebook", and the other contexts are "paper", "talk", and "poster",
		which are version of the notebook parameters scaled by .8, 1.3, and 1.6,
		respectively.
		
		Parameters
		----------
		context : dict, None, or one of {paper, notebook, talk, poster}
		    A dictionary of parameters or the name of a preconfigured set.
		font_scale : float, optional
		    Separate scaling factor to independently scale the size of the
		    font elements.
		rc : dict, optional
		    Parameter mappings to override the values in the preset seaborn
		    context dictionaries. This only updates parameters that are
		    considered part of the context definition.
		
		Examples
		--------
		>>> set_context("paper")
		
		>>> set_context("talk", font_scale=1.4)
		
		>>> set_context("talk", rc={"lines.linewidth": 2})
		
		See Also
		--------
		plotting_context : return a dictionary of rc parameters, or use in
		                   a ``with`` statement to temporarily set the context.
		set_style : set the default parameters for figure style
		set_palette : set the default color palette for figures
	**/
	static public function set_context(?context:Dynamic, ?font_scale:Dynamic, ?rc:Dynamic):Dynamic;
	/**
		Set the matplotlib color cycle using a seaborn palette.
		
		Parameters
		----------
		palette : hls | husl | matplotlib colormap | seaborn color palette
		    Palette definition. Should be something that :func:`color_palette`
		    can process.
		n_colors : int
		    Number of colors in the cycle. The default number of colors will depend
		    on the format of ``palette``, see the :func:`color_palette`
		    documentation for more information.
		desat : float
		    Proportion to desaturate each color by.
		color_codes : bool
		    If ``True`` and ``palette`` is a seaborn palette, remap the shorthand
		    color codes (e.g. "b", "g", "r", etc.) to the colors from this palette.
		
		Examples
		--------
		>>> set_palette("Reds")
		
		>>> set_palette("Set1", 8, .75)
		
		See Also
		--------
		color_palette : build a color palette or set the color cycle temporarily
		                in a ``with`` statement.
		set_context : set parameters to scale plot elements
		set_style : set the default parameters for figure style
	**/
	static public function set_palette(palette:Dynamic, ?n_colors:Dynamic, ?desat:Dynamic, ?color_codes:Dynamic):Dynamic;
	/**
		Set the aesthetic style of the plots.
		
		This affects things like the color of the axes, whether a grid is
		enabled by default, and other aesthetic elements.
		
		Parameters
		----------
		style : dict, None, or one of {darkgrid, whitegrid, dark, white, ticks}
		    A dictionary of parameters or the name of a preconfigured set.
		rc : dict, optional
		    Parameter mappings to override the values in the preset seaborn
		    style dictionaries. This only updates parameters that are
		    considered part of the style definition.
		
		Examples
		--------
		>>> set_style("whitegrid")
		
		>>> set_style("ticks", {"xtick.major.size": 8, "ytick.major.size": 8})
		
		See Also
		--------
		axes_style : return a dict of parameters or use in a ``with`` statement
		             to temporarily set the style.
		set_context : set parameters to scale plot elements
		set_palette : set the default color palette for figures
	**/
	static public function set_style(?style:Dynamic, ?rc:Dynamic):Dynamic;
}