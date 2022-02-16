/* This file is generated, do not edit! */
package scipy.io.arff.arffread;
@:pythonImport("scipy.io.arff.arffread") extern class Arffread_Module {
	static public function basic_stats(data:Dynamic):Dynamic;
	/**
		Checks if the bug https://bugs.python.org/issue30157 is unpatched.
	**/
	static public function csv_sniffer_has_bug_last_field():Dynamic;
	/**
		Read an arff file.
		
		The data is returned as a record array, which can be accessed much like
		a dictionary of NumPy arrays. For example, if one of the attributes is
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
		   type of attributes, the relation (name of the dataset), etc.
		
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
		
		It can read files with numeric and nominal attributes. It cannot read
		files with sparse data ({} in the file). However, this function can
		read files with missing data (? in the file), representing the data
		points as NaNs.
		
		Examples
		--------
		>>> from scipy.io import arff
		>>> from io import StringIO
		>>> content = """
		... @relation foo
		... @attribute width  numeric
		... @attribute height numeric
		... @attribute color  {red,green,blue,yellow,black}
		... @data
		... 5.0,3.25,blue
		... 4.5,3.75,green
		... 3.0,4.00,red
		... """
		>>> f = StringIO(content)
		>>> data, meta = arff.loadarff(f)
		>>> data
		array([(5.0, 3.25, 'blue'), (4.5, 3.75, 'green'), (3.0, 4.0, 'red')],
		      dtype=[('width', '<f8'), ('height', '<f8'), ('color', '|S6')])
		>>> meta
		Dataset: foo
		    width's type is numeric
		    height's type is numeric
		    color's type is nominal, range is ('red', 'green', 'blue', 'yellow', 'black')
	**/
	static public function loadarff(f:Dynamic):Dynamic;
	static public function print_attribute(name:Dynamic, tp:Dynamic, data:Dynamic):Dynamic;
	static public var r_attribute : Dynamic;
	static public var r_comattrval : Dynamic;
	static public var r_comment : Dynamic;
	static public var r_datameta : Dynamic;
	static public var r_date : Dynamic;
	static public var r_empty : Dynamic;
	static public var r_headerline : Dynamic;
	static public var r_meta : Dynamic;
	static public var r_nominal : Dynamic;
	static public var r_relation : Dynamic;
	static public var r_wcomattrval : Dynamic;
	/**
		Read the header of the iterable ofile.
	**/
	static public function read_header(ofile:Dynamic):Dynamic;
	/**
		Read the nested attributes of a relational attribute
	**/
	static public function read_relational_attribute(ofile:Dynamic, relational_attribute:Dynamic, i:Dynamic):Dynamic;
	static public function split_data_line(line:Dynamic, ?dialect:Dynamic):Dynamic;
	static public function test_weka(filename:Dynamic):Dynamic;
	static public function to_attribute(name:Dynamic, attr_string:Dynamic):Dynamic;
	/**
		Parse a raw string in header (e.g., starts by @attribute).
		
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
	/**
		Workaround for the bug https://bugs.python.org/issue30157 if is unpatched.
	**/
	static public function workaround_csv_sniffer_bug_last_field(sniff_line:Dynamic, dialect:Dynamic, delimiters:Dynamic):Dynamic;
}