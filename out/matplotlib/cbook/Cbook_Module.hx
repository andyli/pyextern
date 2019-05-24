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
		Get the elements on the perimeter of ``arr``,
		
		Parameters
		----------
		arr : ndarray, shape (M, N)
		    The input array
		
		Returns
		-------
		perimeter : ndarray, shape (2*(M - 1) + 2*(N - 1),)
		    The elements on the perimeter of the array::
		
		        [arr[0,0] ... arr[0,-1] ... arr[-1, -1] ... arr[-1,0] ...]
		
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
		Converts a sequence of less than 1 dimension, to an array of 1
		dimension; leaves everything else untouched.
	**/
	static public function _check_1d(x:Dynamic):Dynamic;
	/**
		Run *command* using `subprocess.check_output`.  If it succeeds, return the
		output (stdout and stderr); if not, raise an exception whose text includes
		the failed command and captured output.  Both the command and the output
		are logged at DEBUG level on *logger*.
	**/
	static public function _check_and_log_subprocess(command:Dynamic, logger:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		For each *key, value* pair in *kwargs*, check that *value* is in *values*;
		if not, raise an appropriate ValueError.
		
		Examples
		--------
		>>> cbook._check_in_list(["foo", "bar"], arg=arg, other_arg=other_arg)
	**/
	static public function _check_in_list(values:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		If any value in *kwargs* is a `np.matrix`, raise a TypeError with the key
		name in its message.
	**/
	static public function _check_not_matrix(?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		extract a mask from categories 2 and 4 if :meth:`np.isfinite`
		does not yield a Boolean array.  Category 3 is included to
		support RGB or RGBA ndarrays, which are assumed to have only
		valid values and which are passed through unchanged.
		
		All input arguments that are not passed unchanged are returned
		as masked arrays if any masked points are found, otherwise as
		ndarrays.
	**/
	static public function _combine_masks(?args:python.VarArgs<Dynamic>):Dynamic;
	static public var _dedent_regex : Dynamic;
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
		can be used by `~.normalize_kwargs` (which assumes that higher priority
		aliases come last).
	**/
	static public function _define_aliases(alias_d:Dynamic, ?cls:Dynamic):Dynamic;
	/**
		Decorator indicating that parameter *name* of *func* is being deprecated.
		
		The actual implementation of *func* should keep the *name* parameter in its
		signature.
		
		Parameters that come after the deprecated parameter effectively become
		keyword-only (as they cannot be passed positionally without triggering the
		DeprecationWarning on the deprecated parameter), and should be marked as
		such after the deprecation period has passed and the deprecated parameter
		is removed.
		
		Examples
		--------
		
		::
		    @_delete_parameter("3.1", "unused")
		    def func(used_arg, other_arg, unused, more_args): ...
	**/
	static public function _delete_parameter(since:Dynamic, name:Dynamic, ?func:Dynamic):Dynamic;
	static public function _exception_printer(exc:Dynamic):Dynamic;
	static public var _find_dedent_regex : Dynamic;
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
	static public var _lockstr : Dynamic;
	/**
		Decorator indicating that passing parameter *name* (or any of the following
		ones) positionally to *func* is being deprecated.
		
		Note that this decorator **cannot** be applied to a function that has a
		pyplot-level wrapper, as the wrapper always pass all arguments by keyword.
		If it is used, users will see spurious DeprecationWarnings every time they
		call the pyplot wrapper.
	**/
	static public function _make_keyword_only(since:Dynamic, name:Dynamic, ?func:Dynamic):Dynamic;
	/**
		Convert a premultiplied ARGB32 buffer to an unmultiplied RGBA8888 buffer.
	**/
	static public function _premultiplied_argb32_to_unmultiplied_rgba8888(buf:Dynamic):Dynamic;
	/**
		Decorator indicating that parameter *old* of *func* is renamed to *new*.
		
		The actual implementation of *func* should use *new*, not *old*.  If *old*
		is passed to *func*, a DeprecationWarning is emitted, and its value is
		used, even if *new* is also passed by keyword (this is to simplify pyplot
		wrapper functions, which always pass *new* explicitly to the Axes method).
		If *new* is also passed but positionally, a TypeError will be raised by the
		underlying function during argument binding.
		
		Examples
		--------
		
		::
		    @_rename_parameter("3.1", "bad_name", "good_name")
		    def func(good_name): ...
	**/
	static public function _rename_parameter(since:Dynamic, old:Dynamic, _new:Dynamic, ?func:Dynamic):Dynamic;
	/**
		Use Fortran ordering to convert ndarrays and lists of iterables to lists of
		1D arrays.
		
		Lists of iterables are converted by applying `np.asarray` to each of their
		elements.  1D ndarrays are returned in a singleton list containing them.
		2D ndarrays are converted to the list of their *columns*.
		
		*name* is used to generate the error message for invalid inputs.
	**/
	static public function _reshape_2D(X:Dynamic, name:Dynamic):Dynamic;
	static public var _safezip_msg : Dynamic;
	/**
		Temporarily set some attributes; restore original state at context exit.
		    
	**/
	static public function _setattr_cm(obj:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
	static public function _suppress_matplotlib_deprecation_warning():Dynamic;
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
		Convert an unmultiplied RGBA8888 buffer to a premultiplied ARGB32 buffer.
	**/
	static public function _unmultiplied_rgba8888_to_premultiplied_argb32(rgba8888:Dynamic):Dynamic;
	/**
		`warnings.warn` wrapper that sets *stacklevel* to "outside Matplotlib".
		
		The original emitter of the warning can be obtained by patching this
		function back to `warnings.warn`, i.e. ``cbook._warn_external =
		warnings.warn`` (or ``functools.partial(warnings.warn, stacklevel=2)``,
		etc.).
	**/
	static public function _warn_external(message:Dynamic, ?category:Dynamic):Dynamic;
	/**
		Returns list of dictionaries of statistics used to draw a series
		of box and whisker plots. The `Returns` section enumerates the
		required keys of the dictionary. Users can skip this function and
		pass a user-defined set of dictionaries to the new `axes.bxp` method
		instead of relying on MPL to do the calculations.
		
		Parameters
		----------
		X : array-like
		    Data that will be represented in the boxplots. Should have 2 or
		    fewer dimensions.
		
		whis : float, string, or sequence (default = 1.5)
		    As a float, determines the reach of the whiskers beyond the
		    first and third quartiles. In other words, where IQR is the
		    interquartile range (`Q3-Q1`), the upper whisker will extend to last
		    datum less than `Q3 + whis*IQR`. Similarly, the lower whisker will
		    extend to the first datum greater than `Q1 - whis*IQR`.
		    Beyond the whiskers, data are considered outliers
		    and are plotted as individual points. This can be set to an
		    ascending sequence of percentiles (e.g., [5, 95]) to set the
		    whiskers at specific percentiles of the data. Finally, `whis`
		    can be the string ``'range'`` to force the whiskers to the
		    minimum and maximum of the data. In the edge case that the 25th
		    and 75th percentiles are equivalent, `whis` can be automatically
		    set to ``'range'`` via the `autorange` option.
		
		bootstrap : int, optional
		    Number of times the confidence intervals around the median
		    should be bootstrapped (percentile method).
		
		labels : array-like, optional
		    Labels for each dataset. Length must be compatible with
		    dimensions of `X`.
		
		autorange : bool, optional (False)
		    When `True` and the data are distributed such that the 25th and 75th
		    percentiles are equal, ``whis`` is set to ``'range'`` such that the
		    whisker ends are at the minimum and maximum of the data.
		
		Returns
		-------
		bxpstats : list of dict
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
		Non-bootstrapping approach to confidence interval uses Gaussian-
		based asymptotic approximation:
		
		.. math::
		
		    \mathrm{med} \pm 1.57 \times \frac{\mathrm{iqr}}{\sqrt{N}}
		
		General approach from:
		McGill, R., Tukey, J.W., and Larsen, W.A. (1978) "Variations of
		Boxplots", The American Statistician, 32:12-16.
	**/
	static public function boxplot_stats(X:Dynamic, ?whis:Dynamic, ?bootstrap:Dynamic, ?labels:Dynamic, ?autorange:Dynamic):Dynamic;
	/**
		Return a list of (ind0, ind1) such that mask[ind0:ind1].all() is
		True and we cover all such regions
	**/
	static public function contiguous_regions(mask:Dynamic):Dynamic;
	/**
		[*Deprecated*] Remove excess indentation from docstring *s*.
		
		Discards any leading blank lines, then removes up to n whitespace
		characters from each line, where n is the number of leading
		whitespace characters in the first line. It differs from
		textwrap.dedent in its deletion of leading blank lines and its use
		of the first non-blank line to determine the indentation.
		
		It is also faster in most cases.
		
		Notes
		-----
		.. deprecated:: 3.1
		   
	**/
	static public function dedent(s:Dynamic):Dynamic;
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
		extract a mask from categories 2, 3, and 4 if :meth:`np.isfinite`
		does not yield a Boolean array.
		
		All input arguments that are not passed unchanged are returned
		as ndarrays after removing the points or rows corresponding to
		masks in any of the arguments.
		
		A vastly simpler version of this function was originally
		written as a helper for Axes.scatter().
	**/
	static public function delete_masked_points(?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		Decorator to mark a function, a class, or a property as deprecated.
		
		When deprecating a classmethod, a staticmethod, or a property, the
		``@deprecated`` decorator should go *under* the ``@classmethod``, etc.
		decorator (i.e., `deprecated` should directly decorate the underlying
		callable).
		
		Parameters
		----------
		since : str
		    The release at which this API became deprecated.  This is
		    required.
		
		message : str, optional
		    Override the default deprecation message.  The format
		    specifier `%(name)s` may be used for the name of the object,
		    and `%(alternative)s` may be used in the deprecation message
		    to insert the name of an alternative to the deprecated
		    object.
		
		name : str, optional
		    The name of the deprecated object; if not provided the name
		    is automatically determined from the passed in object,
		    though this is useful in the case of renamed functions, where
		    the new function is just assigned to the name of the
		    deprecated function.  For example::
		
		        def new_function():
		            ...
		        old_function = new_function
		
		alternative : str, optional
		    An alternative API that the user may use in place of the deprecated
		    API.  The deprecation warning will tell the user about this alternative
		    if provided.
		
		pending : bool, optional
		    If True, uses a PendingDeprecationWarning instead of a
		    DeprecationWarning.  Cannot be used together with *removal*.
		
		obj_type : str, optional
		    The object type being deprecated; by default, 'function' if decorating
		    a function and 'class' if decorating a class.
		
		addendum : str, optional
		    Additional text appended directly to the final message.
		
		removal : str, optional
		    The expected removal version.  With the default (an empty string), a
		    removal version is automatically computed from *since*.  Set to other
		    Falsy values to not schedule a removal date.  Cannot be used together
		    with *pending*.
		
		Examples
		--------
		
		    Basic example::
		
		        @deprecated('1.4.0')
		        def the_function_to_deprecate():
		            pass
	**/
	static public function deprecated(since:Dynamic, ?message:Dynamic, ?name:Dynamic, ?alternative:Dynamic, ?pending:Dynamic, ?obj_type:Dynamic, ?addendum:Dynamic, ?removal:Dynamic):Dynamic;
	/**
		Return whether the given writable file-like object requires Unicode to be
		written to it.
	**/
	static public function file_requires_unicode(x:Dynamic):Dynamic;
	/**
		Return a generator of flattened nested containers
		
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
		[*Deprecated*] 
		
		Notes
		-----
		.. deprecated:: 3.1
		   \ 
	**/
	static public function get_label(y:Dynamic, default_name:Dynamic):Dynamic;
	static public function get_realpath_and_stat(path:Dynamic):Dynamic;
	/**
		Return a sample data file.  *fname* is a path relative to the
		`mpl-data/sample_data` directory.  If *asfileobj* is `True`
		return a file object, otherwise just a file path.
		
		Set the rc parameter examples.directory to the directory where we should
		look, if sample_data files are stored in a location different than
		default (which is 'mpl-data/sample_data` at the same level of 'matplotlib`
		Python module files).
		
		If the filename ends in .gz, the file is implicitly ungzipped.
	**/
	static public function get_sample_data(fname:Dynamic, ?asfileobj:Dynamic):Dynamic;
	/**
		A helper function to get the index of an input to plot
		against if x values are not explicitly given.
		
		Tries to get `y.index` (works if this is a pd.Series), if that
		fails, return np.arange(y.shape[0]).
		
		This will be extended in the future to deal with more types of
		labeled data.
		
		Parameters
		----------
		y : scalar or array-like
		    The proposed y-value
		
		Returns
		-------
		x, y : ndarray
		   The x and y values to plot.
	**/
	static public function index_of(y:Dynamic):Dynamic;
	/**
		[*Deprecated*] Returns true if *obj* can be hashed
		
		Notes
		-----
		.. deprecated:: 3.1
		   
	**/
	static public function is_hashable(obj:Dynamic):Dynamic;
	static public function is_math_text(s:Dynamic):Dynamic;
	/**
		[*Deprecated*] return true if *obj* looks like a number
		
		Notes
		-----
		.. deprecated:: 3.0
		   
	**/
	static public function is_numlike(obj:Dynamic):Dynamic;
	/**
		Return whether the given object is a scalar or string like.
	**/
	static public function is_scalar_or_string(val:Dynamic):Dynamic;
	/**
		Return whether *obj* looks like a file object with a *write* method.
	**/
	static public function is_writable_file_like(obj:Dynamic):Dynamic;
	/**
		[*Deprecated*] return true if *obj* is iterable
		
		Notes
		-----
		.. deprecated:: 3.1
		   
	**/
	static public function iterable(obj:Dynamic):Dynamic;
	/**
		[*Deprecated*] Recursively list files
		
		from Parmar and Martelli in the Python Cookbook
		
		Notes
		-----
		.. deprecated:: 3.0
		   
	**/
	static public function listFiles(root:Dynamic, ?patterns:Dynamic, ?recurse:Dynamic, ?return_folders:Dynamic):Dynamic;
	/**
		Enforces the priority of a local variable over potentially conflicting
		argument(s) from a kwargs dict. The following possible output values are
		considered in order of priority:
		
		    local_var > kwargs[keys[0]] > ... > kwargs[keys[-1]]
		
		The first of these whose value is not None will be returned. If all are
		None then None will be returned. Each key in keys will be removed from the
		kwargs dict in place.
		
		Parameters
		----------
		    local_var : any object
		        The local variable (highest priority)
		
		    kwargs : dict
		        Dictionary of keyword arguments; modified in place
		
		    keys : str(s)
		        Name(s) of keyword arguments to process, in descending order of
		        priority
		
		Returns
		-------
		    out : any object
		        Either local_var or one of kwargs[key] for key in keys
		
		Raises
		------
		    IgnoredKeywordWarning
		        For each key in keys that is removed from kwargs but not used as
		        the output value
	**/
	static public function local_over_kwdict(local_var:Dynamic, kwargs:Dynamic, ?keys:python.VarArgs<Dynamic>):Dynamic;
	static public var ls_mapper : Dynamic;
	static public var ls_mapper_r : Dynamic;
	/**
		[*Deprecated*] make directory *newdir* recursively, and set *mode*.  Equivalent to ::
		
		    > mkdir -p NEWDIR
		    > chmod MODE NEWDIR
		
		Notes
		-----
		.. deprecated:: 3.0
		   
	**/
	static public function mkdirs(newdir:Dynamic, ?mode:Dynamic):Dynamic;
	/**
		Helper function to normalize kwarg inputs
		
		The order they are resolved are:
		
		 1. aliasing
		 2. required
		 3. forbidden
		 4. allowed
		
		This order means that only the canonical names need appear in
		`allowed`, `forbidden`, `required`
		
		Parameters
		----------
		
		alias_mapping, dict, optional
		    A mapping between a canonical name to a list of
		    aliases, in order of precedence from lowest to highest.
		
		    If the canonical value is not in the list it is assumed to have
		    the highest priority.
		
		required : iterable, optional
		    A tuple of fields that must be in kwargs.
		
		forbidden : iterable, optional
		    A list of keys which may not be in kwargs
		
		allowed : tuple, optional
		    A tuple of allowed fields.  If this not None, then raise if
		    `kw` contains any keys not in the union of `required`
		    and `allowed`.  To allow only the required fields pass in
		    ``()`` for `allowed`
		
		Raises
		------
		TypeError
		    To match what python raises if invalid args/kwargs are passed to
		    a callable.
	**/
	static public function normalize_kwargs(kw:Dynamic, ?alias_mapping:Dynamic, ?required:Dynamic, ?forbidden:Dynamic, ?allowed:Dynamic):Dynamic;
	/**
		Pass through file objects and context-manage `.PathLike`\s.
	**/
	static public function open_file_cm(path_or_file:Dynamic, ?mode:Dynamic, ?encoding:Dynamic):Dynamic;
	/**
		*objects*
		    A list of objects to find cycles in.  It is often useful to
		    pass in gc.garbage to find the cycles that are preventing some
		    objects from being garbage collected.
		
		*outstream*
		    The stream for output.
		
		*show_progress*
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
		out : array
		    The x and y values converted to steps in the same order as the input;
		    can be unpacked as ``x_out, y1_out, ..., yp_out``.  If the input is
		    length ``N``, each of these arrays will be length ``2N``.
		
		Examples
		--------
		>> x_s, y1_s, y2_s = pts_to_midstep(x, y1, y2)
	**/
	static public function pts_to_midstep(x:Dynamic, ?args:python.VarArgs<Dynamic>):Array<Dynamic>;
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
		out : array
		    The x and y values converted to steps in the same order as the input;
		    can be unpacked as ``x_out, y1_out, ..., yp_out``.  If the input is
		    length ``N``, each of these arrays will be length ``2N + 1``. For
		    ``N=0``, the length will be 0.
		
		Examples
		--------
		>> x_s, y1_s, y2_s = pts_to_poststep(x, y1, y2)
	**/
	static public function pts_to_poststep(x:Dynamic, ?args:python.VarArgs<Dynamic>):Array<Dynamic>;
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
		out : array
		    The x and y values converted to steps in the same order as the input;
		    can be unpacked as ``x_out, y1_out, ..., yp_out``.  If the input is
		    length ``N``, each of these arrays will be length ``2N + 1``. For
		    ``N=0``, the length will be 0.
		
		Examples
		--------
		>> x_s, y1_s, y2_s = pts_to_prestep(x, y1, y2)
	**/
	static public function pts_to_prestep(x:Dynamic, ?args:python.VarArgs<Dynamic>):Array<Dynamic>;
	/**
		Return the memory consumed by the process.
	**/
	static public function report_memory(?i:Dynamic):Dynamic;
	static public function safe_first_element(obj:Dynamic):Dynamic;
	static public function safe_masked_invalid(x:Dynamic, ?copy:Dynamic):Dynamic;
	/**
		[*Deprecated*] make sure *args* are equal len before zipping
		
		Notes
		-----
		.. deprecated:: 3.1
		   
	**/
	static public function safezip(?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		Converts dictview object to list
	**/
	static public function sanitize_sequence(data:Dynamic):Dynamic;
	/**
		Resample an array with ``steps - 1`` points between original point pairs.
		
		Parameters
		----------
		a : array, shape (n, ...)
		steps : int
		
		Returns
		-------
		array, shape ``((n - 1) * steps + 1, ...)``
		
		Along each column of *a*, ``(steps - 1)`` points are introduced between
		each original values; the values are linearly interpolated.
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
		fname : str or PathLike or file-like object
		    If `str` or `os.PathLike`, the file is opened using the flags specified
		    by *flag* and *encoding*.  If a file-like object, it is passed through.
		flag : str, default 'r'
		    Passed as the *mode* argument to `open` when *fname* is `str` or
		    `os.PathLike`; ignored if *fname* is file-like.
		return_opened : bool, default False
		    If True, return both the file object and a boolean indicating whether
		    this was a new file (that the caller needs to close).  If False, return
		    only the new file.
		encoding : str or None, default None
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
		[*Deprecated*] 
		
		Notes
		-----
		.. deprecated:: 3.0
		   \ 
	**/
	static public function unicode_safe(s:Dynamic):Dynamic;
	/**
		Returns a list of dictionaries of data which can be used to draw a series
		of violin plots. See the `Returns` section below to view the required keys
		of the dictionary. Users can skip this function and pass a user-defined set
		of dictionaries to the `axes.vplot` method instead of using MPL to do the
		calculations.
		
		Parameters
		----------
		X : array-like
		    Sample data that will be used to produce the gaussian kernel density
		    estimates. Must have 2 or fewer dimensions.
		
		method : callable
		    The method used to calculate the kernel density estimate for each
		    column of data. When called via `method(v, coords)`, it should
		    return a vector of the values of the KDE evaluated at the values
		    specified in coords.
		
		points : scalar, default = 100
		    Defines the number of points to evaluate each of the gaussian kernel
		    density estimates at.
		
		Returns
		-------
		
		A list of dictionaries containing the results for each column of data.
		The dictionaries contain at least the following:
		
		    - coords: A list of scalars containing the coordinates this particular
		      kernel density estimate was evaluated at.
		    - vals: A list of scalars containing the values of the kernel density
		      estimate at each of the coordinates given in `coords`.
		    - mean: The mean value for this column of data.
		    - median: The median value for this column of data.
		    - min: The minimum value for this column of data.
		    - max: The maximum value for this column of data.
	**/
	static public function violin_stats(X:Dynamic, method:Dynamic, ?points:Dynamic):Dynamic;
	/**
		Used to display deprecation in a standard way.
		
		Parameters
		----------
		since : str
		    The release at which this API became deprecated.
		
		message : str, optional
		    Override the default deprecation message.  The format
		    specifier `%(name)s` may be used for the name of the function,
		    and `%(alternative)s` may be used in the deprecation message
		    to insert the name of an alternative to the deprecated
		    function.  `%(obj_type)s` may be used to insert a friendly name
		    for the type of object being deprecated.
		
		name : str, optional
		    The name of the deprecated object.
		
		alternative : str, optional
		    An alternative API that the user may use in place of the deprecated
		    API.  The deprecation warning will tell the user about this alternative
		    if provided.
		
		pending : bool, optional
		    If True, uses a PendingDeprecationWarning instead of a
		    DeprecationWarning.  Cannot be used together with *removal*.
		
		obj_type : str, optional
		    The object type being deprecated.
		
		addendum : str, optional
		    Additional text appended directly to the final message.
		
		removal : str, optional
		    The expected removal version.  With the default (an empty string), a
		    removal version is automatically computed from *since*.  Set to other
		    Falsy values to not schedule a removal date.  Cannot be used together
		    with *pending*.
		
		Examples
		--------
		
		    Basic example::
		
		        # To warn of the deprecation of "matplotlib.name_of_module"
		        warn_deprecated('1.4.0', name='matplotlib.name_of_module',
		                        obj_type='module')
	**/
	static public function warn_deprecated(since:Dynamic, ?message:Dynamic, ?name:Dynamic, ?alternative:Dynamic, ?pending:Dynamic, ?obj_type:Dynamic, ?addendum:Dynamic, ?removal:Dynamic):Dynamic;
}