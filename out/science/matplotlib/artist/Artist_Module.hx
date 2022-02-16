/* This file is generated, do not edit! */
package matplotlib.artist;
@:pythonImport("matplotlib.artist") extern class Artist_Module {
	static public var _UNSET : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Decorator for Artist.draw method. Needed on the outermost artist, i.e.
		Figure, to finish up if the render is still in rasterized mode.
	**/
	static public function _finalize_rasterization(draw:Dynamic):Dynamic;
	static public var _log : Dynamic;
	static public function _stale_axes_callback(self:Dynamic, val:Dynamic):Dynamic;
	/**
		Decorator for Artist.draw method. Provides routines
		that run before and after the draw call. The before and after functions
		are useful for changing artist-dependent renderer attributes or making
		other setup function calls, such as starting and flushing a mixed-mode
		renderer.
	**/
	static public function allow_rasterization(draw:Dynamic):Dynamic;
	/**
		Return the value of an `.Artist`'s *property*, or print all of them.
		
		Parameters
		----------
		obj : `.Artist`
		    The queried artist; e.g., a `.Line2D`, a `.Text`, or an `~.axes.Axes`.
		
		property : str or None, default: None
		    If *property* is 'somename', this function returns
		    ``obj.get_somename()``.
		
		    If it's None (or unset), it *prints* all gettable properties from
		    *obj*.  Many properties have aliases for shorter typing, e.g. 'lw' is
		    an alias for 'linewidth'.  In the output, aliases and full property
		    names will be listed as:
		
		      property or alias = value
		
		    e.g.:
		
		      linewidth or lw = 2
		
		See Also
		--------
		setp
	**/
	static public function get(obj:Dynamic, ?property:Dynamic):Dynamic;
	/**
		Return the value of an `.Artist`'s *property*, or print all of them.
		
		Parameters
		----------
		obj : `.Artist`
		    The queried artist; e.g., a `.Line2D`, a `.Text`, or an `~.axes.Axes`.
		
		property : str or None, default: None
		    If *property* is 'somename', this function returns
		    ``obj.get_somename()``.
		
		    If it's None (or unset), it *prints* all gettable properties from
		    *obj*.  Many properties have aliases for shorter typing, e.g. 'lw' is
		    an alias for 'linewidth'.  In the output, aliases and full property
		    names will be listed as:
		
		      property or alias = value
		
		    e.g.:
		
		      linewidth or lw = 2
		
		See Also
		--------
		setp
	**/
	static public function getp(obj:Dynamic, ?property:Dynamic):Dynamic;
	/**
		Inspect an `~matplotlib.artist.Artist` class (using `.ArtistInspector`) and
		return information about its settable properties and their current values.
		
		Parameters
		----------
		artist : `~matplotlib.artist.Artist` or an iterable of `Artist`\s
		
		Returns
		-------
		str
		    The settable properties of *artist*, as plain text if
		    :rc:`docstring.hardcopy` is False and as a rst table (intended for
		    use in Sphinx) if it is True.
	**/
	static public function kwdoc(artist:Dynamic):Dynamic;
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
		Set one or more properties on an `.Artist`, or list allowed values.
		
		Parameters
		----------
		obj : `.Artist` or list of `.Artist`
		    The artist(s) whose properties are being set or queried.  When setting
		    properties, all artists are affected; when querying the allowed values,
		    only the first instance in the sequence is queried.
		
		    For example, two lines can be made thicker and red with a single call:
		
		    >>> x = arange(0, 1, 0.01)
		    >>> lines = plot(x, sin(2*pi*x), x, sin(4*pi*x))
		    >>> setp(lines, linewidth=2, color='r')
		
		file : file-like, default: `sys.stdout`
		    Where `setp` writes its output when asked to list allowed values.
		
		    >>> with open('output.log') as file:
		    ...     setp(line, file=file)
		
		    The default, ``None``, means `sys.stdout`.
		
		*args, **kwargs
		    The properties to set.  The following combinations are supported:
		
		    - Set the linestyle of a line to be dashed:
		
		      >>> line, = plot([1, 2, 3])
		      >>> setp(line, linestyle='--')
		
		    - Set multiple properties at once:
		
		      >>> setp(line, linewidth=2, color='r')
		
		    - List allowed values for a line's linestyle:
		
		      >>> setp(line, 'linestyle')
		      linestyle: {'-', '--', '-.', ':', '', (offset, on-off-seq), ...}
		
		    - List all properties that can be set, and their allowed values:
		
		      >>> setp(line)
		      agg_filter: a filter function, ...
		      [long output listing omitted]
		
		    `setp` also supports MATLAB style string/value pairs.  For example, the
		    following are equivalent:
		
		    >>> setp(lines, 'linewidth', 2, 'color', 'r')  # MATLAB style
		    >>> setp(lines, linewidth=2, color='r')        # Python style
		
		See Also
		--------
		getp
	**/
	static public function setp(obj:Dynamic, ?args:python.VarArgs<Dynamic>, ?file:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Decorator factory to apply update_wrapper() to a wrapper function
		
		Returns a decorator that invokes update_wrapper() with the decorated
		function as the wrapper argument and the arguments to wraps() as the
		remaining arguments. Default arguments are as for update_wrapper().
		This is a convenience function to simplify applying partial() to
		update_wrapper().
	**/
	static public function wraps(wrapped:Dynamic, ?assigned:Dynamic, ?updated:Dynamic):Dynamic;
}