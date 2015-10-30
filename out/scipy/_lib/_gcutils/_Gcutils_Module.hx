/* This file is generated, do not edit! */
package scipy._lib._gcutils;
@:pythonImport("scipy._lib._gcutils") extern class _Gcutils_Module {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Context manager to check that object is deallocated
		
		This is useful for checking that an object can be freed directly by
		reference counting, without requiring gc to break reference cycles.
		GC is disabled inside the context manager.
		
		Parameters
		----------
		func : callable
		    Callable to create object to check
		\*args : sequence
		    positional arguments to `func` in order to create object to check
		\*\*kwargs : dict
		    keyword arguments to `func` in order to create object to check
		
		Examples
		--------
		>>> class C(object): pass
		>>> with assert_deallocated(C) as c:
		...     # do something
		...     del c
		
		>>> class C(object):
		...     def __init__(self):
		...         self._circular = self # Make circular reference
		>>> with assert_deallocated(C) as c: #doctest: +IGNORE_EXCEPTION_DETAIL
		...     # do something
		...     del c
		Traceback (most recent call last):
		    ...
		ReferenceError: Remaining reference(s) to object
	**/
	static public function assert_deallocated(func:Dynamic, args:Dynamic, kwargs:Dynamic):Dynamic;
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
	/**
		Context manager to set state of garbage collector to `state`
		
		Parameters
		----------
		state : bool
		    True for gc enabled, False for disabled
		
		Examples
		--------
		>>> with gc_state(False):
		...     assert not gc.isenabled()
		>>> with gc_state(True):
		...     assert gc.isenabled()
	**/
	static public function gc_state(state:Dynamic):Dynamic;
	/**
		Set status of garbage collector 
	**/
	static public function set_gc_state(state:Dynamic):Dynamic;
}