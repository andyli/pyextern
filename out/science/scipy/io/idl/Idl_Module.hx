/* This file is generated, do not edit! */
package scipy.io.idl;
@:pythonImport("scipy.io.idl") extern class Idl_Module {
	static public var DTYPE_DICT : Dynamic;
	static public var RECTYPE_DICT : Dynamic;
	static public var STRUCT_DICT : Dynamic;
	/**
		Read an IDL .sav file.
		
		Parameters
		----------
		file_name : str
		    Name of the IDL save file.
		idict : dict, optional
		    Dictionary in which to insert .sav file variables.
		python_dict : bool, optional
		    By default, the object return is not a Python dictionary, but a
		    case-insensitive dictionary with item, attribute, and call access
		    to variables. To get a standard Python dictionary, set this option
		    to True.
		uncompressed_file_name : str, optional
		    This option only has an effect for .sav files written with the
		    /compress option. If a file name is specified, compressed .sav
		    files are uncompressed to this file. Otherwise, readsav will use
		    the `tempfile` module to determine a temporary filename
		    automatically, and will remove the temporary file upon successfully
		    reading it in.
		verbose : bool, optional
		    Whether to print out information about the save file, including
		    the records read, and available variables.
		
		Returns
		-------
		idl_dict : AttrDict or dict
		    If `python_dict` is set to False (default), this function returns a
		    case-insensitive dictionary with item, attribute, and call access
		    to variables. If `python_dict` is set to True, this function
		    returns a Python dictionary with all variable names in lowercase.
		    If `idict` was specified, then variables are written to the
		    dictionary specified, and the updated dictionary is returned.
		
		Examples
		--------
		>>> from os.path import dirname, join as pjoin
		>>> import scipy.io as sio
		>>> from scipy.io import readsav
		
		Get the filename for an example .sav file from the tests/data directory.
		
		>>> data_dir = pjoin(dirname(sio.__file__), 'tests', 'data')
		>>> sav_fname = pjoin(data_dir, 'array_float32_1d.sav')
		
		Load the .sav file contents.
		
		>>> sav_data = readsav(sav_fname)
		
		Get keys of the .sav file contents.
		
		>>> print(sav_data.keys())
		dict_keys(['array1d'])
		
		Access a content with a key.
		
		>>> print(sav_data['array1d'])
		[0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0.
		 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0.
		 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0.
		 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0.
		 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0.
		 0. 0. 0.]
	**/
	static public function readsav(file_name:Dynamic, ?idict:Dynamic, ?python_dict:Dynamic, ?uncompressed_file_name:Dynamic, ?verbose:Dynamic):Dynamic;
}