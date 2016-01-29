/* This file is generated, do not edit! */
package pandas.core.categorical;
@:pythonImport("pandas.core.categorical", "CategoricalAccessor") extern class CategoricalAccessor {
	/**
		Return a string representation for a particular object.
		
		Invoked by bytes(obj) in py3 only.
		Yields a bytestring in both py2/py3.
	**/
	public function __bytes__():Dynamic;
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		Provide method name lookup and completion
		Only provide 'public' methods
	**/
	public function __dir__():Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		default object formatter
	**/
	public function __format__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self>=value.
	**/
	public function __ge__(value:Dynamic):Dynamic;
	/**
		Return getattr(self, name).
	**/
	public function __getattribute__(name:Dynamic):Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(values:Dynamic, index:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(values:Dynamic, index:Dynamic):Void;
	/**
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
	/**
		Return self<value.
	**/
	public function __lt__(value:Dynamic):Dynamic;
	static public var __module__ : Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce_ex__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return a string representation for a particular object.
		
		Yields Bytestring in Py2, Unicode String in py3.
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(key:Dynamic, value:Dynamic):Dynamic;
	/**
		__sizeof__() -> int
		size of object in memory, in bytes
	**/
	public function __sizeof__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return a string representation for a particular Object
		
		Invoked by str(df) in both py2/py3.
		Yields Bytestring in Py2, Unicode String in py3.
	**/
	public function __str__():Dynamic;
	/**
		Abstract classes can override this to customize issubclass().
		
		This is invoked early on by abc.ABCMeta.__subclasscheck__().
		It should return True, False or NotImplemented.  If it returns
		NotImplemented, the normal algorithm is used.  Otherwise, it
		overrides the normal algorithm (and the outcome is cached).
	**/
	static public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return a string representation for a particular object.
		
		Invoked by unicode(obj) in py2 only. Yields a Unicode String in both
		py2/py3.
	**/
	public function __unicode__():Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	/**
		add accessors to cls from the delegate class
		
		Parameters
		----------
		cls : the class to add the methods/properties to
		delegate : the class to get methods/properties & doc-strings
		acccessors : string list of accessors to add
		typ : 'property' or 'method'
		overwrite : boolean, default False
		   overwrite the method/property in the target class if it exists
	**/
	static public function _add_delegate_accessors(delegate:Dynamic, accessors:Dynamic, typ:Dynamic, ?overwrite:Dynamic):Dynamic;
	/**
		class constructor (for this class it's just `__class__`
	**/
	public var _constructor : Dynamic;
	public function _delegate_method(name:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function _delegate_property_get(name:Dynamic):Dynamic;
	public function _delegate_property_set(name:Dynamic, new_values:Dynamic):Dynamic;
	/**
		add addtional __dir__ for this object 
	**/
	public function _dir_additions():Dynamic;
	/**
		delete unwanted __dir__ for this object 
	**/
	public function _dir_deletions():Dynamic;
	/**
		Prevents setting additional attributes
	**/
	public function _freeze():Dynamic;
	/**
		Reset cached properties. If ``key`` is passed, only clears that key.
	**/
	public function _reset_cache(?key:Dynamic):Dynamic;
	/**
		Add new categories.
		
		`new_categories` will be included at the last/highest place in the categories and will be
		unused directly after this call.
		
		Raises
		------
		ValueError
		    If the new categories include old categories or do not validate as categories
		
		Parameters
		----------
		new_categories : category or list-like of category
		   The new categories to be included.
		inplace : boolean (default: False)
		   Whether or not to add the categories inplace or return a copy of this categorical
		   with added categories.
		
		Returns
		-------
		cat : Categorical with new categories added or None if inplace.
		
		See also
		--------
		rename_categories
		reorder_categories
		remove_categories
		remove_unused_categories
		set_categories
	**/
	public function add_categories(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Sets the Categorical to be ordered
		
		Parameters
		----------
		inplace : boolean (default: False)
		   Whether or not to set the ordered attribute inplace or return a copy of this categorical
		   with ordered set to True
	**/
	public function as_ordered(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Sets the Categorical to be unordered
		
		Parameters
		----------
		inplace : boolean (default: False)
		   Whether or not to set the ordered attribute inplace or return a copy of this categorical
		   with ordered set to False
	**/
	public function as_unordered(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		The categories of this categorical.
		
		Setting assigns new values to each category (effectively a rename of
		each individual category).
		
		The assigned value has to be a list-like object. All items must be unique and the number of items
		in the new categories must be the same as the number of items in the old categories.
		
		Assigning to `categories` is a inplace operation!
		
		Raises
		------
		ValueError
		    If the new categories do not validate as categories or if the number of new categories is
		    unequal the number of old categories
		
		See also
		--------
		rename_categories
		reorder_categories
		add_categories
		remove_categories
		remove_unused_categories
		set_categories
	**/
	public var categories : Dynamic;
	public var codes : Dynamic;
	/**
		Gets the ordered attribute 
	**/
	public var ordered : Dynamic;
	/**
		Removes the specified categories.
		
		`removals` must be included in the old categories. Values which were in the removed
		categories will be set to NaN
		
		Raises
		------
		ValueError
		    If the removals are not contained in the categories
		
		Parameters
		----------
		removals : category or list of categories
		   The categories which should be removed.
		inplace : boolean (default: False)
		   Whether or not to remove the categories inplace or return a copy of this categorical
		   with removed categories.
		
		Returns
		-------
		cat : Categorical with removed categories or None if inplace.
		
		See also
		--------
		rename_categories
		reorder_categories
		add_categories
		remove_unused_categories
		set_categories
	**/
	public function remove_categories(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Removes categories which are not used.
		
		Parameters
		----------
		inplace : boolean (default: False)
		   Whether or not to drop unused categories inplace or return a copy of this categorical
		   with unused categories dropped.
		
		Returns
		-------
		cat : Categorical with unused categories dropped or None if inplace.
		
		See also
		--------
		rename_categories
		reorder_categories
		add_categories
		remove_categories
		set_categories
	**/
	public function remove_unused_categories(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Renames categories.
		
		The new categories has to be a list-like object. All items must be unique and the number of
		items in the new categories must be the same as the number of items in the old categories.
		
		Raises
		------
		ValueError
		    If the new categories do not have the same number of items than the current categories
		    or do not validate as categories
		
		Parameters
		----------
		new_categories : Index-like
		   The renamed categories.
		inplace : boolean (default: False)
		   Whether or not to rename the categories inplace or return a copy of this categorical
		   with renamed categories.
		
		Returns
		-------
		cat : Categorical with renamed categories added or None if inplace.
		
		See also
		--------
		reorder_categories
		add_categories
		remove_categories
		remove_unused_categories
		set_categories
	**/
	public function rename_categories(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Reorders categories as specified in new_categories.
		
		`new_categories` need to include all old categories and no new category items.
		
		Raises
		------
		ValueError
		    If the new categories do not contain all old category items or any new ones
		
		Parameters
		----------
		new_categories : Index-like
		   The categories in new order.
		ordered : boolean, optional
		   Whether or not the categorical is treated as a ordered categorical. If not given,
		   do not change the ordered information.
		inplace : boolean (default: False)
		   Whether or not to reorder the categories inplace or return a copy of this categorical
		   with reordered categories.
		
		Returns
		-------
		cat : Categorical with reordered categories or None if inplace.
		
		See also
		--------
		rename_categories
		add_categories
		remove_categories
		remove_unused_categories
		set_categories
	**/
	public function reorder_categories(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Sets the categories to the specified new_categories.
		
		`new_categories` can include new categories (which will result in unused categories) or
		or remove old categories (which results in values set to NaN). If `rename==True`,
		the categories will simple be renamed (less or more items than in old categories will
		result in values set to NaN or in unused categories respectively).
		
		This method can be used to perform more than one action of adding, removing,
		and reordering simultaneously and is therefore faster than performing the individual steps
		via the more specialised methods.
		
		On the other hand this methods does not do checks (e.g., whether the old categories are
		included in the new categories on a reorder), which can result in surprising changes, for
		example when using special string dtypes on python3, which does not considers a S1 string
		equal to a single char python string.
		
		Raises
		------
		ValueError
		    If new_categories does not validate as categories
		
		Parameters
		----------
		new_categories : Index-like
		   The categories in new order.
		ordered : boolean, (default: False)
		   Whether or not the categorical is treated as a ordered categorical. If not given,
		   do not change the ordered information.
		rename : boolean (default: False)
		   Whether or not the new_categories should be considered as a rename of the old
		   categories or as reordered categories.
		inplace : boolean (default: False)
		   Whether or not to reorder the categories inplace or return a copy of this categorical
		   with reordered categories.
		
		Returns
		-------
		cat : Categorical with reordered categories or None if inplace.
		
		See also
		--------
		rename_categories
		reorder_categories
		add_categories
		remove_categories
		remove_unused_categories
	**/
	public function set_categories(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}