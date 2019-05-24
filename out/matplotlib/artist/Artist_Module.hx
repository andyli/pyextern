/* This file is generated, do not edit! */
package matplotlib.artist;
@:pythonImport("matplotlib.artist") extern class Artist_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
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
		Return the value of object's property.  *property* is an optional string
		for the property you want to return
		
		Example usage::
		
		    getp(obj)  # get all the object properties
		    getp(obj, 'linestyle')  # get the linestyle property
		
		*obj* is a :class:`Artist` instance, e.g.,
		:class:`~matplotlib.lines.Line2D` or an instance of a
		:class:`~matplotlib.axes.Axes` or :class:`matplotlib.text.Text`.
		If the *property* is 'somename', this function returns
		
		  obj.get_somename()
		
		:func:`getp` can be used to query all the gettable properties with
		``getp(obj)``. Many properties have aliases for shorter typing, e.g.
		'lw' is an alias for 'linewidth'.  In the output, aliases and full
		property names will be listed as:
		
		  property or alias = value
		
		e.g.:
		
		  linewidth or lw = 2
	**/
	static public function get(obj:Dynamic, ?property:Dynamic):Dynamic;
	/**
		Return the value of object's property.  *property* is an optional string
		for the property you want to return
		
		Example usage::
		
		    getp(obj)  # get all the object properties
		    getp(obj, 'linestyle')  # get the linestyle property
		
		*obj* is a :class:`Artist` instance, e.g.,
		:class:`~matplotlib.lines.Line2D` or an instance of a
		:class:`~matplotlib.axes.Axes` or :class:`matplotlib.text.Text`.
		If the *property* is 'somename', this function returns
		
		  obj.get_somename()
		
		:func:`getp` can be used to query all the gettable properties with
		``getp(obj)``. Many properties have aliases for shorter typing, e.g.
		'lw' is an alias for 'linewidth'.  In the output, aliases and full
		property names will be listed as:
		
		  property or alias = value
		
		e.g.:
		
		  linewidth or lw = 2
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
		string
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
	static public function namedtuple(typename:Dynamic, field_names:Dynamic, ?verbose:Dynamic, ?rename:Dynamic, ?module:Dynamic):Dynamic;
	static public var rcParams : Dynamic;
	/**
		Set a property on an artist object.
		
		matplotlib supports the use of :func:`setp` ("set property") and
		:func:`getp` to set and get object properties, as well as to do
		introspection on the object.  For example, to set the linestyle of a
		line to be dashed, you can do::
		
		  >>> line, = plot([1,2,3])
		  >>> setp(line, linestyle='--')
		
		If you want to know the valid types of arguments, you can provide
		the name of the property you want to set without a value::
		
		  >>> setp(line, 'linestyle')
		      linestyle: [ '-' | '--' | '-.' | ':' | 'steps' | 'None' ]
		
		If you want to see all the properties that can be set, and their
		possible values, you can do::
		
		  >>> setp(line)
		      ... long output listing omitted
		
		You may specify another output file to `setp` if `sys.stdout` is not
		acceptable for some reason using the `file` keyword-only argument::
		
		  >>> with fopen('output.log') as f:
		  >>>     setp(line, file=f)
		
		:func:`setp` operates on a single instance or a iterable of
		instances. If you are in query mode introspecting the possible
		values, only the first instance in the sequence is used. When
		actually setting values, all the instances will be set.  e.g.,
		suppose you have a list of two lines, the following will make both
		lines thicker and red::
		
		  >>> x = arange(0,1.0,0.01)
		  >>> y1 = sin(2*pi*x)
		  >>> y2 = sin(4*pi*x)
		  >>> lines = plot(x, y1, x, y2)
		  >>> setp(lines, linewidth=2, color='r')
		
		:func:`setp` works with the MATLAB style string/value pairs or
		with python kwargs.  For example, the following are equivalent::
		
		  >>> setp(lines, 'linewidth', 2, 'color', 'r')  # MATLAB style
		  >>> setp(lines, linewidth=2, color='r')        # python style
	**/
	static public function setp(obj:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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