/* This file is generated, do not edit! */
package matplotlib;
@:pythonImport("matplotlib") extern class Matplotlib_Module {
	static public var URL_REGEX : Dynamic;
	static public var _DATA_DOC_APPENDIX : Dynamic;
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
	static public var __version__numpy__ : Dynamic;
	static public var __warningregistry__ : Dynamic;
	/**
		Add documentation for a *data* field to the given docstring.
		
		Parameters
		----------
		docstring : str
		    The input docstring.
		replace_names : list of strings or None
		    The list of parameter names which arguments should be replaced by
		    `data[name]`. If None, all arguments are replaced if they are
		    included in `data`.
		replace_all_args : bool
		    If True, all arguments in *args get replaced, even if they are not
		    in replace_names.
		
		Returns
		-------
		    The augmented docstring.
	**/
	static public function _add_data_doc(docstring:Dynamic, replace_names:Dynamic, replace_all_args:Dynamic):Dynamic;
	static public var _all_deprecated : Dynamic;
	/**
		If the config directory can not be created, create a temporary directory.
	**/
	static public function _create_tmp_config_dir():Dynamic;
	static public var _deprecated_ignore_map : Dynamic;
	static public var _deprecated_map : Dynamic;
	static public var _deprecated_remain_as_none : Dynamic;
	static public var _error_details_fmt : Dynamic;
	static public function _get_config_or_cache_dir(xdg_base:Dynamic):Dynamic;
	/**
		get the path to matplotlib data
	**/
	static public function _get_data_path():Dynamic;
	/**
		Returns the XDG cache directory, according to the `XDG
		base directory spec
		<http://standards.freedesktop.org/basedir-spec/basedir-spec-latest.html>`_.
	**/
	static public function _get_xdg_cache_dir():Dynamic;
	/**
		Returns the XDG configuration directory, according to the `XDG
		base directory spec
		<http://standards.freedesktop.org/basedir-spec/basedir-spec-latest.html>`_.
	**/
	static public function _get_xdg_config_dir():Dynamic;
	static public function _init_tests():Dynamic;
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
		Check for --verbose-LEVEL type command line arguments and
		set logging level appropriately.
	**/
	static public function _parse_commandline():Dynamic;
	/**
		A decorator to add a 'data' kwarg to any a function.  The signature
		of the input function must include the ax argument at the first position ::
		
		   def foo(ax, *args, **kwargs)
		
		so this is suitable for use with Axes methods.
		
		Parameters
		----------
		replace_names : list of strings, optional, default: None
		    The list of parameter names which arguments should be replaced by
		    `data[name]`. If None, all arguments are replaced if they are
		    included in `data`.
		replace_all_args : bool, default: False
		    If True, all arguments in *args get replaced, even if they are not
		    in replace_names.
		label_namer : string, optional, default: None
		    The name of the parameter which argument should be used as label, if
		    label is not set. If None, the label keyword argument is not set.
		positional_parameter_names : list of strings or callable, optional
		    The full list of positional parameter names (excluding an explicit
		    `ax`/'self' argument at the first place and including all possible
		    positional parameter in `*args`), in the right order. Can also include
		    all other keyword parameter. Only needed if the wrapped function does
		    contain `*args` and (replace_names is not None or replace_all_args is
		    False). If it is a callable, it will be called with the actual
		    tuple of *args and the data and should return a list like
		    above.
		    NOTE: callables should only be used when the names and order of *args
		    can only be determined at runtime. Please use list of names
		    when the order and names of *args is clear before runtime!
		
		.. note:: decorator also converts MappingView input data to list.
	**/
	static public function _preprocess_data(?replace_names:Dynamic, ?replace_all_args:Dynamic, ?label_namer:Dynamic, ?positional_parameter_names:Dynamic):Dynamic;
	/**
		Return :class:`matplotlib.RcParams` from the contents of the given file.
		
		Unlike `rc_params_from_file`, the configuration class only contains the
		parameters specified in the file (i.e. default values are not filled in).
	**/
	static public function _rc_params_in_file(fname:Dynamic, ?fail_on_error:Dynamic):Dynamic;
	/**
		Either returns data[key] or passes data back. Also
		converts input data to a sequence as needed.
	**/
	static public function _replacer(data:Dynamic, key:Dynamic):Dynamic;
	/**
		Use a --verbose-LEVEL level to set the logging level:
	**/
	static public function _set_logger_verbose_level(?level_str:Dynamic, ?file_str:Dynamic):Dynamic;
	static public var _verbose_msg : Dynamic;
	static public function checkdep_dvipng():Dynamic;
	static public function checkdep_ghostscript():Dynamic;
	static public function checkdep_inkscape():Dynamic;
	static public function checkdep_pdftops():Dynamic;
	static public function checkdep_ps_distiller(s:Dynamic):Dynamic;
	static public function checkdep_usetex(s:Dynamic):Dynamic;
	/**
		return True if a is greater than or equal to b
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
		Remove excess indentation from docstring *s*.
		
		Discards any leading blank lines, then removes up to n whitespace
		characters from each line, where n is the number of leading
		whitespace characters in the first line. It differs from
		textwrap.dedent in its deletion of leading blank lines and its use
		of the first non-blank line to determine the indentation.
		
		It is also faster in most cases.
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
	static public function get_label(y:Dynamic, default_name:Dynamic):Dynamic;
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
		
		- `$PWD/matplotlibrc`
		
		- `$MATPLOTLIBRC` if it is a file (or a named pipe, which can be created
		  e.g. by process substitution)
		
		- `$MATPLOTLIBRC/matplotlibrc`
		
		- `$MPLCONFIGDIR/matplotlibrc`
		
		- On Linux,
		
		      - `$XDG_CONFIG_HOME/matplotlib/matplotlibrc` (if
		        $XDG_CONFIG_HOME is defined)
		
		      - or `$HOME/.config/matplotlib/matplotlibrc` (if
		        $XDG_CONFIG_HOME is not defined)
		
		- On other platforms,
		
		     - `$HOME/.matplotlib/matplotlibrc` if `$HOME` is defined.
		
		- Lastly, it looks in `$MATPLOTLIBDATA/matplotlibrc` for a
		  system-defined copy.
	**/
	static public function matplotlib_fname():Dynamic;
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
	**/
	static public function rc_file(fname:Dynamic):Dynamic;
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
		rc_file_defaults :
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
		run the matplotlib test suite
	**/
	static public function test(?verbosity:Dynamic, ?coverage:Dynamic, ?switch_backend_warn:Dynamic, ?recursionlimit:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return true if focus maintenance under TkAgg on win32 is on.
		This currently works only for python.exe and IPython.exe.
		Both IDLE and Pythonwin.exe fail badly when tk_window_focus is on.
	**/
	static public function tk_window_focus():Dynamic;
	/**
		Set the matplotlib backend to one of the known backends.
		
		Parameters
		----------
		arg : str
		    The backend to switch to.  This can either be one of the
		    'standard' backend names:
		
		    - interactive backends:
		      GTK3Agg, GTK3Cairo, MacOSX, nbAgg,
		      Qt4Agg, Qt4Cairo, Qt5Agg, Qt5Cairo,
		      TkAgg, TkCairo, WebAgg, WX, WXAgg, WXCairo
		
		    - non-interactive backends:
		      agg, cairo, pdf, pgf, ps, svg, template
		
		    or a string of the form: ``module://my.module.name``.
		
		    Note: Standard backend names are case-insensitive here.
		
		warn : bool, optional
		    If True, warn if this is called after pyplot has been imported
		    and a backend is set up.
		
		    defaults to False.
		
		force : bool, optional
		    If True, attempt to switch the backend.   An ImportError is raised if
		    an interactive backend is selected, but another interactive
		    backend has already started.  This defaults to True.
		
		See Also
		--------
		:ref:`backends`
		matplotlib.get_backend
	**/
	static public function use(arg:Dynamic, ?warn:Dynamic, ?force:Dynamic):Dynamic;
	static public function validate_backend(s:Dynamic):Dynamic;
	static public var verbose : Dynamic;
}