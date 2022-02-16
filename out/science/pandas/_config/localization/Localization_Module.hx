/* This file is generated, do not edit! */
package pandas._config.localization;
@:pythonImport("pandas._config.localization") extern class Localization_Module {
	/**
		Callable type; Callable[[int], str] is a function of (int) -> str.
		
		The subscription syntax must always be used with exactly two
		values: the argument list and the return type.  The argument list
		must be a list of types or ellipsis; the return type must be a single type.
		
		There is no syntax to indicate optional or keyword arguments,
		such function types are rarely used as callback types.
	**/
	static public function Callable(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Iterator(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _default_locale_getter():Dynamic;
	/**
		Return a list of normalized locales that do not throw an ``Exception``
		when set.
		
		Parameters
		----------
		locales : str
		    A string where each locale is separated by a newline.
		normalize : bool
		    Whether to call ``locale.normalize`` on each locale.
		
		Returns
		-------
		valid_locales : list
		    A list of valid locales.
	**/
	static public function _valid_locales(locales:Dynamic, normalize:Dynamic):Array<Dynamic>;
	static public var annotations : Dynamic;
	/**
		Check to see if we can set a locale, and subsequently get the locale,
		without raising an Exception.
		
		Parameters
		----------
		lc : str
		    The locale to attempt to set.
		lc_var : int, default `locale.LC_ALL`
		    The category of the locale being set.
		
		Returns
		-------
		bool
		    Whether the passed locale can be set
	**/
	static public function can_set_locale(lc:Dynamic, ?lc_var:Dynamic):Dynamic;
	/**
		@contextmanager decorator.
		
		Typical usage:
		
		    @contextmanager
		    def some_generator(<arguments>):
		        <setup>
		        try:
		            yield <value>
		        finally:
		            <cleanup>
		
		This makes this:
		
		    with some_generator(<arguments>) as <variable>:
		        <body>
		
		equivalent to this:
		
		    <setup>
		    try:
		        <variable> = <value>
		        <body>
		    finally:
		        <cleanup>
	**/
	static public function contextmanager(func:Dynamic):Dynamic;
	/**
		Get all the locales that are available on the system.
		
		Parameters
		----------
		prefix : str
		    If not ``None`` then return only those locales with the prefix
		    provided. For example to get all English language locales (those that
		    start with ``"en"``), pass ``prefix="en"``.
		normalize : bool
		    Call ``locale.normalize`` on the resulting list of available locales.
		    If ``True``, only locales that can be set without throwing an
		    ``Exception`` are returned.
		locale_getter : callable
		    The function to use to retrieve the current locales. This should return
		    a string with each locale separated by a newline character.
		
		Returns
		-------
		locales : list of strings
		    A list of locale strings that can be set with ``locale.setlocale()``.
		    For example::
		
		        locale.setlocale(locale.LC_ALL, locale_string)
		
		On error will return None (no locale available, e.g. Windows)
	**/
	static public function get_locales(?prefix:Dynamic, ?normalize:Dynamic, ?locale_getter:Dynamic):Dynamic;
	static public var options : Dynamic;
	/**
		Context manager for temporarily setting a locale.
		
		Parameters
		----------
		new_locale : str or tuple
		    A string of the form <language_country>.<encoding>. For example to set
		    the current locale to US English with a UTF8 encoding, you would pass
		    "en_US.UTF-8".
		lc_var : int, default `locale.LC_ALL`
		    The category of the locale being set.
		
		Notes
		-----
		This is useful when you want to run a particular block of code under a
		particular locale, without globally setting the locale. This probably isn't
		thread-safe.
	**/
	static public function set_locale(new_locale:Dynamic, ?lc_var:Dynamic):Dynamic;
}