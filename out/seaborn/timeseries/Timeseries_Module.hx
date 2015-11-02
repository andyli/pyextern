/* This file is generated, do not edit! */
package seaborn.timeseries;
@:pythonImport("seaborn.timeseries") extern class Timeseries_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Plot the kernal density estimate of the bootstrap distribution.
	**/
	static public function _plot_boot_kde(ax:Dynamic, x:Dynamic, boot_data:Dynamic, color:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Plot 250 traces from bootstrap.
	**/
	static public function _plot_boot_traces(ax:Dynamic, x:Dynamic, boot_data:Dynamic, color:Dynamic, err_kws:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Plot translucent error bands around the central tendancy.
	**/
	static public function _plot_ci_band(ax:Dynamic, x:Dynamic, ci:Dynamic, color:Dynamic, err_kws:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Plot error bars at each data point.
	**/
	static public function _plot_ci_bars(ax:Dynamic, x:Dynamic, central_data:Dynamic, ci:Dynamic, color:Dynamic, err_kws:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Plot the kernal density estimate over the sample.
	**/
	static public function _plot_unit_kde(ax:Dynamic, x:Dynamic, data:Dynamic, color:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Plot each original data point discretely.
	**/
	static public function _plot_unit_points(ax:Dynamic, x:Dynamic, data:Dynamic, color:Dynamic, err_kws:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Plot a trace for each observation in the original data.
	**/
	static public function _plot_unit_traces(ax:Dynamic, x:Dynamic, data:Dynamic, ci:Dynamic, color:Dynamic, err_kws:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Upsample over time and plot a KDE of the bootstrap distribution.
	**/
	static public function _ts_kde(ax:Dynamic, x:Dynamic, data:Dynamic, color:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return a list of colors defining a color palette.
		
		Availible seaborn palette names:
		    deep, muted, bright, pastel, dark, colorblind
		
		Other options:
		    hls, husl, any named matplotlib palette, list of colors
		
		Calling this function with ``palette=None`` will return the current
		matplotlib color cycle.
		
		Matplotlib paletes can be specified as reversed palettes by appending
		"_r" to the name or as dark palettes by appending "_d" to the name.
		(These options are mutually exclusive, but the resulting list of colors
		can also be reversed).
		
		This function can also be used in a ``with`` statement to temporarily
		set the color cycle for a plot or set of plots.
		
		Parameters
		----------
		palette: None, string, or sequence, optional
		    Name of palette or None to return current palette. If a sequence, input
		    colors are used but possibly cycled and desaturated.
		n_colors : int, optional
		    Number of colors in the palette. If ``None``, the default will depend
		    on how ``palette`` is specified. Named palettes default to 6 colors,
		    but grabbing the current palette or passing in a list of colors will
		    not change the number of colors unless this is specified. Asking for
		    more colors than exist in the palette will cause it to cycle.
		desat : float, optional
		    Proportion to desaturate each color by.
		
		Returns
		-------
		palette : list of RGB tuples.
		    Color palette. Behaves like a list, but can be used as a context
		    manager and possesses an ``as_hex`` method to convert to hex color
		    codes.
		
		See Also
		--------
		set_palette : Set the default color cycle for all plots.
		set_color_codes : Reassign color codes like ``"b"``, ``"g"``, etc. to
		                  colors from one of the seaborn palettes.
		
		Examples
		--------
		
		Show one of the "seaborn palettes", which have the same basic order of hues
		as the default matplotlib color cycle but more attractive colors.
		
		.. plot::
		    :context: close-figs
		
		    >>> import seaborn as sns; sns.set()
		    >>> sns.palplot(sns.color_palette("muted"))
		
		Use discrete values from one of the built-in matplotlib colormaps.
		
		.. plot::
		    :context: close-figs
		
		    >>> sns.palplot(sns.color_palette("RdBu", n_colors=7))
		
		Make a "dark" matplotlib sequential palette variant. (This can be good
		when coloring multiple lines or points that correspond to an ordered
		variable, where you don't want the lightest lines to be invisible).
		
		.. plot::
		    :context: close-figs
		
		    >>> sns.palplot(sns.color_palette("Blues_d"))
		
		Use a categorical matplotlib palette, add some desaturation. (This can be
		good when making plots with large patches, which look best with dimmer
		colors).
		
		.. plot::
		    :context: close-figs
		
		    >>> sns.palplot(sns.color_palette("Set1", n_colors=8, desat=.5))
		
		Use as a context manager:
		
		.. plot::
		    :context: close-figs
		
		    >>> import numpy as np, matplotlib.pyplot as plt
		    >>> with sns.color_palette("husl", 8):
		    ...    _ = plt.plot(np.c_[np.zeros(8), np.arange(8)].T)
	**/
	static public function color_palette(?palette:Dynamic, ?n_colors:Dynamic, ?desat:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var string_types : Dynamic;
	/**
		Plot one or more timeseries with flexible representation of uncertainty.
		
		This function is intended to be used with data where observations are
		nested within sampling units that were measured at multiple timepoints.
		
		It can take data specified either as a long-form (tidy) DataFrame or as an
		ndarray with dimensions (unit, time) The interpretation of some of the
		other parameters changes depending on the type of object passed as data.
		
		Parameters
		----------
		data : DataFrame or ndarray
		    Data for the plot. Should either be a "long form" dataframe or an
		    array with dimensions (unit, time, condition). In both cases, the
		    condition field/dimension is optional. The type of this argument
		    determines the interpretation of the next few parameters. When
		    using a DataFrame, the index has to be sequential.
		time : string or series-like
		    Either the name of the field corresponding to time in the data
		    DataFrame or x values for a plot when data is an array. If a Series,
		    the name will be used to label the x axis.
		unit : string
		    Field in the data DataFrame identifying the sampling unit (e.g.
		    subject, neuron, etc.). The error representation will collapse over
		    units at each time/condition observation. This has no role when data
		    is an array.
		value : string
		    Either the name of the field corresponding to the data values in
		    the data DataFrame (i.e. the y coordinate) or a string that forms
		    the y axis label when data is an array.
		condition : string or Series-like
		    Either the name of the field identifying the condition an observation
		    falls under in the data DataFrame, or a sequence of names with a length
		    equal to the size of the third dimension of data. There will be a
		    separate trace plotted for each condition. If condition is a Series
		    with a name attribute, the name will form the title for the plot
		    legend (unless legend is set to False).
		err_style : string or list of strings or None
		    Names of ways to plot uncertainty across units from set of
		    {ci_band, ci_bars, boot_traces, boot_kde, unit_traces, unit_points}.
		    Can use one or more than one method.
		ci : float or list of floats in [0, 100]
		    Confidence interaval size(s). If a list, it will stack the error
		    plots for each confidence interval. Only relevant for error styles
		    with "ci" in the name.
		interpolate : boolean
		    Whether to do a linear interpolation between each timepoint when
		    plotting. The value of this parameter also determines the marker
		    used for the main plot traces, unless marker is specified as a keyword
		    argument.
		color : seaborn palette or matplotlib color name or dictionary
		    Palette or color for the main plots and error representation (unless
		    plotting by unit, which can be separately controlled with err_palette).
		    If a dictionary, should map condition name to color spec.
		estimator : callable
		    Function to determine central tendency and to pass to bootstrap
		    must take an ``axis`` argument.
		n_boot : int
		    Number of bootstrap iterations.
		err_palette : seaborn palette
		    Palette name or list of colors used when plotting data for each unit.
		err_kws : dict, optional
		    Keyword argument dictionary passed through to matplotlib function
		    generating the error plot,
		legend : bool, optional
		    If ``True`` and there is a ``condition`` variable, add a legend to
		    the plot.
		ax : axis object, optional
		    Plot in given axis; if None creates a new figure
		kwargs :
		    Other keyword arguments are passed to main plot() call
		
		Returns
		-------
		ax : matplotlib axis
		    axis with plot data
		
		Examples
		--------
		
		Plot a trace with translucent confidence bands:
		
		.. plot::
		    :context: close-figs
		
		    >>> import numpy as np; np.random.seed(22)
		    >>> import seaborn as sns; sns.set(color_codes=True)
		    >>> x = np.linspace(0, 15, 31)
		    >>> data = np.sin(x) + np.random.rand(10, 31) + np.random.randn(10, 1)
		    >>> ax = sns.tsplot(data=data)
		
		Plot a long-form dataframe with several conditions:
		
		.. plot::
		    :context: close-figs
		
		    >>> gammas = sns.load_dataset("gammas")
		    >>> ax = sns.tsplot(time="timepoint", value="BOLD signal",
		    ...                 unit="subject", condition="ROI",
		    ...                 data=gammas)
		
		Use error bars at the positions of the observations:
		
		.. plot::
		    :context: close-figs
		
		    >>> ax = sns.tsplot(data=data, err_style="ci_bars", color="g")
		
		Don't interpolate between the observations:
		
		.. plot::
		    :context: close-figs
		
		    >>> import matplotlib.pyplot as plt
		    >>> ax = sns.tsplot(data=data, err_style="ci_bars", interpolate=False)
		
		Show multiple confidence bands:
		
		.. plot::
		    :context: close-figs
		
		    >>> ax = sns.tsplot(data=data, ci=[68, 95], color="m")
		
		Use a different estimator:
		
		.. plot::
		    :context: close-figs
		
		    >>> ax = sns.tsplot(data=data, estimator=np.median)
		
		Show each bootstrap resample:
		
		.. plot::
		    :context: close-figs
		
		    >>> ax = sns.tsplot(data=data, err_style="boot_traces", n_boot=500)
		
		Show the trace from each sampling unit:
		
		
		.. plot::
		    :context: close-figs
		
		    >>> ax = sns.tsplot(data=data, err_style="unit_traces")
	**/
	static public function tsplot(data:Dynamic, ?time:Dynamic, ?unit:Dynamic, ?condition:Dynamic, ?value:Dynamic, ?err_style:Dynamic, ?ci:Dynamic, ?interpolate:Dynamic, ?color:Dynamic, ?estimator:Dynamic, ?n_boot:Dynamic, ?err_palette:Dynamic, ?err_kws:Dynamic, ?legend:Dynamic, ?ax:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}