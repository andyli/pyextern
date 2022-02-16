/* This file is generated, do not edit! */
package matplotlib.tri.tricontour;
@:pythonImport("matplotlib.tri.tricontour") extern class Tricontour_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Draw contour lines on an unstructured triangular grid.
		
		The triangulation can be specified in one of two ways; either ::
		
		    tricontour(triangulation, ...)
		
		where *triangulation* is a `.Triangulation` object, or ::
		
		    tricontour(x, y, ...)
		    tricontour(x, y, triangles, ...)
		    tricontour(x, y, triangles=triangles, ...)
		    tricontour(x, y, mask=mask, ...)
		    tricontour(x, y, triangles, mask=mask, ...)
		
		in which case a `.Triangulation` object will be created.  See that class'
		docstring for an explanation of these cases.
		
		The remaining arguments may be::
		
		    tricontour(..., Z)
		
		where *Z* is the array of values to contour, one per point in the
		triangulation.  The level values are chosen automatically.
		
		::
		
		    tricontour(..., Z, levels)
		
		contour up to *levels+1* automatically chosen contour levels (*levels*
		intervals).
		
		::
		
		    tricontour(..., Z, levels)
		
		draw contour lines at the values specified in sequence *levels*, which must
		be in increasing order.
		
		::
		
		    tricontour(Z, **kwargs)
		
		Use keyword arguments to control colors, linewidth, origin, cmap ... see below
		for more details.
		
		Parameters
		----------
		triangulation : `.Triangulation`, optional
		    The unstructured triangular grid.
		
		    If specified, then *x*, *y*, *triangles*, and *mask* are not accepted.
		
		x, y : array-like, optional
		    The coordinates of the values in *Z*.
		
		triangles : (ntri, 3) array-like of int, optional
		    For each triangle, the indices of the three points that make up the
		    triangle, ordered in an anticlockwise manner.  If not specified, the
		    Delaunay triangulation is calculated.
		
		mask : (ntri,) array-like of bool, optional
		    Which triangles are masked out.
		
		Z : 2D array-like
		    The height values over which the contour is drawn.
		
		levels : int or array-like, optional
		    Determines the number and positions of the contour lines / regions.
		
		    If an int *n*, use `~matplotlib.ticker.MaxNLocator`, which tries to
		    automatically choose no more than *n+1* "nice" contour levels between
		    *vmin* and *vmax*.
		
		    If array-like, draw contour lines at the specified levels.  The values must
		    be in increasing order.
		
		Returns
		-------
		`~matplotlib.tri.TriContourSet`
		
		Other Parameters
		----------------
		colors : color string or sequence of colors, optional
		    The colors of the levels, i.e., the contour lines.
		
		    The sequence is cycled for the levels in ascending order. If the sequence
		    is shorter than the number of levels, it's repeated.
		
		    As a shortcut, single color strings may be used in place of one-element
		    lists, i.e. ``'red'`` instead of ``['red']`` to color all levels with the
		    same color. This shortcut does only work for color strings, not for other
		    ways of specifying colors.
		
		    By default (value *None*), the colormap specified by *cmap* will be used.
		
		alpha : float, default: 1
		    The alpha blending value, between 0 (transparent) and 1 (opaque).
		
		cmap : str or `.Colormap`, default: :rc:`image.cmap`
		    A `.Colormap` instance or registered colormap name. The colormap maps the
		    level values to colors.
		
		    If both *colors* and *cmap* are given, an error is raised.
		
		norm : `~matplotlib.colors.Normalize`, optional
		    If a colormap is used, the `.Normalize` instance scales the level values to
		    the canonical colormap range [0, 1] for mapping to colors. If not given,
		    the default linear scaling is used.
		
		vmin, vmax : float, optional
		    If not *None*, either or both of these values will be supplied to
		    the `.Normalize` instance, overriding the default color scaling
		    based on *levels*.
		
		origin : {*None*, 'upper', 'lower', 'image'}, default: None
		    Determines the orientation and exact position of *Z* by specifying the
		    position of ``Z[0, 0]``.  This is only relevant, if *X*, *Y* are not given.
		
		    - *None*: ``Z[0, 0]`` is at X=0, Y=0 in the lower left corner.
		    - 'lower': ``Z[0, 0]`` is at X=0.5, Y=0.5 in the lower left corner.
		    - 'upper': ``Z[0, 0]`` is at X=N+0.5, Y=0.5 in the upper left corner.
		    - 'image': Use the value from :rc:`image.origin`.
		
		extent : (x0, x1, y0, y1), optional
		    If *origin* is not *None*, then *extent* is interpreted as in `.imshow`: it
		    gives the outer pixel boundaries. In this case, the position of Z[0, 0] is
		    the center of the pixel, not a corner. If *origin* is *None*, then
		    (*x0*, *y0*) is the position of Z[0, 0], and (*x1*, *y1*) is the position
		    of Z[-1, -1].
		
		    This argument is ignored if *X* and *Y* are specified in the call to
		    contour.
		
		locator : ticker.Locator subclass, optional
		    The locator is used to determine the contour levels if they are not given
		    explicitly via *levels*.
		    Defaults to `~.ticker.MaxNLocator`.
		
		extend : {'neither', 'both', 'min', 'max'}, default: 'neither'
		    Determines the ``tricontour``-coloring of values that are outside the
		    *levels* range.
		
		    If 'neither', values outside the *levels* range are not colored.  If 'min',
		    'max' or 'both', color the values below, above or below and above the
		    *levels* range.
		
		    Values below ``min(levels)`` and above ``max(levels)`` are mapped to the
		    under/over values of the `.Colormap`. Note that most colormaps do not have
		    dedicated colors for these by default, so that the over and under values
		    are the edge values of the colormap.  You may want to set these values
		    explicitly using `.Colormap.set_under` and `.Colormap.set_over`.
		
		    .. note::
		
		        An existing `.TriContourSet` does not get notified if properties of its
		        colormap are changed. Therefore, an explicit call to
		        `.ContourSet.changed()` is needed after modifying the colormap. The
		        explicit call can be left out, if a colorbar is assigned to the
		        `.TriContourSet` because it internally calls `.ContourSet.changed()`.
		
		xunits, yunits : registered units, optional
		    Override axis units by specifying an instance of a
		    :class:`matplotlib.units.ConversionInterface`.
		
		antialiased : bool, optional
		    Enable antialiasing, overriding the defaults.  For
		    filled contours, the default is *True*.  For line contours,
		    it is taken from :rc:`lines.antialiased`.
		
		linewidths : float or array-like, default: :rc:`contour.linewidth`
		    The line width of the contour lines.
		
		    If a number, all levels will be plotted with this linewidth.
		
		    If a sequence, the levels in ascending order will be plotted with
		    the linewidths in the order specified.
		
		    If None, this falls back to :rc:`lines.linewidth`.
		
		linestyles : {*None*, 'solid', 'dashed', 'dashdot', 'dotted'}, optional
		    If *linestyles* is *None*, the default is 'solid' unless the lines are
		    monochrome.  In that case, negative contours will take their linestyle
		    from :rc:`contour.negative_linestyle` setting.
		
		    *linestyles* can also be an iterable of the above strings specifying a
		    set of linestyles to be used. If this iterable is shorter than the
		    number of contour levels it will be repeated as necessary.
	**/
	static public function tricontour(ax:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Draw contour regions on an unstructured triangular grid.
		
		The triangulation can be specified in one of two ways; either ::
		
		    tricontourf(triangulation, ...)
		
		where *triangulation* is a `.Triangulation` object, or ::
		
		    tricontourf(x, y, ...)
		    tricontourf(x, y, triangles, ...)
		    tricontourf(x, y, triangles=triangles, ...)
		    tricontourf(x, y, mask=mask, ...)
		    tricontourf(x, y, triangles, mask=mask, ...)
		
		in which case a `.Triangulation` object will be created.  See that class'
		docstring for an explanation of these cases.
		
		The remaining arguments may be::
		
		    tricontourf(..., Z)
		
		where *Z* is the array of values to contour, one per point in the
		triangulation.  The level values are chosen automatically.
		
		::
		
		    tricontourf(..., Z, levels)
		
		contour up to *levels+1* automatically chosen contour levels (*levels*
		intervals).
		
		::
		
		    tricontourf(..., Z, levels)
		
		draw contour regions at the values specified in sequence *levels*, which must
		be in increasing order.
		
		::
		
		    tricontourf(Z, **kwargs)
		
		Use keyword arguments to control colors, linewidth, origin, cmap ... see below
		for more details.
		
		Parameters
		----------
		triangulation : `.Triangulation`, optional
		    The unstructured triangular grid.
		
		    If specified, then *x*, *y*, *triangles*, and *mask* are not accepted.
		
		x, y : array-like, optional
		    The coordinates of the values in *Z*.
		
		triangles : (ntri, 3) array-like of int, optional
		    For each triangle, the indices of the three points that make up the
		    triangle, ordered in an anticlockwise manner.  If not specified, the
		    Delaunay triangulation is calculated.
		
		mask : (ntri,) array-like of bool, optional
		    Which triangles are masked out.
		
		Z : 2D array-like
		    The height values over which the contour is drawn.
		
		levels : int or array-like, optional
		    Determines the number and positions of the contour lines / regions.
		
		    If an int *n*, use `~matplotlib.ticker.MaxNLocator`, which tries to
		    automatically choose no more than *n+1* "nice" contour levels between
		    *vmin* and *vmax*.
		
		    If array-like, draw contour lines at the specified levels.  The values must
		    be in increasing order.
		
		Returns
		-------
		`~matplotlib.tri.TriContourSet`
		
		Other Parameters
		----------------
		colors : color string or sequence of colors, optional
		    The colors of the levels, i.e., the contour regions.
		
		    The sequence is cycled for the levels in ascending order. If the sequence
		    is shorter than the number of levels, it's repeated.
		
		    As a shortcut, single color strings may be used in place of one-element
		    lists, i.e. ``'red'`` instead of ``['red']`` to color all levels with the
		    same color. This shortcut does only work for color strings, not for other
		    ways of specifying colors.
		
		    By default (value *None*), the colormap specified by *cmap* will be used.
		
		alpha : float, default: 1
		    The alpha blending value, between 0 (transparent) and 1 (opaque).
		
		cmap : str or `.Colormap`, default: :rc:`image.cmap`
		    A `.Colormap` instance or registered colormap name. The colormap maps the
		    level values to colors.
		
		    If both *colors* and *cmap* are given, an error is raised.
		
		norm : `~matplotlib.colors.Normalize`, optional
		    If a colormap is used, the `.Normalize` instance scales the level values to
		    the canonical colormap range [0, 1] for mapping to colors. If not given,
		    the default linear scaling is used.
		
		vmin, vmax : float, optional
		    If not *None*, either or both of these values will be supplied to
		    the `.Normalize` instance, overriding the default color scaling
		    based on *levels*.
		
		origin : {*None*, 'upper', 'lower', 'image'}, default: None
		    Determines the orientation and exact position of *Z* by specifying the
		    position of ``Z[0, 0]``.  This is only relevant, if *X*, *Y* are not given.
		
		    - *None*: ``Z[0, 0]`` is at X=0, Y=0 in the lower left corner.
		    - 'lower': ``Z[0, 0]`` is at X=0.5, Y=0.5 in the lower left corner.
		    - 'upper': ``Z[0, 0]`` is at X=N+0.5, Y=0.5 in the upper left corner.
		    - 'image': Use the value from :rc:`image.origin`.
		
		extent : (x0, x1, y0, y1), optional
		    If *origin* is not *None*, then *extent* is interpreted as in `.imshow`: it
		    gives the outer pixel boundaries. In this case, the position of Z[0, 0] is
		    the center of the pixel, not a corner. If *origin* is *None*, then
		    (*x0*, *y0*) is the position of Z[0, 0], and (*x1*, *y1*) is the position
		    of Z[-1, -1].
		
		    This argument is ignored if *X* and *Y* are specified in the call to
		    contour.
		
		locator : ticker.Locator subclass, optional
		    The locator is used to determine the contour levels if they are not given
		    explicitly via *levels*.
		    Defaults to `~.ticker.MaxNLocator`.
		
		extend : {'neither', 'both', 'min', 'max'}, default: 'neither'
		    Determines the ``tricontourf``-coloring of values that are outside the
		    *levels* range.
		
		    If 'neither', values outside the *levels* range are not colored.  If 'min',
		    'max' or 'both', color the values below, above or below and above the
		    *levels* range.
		
		    Values below ``min(levels)`` and above ``max(levels)`` are mapped to the
		    under/over values of the `.Colormap`. Note that most colormaps do not have
		    dedicated colors for these by default, so that the over and under values
		    are the edge values of the colormap.  You may want to set these values
		    explicitly using `.Colormap.set_under` and `.Colormap.set_over`.
		
		    .. note::
		
		        An existing `.TriContourSet` does not get notified if properties of its
		        colormap are changed. Therefore, an explicit call to
		        `.ContourSet.changed()` is needed after modifying the colormap. The
		        explicit call can be left out, if a colorbar is assigned to the
		        `.TriContourSet` because it internally calls `.ContourSet.changed()`.
		
		xunits, yunits : registered units, optional
		    Override axis units by specifying an instance of a
		    :class:`matplotlib.units.ConversionInterface`.
		
		antialiased : bool, optional
		    Enable antialiasing, overriding the defaults.  For
		    filled contours, the default is *True*.  For line contours,
		    it is taken from :rc:`lines.antialiased`.
		
		hatches : list[str], optional
		    A list of cross hatch patterns to use on the filled areas.
		    If None, no hatching will be added to the contour.
		    Hatching is supported in the PostScript, PDF, SVG and Agg
		    backends only.
		
		Notes
		-----
		`.tricontourf` fills intervals that are closed at the top; that is, for
		boundaries *z1* and *z2*, the filled region is::
		
		    z1 < Z <= z2
		
		except for the lowest interval, which is closed on both sides (i.e. it
		includes the lowest value).
	**/
	static public function tricontourf(ax:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}