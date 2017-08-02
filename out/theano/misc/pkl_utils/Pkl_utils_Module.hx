/* This file is generated, do not edit! */
package theano.misc.pkl_utils;
@:pythonImport("theano.misc.pkl_utils") extern class Pkl_utils_Module {
	static public var DEFAULT_PROTOCOL : Dynamic;
	static public var HIGHEST_PROTOCOL : Dynamic;
	static public var PY3 : Dynamic;
	static public var __authors__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __copyright__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __docformat__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __license__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	static public var config : Dynamic;
	static public var cuda_ndarray : Dynamic;
	static public var division : Dynamic;
	/**
		Pickles an object to a zip file using external persistence.
		
		:param obj: The object to pickle.
		:type obj: object
		
		:param file_handler: The file handle to save the object to.
		:type file_handler: file
		
		:param protocol: The pickling protocol to use. Unlike Python's built-in
		    pickle, the default is set to `2` instead of 0 for Python 2. The
		    Python 3 default (level 3) is maintained.
		:type protocol: int, optional
		
		:param persistent_id: The callable that persists certain objects in the
		    object hierarchy to separate files inside of the zip file. For example,
		    :class:`PersistentNdarrayID` saves any :class:`numpy.ndarray` to a
		    separate NPY file inside of the zip file.
		:type persistent_id: callable
		
		.. versionadded:: 0.8
		
		.. note::
		    The final file is simply a zipped file containing at least one file,
		    `pkl`, which contains the pickled object. It can contain any other
		    number of external objects. Note that the zip files are compatible with
		    NumPy's :func:`numpy.load` function.
		
		>>> import theano
		>>> foo_1 = theano.shared(0, name='foo')
		>>> foo_2 = theano.shared(1, name='foo')
		>>> with open('model.zip', 'wb') as f:
		...     dump((foo_1, foo_2, np.array(2)), f)
		>>> np.load('model.zip').keys()
		['foo', 'foo_2', 'array_0', 'pkl']
		>>> np.load('model.zip')['foo']
		array(0)
		>>> with open('model.zip', 'rb') as f:
		...     foo_1, foo_2, array = load(f)
		>>> array
		array(2)
	**/
	static public function dump(obj:Dynamic, file_handler:Dynamic, ?protocol:Dynamic, ?persistent_id:Dynamic):Dynamic;
	/**
		Load a file that was dumped to a zip file.
		
		:param f: The file handle to the zip file to load the object from.
		:type f: file
		
		:param persistent_load: The persistent loading function to use for
		    unpickling. This must be compatible with the `persisten_id` function
		    used when pickling.
		:type persistent_load: callable, optional
		
		.. versionadded:: 0.8
	**/
	static public function load(f:Dynamic, ?persistent_load:Dynamic):Dynamic;
	static public function load_reduce(self:Dynamic):Dynamic;
	static public var min_recursion : Dynamic;
	static public var print_function : Dynamic;
	static public var string_types : Dynamic;
	/**
		Calls a function with a file object, saving it to a zip file.
		
		:param func: The function to call.
		:type func: callable
		
		:param zip_file: The zip file that `func` should write its data to.
		:type zip_file: :class:`zipfile.ZipFile`
		
		:param name: The name of the file inside of the zipped archive that `func`
		    should save its data to.
		:type name: str
	**/
	static public function zipadd(func:Dynamic, zip_file:Dynamic, name:Dynamic):Dynamic;
}