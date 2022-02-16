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
	static public var _log : Dynamic;
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
		dict
		    A dict mapping composite character names to a parts list. The parts
		    list is a list of `.CompositePart` entries describing the parts of
		    the composite.
		
		Examples
		--------
		A composite definition line::
		
		  CC Aacute 2 ; PCC A 0 0 ; PCC acute 160 170 ;
		
		will be represented as::
		
		  composites['Aacute'] = [CompositePart(name='A', dx=0, dy=0),
		                          CompositePart(name='acute', dx=160, dy=170)]
	**/
	static public function _parse_composites(fh:Dynamic):Dynamic;
	/**
		Read the font metrics header (up to the char metrics) and returns
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
	static public function _to_bool(s:Dynamic):Dynamic;
	static public function _to_float(x:Dynamic):Dynamic;
	static public function _to_int(x:Dynamic):Dynamic;
	static public function _to_list_of_floats(s:Dynamic):Dynamic;
	static public function _to_list_of_ints(s:Dynamic):Dynamic;
	static public function _to_str(x:Dynamic):Dynamic;
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
	static public var uni2type1 : Dynamic;
}