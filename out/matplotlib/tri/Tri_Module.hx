/* This file is generated, do not edit! */
package matplotlib.tri;
@:pythonImport("matplotlib.tri") extern class Tri_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	/**
		Draw contours on an unstructured triangular grid.
		:func:`~matplotlib.pyplot.tricontour` and
		:func:`~matplotlib.pyplot.tricontourf` draw contour lines and
		filled contours, respectively.  Except as noted, function
		signatures and return values are the same for both versions.
		
		The triangulation can be specified in one of two ways; either::
		
		  tricontour(triangulation, ...)
		
		where triangulation is a :class:`matplotlib.tri.Triangulation`
		object, or
		
		::
		
		  tricontour(x, y, ...)
		  tricontour(x, y, triangles, ...)
		  tricontour(x, y, triangles=triangles, ...)
		  tricontour(x, y, mask=mask, ...)
		  tricontour(x, y, triangles, mask=mask, ...)
		
		in which case a Triangulation object will be created.  See
		:class:`~matplotlib.tri.Triangulation` for a explanation of
		these possibilities.
		
		The remaining arguments may be::
		
		  tricontour(..., Z)
		
		where *Z* is the array of values to contour, one per point
		in the triangulation.  The level values are chosen
		automatically.
		
		::
		
		  tricontour(..., Z, N)
		
		contour *N* automatically-chosen levels.
		
		::
		
		  tricontour(..., Z, V)
		
		draw contour lines at the values specified in sequence *V*
		
		::
		
		  tricontourf(..., Z, V)
		
		fill the (len(*V*)-1) regions between the values in *V*
		
		::
		
		  tricontour(Z, **kwargs)
		
		Use keyword args to control colors, linewidth, origin, cmap ... see
		below for more details.
		
		``C = tricontour(...)`` returns a
		:class:`~matplotlib.contour.TriContourSet` object.
		
		Optional keyword arguments:
		
		  *colors*: [ *None* | string | (mpl_colors) ]
		    If *None*, the colormap specified by cmap will be used.
		
		    If a string, like 'r' or 'red', all levels will be plotted in this
		    color.
		
		    If a tuple of matplotlib color args (string, float, rgb, etc),
		    different levels will be plotted in different colors in the order
		    specified.
		
		  *alpha*: float
		    The alpha blending value
		
		  *cmap*: [ *None* | Colormap ]
		    A cm :class:`~matplotlib.colors.Colormap` instance or
		    *None*. If *cmap* is *None* and *colors* is *None*, a
		    default Colormap is used.
		
		  *norm*: [ *None* | Normalize ]
		    A :class:`matplotlib.colors.Normalize` instance for
		    scaling data values to colors. If *norm* is *None* and
		    *colors* is *None*, the default linear scaling is used.
		
		  *levels* [level0, level1, ..., leveln]
		    A list of floating point numbers indicating the level
		    curves to draw; e.g., to draw just the zero contour pass
		    ``levels=[0]``
		
		  *origin*: [ *None* | 'upper' | 'lower' | 'image' ]
		    If *None*, the first value of *Z* will correspond to the
		    lower left corner, location (0,0). If 'image', the rc
		    value for ``image.origin`` will be used.
		
		    This keyword is not active if *X* and *Y* are specified in
		    the call to contour.
		
		  *extent*: [ *None* | (x0,x1,y0,y1) ]
		
		    If *origin* is not *None*, then *extent* is interpreted as
		    in :func:`matplotlib.pyplot.imshow`: it gives the outer
		    pixel boundaries. In this case, the position of Z[0,0]
		    is the center of the pixel, not a corner. If *origin* is
		    *None*, then (*x0*, *y0*) is the position of Z[0,0], and
		    (*x1*, *y1*) is the position of Z[-1,-1].
		
		    This keyword is not active if *X* and *Y* are specified in
		    the call to contour.
		
		  *locator*: [ *None* | ticker.Locator subclass ]
		    If *locator* is None, the default
		    :class:`~matplotlib.ticker.MaxNLocator` is used. The
		    locator is used to determine the contour levels if they
		    are not given explicitly via the *V* argument.
		
		  *extend*: [ 'neither' | 'both' | 'min' | 'max' ]
		    Unless this is 'neither', contour levels are automatically
		    added to one or both ends of the range so that all data
		    are included. These added ranges are then mapped to the
		    special colormap values which default to the ends of the
		    colormap range, but can be set via
		    :meth:`matplotlib.colors.Colormap.set_under` and
		    :meth:`matplotlib.colors.Colormap.set_over` methods.
		
		  *xunits*, *yunits*: [ *None* | registered units ]
		    Override axis units by specifying an instance of a
		    :class:`matplotlib.units.ConversionInterface`.
		
		
		tricontour-only keyword arguments:
		
		  *linewidths*: [ *None* | number | tuple of numbers ]
		    If *linewidths* is *None*, the default width in
		    ``lines.linewidth`` in ``matplotlibrc`` is used.
		
		    If a number, all levels will be plotted with this linewidth.
		
		    If a tuple, different levels will be plotted with different
		    linewidths in the order specified
		
		  *linestyles*: [ *None* | 'solid' | 'dashed' | 'dashdot' | 'dotted' ]
		    If *linestyles* is *None*, the 'solid' is used.
		
		    *linestyles* can also be an iterable of the above strings
		    specifying a set of linestyles to be used. If this
		    iterable is shorter than the number of contour levels
		    it will be repeated as necessary.
		
		    If contour is using a monochrome colormap and the contour
		    level is less than 0, then the linestyle specified
		    in ``contour.negative_linestyle`` in ``matplotlibrc``
		    will be used.
		
		tricontourf-only keyword arguments:
		
		  *antialiased*: [ *True* | *False* ]
		    enable antialiasing
		
		Note: tricontourf fills intervals that are closed at the top; that
		is, for boundaries *z1* and *z2*, the filled region is::
		
		    z1 < z <= z2
		
		There is one exception: if the lowest boundary coincides with
		the minimum value of the *z* array, then that minimum value
		will be included in the lowest interval.
		
		**Examples:**
		
		.. plot:: mpl_examples/pylab_examples/tricontour_demo.py
	**/
	static public function tricontour(ax:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Draw contours on an unstructured triangular grid.
		:func:`~matplotlib.pyplot.tricontour` and
		:func:`~matplotlib.pyplot.tricontourf` draw contour lines and
		filled contours, respectively.  Except as noted, function
		signatures and return values are the same for both versions.
		
		The triangulation can be specified in one of two ways; either::
		
		  tricontour(triangulation, ...)
		
		where triangulation is a :class:`matplotlib.tri.Triangulation`
		object, or
		
		::
		
		  tricontour(x, y, ...)
		  tricontour(x, y, triangles, ...)
		  tricontour(x, y, triangles=triangles, ...)
		  tricontour(x, y, mask=mask, ...)
		  tricontour(x, y, triangles, mask=mask, ...)
		
		in which case a Triangulation object will be created.  See
		:class:`~matplotlib.tri.Triangulation` for a explanation of
		these possibilities.
		
		The remaining arguments may be::
		
		  tricontour(..., Z)
		
		where *Z* is the array of values to contour, one per point
		in the triangulation.  The level values are chosen
		automatically.
		
		::
		
		  tricontour(..., Z, N)
		
		contour *N* automatically-chosen levels.
		
		::
		
		  tricontour(..., Z, V)
		
		draw contour lines at the values specified in sequence *V*
		
		::
		
		  tricontourf(..., Z, V)
		
		fill the (len(*V*)-1) regions between the values in *V*
		
		::
		
		  tricontour(Z, **kwargs)
		
		Use keyword args to control colors, linewidth, origin, cmap ... see
		below for more details.
		
		``C = tricontour(...)`` returns a
		:class:`~matplotlib.contour.TriContourSet` object.
		
		Optional keyword arguments:
		
		  *colors*: [ *None* | string | (mpl_colors) ]
		    If *None*, the colormap specified by cmap will be used.
		
		    If a string, like 'r' or 'red', all levels will be plotted in this
		    color.
		
		    If a tuple of matplotlib color args (string, float, rgb, etc),
		    different levels will be plotted in different colors in the order
		    specified.
		
		  *alpha*: float
		    The alpha blending value
		
		  *cmap*: [ *None* | Colormap ]
		    A cm :class:`~matplotlib.colors.Colormap` instance or
		    *None*. If *cmap* is *None* and *colors* is *None*, a
		    default Colormap is used.
		
		  *norm*: [ *None* | Normalize ]
		    A :class:`matplotlib.colors.Normalize` instance for
		    scaling data values to colors. If *norm* is *None* and
		    *colors* is *None*, the default linear scaling is used.
		
		  *levels* [level0, level1, ..., leveln]
		    A list of floating point numbers indicating the level
		    curves to draw; e.g., to draw just the zero contour pass
		    ``levels=[0]``
		
		  *origin*: [ *None* | 'upper' | 'lower' | 'image' ]
		    If *None*, the first value of *Z* will correspond to the
		    lower left corner, location (0,0). If 'image', the rc
		    value for ``image.origin`` will be used.
		
		    This keyword is not active if *X* and *Y* are specified in
		    the call to contour.
		
		  *extent*: [ *None* | (x0,x1,y0,y1) ]
		
		    If *origin* is not *None*, then *extent* is interpreted as
		    in :func:`matplotlib.pyplot.imshow`: it gives the outer
		    pixel boundaries. In this case, the position of Z[0,0]
		    is the center of the pixel, not a corner. If *origin* is
		    *None*, then (*x0*, *y0*) is the position of Z[0,0], and
		    (*x1*, *y1*) is the position of Z[-1,-1].
		
		    This keyword is not active if *X* and *Y* are specified in
		    the call to contour.
		
		  *locator*: [ *None* | ticker.Locator subclass ]
		    If *locator* is None, the default
		    :class:`~matplotlib.ticker.MaxNLocator` is used. The
		    locator is used to determine the contour levels if they
		    are not given explicitly via the *V* argument.
		
		  *extend*: [ 'neither' | 'both' | 'min' | 'max' ]
		    Unless this is 'neither', contour levels are automatically
		    added to one or both ends of the range so that all data
		    are included. These added ranges are then mapped to the
		    special colormap values which default to the ends of the
		    colormap range, but can be set via
		    :meth:`matplotlib.colors.Colormap.set_under` and
		    :meth:`matplotlib.colors.Colormap.set_over` methods.
		
		  *xunits*, *yunits*: [ *None* | registered units ]
		    Override axis units by specifying an instance of a
		    :class:`matplotlib.units.ConversionInterface`.
		
		
		tricontour-only keyword arguments:
		
		  *linewidths*: [ *None* | number | tuple of numbers ]
		    If *linewidths* is *None*, the default width in
		    ``lines.linewidth`` in ``matplotlibrc`` is used.
		
		    If a number, all levels will be plotted with this linewidth.
		
		    If a tuple, different levels will be plotted with different
		    linewidths in the order specified
		
		  *linestyles*: [ *None* | 'solid' | 'dashed' | 'dashdot' | 'dotted' ]
		    If *linestyles* is *None*, the 'solid' is used.
		
		    *linestyles* can also be an iterable of the above strings
		    specifying a set of linestyles to be used. If this
		    iterable is shorter than the number of contour levels
		    it will be repeated as necessary.
		
		    If contour is using a monochrome colormap and the contour
		    level is less than 0, then the linestyle specified
		    in ``contour.negative_linestyle`` in ``matplotlibrc``
		    will be used.
		
		tricontourf-only keyword arguments:
		
		  *antialiased*: [ *True* | *False* ]
		    enable antialiasing
		
		Note: tricontourf fills intervals that are closed at the top; that
		is, for boundaries *z1* and *z2*, the filled region is::
		
		    z1 < z <= z2
		
		There is one exception: if the lowest boundary coincides with
		the minimum value of the *z* array, then that minimum value
		will be included in the lowest interval.
		
		**Examples:**
		
		.. plot:: mpl_examples/pylab_examples/tricontour_demo.py
	**/
	static public function tricontourf(ax:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Create a pseudocolor plot of an unstructured triangular grid.
		
		The triangulation can be specified in one of two ways; either::
		
		  tripcolor(triangulation, ...)
		
		where triangulation is a :class:`matplotlib.tri.Triangulation`
		object, or
		
		::
		
		  tripcolor(x, y, ...)
		  tripcolor(x, y, triangles, ...)
		  tripcolor(x, y, triangles=triangles, ...)
		  tripcolor(x, y, mask=mask, ...)
		  tripcolor(x, y, triangles, mask=mask, ...)
		
		in which case a Triangulation object will be created.  See
		:class:`~matplotlib.tri.Triangulation` for a explanation of these
		possibilities.
		
		The next argument must be *C*, the array of color values, either
		one per point in the triangulation if color values are defined at
		points, or one per triangle in the triangulation if color values
		are defined at triangles. If there are the same number of points
		and triangles in the triangulation it is assumed that color
		values are defined at points; to force the use of color values at
		triangles use the kwarg *facecolors*=C instead of just *C*.
		
		*shading* may be 'flat' (the default) or 'gouraud'. If *shading*
		is 'flat' and C values are defined at points, the color values
		used for each triangle are from the mean C of the triangle's
		three points. If *shading* is 'gouraud' then color values must be
		defined at points.
		
		The remaining kwargs are the same as for
		:meth:`~matplotlib.axes.Axes.pcolor`.
		
		**Example:**
		
		    .. plot:: mpl_examples/pylab_examples/tripcolor_demo.py
	**/
	static public function tripcolor(ax:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Draw a unstructured triangular grid as lines and/or markers.
		
		The triangulation to plot can be specified in one of two ways;
		either::
		
		  triplot(triangulation, ...)
		
		where triangulation is a :class:`matplotlib.tri.Triangulation`
		object, or
		
		::
		
		  triplot(x, y, ...)
		  triplot(x, y, triangles, ...)
		  triplot(x, y, triangles=triangles, ...)
		  triplot(x, y, mask=mask, ...)
		  triplot(x, y, triangles, mask=mask, ...)
		
		in which case a Triangulation object will be created.  See
		:class:`~matplotlib.tri.Triangulation` for a explanation of these
		possibilities.
		
		The remaining args and kwargs are the same as for
		:meth:`~matplotlib.axes.Axes.plot`.
		
		Return a list of 2 :class:`~matplotlib.lines.Line2D` containing
		respectively:
		
		    - the lines plotted for triangles edges
		    - the markers plotted for triangles nodes
		
		**Example:**
		
		    .. plot:: mpl_examples/pylab_examples/triplot_demo.py
	**/
	static public function triplot(ax:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var unicode_literals : Dynamic;
}