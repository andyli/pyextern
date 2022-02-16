/* This file is generated, do not edit! */
package matplotlib.cbook;
@:pythonImport("matplotlib.cbook") extern class Cbook_Module {
	static public var STEP_LOOKUP_MAP : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Extract perimeters of patches from *arr*.
		
		Extracted patches are of size (*rstride* + 1) x (*cstride* + 1) and
		share perimeters with their neighbors. The ordering of the vertices matches
		that returned by ``_array_perimeter``.
		
		Parameters
		----------
		x : ndarray, shape (N, M)
		    Input array
		rstride : int
		    Vertical (row) stride between corresponding elements of each patch
		cstride : int
		    Horizontal (column) stride between corresponding elements of each patch
		
		Returns
		-------
		ndarray, shape (N/rstride * M/cstride, 2 * (rstride + cstride))
	**/
	static public function _array_patch_perimeters(x:Dynamic, rstride:Dynamic, cstride:Dynamic):Dynamic;
	/**
		Get the elements on the perimeter of *arr*.
		
		Parameters
		----------
		arr : ndarray, shape (M, N)
		    The input array.
		
		Returns
		-------
		ndarray, shape (2*(M - 1) + 2*(N - 1),)
		    The elements on the perimeter of the array::
		
		       [arr[0, 0], ..., arr[0, -1], ..., arr[-1, -1], ..., arr[-1, 0], ...]
		
		Examples
		--------
		>>> i, j = np.ogrid[:3,:4]
		>>> a = i*10 + j
		>>> a
		array([[ 0,  1,  2,  3],
		       [10, 11, 12, 13],
		       [20, 21, 22, 23]])
		>>> _array_perimeter(a)
		array([ 0,  1,  2,  3, 13, 23, 22, 21, 20, 10])
	**/
	static public function _array_perimeter(arr:Dynamic):Dynamic;
	/**
		Convert a backend name (either a standard backend -- "Agg", "TkAgg", ... --
		or a custom backend -- "module://...") to the corresponding module name).
	**/
	static public function _backend_module_name(name:Dynamic):Dynamic;
	/**
		Convert scalars to 1D arrays; pass-through arrays as is.
	**/
	static public function _check_1d(x:Dynamic):Dynamic;
	/**
		Run *command*, returning its stdout output if it succeeds.
		
		If it fails (exits with nonzero return code), raise an exception whose text
		includes the failed command and captured stdout and stderr output.
		
		Regardless of the return code, the command is logged at DEBUG level on
		*logger*.  In case of success, the output is likewise logged.
	**/
	static public function _check_and_log_subprocess(command:Dynamic, logger:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Find all masked and/or non-finite points in a set of arguments,
		and return the arguments as masked arrays with a common mask.
		
		Arguments can be in any of 5 categories:
		
		1) 1-D masked arrays
		2) 1-D ndarrays
		3) ndarrays with more than one dimension
		4) other non-string iterables
		5) anything else
		
		The first argument must be in one of the first four categories;
		any argument with a length differing from that of the first
		argument (and hence anything in category 5) then will be
		passed through unchanged.
		
		Masks are obtained from all arguments of the correct length
		in categories 1, 2, and 4; a point is bad if masked in a masked
		array or if it is a nan or inf.  No attempt is made to
		extract a mask from categories 2 and 4 if `numpy.isfinite`
		does not yield a Boolean array.  Category 3 is included to
		support RGB or RGBA ndarrays, which are assumed to have only
		valid values and which are passed through unchanged.
		
		All input arguments that are not passed unchanged are returned
		as masked arrays if any masked points are found, otherwise as
		ndarrays.
	**/
	static public function _combine_masks(?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		Class decorator for defining property aliases.
		
		Use as ::
		
		    @cbook._define_aliases({"property": ["alias", ...], ...})
		    class C: ...
		
		For each property, if the corresponding ``get_property`` is defined in the
		class so far, an alias named ``get_alias`` will be defined; the same will
		be done for setters.  If neither the getter nor the setter exists, an
		exception will be raised.
		
		The alias map is stored as the ``_alias_map`` attribute on the class and
		can be used by `.normalize_kwargs` (which assumes that higher priority
		aliases come last).
	**/
	static public function _define_aliases(alias_d:Dynamic, ?cls:Dynamic):Dynamic;
	static public function _exception_printer(exc:Dynamic):Dynamic;
	/**
		Format the number with at most the number of decimals given as precision.
		Remove trailing zeros and possibly the decimal point.
	**/
	static public function _format_approx(number:Dynamic, precision:Dynamic):Dynamic;
	/**
		Return the number of significant digits to %g-format *value*, assuming that
		it is known with an error of *delta*.
	**/
	static public function _g_sig_digits(value:Dynamic, delta:Dynamic):Dynamic;
	/**
		Return the `pathlib.Path` to a resource file provided by Matplotlib.
		
		``*args`` specify a path relative to the base data path.
	**/
	static public function _get_data_path(?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		Return the bounds of the nonzero region of a 2D array as a pair of slices.
		
		``buf[_get_nonzero_slices(buf)]`` is the smallest sub-rectangle in *buf*
		that encloses all non-zero entries in *buf*.  If *buf* is fully zero, then
		``(slice(0, 0), slice(0, 0))`` is returned.
	**/
	static public function _get_nonzero_slices(buf:Dynamic):Dynamic;
	/**
		Return the interactive framework whose event loop is currently running, if
		any, or "headless" if no event loop can be started, or None.
		
		Returns
		-------
		Optional[str]
		    One of the following values: "qt", "gtk3", "gtk4", "wx", "tk",
		    "macosx", "headless", ``None``.
	**/
	static public function _get_running_interactive_framework():Dynamic;
	static public function _local_over_kwdict(local_var:Dynamic, kwargs:Dynamic, ?keys:python.VarArgs<Dynamic>, ?warning_cls:Dynamic):Dynamic;
	/**
		Context manager for locking a path.
		
		Usage::
		
		    with _lock_path(path):
		        ...
		
		Another thread or process that attempts to lock the same path will wait
		until this context manager is exited.
		
		The lock is implemented by creating a temporary file in the parent
		directory, so that directory must exist and be writable.
	**/
	static public function _lock_path(path:Dynamic):Dynamic;
	/**
		Return a function that creates picklable classes inheriting from a mixin.
		
		After ::
		
		    factory = _make_class_factory(FooMixin, fmt, attr_name)
		    FooAxes = factory(Axes)
		
		``Foo`` is a class that inherits from ``FooMixin`` and ``Axes`` and **is
		picklable** (picklability is what differentiates this from a plain call to
		`type`).  Its ``__name__`` is set to ``fmt.format(Axes.__name__)`` and the
		base class is stored in the ``attr_name`` attribute, if not None.
		
		Moreover, the return value of ``factory`` is memoized: calls with the same
		``Axes`` class always return the same subclass.
	**/
	static public function _make_class_factory(mixin_class:Dynamic, fmt:Dynamic, ?attr_name:Dynamic):Dynamic;
	/**
		Pretty-format a subprocess command for printing/logging purposes.
	**/
	static public function _pformat_subprocess(command:Dynamic):Dynamic;
	/**
		Internal helper for _make_class_factory.
	**/
	static public function _picklable_class_constructor(mixin_class:Dynamic, fmt:Dynamic, attr_name:Dynamic, base_class:Dynamic):Dynamic;
	/**
		Convert a premultiplied ARGB32 buffer to an unmultiplied RGBA8888 buffer.
	**/
	static public function _premultiplied_argb32_to_unmultiplied_rgba8888(buf:Dynamic):Dynamic;
	/**
		Use Fortran ordering to convert ndarrays and lists of iterables to lists of
		1D arrays.
		
		Lists of iterables are converted by applying `numpy.asanyarray` to each of
		their elements.  1D ndarrays are returned in a singleton list containing
		them.  2D ndarrays are converted to the list of their *columns*.
		
		*name* is used to generate the error message for invalid inputs.
	**/
	static public function _reshape_2D(X:Dynamic, name:Dynamic):Dynamic;
	/**
		Temporarily set some attributes; restore original state at context exit.
	**/
	static public function _setattr_cm(obj:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Perform OS-dependent setup when Matplotlib creates a new GUI application.
	**/
	static public function _setup_new_guiapp():Dynamic;
	/**
		Return whether *obj* is a string equal to string *s*.
		
		This helper solely exists to handle the case where *obj* is a numpy array,
		because in such cases, a naive ``obj == s`` would yield an array, which
		cannot be used in a boolean context.
	**/
	static public function _str_equal(obj:Dynamic, s:Dynamic):Dynamic;
	/**
		Return whether *obj* is a string equal, when lowercased, to string *s*.
		
		This helper solely exists to handle the case where *obj* is a numpy array,
		because in such cases, a naive ``obj == s`` would yield an array, which
		cannot be used in a boolean context.
	**/
	static public function _str_lower_equal(obj:Dynamic, s:Dynamic):Dynamic;
	/**
		Convert a sequence to a float array; if input was a masked array, masked
		values are converted to nans.
	**/
	static public function _to_unmasked_float_array(x:Dynamic):Dynamic;
	/**
		Get the topmost artist of a list.
		
		In case of a tie, return the *last* of the tied artists, as it will be
		drawn on top of the others. `max` returns the first maximum in case of
		ties, so we need to iterate over the list in reverse order.
	**/
	static public function _topmost_artist(artists:Dynamic, ?_cached_max:Dynamic):Dynamic;
	/**
		Append an extra dimension containing sliding windows along *axis*.
		
		All windows are of size *size* and begin with every *step* elements.
		
		Parameters
		----------
		arr : ndarray, shape (N_1, ..., N_k)
		    The input array
		axis : int
		    Axis along which the windows are extracted
		size : int
		    Size of the windows
		step : int
		    Stride between first elements of subsequent windows.
		
		Returns
		-------
		ndarray, shape (N_1, ..., 1 + (N_axis-size)/step, ..., N_k, size)
		
		Examples
		--------
		>>> i, j = np.ogrid[:3,:7]
		>>> a = i*10 + j
		>>> a
		array([[ 0,  1,  2,  3,  4,  5,  6],
		       [10, 11, 12, 13, 14, 15, 16],
		       [20, 21, 22, 23, 24, 25, 26]])
		>>> _unfold(a, axis=1, size=3, step=2)
		array([[[ 0,  1,  2],
		        [ 2,  3,  4],
		        [ 4,  5,  6]],
		       [[10, 11, 12],
		        [12, 13, 14],
		        [14, 15, 16]],
		       [[20, 21, 22],
		        [22, 23, 24],
		        [24, 25, 26]]])
	**/
	static public function _unfold(arr:Dynamic, axis:Dynamic, size:Dynamic, step:Dynamic):Dynamic;
	/**
		Convert a Unicode key or X keysym to a Matplotlib key name.
		
		The Unicode key is checked first; this avoids having to list most printable
		keysyms such as ``EuroSign``.
	**/
	static public function _unikey_or_keysym_to_mplkey(unikey:Dynamic, keysym:Dynamic):Dynamic;
	/**
		Convert an unmultiplied RGBA8888 buffer to a premultiplied ARGB32 buffer.
	**/
	static public function _unmultiplied_rgba8888_to_premultiplied_argb32(rgba8888:Dynamic):Dynamic;
	/**
		Return a `WeakMethod` wrapping *func* if possible, else a `_StrongRef`.
	**/
	static public function _weak_or_strong_ref(func:Dynamic, callback:Dynamic):Dynamic;
	/**
		Return a list of dictionaries of statistics used to draw a series of box
		and whisker plots using `~.Axes.bxp`.
		
		Parameters
		----------
		X : array-like
		    Data that will be represented in the boxplots. Should have 2 or
		    fewer dimensions.
		
		whis : float or (float, float), default: 1.5
		    The position of the whiskers.
		
		    If a float, the lower whisker is at the lowest datum above
		    ``Q1 - whis*(Q3-Q1)``, and the upper whisker at the highest datum below
		    ``Q3 + whis*(Q3-Q1)``, where Q1 and Q3 are the first and third
		    quartiles.  The default value of ``whis = 1.5`` corresponds to Tukey's
		    original definition of boxplots.
		
		    If a pair of floats, they indicate the percentiles at which to draw the
		    whiskers (e.g., (5, 95)).  In particular, setting this to (0, 100)
		    results in whiskers covering the whole range of the data.
		
		    In the edge case where ``Q1 == Q3``, *whis* is automatically set to
		    (0, 100) (cover the whole range of the data) if *autorange* is True.
		
		    Beyond the whiskers, data are considered outliers and are plotted as
		    individual points.
		
		bootstrap : int, optional
		    Number of times the confidence intervals around the median
		    should be bootstrapped (percentile method).
		
		labels : array-like, optional
		    Labels for each dataset. Length must be compatible with
		    dimensions of *X*.
		
		autorange : bool, optional (False)
		    When `True` and the data are distributed such that the 25th and 75th
		    percentiles are equal, ``whis`` is set to (0, 100) such that the
		    whisker ends are at the minimum and maximum of the data.
		
		Returns
		-------
		list of dict
		    A list of dictionaries containing the results for each column
		    of data. Keys of each dictionary are the following:
		
		    ========   ===================================
		    Key        Value Description
		    ========   ===================================
		    label      tick label for the boxplot
		    mean       arithmetic mean value
		    med        50th percentile
		    q1         first quartile (25th percentile)
		    q3         third quartile (75th percentile)
		    cilo       lower notch around the median
		    cihi       upper notch around the median
		    whislo     end of the lower whisker
		    whishi     end of the upper whisker
		    fliers     outliers
		    ========   ===================================
		
		Notes
		-----
		Non-bootstrapping approach to confidence interval uses Gaussian-based
		asymptotic approximation:
		
		.. math::
		
		    \mathrm{med} \pm 1.57 \times \frac{\mathrm{iqr}}{\sqrt{N}}
		
		General approach from:
		McGill, R., Tukey, J.W., and Larsen, W.A. (1978) "Variations of
		Boxplots", The American Statistician, 32:12-16.
	**/
	static public function boxplot_stats(X:Dynamic, ?whis:Dynamic, ?bootstrap:Dynamic, ?labels:Dynamic, ?autorange:Dynamic):Dynamic;
	/**
		Return a list of (ind0, ind1) such that ``mask[ind0:ind1].all()`` is
		True and we cover all such regions.
	**/
	static public function contiguous_regions(mask:Dynamic):Dynamic;
	/**
		Find all masked and/or non-finite points in a set of arguments,
		and return the arguments with only the unmasked points remaining.
		
		Arguments can be in any of 5 categories:
		
		1) 1-D masked arrays
		2) 1-D ndarrays
		3) ndarrays with more than one dimension
		4) other non-string iterables
		5) anything else
		
		The first argument must be in one of the first four categories;
		any argument with a length differing from that of the first
		argument (and hence anything in category 5) then will be
		passed through unchanged.
		
		Masks are obtained from all arguments of the correct length
		in categories 1, 2, and 4; a point is bad if masked in a masked
		array or if it is a nan or inf.  No attempt is made to
		extract a mask from categories 2, 3, and 4 if `numpy.isfinite`
		does not yield a Boolean array.
		
		All input arguments that are not passed unchanged are returned
		as ndarrays after removing the points or rows corresponding to
		masks in any of the arguments.
		
		A vastly simpler version of this function was originally
		written as a helper for Axes.scatter().
	**/
	static public function delete_masked_points(?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		[*Deprecated*] 
		
		Notes
		-----
		.. deprecated:: 3.4
		   \ 
	**/
	static public function deprecated(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return whether the given writable file-like object requires Unicode to be
		written to it.
	**/
	static public function file_requires_unicode(x:Dynamic):Dynamic;
	/**
		Return a generator of flattened nested containers.
		
		For example:
		
		    >>> from matplotlib.cbook import flatten
		    >>> l = (('John', ['Hunter']), (1, 23), [[([42, (5, 23)], )]])
		    >>> print(list(flatten(l)))
		    ['John', 'Hunter', 1, 23, 42, 5, 23]
		
		By: Composite of Holger Krekel and Luther Blissett
		From: https://code.activestate.com/recipes/121294/
		and Recipe 1.12 in cookbook
	**/
	static public function flatten(seq:Dynamic, ?scalarp:Dynamic):Dynamic;
	/**
		Return a sample data file.  *fname* is a path relative to the
		:file:`mpl-data/sample_data` directory.  If *asfileobj* is `True`
		return a file object, otherwise just a file path.
		
		Sample data files are stored in the 'mpl-data/sample_data' directory within
		the Matplotlib package.
		
		If the filename ends in .gz, the file is implicitly ungzipped.  If the
		filename ends with .npy or .npz, *asfileobj* is True, and *np_load* is
		True, the file is loaded with `numpy.load`.  *np_load* currently defaults
		to False but will default to True in a future release.
	**/
	static public function get_sample_data(fname:Dynamic, ?asfileobj:Dynamic, ?np_load:Dynamic):Dynamic;
	/**
		A helper function to create reasonable x values for the given *y*.
		
		This is used for plotting (x, y) if x values are not explicitly given.
		
		First try ``y.index`` (assuming *y* is a `pandas.Series`), if that
		fails, use ``range(len(y))``.
		
		This will be extended in the future to deal with more types of
		labeled data.
		
		Parameters
		----------
		y : float or array-like
		
		Returns
		-------
		x, y : ndarray
		   The x and y values to plot.
	**/
	static public function index_of(y:Dynamic):Dynamic;
	/**
		Return whether the string *s* contains math expressions.
		
		This is done by checking whether *s* contains an even number of
		non-escaped dollar signs.
	**/
	static public function is_math_text(s:Dynamic):Dynamic;
	/**
		Return whether the given object is a scalar or string like.
	**/
	static public function is_scalar_or_string(val:Dynamic):Dynamic;
	/**
		Return whether *obj* looks like a file object with a *write* method.
	**/
	static public function is_writable_file_like(obj:Dynamic):Dynamic;
	static public var ls_mapper : Dynamic;
	static public var ls_mapper_r : Dynamic;
	/**
		Helper function to normalize kwarg inputs.
		
		Parameters
		----------
		kw : dict or None
		    A dict of keyword arguments.  None is explicitly supported and treated
		    as an empty dict, to support functions with an optional parameter of
		    the form ``props=None``.
		
		alias_mapping : dict or Artist subclass or Artist instance, optional
		    A mapping between a canonical name to a list of aliases, in order of
		    precedence from lowest to highest.
		
		    If the canonical value is not in the list it is assumed to have the
		    highest priority.
		
		    If an Artist subclass or instance is passed, use its properties alias
		    mapping.
		
		Raises
		------
		TypeError
		    To match what Python raises if invalid arguments/keyword arguments are
		    passed to a callable.
	**/
	static public function normalize_kwargs(kw:Dynamic, ?alias_mapping:Dynamic):Dynamic;
	/**
		Pass through file objects and context-manage path-likes.
	**/
	static public function open_file_cm(path_or_file:Dynamic, ?mode:Dynamic, ?encoding:Dynamic):Dynamic;
	/**
		Print loops of cyclic references in the given *objects*.
		
		It is often useful to pass in ``gc.garbage`` to find the cycles that are
		preventing some objects from being garbage collected.
		
		Parameters
		----------
		objects
		    A list of objects to find cycles in.
		outstream
		    The stream for output.
		show_progress : bool
		    If True, print the number of objects reached as they are found.
	**/
	static public function print_cycles(objects:Dynamic, ?outstream:Dynamic, ?show_progress:Dynamic):Dynamic;
	/**
		Convert continuous line to mid-steps.
		
		Given a set of ``N`` points convert to ``2N`` points which when connected
		linearly give a step function which changes values at the middle of the
		intervals.
		
		Parameters
		----------
		x : array
		    The x location of the steps. May be empty.
		
		y1, ..., yp : array
		    y arrays to be turned into steps; all must be the same length as
		    ``x``.
		
		Returns
		-------
		array
		    The x and y values converted to steps in the same order as the input;
		    can be unpacked as ``x_out, y1_out, ..., yp_out``.  If the input is
		    length ``N``, each of these arrays will be length ``2N``.
		
		Examples
		--------
		>>> x_s, y1_s, y2_s = pts_to_midstep(x, y1, y2)
	**/
	static public function pts_to_midstep(x:Dynamic, ?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		Convert continuous line to post-steps.
		
		Given a set of ``N`` points convert to ``2N + 1`` points, which when
		connected linearly give a step function which changes values at the end of
		the intervals.
		
		Parameters
		----------
		x : array
		    The x location of the steps. May be empty.
		
		y1, ..., yp : array
		    y arrays to be turned into steps; all must be the same length as ``x``.
		
		Returns
		-------
		array
		    The x and y values converted to steps in the same order as the input;
		    can be unpacked as ``x_out, y1_out, ..., yp_out``.  If the input is
		    length ``N``, each of these arrays will be length ``2N + 1``. For
		    ``N=0``, the length will be 0.
		
		Examples
		--------
		>>> x_s, y1_s, y2_s = pts_to_poststep(x, y1, y2)
	**/
	static public function pts_to_poststep(x:Dynamic, ?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		Convert continuous line to pre-steps.
		
		Given a set of ``N`` points, convert to ``2N - 1`` points, which when
		connected linearly give a step function which changes values at the
		beginning of the intervals.
		
		Parameters
		----------
		x : array
		    The x location of the steps. May be empty.
		
		y1, ..., yp : array
		    y arrays to be turned into steps; all must be the same length as ``x``.
		
		Returns
		-------
		array
		    The x and y values converted to steps in the same order as the input;
		    can be unpacked as ``x_out, y1_out, ..., yp_out``.  If the input is
		    length ``N``, each of these arrays will be length ``2N + 1``. For
		    ``N=0``, the length will be 0.
		
		Examples
		--------
		>>> x_s, y1_s, y2_s = pts_to_prestep(x, y1, y2)
	**/
	static public function pts_to_prestep(x:Dynamic, ?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		[*Deprecated*] Return the memory consumed by the process.
		
		Notes
		-----
		.. deprecated:: 3.5
		   
	**/
	static public function report_memory(?i:Dynamic):Dynamic;
	/**
		Return the first element in *obj*.
		
		This is an type-independent way of obtaining the first element, supporting
		both index access and the iterator protocol.
	**/
	static public function safe_first_element(obj:Dynamic):Dynamic;
	static public function safe_masked_invalid(x:Dynamic, ?copy:Dynamic):Dynamic;
	/**
		Convert dictview objects to list. Other inputs are returned unchanged.
	**/
	static public function sanitize_sequence(data:Dynamic):Dynamic;
	/**
		Resample an array with ``steps - 1`` points between original point pairs.
		
		Along each column of *a*, ``(steps - 1)`` points are introduced between
		each original values; the values are linearly interpolated.
		
		Parameters
		----------
		a : array, shape (n, ...)
		steps : int
		
		Returns
		-------
		array
		    shape ``((n - 1) * steps + 1, ...)``
	**/
	static public function simple_linear_interpolation(a:Dynamic, steps:Dynamic):Dynamic;
	/**
		Remove latex formatting from mathtext.
		
		Only handles fully math and fully non-math strings.
	**/
	static public function strip_math(s:Dynamic):Dynamic;
	/**
		Convert a path to an open file handle or pass-through a file-like object.
		
		Consider using `open_file_cm` instead, as it allows one to properly close
		newly created file objects more easily.
		
		Parameters
		----------
		fname : str or path-like or file-like
		    If `str` or `os.PathLike`, the file is opened using the flags specified
		    by *flag* and *encoding*.  If a file-like object, it is passed through.
		flag : str, default: 'r'
		    Passed as the *mode* argument to `open` when *fname* is `str` or
		    `os.PathLike`; ignored if *fname* is file-like.
		return_opened : bool, default: False
		    If True, return both the file object and a boolean indicating whether
		    this was a new file (that the caller needs to close).  If False, return
		    only the new file.
		encoding : str or None, default: None
		    Passed as the *mode* argument to `open` when *fname* is `str` or
		    `os.PathLike`; ignored if *fname* is file-like.
		
		Returns
		-------
		fh : file-like
		opened : bool
		    *opened* is only returned if *return_opened* is True.
	**/
	static public function to_filehandle(fname:Dynamic, ?flag:Dynamic, ?return_opened:Dynamic, ?encoding:Dynamic):Dynamic;
	/**
		Return a list of dictionaries of data which can be used to draw a series
		of violin plots.
		
		See the ``Returns`` section below to view the required keys of the
		dictionary.
		
		Users can skip this function and pass a user-defined set of dictionaries
		with the same keys to `~.axes.Axes.violinplot` instead of using Matplotlib
		to do the calculations. See the *Returns* section below for the keys
		that must be present in the dictionaries.
		
		Parameters
		----------
		X : array-like
		    Sample data that will be used to produce the gaussian kernel density
		    estimates. Must have 2 or fewer dimensions.
		
		method : callable
		    The method used to calculate the kernel density estimate for each
		    column of data. When called via ``method(v, coords)``, it should
		    return a vector of the values of the KDE evaluated at the values
		    specified in coords.
		
		points : int, default: 100
		    Defines the number of points to evaluate each of the gaussian kernel
		    density estimates at.
		
		quantiles : array-like, default: None
		    Defines (if not None) a list of floats in interval [0, 1] for each
		    column of data, which represents the quantiles that will be rendered
		    for that column of data. Must have 2 or fewer dimensions. 1D array will
		    be treated as a singleton list containing them.
		
		Returns
		-------
		list of dict
		    A list of dictionaries containing the results for each column of data.
		    The dictionaries contain at least the following:
		
		    - coords: A list of scalars containing the coordinates this particular
		      kernel density estimate was evaluated at.
		    - vals: A list of scalars containing the values of the kernel density
		      estimate at each of the coordinates given in *coords*.
		    - mean: The mean value for this column of data.
		    - median: The median value for this column of data.
		    - min: The minimum value for this column of data.
		    - max: The maximum value for this column of data.
		    - quantiles: The quantile values for this column of data.
	**/
	static public function violin_stats(X:Dynamic, method:Dynamic, ?points:Dynamic, ?quantiles:Dynamic):Dynamic;
	/**
		[*Deprecated*] 
		
		Notes
		-----
		.. deprecated:: 3.4
		   \ 
	**/
	static public function warn_deprecated(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}