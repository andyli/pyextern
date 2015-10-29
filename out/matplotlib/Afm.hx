/* This file is generated, do not edit! */
package matplotlib;
@:pythonImport("matplotlib.afm") extern class Afm {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Return a character metric dictionary.  Keys are the ASCII num of
		the character, values are a (*wx*, *name*, *bbox*) tuple, where
		*wx* is the character width, *name* is the postscript language
		name, and *bbox* is a (*llx*, *lly*, *urx*, *ury*) tuple.
		
		This function is incomplete per the standard, but thus far parses
		all the sample afm files tried.
	**/
	static public function _parse_char_metrics(fh:Dynamic):Dynamic;
	/**
		Return a composites dictionary.  Keys are the names of the
		composites.  Values are a num parts list of composite information,
		with each element being a (*name*, *dx*, *dy*) tuple.  Thus a
		composites line reading:
		
		  CC Aacute 2 ; PCC A 0 0 ; PCC acute 160 170 ;
		
		will be represented as::
		
		  d['Aacute'] = [ ('A', 0, 0), ('acute', 160, 170) ]
	**/
	static public function _parse_composites(fh:Dynamic):Dynamic;
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
		Parse the optional fields for kern pair data and composites
		
		return value is a (*kernDict*, *compositeDict*) which are the
		return values from :func:`_parse_kern_pairs`, and
		:func:`_parse_composites` if the data exists, or empty dicts
		otherwise
	**/
	static public function _parse_optional(fh:Dynamic):Dynamic;
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
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Parse the Adobe Font Metics file in file handle *fh*. Return value
		is a (*dhead*, *dcmetrics*, *dkernpairs*, *dcomposite*) tuple where
		*dhead* is a :func:`_parse_header` dict, *dcmetrics* is a
		:func:`_parse_composites` dict, *dkernpairs* is a
		:func:`_parse_kern_pairs` dict (possibly {}), and *dcomposite* is a
		:func:`_parse_composites` dict (possibly {})
	**/
	static public function parse_afm(fh:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public var uni2type1 : Dynamic;
	static public var unicode_literals : Dynamic;
}