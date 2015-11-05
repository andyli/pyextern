/* This file is generated, do not edit! */
package scipy.io.arff.arffread;
@:pythonImport("scipy.io.arff.arffread") extern class Arffread_Module {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _loadarff(ofile:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public function basic_stats(data:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public function get_date_format(atrv:Dynamic):Dynamic;
	/**
		Given a string representing a line of data, check whether the
		delimiter is ',' or space.
		
		Parameters
		----------
		line : str
		   line of data
		
		Returns
		-------
		delim : {',', ' '}
		
		Examples
		--------
		>>> get_delim(',')
		','
		>>> get_delim(' ')
		' '
		>>> get_delim(', ')
		','
		>>> get_delim('x')
		Traceback (most recent call last):
		   ...
		ValueError: delimiter not understood: x
	**/
	static public function get_delim(line:Dynamic):Dynamic;
	/**
		Read the whole file to get number of data attributes.
	**/
	static public function get_ndata(ofile:Dynamic):Dynamic;
	/**
		Given a string containing a nominal type, returns a tuple of the
		possible values.
		
		A nominal type is defined as something framed between braces ({}).
		
		Parameters
		----------
		atrv : str
		   Nominal type definition
		
		Returns
		-------
		poss_vals : tuple
		   possible values
		
		Examples
		--------
		>>> get_nom_val("{floup, bouga, fl, ratata}")
		('floup', 'bouga', 'fl', 'ratata')
	**/
	static public function get_nom_val(atrv:Dynamic):python.Tuple<Dynamic>;
	/**
		If attribute is nominal, returns a list of the values
	**/
	static public function get_nominal(attribute:Dynamic):Dynamic;
	/**
		Skip header.
		
		the first next() call of the returned iterator will be the @data line
	**/
	static public function go_data(ofile:Dynamic):Dynamic;
	/**
		Read an arff file.
		
		The data is returned as a record array, which can be accessed much like
		a dictionary of numpy arrays.  For example, if one of the attributes is
		called 'pressure', then its first 10 data points can be accessed from the
		``data`` record array like so: ``data['pressure'][0:10]``
		
		
		Parameters
		----------
		f : file-like or str
		   File-like object to read from, or filename to open.
		
		Returns
		-------
		data : record array
		   The data of the arff file, accessible by attribute names.
		meta : `MetaData`
		   Contains information about the arff file such as name and
		   type of attributes, the relation (name of the dataset), etc...
		
		Raises
		------
		ParseArffError
		    This is raised if the given file is not ARFF-formatted.
		NotImplementedError
		    The ARFF file has an attribute which is not supported yet.
		
		Notes
		-----
		
		This function should be able to read most arff files. Not
		implemented functionality include:
		
		* date type attributes
		* string type attributes
		
		It can read files with numeric and nominal attributes.  It cannot read
		files with sparse data ({} in the file).  However, this function can
		read files with missing data (? in the file), representing the data
		points as NaNs.
	**/
	static public function loadarff(f:Dynamic):Dynamic;
	/**
		Given a string containing a nominal type definition, returns the
		string len of the biggest component.
		
		A nominal type is defined as seomthing framed between brace ({}).
		
		Parameters
		----------
		atrv : str
		   Nominal type definition
		
		Returns
		-------
		slen : int
		   length of longest component
		
		Examples
		--------
		maxnomlen("{floup, bouga, fl, ratata}") returns 6 (the size of
		ratata, the longest nominal value).
		
		>>> maxnomlen("{floup, bouga, fl, ratata}")
		6
	**/
	static public function maxnomlen(atrv:Dynamic):Int;
	/**
		next(iterator[, default])
		
		Return the next item from the iterator. If default is given and the iterator
		is exhausted, it is returned instead of raising StopIteration.
	**/
	static public function next(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Given an arff attribute value (meta data), returns its type.
		
		Expect the value to be a name.
	**/
	static public function parse_type(attrtype:Dynamic):Dynamic;
	static public function print_attribute(name:Dynamic, tp:Dynamic, data:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public var r_attribute : Dynamic;
	static public var r_comattrval : Dynamic;
	static public var r_comment : Dynamic;
	static public var r_datameta : Dynamic;
	static public var r_empty : Dynamic;
	static public var r_headerline : Dynamic;
	static public var r_mcomattrval : Dynamic;
	static public var r_meta : Dynamic;
	static public var r_relation : Dynamic;
	static public var r_wcomattrval : Dynamic;
	/**
		Read each line of the iterable and put it in a list.
	**/
	static public function read_data_list(ofile:Dynamic):Dynamic;
	/**
		Read the header of the iterable ofile.
	**/
	static public function read_header(ofile:Dynamic):Dynamic;
	static public function safe_date(value:Dynamic, date_format:Dynamic, datetime_unit:Dynamic):Dynamic;
	/**
		given a string x, convert it to a float. If the stripped string is a ?,
		return a Nan (missing value).
		
		Parameters
		----------
		x : str
		   string to convert
		
		Returns
		-------
		f : float
		   where float can be nan
		
		Examples
		--------
		>>> safe_float('1')
		1.0
		>>> safe_float('1\n')
		1.0
		>>> safe_float('?\n')
		nan
	**/
	static public function safe_float(x:Dynamic):Float;
	static public function safe_nominal(value:Dynamic, pvalue:Dynamic):Dynamic;
	static public function test_weka(filename:Dynamic):Dynamic;
	/**
		Parse a raw string in header (eg starts by @attribute).
		
		Given a raw string attribute, try to get the name and type of the
		attribute. Constraints:
		
		* The first line must start with @attribute (case insensitive, and
		  space like characters before @attribute are allowed)
		* Works also if the attribute is spread on multilines.
		* Works if empty lines or comments are in between
		
		Parameters
		----------
		attribute : str
		   the attribute string.
		
		Returns
		-------
		name : str
		   name of the attribute
		value : str
		   value of the attribute
		next : str
		   next line to be parsed
		
		Examples
		--------
		If attribute is a string defined in python as r"floupi real", will
		return floupi as name, and real as value.
		
		>>> iterable = iter([0] * 10) # dummy iterator
		>>> tokenize_attribute(iterable, r"@attribute floupi real")
		('floupi', 'real', 0)
		
		If attribute is r"'floupi 2' real", will return 'floupi 2' as name,
		and real as value.
		
		>>> tokenize_attribute(iterable, r"  @attribute 'floupi 2' real   ")
		('floupi 2', 'real', 0)
	**/
	static public function tokenize_attribute(iterable:Dynamic, attribute:Dynamic):String;
	static public function tokenize_single_comma(val:Dynamic):Dynamic;
	static public function tokenize_single_wcomma(val:Dynamic):Dynamic;
}