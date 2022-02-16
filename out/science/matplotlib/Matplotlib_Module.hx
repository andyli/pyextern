/* This file is generated, do not edit! */
package matplotlib;
@:pythonImport("matplotlib") extern class Matplotlib_Module {
	static public var __bibtex__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public function __getattr__(name:Dynamic):Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Add documentation for a *data* field to the given docstring.
		
		Parameters
		----------
		docstring : str
		    The input docstring.
		replace_names : list of str or None
		    The list of parameter names which arguments should be replaced by
		    ``data[name]`` (if ``data[name]`` does not throw an exception).  If
		    None, replacement is attempted for all arguments.
		
		Returns
		-------
		str
		    The augmented docstring.
	**/
	static public function _add_data_doc(docstring:Dynamic, replace_names:Dynamic):Dynamic;
	static public var _all_deprecated : Dynamic;
	static public function _check_versions():Dynamic;
	static public var _deprecated_ignore_map : Dynamic;
	static public var _deprecated_map : Dynamic;
	static public var _deprecated_remain_as_none : Dynamic;
	/**
		The first time this function is called, attach a `StreamHandler` using the
		same format as `logging.basicConfig` to the Matplotlib root logger.
		
		Return this handler every time this function is called.
	**/
	static public function _ensure_handler():Dynamic;
	static public function _get_config_or_cache_dir(xdg_base_getter:Dynamic):Dynamic;
	/**
		Get the version of some executable that Matplotlib optionally depends on.
		
		.. warning::
		   The list of executables that this function supports is set according to
		   Matplotlib's internal needs, and may change without notice.
		
		Parameters
		----------
		name : str
		    The executable to query.  The following values are currently supported:
		    "dvipng", "gs", "inkscape", "magick", "pdftops".  This list is subject
		    to change without notice.
		
		Returns
		-------
		tuple
		    A namedtuple with fields ``executable`` (`str`) and ``version``
		    (`packaging.Version`, or ``None`` if the version cannot be determined).
		
		Raises
		------
		ExecutableNotFoundError
		    If the executable is not found or older than the oldest version
		    supported by Matplotlib.
		ValueError
		    If the executable is not one that we know how to query.
	**/
	static public function _get_executable_info(name:Dynamic):Dynamic;
	static public function _get_ssl_context():Dynamic;
	/**
		Return the version string used for __version__.
	**/
	static public function _get_version():Dynamic;
	/**
		Return the XDG cache directory, according to the XDG base directory spec:
		
		https://specifications.freedesktop.org/basedir-spec/basedir-spec-latest.html
	**/
	static public function _get_xdg_cache_dir():Dynamic;
	/**
		Return the XDG configuration directory, according to the XDG base
		directory spec:
		
		https://specifications.freedesktop.org/basedir-spec/basedir-spec-latest.html
	**/
	static public function _get_xdg_config_dir():Dynamic;
	static public function _init_tests():Dynamic;
	static public function _label_from_arg(y:Dynamic, default_name:Dynamic):Dynamic;
	static public var _log : Dynamic;
	/**
		Decorator that logs a function's return value, and memoizes that value.
		
		After ::
		
		    @_logged_cached(fmt)
		    def func(): ...
		
		the first call to *func* will log its return value at the DEBUG level using
		%-format string *fmt*, and memoize it; later calls to *func* will directly
		return that value.
	**/
	static public function _logged_cached(fmt:Dynamic, ?func:Dynamic):Dynamic;
	static public function _open_file_or_url(fname:Dynamic):Dynamic;
	/**
		Parse a version string to a namedtuple analogous to sys.version_info.
		
		See:
		https://packaging.pypa.io/en/latest/version.html#packaging.version.parse
		https://docs.python.org/3/library/sys.html#sys.version_info
	**/
	static public function _parse_to_version_info(version_str:Dynamic):Dynamic;
	/**
		A decorator to add a 'data' kwarg to a function.
		
		When applied::
		
		    @_preprocess_data()
		    def func(ax, *args, **kwargs): ...
		
		the signature is modified to ``decorated(ax, *args, data=None, **kwargs)``
		with the following behavior:
		
		- if called with ``data=None``, forward the other arguments to ``func``;
		- otherwise, *data* must be a mapping; for any argument passed in as a
		  string ``name``, replace the argument by ``data[name]`` (if this does not
		  throw an exception), then forward the arguments to ``func``.
		
		In either case, any argument that is a `MappingView` is also converted to a
		list.
		
		Parameters
		----------
		replace_names : list of str or None, default: None
		    The list of parameter names for which lookup into *data* should be
		    attempted. If None, replacement is attempted for all arguments.
		label_namer : str, default: None
		    If set e.g. to "namer" (which must be a kwarg in the function's
		    signature -- not as ``**kwargs``), if the *namer* argument passed in is
		    a (string) key of *data* and no *label* kwarg is passed, then use the
		    (string) value of the *namer* as *label*. ::
		
		        @_preprocess_data(label_namer="foo")
		        def func(foo, label=None): ...
		
		        func("key", data={"key": value})
		        # is equivalent to
		        func.__wrapped__(value, label="key")
	**/
	static public function _preprocess_data(?func:Dynamic, ?replace_names:Dynamic, ?label_namer:Dynamic):Dynamic;
	/**
		Construct a `RcParams` instance from file *fname*.
		
		Unlike `rc_params_from_file`, the configuration class only contains the
		parameters specified in the file (i.e. default values are not filled in).
		
		Parameters
		----------
		fname : path-like
		    The loaded file.
		transform : callable, default: the identity function
		    A function called on each individual line of the file to transform it,
		    before further parsing.
		fail_on_error : bool, default: False
		    Whether invalid entries should result in an exception or a warning.
	**/
	static public function _rc_params_in_file(fname:Dynamic, ?transform:Dynamic, ?fail_on_error:Dynamic):Dynamic;
	/**
		Either returns ``data[value]`` or passes ``data`` back, converts either to
		a sequence.
	**/
	static public function _replacer(data:Dynamic, value:Dynamic):Dynamic;
	static public function checkdep_usetex(s:Dynamic):Dynamic;
	static public function colormaps():Dynamic;
	/**
		Create a `~cycler.Cycler` object much like :func:`cycler.cycler`,
		but includes input validation.
		
		Call signatures::
		
		  cycler(cycler)
		  cycler(label=values[, label2=values2[, ...]])
		  cycler(label, values)
		
		Form 1 copies a given `~cycler.Cycler` object.
		
		Form 2 creates a `~cycler.Cycler` which cycles over one or more
		properties simultaneously. If multiple properties are given, their
		value lists must have the same length.
		
		Form 3 creates a `~cycler.Cycler` for a single property. This form
		exists for compatibility with the original cycler. Its use is
		discouraged in favor of the kwarg form, i.e. ``cycler(label=values)``.
		
		Parameters
		----------
		cycler : Cycler
		    Copy constructor for Cycler.
		
		label : str
		    The property key. Must be a valid `.Artist` property.
		    For example, 'color' or 'linestyle'. Aliases are allowed,
		    such as 'c' for 'color' and 'lw' for 'linewidth'.
		
		values : iterable
		    Finite-length iterable of the property values. These values
		    are validated and will raise a ValueError if invalid.
		
		Returns
		-------
		Cycler
		    A new :class:`~cycler.Cycler` for the given properties.
		
		Examples
		--------
		Creating a cycler for a single property:
		
		>>> c = cycler(color=['red', 'green', 'blue'])
		
		Creating a cycler for simultaneously cycling over multiple properties
		(e.g. red circle, green plus, blue cross):
		
		>>> c = cycler(color=['red', 'green', 'blue'],
		...            marker=['o', '+', 'x'])
	**/
	static public function cycler(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var defaultParams : Dynamic;
	static public var default_test_modules : Dynamic;
	/**
		Return the name of the current backend.
		
		See Also
		--------
		matplotlib.use
	**/
	static public function get_backend():Dynamic;
	/**
		Return the string path of the cache directory.
		
		The procedure used to find the directory is the same as for
		_get_config_dir, except using ``$XDG_CACHE_HOME``/``$HOME/.cache`` instead.
	**/
	static public function get_cachedir():Dynamic;
	/**
		Return the string path of the configuration directory.
		
		The directory is chosen as follows:
		
		1. If the MPLCONFIGDIR environment variable is supplied, choose that.
		2. On Linux, follow the XDG specification and look first in
		   ``$XDG_CONFIG_HOME``, if defined, or ``$HOME/.config``.  On other
		   platforms, choose ``$HOME/.matplotlib``.
		3. If the chosen directory exists and is writable, use that as the
		   configuration directory.
		4. Else, create a temporary directory, and use it as the configuration
		   directory.
	**/
	static public function get_configdir():Dynamic;
	/**
		Return the path to Matplotlib data.
	**/
	static public function get_data_path():Dynamic;
	/**
		Set whether to redraw after every plotting command (e.g. `.pyplot.xlabel`).
	**/
	static public function interactive(b:Dynamic):Dynamic;
	/**
		Return whether to redraw after every plotting command.
		
		.. note::
		
		    This function is only intended for use in backends. End users should
		    use `.pyplot.isinteractive` instead.
	**/
	static public function is_interactive():Dynamic;
	/**
		[*Deprecated*] Return whether *filename* is an http, https, ftp, or file URL path.
		
		Notes
		-----
		.. deprecated:: 3.5
		   
	**/
	static public function is_url(filename:Dynamic):Dynamic;
	/**
		Get the location of the config file.
		
		The file location is determined in the following order
		
		- ``$PWD/matplotlibrc``
		- ``$MATPLOTLIBRC`` if it is not a directory
		- ``$MATPLOTLIBRC/matplotlibrc``
		- ``$MPLCONFIGDIR/matplotlibrc``
		- On Linux,
		    - ``$XDG_CONFIG_HOME/matplotlib/matplotlibrc`` (if ``$XDG_CONFIG_HOME``
		      is defined)
		    - or ``$HOME/.config/matplotlib/matplotlibrc`` (if ``$XDG_CONFIG_HOME``
		      is not defined)
		- On other platforms,
		  - ``$HOME/.matplotlib/matplotlibrc`` if ``$HOME`` is defined
		- Lastly, it looks in ``$MATPLOTLIBDATA/matplotlibrc``, which should always
		  exist.
	**/
	static public function matplotlib_fname():Dynamic;
	/**
		Returns a new subclass of tuple with named fields.
		
		>>> Point = namedtuple('Point', ['x', 'y'])
		>>> Point.__doc__                   # docstring for the new class
		'Point(x, y)'
		>>> p = Point(11, y=22)             # instantiate with positional args or keywords
		>>> p[0] + p[1]                     # indexable like a plain tuple
		33
		>>> x, y = p                        # unpack like a regular tuple
		>>> x, y
		(11, 22)
		>>> p.x + p.y                       # fields also accessible by name
		33
		>>> d = p._asdict()                 # convert to a dictionary
		>>> d['x']
		11
		>>> Point(**d)                      # convert from a dictionary
		Point(x=11, y=22)
		>>> p._replace(x=100)               # _replace() is like str.replace() but targets named fields
		Point(x=100, y=22)
	**/
	static public function namedtuple(typename:Dynamic, field_names:Dynamic, ?rename:Dynamic, ?defaults:Dynamic, ?module:Dynamic):Dynamic;
	/**
		Parse the given version string and return either a :class:`Version` object
		or a :class:`LegacyVersion` object depending on if the given version is
		a valid PEP 440 version or a legacy version.
	**/
	static public function parse_version(version:Dynamic):Dynamic;
	/**
		Set the current `.rcParams`.  *group* is the grouping for the rc, e.g.,
		for ``lines.linewidth`` the group is ``lines``, for
		``axes.facecolor``, the group is ``axes``, and so on.  Group may
		also be a list or tuple of group names, e.g., (*xtick*, *ytick*).
		*kwargs* is a dictionary attribute name/value pairs, e.g.,::
		
		  rc('lines', linewidth=2, color='r')
		
		sets the current `.rcParams` and is equivalent to::
		
		  rcParams['lines.linewidth'] = 2
		  rcParams['lines.color'] = 'r'
		
		The following aliases are available to save typing for interactive users:
		
		=====   =================
		Alias   Property
		=====   =================
		'lw'    'linewidth'
		'ls'    'linestyle'
		'c'     'color'
		'fc'    'facecolor'
		'ec'    'edgecolor'
		'mew'   'markeredgewidth'
		'aa'    'antialiased'
		=====   =================
		
		Thus you could abbreviate the above call as::
		
		      rc('lines', lw=2, c='r')
		
		Note you can use python's kwargs dictionary facility to store
		dictionaries of default parameters.  e.g., you can customize the
		font rc as follows::
		
		  font = {'family' : 'monospace',
		          'weight' : 'bold',
		          'size'   : 'larger'}
		  rc('font', **font)  # pass in the font dict as kwargs
		
		This enables you to easily switch between several configurations.  Use
		``matplotlib.style.use('default')`` or :func:`~matplotlib.rcdefaults` to
		restore the default `.rcParams` after changes.
		
		Notes
		-----
		Similar functionality is available by using the normal dict interface, i.e.
		``rcParams.update({"lines.linewidth": 2, ...})`` (but ``rcParams.update``
		does not support abbreviations or grouping).
	**/
	static public function rc(group:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var rcParams : Dynamic;
	static public var rcParamsDefault : Dynamic;
	static public var rcParamsOrig : Dynamic;
	/**
		Return a context manager for temporarily changing rcParams.
		
		Parameters
		----------
		rc : dict
		    The rcParams to temporarily set.
		fname : str or path-like
		    A file with Matplotlib rc settings. If both *fname* and *rc* are given,
		    settings from *rc* take precedence.
		
		See Also
		--------
		:ref:`customizing-with-matplotlibrc-files`
		
		Examples
		--------
		Passing explicit values via a dict::
		
		    with mpl.rc_context({'interactive': False}):
		        fig, ax = plt.subplots()
		        ax.plot(range(3), range(3))
		        fig.savefig('example.png')
		        plt.close(fig)
		
		Loading settings from a file::
		
		     with mpl.rc_context(fname='print.rc'):
		         plt.plot(x, y)  # uses 'print.rc'
	**/
	static public function rc_context(?rc:Dynamic, ?fname:Dynamic):Dynamic;
	/**
		Update `.rcParams` from file.
		
		Style-blacklisted `.rcParams` (defined in
		`matplotlib.style.core.STYLE_BLACKLIST`) are not updated.
		
		Parameters
		----------
		fname : str or path-like
		    A file with Matplotlib rc settings.
		
		use_default_template : bool
		    If True, initialize with default parameters before updating with those
		    in the given file. If False, the current configuration persists
		    and only the parameters specified in the file are updated.
	**/
	static public function rc_file(fname:Dynamic, ?use_default_template:Dynamic):Dynamic;
	/**
		Restore the `.rcParams` from the original rc file loaded by Matplotlib.
		
		Style-blacklisted `.rcParams` (defined in
		`matplotlib.style.core.STYLE_BLACKLIST`) are not updated.
	**/
	static public function rc_file_defaults():Dynamic;
	/**
		Construct a `RcParams` instance from the default Matplotlib rc file.
	**/
	static public function rc_params(?fail_on_error:Dynamic):Dynamic;
	/**
		Construct a `RcParams` from file *fname*.
		
		Parameters
		----------
		fname : str or path-like
		    A file with Matplotlib rc settings.
		fail_on_error : bool
		    If True, raise an error when the parser fails to convert a parameter.
		use_default_template : bool
		    If True, initialize with default parameters before updating with those
		    in the given file. If False, the configuration class only contains the
		    parameters specified in the file. (Useful for updating dicts.)
	**/
	static public function rc_params_from_file(fname:Dynamic, ?fail_on_error:Dynamic, ?use_default_template:Dynamic):Dynamic;
	/**
		Restore the `.rcParams` from Matplotlib's internal default style.
		
		Style-blacklisted `.rcParams` (defined in
		`matplotlib.style.core.STYLE_BLACKLIST`) are not updated.
		
		See Also
		--------
		matplotlib.rc_file_defaults
		    Restore the `.rcParams` from the rc file originally loaded by
		    Matplotlib.
		matplotlib.style.use
		    Use a specific style file.  Call ``style.use('default')`` to restore
		    the default style.
	**/
	static public function rcdefaults():Dynamic;
	/**
		Convert dictview objects to list. Other inputs are returned unchanged.
	**/
	static public function sanitize_sequence(data:Dynamic):Dynamic;
	/**
		Set Matplotlib's root logger and root logger handler level, creating
		the handler if it does not exist yet.
		
		Typically, one should call ``set_loglevel("info")`` or
		``set_loglevel("debug")`` to get additional debugging information.
		
		Parameters
		----------
		level : {"notset", "debug", "info", "warning", "error", "critical"}
		    The log level of the handler.
		
		Notes
		-----
		The first time this function is called, an additional handler is attached
		to Matplotlib's root handler; this handler is reused every time and this
		function simply manipulates the logger and handler's level.
	**/
	static public function set_loglevel(level:Dynamic):Dynamic;
	/**
		[*Deprecated*] Run the matplotlib test suite.
		
		Notes
		-----
		.. deprecated:: 3.5
		   
	**/
	static public function test(?verbosity:Dynamic, ?coverage:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Select the backend used for rendering and GUI integration.
		
		Parameters
		----------
		backend : str
		    The backend to switch to.  This can either be one of the standard
		    backend names, which are case-insensitive:
		
		    - interactive backends:
		      GTK3Agg, GTK3Cairo, GTK4Agg, GTK4Cairo, MacOSX, nbAgg, QtAgg,
		      QtCairo, TkAgg, TkCairo, WebAgg, WX, WXAgg, WXCairo, Qt5Agg, Qt5Cairo
		
		    - non-interactive backends:
		      agg, cairo, pdf, pgf, ps, svg, template
		
		    or a string of the form: ``module://my.module.name``.
		
		    Switching to an interactive backend is not possible if an unrelated
		    event loop has already been started (e.g., switching to GTK3Agg if a
		    TkAgg window has already been opened).  Switching to a non-interactive
		    backend is always possible.
		
		force : bool, default: True
		    If True (the default), raise an `ImportError` if the backend cannot be
		    set up (either because it fails to import, or because an incompatible
		    GUI interactive framework is already running); if False, silently
		    ignore the failure.
		
		See Also
		--------
		:ref:`backends`
		matplotlib.get_backend
	**/
	static public function use(backend:Dynamic, ?force:Dynamic):Dynamic;
	static public function validate_backend(s:Dynamic):Dynamic;
}