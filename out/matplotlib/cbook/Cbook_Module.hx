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
	static public var __spec__ : Dynamic;
	static public var __warningregistry__ : Dynamic;
	/**
		Converts a sequence of less than 1 dimension, to an array of 1
		dimension; leaves everything else untouched.
	**/
	static public function _check_1d(x:Dynamic):Dynamic;
	static public var _dedent_regex : Dynamic;
	static public var _find_dedent_regex : Dynamic;
	static public function _generate_deprecation_message(since:Dynamic, ?message:Dynamic, ?name:Dynamic, ?alternative:Dynamic, ?pending:Dynamic, ?obj_type:Dynamic):Dynamic;
	static public var _linestyles : Dynamic;
	static public function _putmask(a:Dynamic, mask:Dynamic, values:Dynamic):Dynamic;
	/**
		Converts a non-empty list or an ndarray of two or fewer dimensions
		into a list of iterable objects so that in
		
		    for v in _reshape_2D(X):
		
		v is iterable and can be used to instantiate a 1D array.
	**/
	static public function _reshape_2D(X:Dynamic):Dynamic;
	static public var _safezip_msg : Dynamic;
	/**
		Helper function of `pts_to_*step` functions
		
		This function does all of the normalization required to the
		input and generate the template for output
	**/
	static public function _step_validation(x:Dynamic, ?args:python.VarArgs<Dynamic>):Dynamic;
	static public function _string_to_bool(s:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		This generator takes a bunch of iterables that are ordered by func
		It sends out ordered tuples::
		
		   (func(row), [rows from all iterators matching func(row)])
		
		It is used by :func:`matplotlib.mlab.recs_join` to join record arrays
	**/
	static public function align_iterators(func:Dynamic, ?iterables:python.VarArgs<Dynamic>):Dynamic;
	/**
		Return *True* if all elements of *seq* compare equal.  If *seq* is
		0 or 1 length, return *True*
	**/
	static public function allequal(seq:Dynamic):Dynamic;
	/**
		return all possible pairs in sequence *x*
		
		Condensed by Alex Martelli from this thread_ on c.l.python
		
		.. _thread: http://groups.google.com/groups?q=all+pairs+group:*python*&hl=en&lr=&ie=UTF-8&selm=mailman.4028.1096403649.5135.python-list%40python.org&rnum=1
	**/
	static public function allpairs(x:Dynamic):Dynamic;
	/**
		Return *True* if all elements of *seq* evaluate to *True*.  If
		*seq* is empty, return *False*.
	**/
	static public function alltrue(seq:Dynamic):Dynamic;
	/**
		Returns list of dictionaries of staticists to be use to draw a series of
		box and whisker plots. See the `Returns` section below to the required
		keys of the dictionary. Users can skip this function and pass a user-
		defined set of dictionaries to the new `axes.bxp` method instead of
		relying on MPL to do the calcs.
		
		Parameters
		----------
		X : array-like
		    Data that will be represented in the boxplots. Should have 2 or fewer
		    dimensions.
		
		whis : float, string, or sequence (default = 1.5)
		    As a float, determines the reach of the whiskers past the first and
		    third quartiles (e.g., Q3 + whis*IQR, QR = interquartile range, Q3-Q1).
		    Beyond the whiskers, data are considered outliers and are plotted as
		    individual points. Set this to an unreasonably high value to force the
		    whiskers to show the min and max data. Alternatively, set this to an
		    ascending sequence of percentile (e.g., [5, 95]) to set the whiskers
		    at specific percentiles of the data. Finally, can  `whis` be the
		    string 'range' to force the whiskers to the min and max of the data.
		    In the edge case that the 25th and 75th percentiles are equivalent,
		    `whis` will be automatically set to 'range'
		
		bootstrap : int or None (default)
		    Number of times the confidence intervals around the median should
		    be bootstrapped (percentile method).
		
		labels : sequence
		    Labels for each dataset. Length must be compatible with dimensions
		    of `X`
		
		Returns
		-------
		bxpstats : list of dict
		    A list of dictionaries containing the results for each column
		    of data. Keys of each dictionary are the following:
		
		    ========   ===================================
		    Key        Value Description
		    ========   ===================================
		    label      tick label for the boxplot
		    mean       arithemetic mean value
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
	static public function boxplot_stats(X:Dynamic, ?whis:Dynamic, ?bootstrap:Dynamic, ?labels:Dynamic):Dynamic;
	/**
		Remove excess indentation from docstring *s*.
		
		Discards any leading blank lines, then removes up to n whitespace
		characters from each line, where n is the number of leading
		whitespace characters in the first line. It differs from
		textwrap.dedent in its deletion of leading blank lines and its use
		of the first non-blank line to determine the indentation.
		
		It is also faster in most cases.
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
		Decorator to mark a function as deprecated.
		
		Parameters
		------------
		since : str
		    The release at which this API became deprecated.  This is
		    required.
		
		message : str, optional
		    Override the default deprecation message.  The format
		    specifier `%(func)s` may be used for the name of the function,
		    and `%(alternative)s` may be used in the deprecation message
		    to insert the name of an alternative to the deprecated
		    function.  `%(obj_type)` may be used to insert a friendly name
		    for the type of object being deprecated.
		
		name : str, optional
		    The name of the deprecated function; if not provided the name
		    is automatically determined from the passed in function,
		    though this is useful in the case of renamed functions, where
		    the new function is just assigned to the name of the
		    deprecated function.  For example::
		
		        def new_function():
		            ...
		        oldFunction = new_function
		
		alternative : str, optional
		    An alternative function that the user may use in place of the
		    deprecated function.  The deprecation warning will tell the user about
		    this alternative if provided.
		
		pending : bool, optional
		    If True, uses a PendingDeprecationWarning instead of a
		    DeprecationWarning.
		
		Examples
		--------
		
		    Basic example::
		
		        @deprecated('1.4.0')
		        def the_function_to_deprecate():
		            pass
	**/
	static public function deprecated(since:Dynamic, ?message:Dynamic, ?name:Dynamic, ?alternative:Dynamic, ?pending:Dynamic, ?obj_type:Dynamic):Dynamic;
	/**
		delete all of the *keys* from the :class:`dict` *d*
	**/
	static public function dict_delall(d:Dynamic, keys:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public function exception_to_str(?s:Dynamic):Dynamic;
	/**
		Returns `True` if the given writable file-like object requires Unicode
		to be written to it.
	**/
	static public function file_requires_unicode(x:Dynamic):Dynamic;
	/**
		return all attributes of *o* which match string in match.  if case
		is True require an exact case match.
	**/
	static public function finddir(o:Dynamic, match:Dynamic, ?_case:Dynamic):Dynamic;
	/**
		Returns a generator of flattened nested containers
		
		For example:
		
		    >>> from matplotlib.cbook import flatten
		    >>> l = (('John', ['Hunter']), (1, 23), [[([42, (5, 23)], )]])
		    >>> print(list(flatten(l)))
		    ['John', 'Hunter', 1, 23, 42, 5, 23]
		
		By: Composite of Holger Krekel and Luther Blissett
		From: http://aspn.activestate.com/ASPN/Cookbook/Python/Recipe/121294
		and Recipe 1.12 in cookbook
	**/
	static public function flatten(seq:Dynamic, ?scalarp:Dynamic):Dynamic;
	static public function get_label(y:Dynamic, default_name:Dynamic):Dynamic;
	static public function get_realpath_and_stat(path:Dynamic):Dynamic;
	/**
		Recurse all the files and dirs in *args* ignoring symbolic links
		and return the files as a list of strings
	**/
	static public function get_recursive_filelist(args:Dynamic):Dynamic;
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
		*seq* is a list of words.  Return the index into seq such that::
		
		    len(' '.join(seq[:ind])<=N
		
		.
	**/
	static public function get_split_ind(seq:Dynamic, N:Dynamic):Dynamic;
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
	static public function is_math_text(s:Dynamic):Dynamic;
	/**
		return true if *obj* looks like a number
	**/
	static public function is_numlike(obj:Dynamic):Dynamic;
	/**
		return true if *obj* is not string like and is not iterable
	**/
	static public function is_scalar(obj:Dynamic):Dynamic;
	/**
		Return whether the given object is a scalar or string like.
	**/
	static public function is_scalar_or_string(val:Dynamic):Dynamic;
	/**
		Returns true if *obj* is iterable and contains strings
	**/
	static public function is_sequence_of_strings(obj:Dynamic):Dynamic;
	/**
		Return True if *obj* looks like a string
	**/
	static public function is_string_like(obj:Dynamic):Dynamic;
	/**
		return true if *obj* looks like a file object with a *write* method
	**/
	static public function is_writable_file_like(obj:Dynamic):Dynamic;
	/**
		return issubclass(x, klass) and return False on a TypeError
	**/
	static public function issubclass_safe(x:Dynamic, klass:Dynamic):Dynamic;
	/**
		return true if *obj* is iterable
	**/
	static public function iterable(obj:Dynamic):Dynamic;
	/**
		Recursively list files
		
		from Parmar and Martelli in the Python Cookbook
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
		------------
		    local_var: any object
		        The local variable (highest priority)
		
		    kwargs: dict
		        Dictionary of keyword arguments; modified in place
		
		    keys: str(s)
		        Name(s) of keyword arguments to process, in descending order of
		        priority
		
		Returns
		---------
		    out: any object
		        Either local_var or one of kwargs[key] for key in keys
		
		Raises
		--------
		    IgnoredKeywordWarning
		        For each key in keys that is removed from kwargs but not used as
		        the output value
	**/
	static public function local_over_kwdict(local_var:Dynamic, kwargs:Dynamic, ?keys:python.VarArgs<Dynamic>):Dynamic;
	static public var ls_mapper : Dynamic;
	static public var ls_mapper_r : Dynamic;
	/**
		make directory *newdir* recursively, and set *mode*.  Equivalent to ::
		
		    > mkdir -p NEWDIR
		    > chmod MODE NEWDIR
	**/
	static public function mkdirs(newdir:Dynamic, ?mode:Dynamic):Dynamic;
	/**
		Return *True* if one element of *seq* is *True*.  It *seq* is
		empty, return *False*.
	**/
	static public function onetrue(seq:Dynamic):Dynamic;
	/**
		Break up the *seq* into *num* tuples
	**/
	static public function pieces(seq:Dynamic, ?num:Dynamic):Dynamic;
	/**
		empty a list
	**/
	static public function popall(seq:Dynamic):Dynamic;
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
	static public var print_function : Dynamic;
	/**
		Covert continuous line to pre-steps
		
		Given a set of N points convert to 2 N -1 points
		which when connected linearly give a step function
		which changes values at the begining the intervals.
		
		Parameters
		----------
		x : array
		    The x location of the steps
		
		y1, y2, ... : array
		    Any number of y arrays to be turned into steps.
		    All must be the same length as ``x``
		
		Returns
		-------
		x, y1, y2, .. : array
		    The x and y values converted to steps in the same order
		    as the input.  If the input is length ``N``, each of these arrays
		    will be length ``2N + 1``
		
		
		Examples
		--------
		>> x_s, y1_s, y2_s = pts_to_prestep(x, y1, y2)
	**/
	static public function pts_to_midstep(x:Dynamic, ?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		Covert continuous line to pre-steps
		
		Given a set of N points convert to 2 N -1 points
		which when connected linearly give a step function
		which changes values at the begining the intervals.
		
		Parameters
		----------
		x : array
		    The x location of the steps
		
		y1, y2, ... : array
		    Any number of y arrays to be turned into steps.
		    All must be the same length as ``x``
		
		Returns
		-------
		x, y1, y2, .. : array
		    The x and y values converted to steps in the same order
		    as the input.  If the input is length ``N``, each of these arrays
		    will be length ``2N + 1``
		
		
		Examples
		--------
		>> x_s, y1_s, y2_s = pts_to_prestep(x, y1, y2)
	**/
	static public function pts_to_poststep(x:Dynamic, ?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		Covert continuous line to pre-steps
		
		Given a set of N points convert to 2 N -1 points
		which when connected linearly give a step function
		which changes values at the begining the intervals.
		
		Parameters
		----------
		x : array
		    The x location of the steps
		
		y1, y2, ... : array
		    Any number of y arrays to be turned into steps.
		    All must be the same length as ``x``
		
		Returns
		-------
		x, y1, y2, .. : array
		    The x and y values converted to steps in the same order
		    as the input.  If the input is length ``N``, each of these arrays
		    will be length ``2N + 1``
		
		
		Examples
		--------
		>> x_s, y1_s, y2_s = pts_to_prestep(x, y1, y2)
	**/
	static public function pts_to_prestep(x:Dynamic, ?args:python.VarArgs<Dynamic>):Dynamic;
	static public function recursive_remove(path:Dynamic):Dynamic;
	/**
		reduce(function, sequence[, initial]) -> value
		
		Apply a function of two arguments cumulatively to the items of a sequence,
		from left to right, so as to reduce the sequence to a single value.
		For example, reduce(lambda x, y: x+y, [1, 2, 3, 4, 5]) calculates
		((((1+2)+3)+4)+5).  If initial is present, it is placed before the items
		of the sequence in the calculation, and serves as a default when the
		sequence is empty.
	**/
	static public function reduce(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		return the memory consumed by process
	**/
	static public function report_memory(?i:Dynamic):Dynamic;
	/**
		Return a dictionary that contains those keys that appear in both
		d and keys, with values from d.
	**/
	static public function restrict_dict(d:Dynamic, keys:Dynamic):Dynamic;
	/**
		reverse the dictionary -- may lose data if values are not unique!
	**/
	static public function reverse_dict(d:Dynamic):Dynamic;
	static public function safe_masked_invalid(x:Dynamic):Dynamic;
	/**
		make sure *args* are equal len before zipping
	**/
	static public function safezip(?args:python.VarArgs<Dynamic>):Dynamic;
	static public function simple_linear_interpolation(a:Dynamic, steps:Dynamic):Dynamic;
	/**
		soundex module conforming to Odell-Russell algorithm 
	**/
	static public function soundex(name:Dynamic, ?len:Dynamic):Dynamic;
	/**
		remove latex formatting from mathtext
	**/
	static public function strip_math(s:Dynamic):Dynamic;
	/**
		*fname* can be a filename or a file handle.  Support for gzipped
		files is automatic, if the filename ends in .gz.  *flag* is a
		read/write flag for :func:`file`
	**/
	static public function to_filehandle(fname:Dynamic, ?flag:Dynamic, ?return_opened:Dynamic):Dynamic;
	static public var unicode_literals : Dynamic;
	static public function unicode_safe(s:Dynamic):Dynamic;
	/**
		Return a list of unique elements of *x*
	**/
	static public function unique(x:Dynamic):Dynamic;
	/**
		Find index ranges where *mask* is *False*.
		
		*mask* will be flattened if it is not already 1-D.
		
		Returns Nx2 :class:`numpy.ndarray` with each row the start and stop
		indices for slices of the compressed :class:`numpy.ndarray`
		corresponding to each of *N* uninterrupted runs of unmasked
		values.  If optional argument *compressed* is *False*, it returns
		the start and stop indices into the original :class:`numpy.ndarray`,
		not the compressed :class:`numpy.ndarray`.  Returns *None* if there
		are no unmasked values.
		
		Example::
		
		  y = ma.array(np.arange(5), mask = [0,0,1,0,0])
		  ii = unmasked_index_ranges(ma.getmaskarray(y))
		  # returns array [[0,2,] [2,4,]]
		
		  y.compressed()[ii[1,0]:ii[1,1]]
		  # returns array [3,4,]
		
		  ii = unmasked_index_ranges(ma.getmaskarray(y), compressed=False)
		  # returns array [[0, 2], [3, 5]]
		
		  y.filled()[ii[1,0]:ii[1,1]]
		  # returns array [3,4,]
		
		Prior to the transforms refactoring, this was used to support
		masked arrays in Line2D.
	**/
	static public function unmasked_index_ranges(mask:Dynamic, ?compressed:Dynamic):Dynamic;
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
		Used to display deprecation warning in a standard way.
		
		Parameters
		------------
		since : str
		    The release at which this API became deprecated.
		
		message : str, optional
		    Override the default deprecation message.  The format
		    specifier `%(func)s` may be used for the name of the function,
		    and `%(alternative)s` may be used in the deprecation message
		    to insert the name of an alternative to the deprecated
		    function.  `%(obj_type)` may be used to insert a friendly name
		    for the type of object being deprecated.
		
		name : str, optional
		    The name of the deprecated function; if not provided the name
		    is automatically determined from the passed in function,
		    though this is useful in the case of renamed functions, where
		    the new function is just assigned to the name of the
		    deprecated function.  For example::
		
		        def new_function():
		            ...
		        oldFunction = new_function
		
		alternative : str, optional
		    An alternative function that the user may use in place of the
		    deprecated function.  The deprecation warning will tell the user about
		    this alternative if provided.
		
		pending : bool, optional
		    If True, uses a PendingDeprecationWarning instead of a
		    DeprecationWarning.
		
		obj_type : str, optional
		    The object type being deprecated.
		
		Examples
		--------
		
		    Basic example::
		
		        # To warn of the deprecation of "matplotlib.name_of_module"
		        warn_deprecated('1.4.0', name='matplotlib.name_of_module',
		                        obj_type='module')
	**/
	static public function warn_deprecated(since:Dynamic, ?message:Dynamic, ?name:Dynamic, ?alternative:Dynamic, ?pending:Dynamic, ?obj_type:Dynamic):Dynamic;
	/**
		wrap *text* with *prefix* at length *cols*
	**/
	static public function wrap(prefix:Dynamic, text:Dynamic, cols:Dynamic):Dynamic;
}