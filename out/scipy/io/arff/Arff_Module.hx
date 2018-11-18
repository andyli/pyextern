/* This file is generated, do not edit! */
package scipy.io.arff;
@:pythonImport("scipy.io.arff") extern class Arff_Module {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
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
	static public var print_function : Dynamic;
	static public function test(?label:Dynamic, ?verbose:Dynamic, ?extra_argv:Dynamic, ?doctests:Dynamic, ?coverage:Dynamic, ?tests:Dynamic):Dynamic;
}