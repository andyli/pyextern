/* This file is generated, do not edit! */
package scipy._lib._tmpdirs;
@:pythonImport("scipy._lib._tmpdirs") extern class _Tmpdirs_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		@contextmanager decorator.
		
		Typical usage:
		
		    @contextmanager
		    def some_generator(<arguments>):
		        <setup>
		        try:
		            yield <value>
		        finally:
		            <cleanup>
		
		This makes this:
		
		    with some_generator(<arguments>) as <variable>:
		        <body>
		
		equivalent to this:
		
		    <setup>
		    try:
		        <variable> = <value>
		        <body>
		    finally:
		        <cleanup>
	**/
	static public function contextmanager(func:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Change directory to given directory for duration of ``with`` block
		
		Useful when you want to use `in_tempdir` for the final test, but
		you are still debugging.  For example, you may want to do this in the end:
		
		>>> with in_tempdir() as tmpdir:
		...     # do something complicated which might break
		...     pass
		
		But indeed the complicated thing does break, and meanwhile the
		``in_tempdir`` context manager wiped out the directory with the
		temporary files that you wanted for debugging.  So, while debugging, you
		replace with something like:
		
		>>> with in_dir() as tmpdir: # Use working directory by default
		...     # do something complicated which might break
		...     pass
		
		You can then look at the temporary file outputs to debug what is happening,
		fix, and finally replace ``in_dir`` with ``in_tempdir`` again.
	**/
	static public function in_dir(?dir:Dynamic):Dynamic;
	/**
		Create, return, and change directory to a temporary directory
		
		Examples
		--------
		>>> import os
		>>> my_cwd = os.getcwd()
		>>> with in_tempdir() as tmpdir:
		...     _ = open('test.txt', 'wt').write('some text')
		...     assert os.path.isfile('test.txt')
		...     assert os.path.isfile(os.path.join(tmpdir, 'test.txt'))
		>>> os.path.exists(tmpdir)
		False
		>>> os.getcwd() == my_cwd
		True
	**/
	static public function in_tempdir():Dynamic;
	/**
		User-callable function to create and return a unique temporary
		directory.  The return value is the pathname of the directory.
		
		Arguments are as for mkstemp, except that the 'text' argument is
		not accepted.
		
		The directory is readable, writable, and searchable only by the
		creating user.
		
		Caller is responsible for deleting the directory when done with it.
	**/
	static public function mkdtemp(?suffix:Dynamic, ?prefix:Dynamic, ?dir:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Recursively delete a directory tree.
		
		If ignore_errors is set, errors are ignored; otherwise, if onerror
		is set, it is called to handle the error with arguments (func,
		path, exc_info) where func is platform and implementation dependent;
		path is the argument to that function that caused it to fail; and
		exc_info is a tuple returned by sys.exc_info().  If ignore_errors
		is false and onerror is None, an exception is raised.
	**/
	static public function rmtree(path:Dynamic, ?ignore_errors:Dynamic, ?onerror:Dynamic):Dynamic;
	/**
		Create and return a temporary directory.  This has the same
		behavior as mkdtemp but can be used as a context manager.
		
		Upon exiting the context, the directory and everything contained
		in it are removed.
		
		Examples
		--------
		>>> import os
		>>> with tempdir() as tmpdir:
		...     fname = os.path.join(tmpdir, 'example_file.txt')
		...     with open(fname, 'wt') as fobj:
		...         _ = fobj.write('a string\n')
		>>> os.path.exists(tmpdir)
		False
	**/
	static public function tempdir():Dynamic;
}