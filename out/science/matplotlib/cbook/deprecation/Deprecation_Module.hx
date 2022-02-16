/* This file is generated, do not edit! */
package matplotlib.cbook.deprecation;
@:pythonImport("matplotlib.cbook.deprecation") extern class Deprecation_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Decorator to mark a function, a class, or a property as deprecated.
		
		When deprecating a classmethod, a staticmethod, or a property, the
		``@deprecated`` decorator should go *under* ``@classmethod`` and
		``@staticmethod`` (i.e., `deprecated` should directly decorate the
		underlying callable), but *over* ``@property``.
		
		When deprecating a class ``C`` intended to be used as a base class in a
		multiple inheritance hierarchy, ``C`` *must* define an ``__init__`` method
		(if ``C`` instead inherited its ``__init__`` from its own base class, then
		``@deprecated`` would mess up ``__init__`` inheritance when installing its
		own (deprecation-emitting) ``C.__init__``).
		
		Parameters are the same as for `warn_deprecated`, except that *obj_type*
		defaults to 'class' if decorating a class, 'attribute' if decorating a
		property, and 'function' otherwise.
		
		Examples
		--------
		::
		
		    @deprecated('1.4.0')
		    def the_function_to_deprecate():
		        pass
	**/
	static public function deprecated(since:Dynamic, ?message:Dynamic, ?name:Dynamic, ?alternative:Dynamic, ?pending:Dynamic, ?obj_type:Dynamic, ?addendum:Dynamic, ?removal:Dynamic):Dynamic;
	/**
		Display a standardized deprecation.
		
		Parameters
		----------
		since : str
		    The release at which this API became deprecated.
		message : str, optional
		    Override the default deprecation message.  The ``%(since)s``,
		    ``%(name)s``, ``%(alternative)s``, ``%(obj_type)s``, ``%(addendum)s``,
		    and ``%(removal)s`` format specifiers will be replaced by the values
		    of the respective arguments passed to this function.
		name : str, optional
		    The name of the deprecated object.
		alternative : str, optional
		    An alternative API that the user may use in place of the deprecated
		    API.  The deprecation warning will tell the user about this alternative
		    if provided.
		pending : bool, optional
		    If True, uses a PendingDeprecationWarning instead of a
		    DeprecationWarning.  Cannot be used together with *removal*.
		obj_type : str, optional
		    The object type being deprecated.
		addendum : str, optional
		    Additional text appended directly to the final message.
		removal : str, optional
		    The expected removal version.  With the default (an empty string), a
		    removal version is automatically computed from *since*.  Set to other
		    Falsy values to not schedule a removal date.  Cannot be used together
		    with *pending*.
		
		Examples
		--------
		::
		
		    # To warn of the deprecation of "matplotlib.name_of_module"
		    warn_deprecated('1.4.0', name='matplotlib.name_of_module',
		                    obj_type='module')
	**/
	static public function warn_deprecated(since:Dynamic, ?message:Dynamic, ?name:Dynamic, ?alternative:Dynamic, ?pending:Dynamic, ?obj_type:Dynamic, ?addendum:Dynamic, ?removal:Dynamic):Dynamic;
}