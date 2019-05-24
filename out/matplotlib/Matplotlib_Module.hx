/* This file is generated, do not edit! */
package matplotlib;
@:pythonImport("matplotlib") extern class Matplotlib_Module {
	static public var URL_REGEX : Dynamic;
	static public var _DATA_DOC_APPENDIX : Dynamic;
	static public var _DATA_DOC_TITLE : Dynamic;
	static public var __bibtex__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var __version__ : Dynamic;
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
		    The augmented docstring.
	**/
	static public function _add_data_doc(docstring:Dynamic, replace_names:Dynamic):Dynamic;
	static public var _all_deprecated : Dynamic;
	static public function _check_versions():Dynamic;
	/**
		If the config or cache directory cannot be created, create a temporary one.
	**/
	static public function _create_tmp_config_or_cache_dir():Dynamic;
	static public var _deprecated_ignore_map : Dynamic;
	static public var _deprecated_map : Dynamic;
	static public var _deprecated_remain_as_none : Dynamic;
	/**
		The first time this function is called, attach a `StreamHandler` using the
		same format as `logging.basicConfig` to the Matplotlib root logger.
		
		Return this handler every time this function is called.
	**/
	static public function _ensure_handler():Dynamic;
	static public var _error_details_fmt : Dynamic;
	static public function _get_config_or_cache_dir(xdg_base:Dynamic):Dynamic;
	/**
		get the path to matplotlib data
	**/
	static public function _get_data_path():Dynamic;
	/**
		Get the version of some executable that Matplotlib optionally depends on.
		
		.. warning:
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
		If the executable is found, a namedtuple with fields ``executable`` (`str`)
		and ``version`` (`distutils.version.LooseVersion`, or ``None`` if the
		version cannot be determined).
		
		Raises
		------
		FileNotFoundError
		    If the executable is not found or older than the oldest version
		    supported by Matplotlib.
		ValueError
		    If the executable is not one that we know how to query.
	**/
	static public function _get_executable_info(name:Dynamic):Dynamic;
	/**
		Return the XDG cache directory, according to the `XDG
		base directory spec
		<http://standards.freedesktop.org/basedir-spec/basedir-spec-latest.html>`_.
	**/
	static public function _get_xdg_cache_dir():Dynamic;
	/**
		Return the XDG configuration directory, according to the `XDG
		base directory spec
		<http://standards.freedesktop.org/basedir-spec/basedir-spec-latest.html>`_.
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
		A decorator to add a 'data' kwarg to a function.
		
		::
		    @_preprocess_data()
		    def func(ax, *args, **kwargs): ...
		
		is a function with signature ``decorated(ax, *args, data=None, **kwargs)``
		with the following behavior:
		
		- if called with ``data=None``, forward the other arguments to ``func``;
		- otherwise, *data* must be a mapping; for any argument passed in as a
		  string ``name``, replace the argument by ``data[name]`` (if this does not
		  throw an exception), then forward the arguments to ``func``.
		
		In either case, any argument that is a `MappingView` is also converted to a
		list.
		
		Parameters
		----------
		replace_names : list of str or None, optional, default: None
		    The list of parameter names for which lookup into *data* should be
		    attempted. If None, replacement is attempted for all arguments.
		label_namer : string, optional, default: None
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
		Return :class:`matplotlib.RcParams` from the contents of the given file.
		
		Unlike `rc_params_from_file`, the configuration class only contains the
		parameters specified in the file (i.e. default values are not filled in).
	**/
	static public function _rc_params_in_file(fname:Dynamic, ?fail_on_error:Dynamic):Dynamic;
	/**
		Either returns ``data[value]`` or passes ``data`` back, converts either to
		a sequence.
	**/
	static public function _replacer(data:Dynamic, value:Dynamic):Dynamic;
	/**
		[*Deprecated*] 
		
		Notes
		-----
		.. deprecated:: 3.1
		   \ 
	**/
	static public function checkdep_dvipng():Dynamic;
	/**
		[*Deprecated*] 
		
		Notes
		-----
		.. deprecated:: 3.1
		   \ 
	**/
	static public function checkdep_ghostscript():Dynamic;
	/**
		[*Deprecated*] 
		
		Notes
		-----
		.. deprecated:: 3.1
		   \ 
	**/
	static public function checkdep_inkscape():Dynamic;
	/**
		[*Deprecated*] 
		
		Notes
		-----
		.. deprecated:: 3.1
		   \ 
	**/
	static public function checkdep_pdftops():Dynamic;
	static public function checkdep_ps_distiller(s:Dynamic):Dynamic;
	static public function checkdep_usetex(s:Dynamic):Dynamic;
	/**
		Return whether version *a* is greater than or equal to version *b*.
	**/
	static public function compare_versions(a:Dynamic, b:Dynamic):Dynamic;
	/**
		Creates a `~cycler.Cycler` object much like :func:`cycler.cycler`,
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
		cycler : Cycler
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
		Return the location of the cache directory.
		
		The procedure used to find the directory is the same as for
		_get_config_dir, except using `$XDG_CACHE_HOME`/`~/.cache` instead.
	**/
	static public function get_cachedir():Dynamic;
	/**
		Return the string representing the configuration directory.
		
		The directory is chosen as follows:
		
		1. If the MPLCONFIGDIR environment variable is supplied, choose that.
		2a. On Linux, follow the XDG specification and look first in
		    `$XDG_CONFIG_HOME`, if defined, or `$HOME/.config`.
		2b. On other platforms, choose `$HOME/.matplotlib`.
		3. If the chosen directory exists and is writable, use that as the
		   configuration directory.
		4. If possible, create a temporary directory, and use it as the
		   configuration directory.
		5. A writable directory could not be found or created; return None.
	**/
	static public function get_configdir():Dynamic;
	static public function get_data_path():Dynamic;
	/**
		Return the user's home directory.
		
		If the user's home directory cannot be found, return None.
	**/
	static public function get_home():Dynamic;
	/**
		[*Deprecated*] 
		
		Notes
		-----
		.. deprecated:: 3.1
		   \ 
	**/
	static public function get_label(y:Dynamic, default_name:Dynamic):Dynamic;
	/**
		[*Deprecated*] 
		
		Notes
		-----
		.. deprecated:: 3.1
		   \ 
	**/
	static public function get_py2exe_datafiles():Dynamic;
	/**
		Set interactive mode to boolean b.
		
		If b is True, then draw after every plotting command, e.g., after xlabel
	**/
	static public function interactive(b:Dynamic):Dynamic;
	/**
		Return true if plot mode is interactive
	**/
	static public function is_interactive():Dynamic;
	/**
		Return True if string is an http, ftp, or file URL path.
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
	static public function namedtuple(typename:Dynamic, field_names:Dynamic, ?verbose:Dynamic, ?rename:Dynamic, ?module:Dynamic):Dynamic;
	/**
		Set the current rc params.  *group* is the grouping for the rc, e.g.,
		for ``lines.linewidth`` the group is ``lines``, for
		``axes.facecolor``, the group is ``axes``, and so on.  Group may
		also be a list or tuple of group names, e.g., (*xtick*, *ytick*).
		*kwargs* is a dictionary attribute name/value pairs, e.g.,::
		
		  rc('lines', linewidth=2, color='r')
		
		sets the current rc params and is equivalent to::
		
		  rcParams['lines.linewidth'] = 2
		  rcParams['lines.color'] = 'r'
		
		The following aliases are available to save typing for interactive
		users:
		
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
		
		Thus you could abbreviate the above rc command as::
		
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
		restore the default rc params after changes.
	**/
	static public function rc(group:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var rcParams : Dynamic;
	static public var rcParamsDefault : Dynamic;
	static public var rcParamsOrig : Dynamic;
	/**
		Update rc params from file.
		
		Style-blacklisted rc params (defined in
		`matplotlib.style.core.STYLE_BLACKLIST`) are not updated.
		
		Parameters
		----------
		fname : str
		    Name of file parsed for matplotlib settings.
		
		use_default_template : bool
		    If True, initialize with default parameters before updating with those
		    in the given file. If False, the current configuration persists
		    and only the parameters specified in the file are updated.
	**/
	static public function rc_file(fname:Dynamic, ?use_default_template:Dynamic):Dynamic;
	/**
		Restore the rc params from the original rc file loaded by Matplotlib.
		
		Style-blacklisted rc params (defined in
		`matplotlib.style.core.STYLE_BLACKLIST`) are not updated.
	**/
	static public function rc_file_defaults():Dynamic;
	/**
		Return a :class:`matplotlib.RcParams` instance from the
		default matplotlib rc file.
	**/
	static public function rc_params(?fail_on_error:Dynamic):Dynamic;
	/**
		Return :class:`matplotlib.RcParams` from the contents of the given file.
		
		Parameters
		----------
		fname : str
		    Name of file parsed for matplotlib settings.
		fail_on_error : bool
		    If True, raise an error when the parser fails to convert a parameter.
		use_default_template : bool
		    If True, initialize with default parameters before updating with those
		    in the given file. If False, the configuration class only contains the
		    parameters specified in the file. (Useful for updating dicts.)
	**/
	static public function rc_params_from_file(fname:Dynamic, ?fail_on_error:Dynamic, ?use_default_template:Dynamic):Dynamic;
	/**
		Restore the rc params from Matplotlib's internal default style.
		
		Style-blacklisted rc params (defined in
		`matplotlib.style.core.STYLE_BLACKLIST`) are not updated.
		
		See Also
		--------
		rc_file_defaults
		    Restore the rc params from the rc file originally loaded by Matplotlib.
		matplotlib.style.use :
		    Use a specific style file.  Call ``style.use('default')`` to restore
		    the default style.
	**/
	static public function rcdefaults():Dynamic;
	/**
		Converts dictview object to list
	**/
	static public function sanitize_sequence(data:Dynamic):Dynamic;
	/**
		Sets the Matplotlib's root logger and root logger handler level, creating
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
		Run the matplotlib test suite.
	**/
	static public function test(?verbosity:Dynamic, ?coverage:Dynamic, ?switch_backend_warn:Dynamic, ?recursionlimit:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		[*Deprecated*] Return true if focus maintenance under TkAgg on win32 is on.
		This currently works only for python.exe and IPython.exe.
		Both IDLE and Pythonwin.exe fail badly when tk_window_focus is on.
		
		Notes
		-----
		.. deprecated:: 3.1
		   
	**/
	static public function tk_window_focus():Dynamic;
	/**
		Select the backend used for rendering and GUI integration.
		
		Parameters
		----------
		backend : str
		    The backend to switch to.  This can either be one of the standard
		    backend names, which are case-insensitive:
		
		    - interactive backends:
		      GTK3Agg, GTK3Cairo, MacOSX, nbAgg,
		      Qt4Agg, Qt4Cairo, Qt5Agg, Qt5Cairo,
		      TkAgg, TkCairo, WebAgg, WX, WXAgg, WXCairo
		
		    - non-interactive backends:
		      agg, cairo, pdf, pgf, ps, svg, template
		
		    or a string of the form: ``module://my.module.name``.
		
		warn : bool, optional, default: False
		    If True and not *force*, warn that the call will have no effect if
		    this is called after pyplot has been imported and a backend is set up.
		
		
		force : bool, optional, default: True
		    If True, attempt to switch the backend.   An ImportError is raised if
		    an interactive backend is selected, but another interactive
		    backend has already started.
		
		See Also
		--------
		:ref:`backends`
		matplotlib.get_backend
	**/
	static public function use(backend:Dynamic, ?warn:Dynamic, ?force:Dynamic):Dynamic;
	static public function validate_backend(s:Dynamic):Dynamic;
}