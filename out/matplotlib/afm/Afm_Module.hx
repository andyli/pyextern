/* This file is generated, do not edit! */
package matplotlib.afm;
@:pythonImport("matplotlib.afm") extern class Afm_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Parse the Adobe Font Metrics file in file handle *fh*.
		
		Returns
		-------
		header : dict
		    A header dict. See :func:`_parse_header`.
		cmetrics_by_ascii : dict
		    From :func:`_parse_char_metrics`.
		cmetrics_by_name : dict
		    From :func:`_parse_char_metrics`.
		kernpairs : dict
		    From :func:`_parse_kern_pairs`.
		composites : dict
		    From :func:`_parse_composites`
	**/
	static public function _parse_afm(fh:Dynamic):python.Dict<Dynamic, Dynamic>;
	/**
		Parse the given filehandle for character metrics information and return
		the information as dicts.
		
		It is assumed that the file cursor is on the line behind
		'StartCharMetrics'.
		
		Returns
		-------
		ascii_d : dict
		     A mapping "ASCII num of the character" to `.CharMetrics`.
		name_d : dict
		     A mapping "character name" to `.CharMetrics`.
		
		Notes
		-----
		This function is incomplete per the standard, but thus far parses
		all the sample afm files tried.
	**/
	static public function _parse_char_metrics(fh:Dynamic):python.Dict<Dynamic, Dynamic>;
	/**
		Parse the given filehandle for composites information return them as a
		dict.
		
		It is assumed that the file cursor is on the line behind 'StartComposites'.
		
		Returns
		-------
		composites : dict
		    A dict mapping composite character names to a parts list. The parts
		    list is a list of `.CompositePart` entries describing the parts of
		    the composite.
		
		Example
		-------
		A composite definition line::
		
		  CC Aacute 2 ; PCC A 0 0 ; PCC acute 160 170 ;
		
		will be represented as::
		
		  composites['Aacute'] = [CompositePart(name='A', dx=0, dy=0),
		                          CompositePart(name='acute', dx=160, dy=170)]
	**/
	static public function _parse_composites(fh:Dynamic):python.Dict<Dynamic, Dynamic>;
	/**
		Reads the font metrics header (up to the char metrics) and returns
		a dictionary mapping *key* to *val*.  *val* will be converted to the
		appropriate python type as necessary; e.g.:
		
		    * 'False'->False
		    * '0'->0
		    * '-168 -218 1000 898'-> [-168, -218, 1000, 898]
		
		Dictionary keys are
		
		  StartFontMetrics, FontName, FullName, FamilyName, Weight,
		  ItalicAngle, IsFixedPitch, FontBBox, UnderlinePosition,
		  UnderlineThickness, Version, Notice, EncodingScheme, CapHeight,
		  XHeight, Ascender, Descender, StartCharMetrics
	**/
	static public function _parse_header(fh:Dynamic):Dynamic;
	/**
		Return a kern pairs dictionary; keys are (*char1*, *char2*) tuples and
		values are the kern pair value.  For example, a kern pairs line like
		``KPX A y -50``
		
		will be represented as::
		
		  d[ ('A', 'y') ] = -50
	**/
	static public function _parse_kern_pairs(fh:Dynamic):Dynamic;
	/**
		Parse the optional fields for kern pair data and composites.
		
		Returns
		-------
		kern_data : dict
		    A dict containing kerning information. May be empty.
		    See `._parse_kern_pairs`.
		composites : dict
		    A dict containing composite information. May be empty.
		    See `._parse_composites`.
	**/
	static public function _parse_optional(fh:Dynamic):python.Dict<Dynamic, Dynamic>;
	/**
		Check if the file at least looks like AFM.
		If not, raise :exc:`RuntimeError`.
	**/
	static public function _sanity_check(fh:Dynamic):Dynamic;
	static public function _to_bool(s:Dynamic):Dynamic;
	static public function _to_int(x:Dynamic):Dynamic;
	static public function _to_list_of_floats(s:Dynamic):Dynamic;
	static public function _to_list_of_ints(s:Dynamic):Dynamic;
	static public function _to_str(x:Dynamic):Dynamic;
	/**
		Decorator to mark a function or a class as deprecated.
		
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
		        oldFunction = new_function
		
		alternative : str, optional
		    An alternative API that the user may use in place of the deprecated
		    API.  The deprecation warning will tell the user about this alternative
		    if provided.
		
		pending : bool, optional
		    If True, uses a PendingDeprecationWarning instead of a
		    DeprecationWarning.  Cannot be used together with *removal*.
		
		removal : str, optional
		    The expected removal version.  With the default (an empty string), a
		    removal version is automatically computed from *since*.  Set to other
		    Falsy values to not schedule a removal date.  Cannot be used together
		    with *pending*.
		
		addendum : str, optional
		    Additional text appended directly to the final message.
		
		Examples
		--------
		
		    Basic example::
		
		        @deprecated('1.4.0')
		        def the_function_to_deprecate():
		            pass
	**/
	static public function deprecated(since:Dynamic, ?message:Dynamic, ?name:Dynamic, ?alternative:Dynamic, ?pending:Dynamic, ?obj_type:Dynamic, ?addendum:Dynamic, ?removal:Dynamic):Dynamic;
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
		.. deprecated:: 3.0
		    Use the class AFM instead.
		
		\ 
	**/
	static public function parse_afm(fh:Dynamic):Dynamic;
	static public var uni2type1 : Dynamic;
}