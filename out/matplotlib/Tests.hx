/* This file is generated, do not edit! */
package matplotlib;
@:pythonImport("matplotlib.tests") extern class Tests {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _multiprocess_can_split_ : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Assert the two strings are equal. If not, fail and print their
		diffs using difflib.
	**/
	static public function assert_str_equal(reference_str:Dynamic, test_str:Dynamic, ?format_str:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	static public var rcParams : Dynamic;
	/**
		Restore the default rc params.  These are not the params loaded by
		the rc file, but mpl's internal params.  See rc_file_defaults for
		reloading the default params from the rc file
	**/
	static public function rcdefaults():Dynamic;
	static public function setup():Dynamic;
	static public var unicode_literals : Dynamic;
	/**
		Set the matplotlib backend to one of the known backends.
		
		The argument is case-insensitive. *warn* specifies whether a
		warning should be issued if a backend has already been set up.
		*force* is an **experimental** flag that tells matplotlib to
		attempt to initialize a new backend by reloading the backend
		module.
		
		.. note::
		
		    This function must be called *before* importing pyplot for
		    the first time; or, if you are not using pyplot, it must be called
		    before importing matplotlib.backends.  If warn is True, a warning
		    is issued if you try and call this after pylab or pyplot have been
		    loaded.  In certain black magic use cases, e.g.
		    :func:`pyplot.switch_backend`, we are doing the reloading necessary to
		    make the backend switch work (in some cases, e.g., pure image
		    backends) so one can set warn=False to suppress the warnings.
		
		To find out which backend is currently set, see
		:func:`matplotlib.get_backend`.
	**/
	static public function use(arg:Dynamic, ?warn:Dynamic, ?force:Dynamic):Dynamic;
}