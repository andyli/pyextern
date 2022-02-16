/* This file is generated, do not edit! */
package pandas.core.arrays.categorical;
@:pythonImport("pandas.core.arrays.categorical", "CategoricalAccessor") extern class CategoricalAccessor {
	static public var __annotations__ : Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		Provide method name lookup and completion.
		
		Notes
		-----
		Only provide 'public' methods.
	**/
	public function __dir__():Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		Default object formatter.
	**/
	public function __format__(format_spec:Dynamic):Dynamic;
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
	public function ___init__(data:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(data:Dynamic):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Helper for pickle.
	**/
	public function __reduce__():Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce_ex__(protocol:Dynamic):Dynamic;
	/**
		Return a string representation for a particular object.
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(key:Dynamic, value:Dynamic):Dynamic;
	/**
		Generates the total memory usage for an object that returns
		either a value or Series of values
	**/
	public function __sizeof__():Dynamic;
	/**
		Return str(self).
	**/
	public function __str__():Dynamic;
	/**
		Abstract classes can override this to customize issubclass().
		
		This is invoked early on by abc.ABCMeta.__subclasscheck__().
		It should return True, False or NotImplemented.  If it returns
		NotImplemented, the normal algorithm is used.  Otherwise, it
		overrides the normal algorithm (and the outcome is cached).
	**/
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	static public var _accessors : Dynamic;
	/**
		Add accessors to cls from the delegate class.
		
		Parameters
		----------
		cls
		    Class to add the methods/properties to.
		delegate
		    Class to get methods/properties and doc-strings.
		accessors : list of str
		    List of accessors to add.
		typ : {'property', 'method'}
		overwrite : bool, default False
		    Overwrite the method/property in the target class if it exists.
	**/
	static public function _add_delegate_accessors(delegate:Dynamic, accessors:Dynamic, typ:Dynamic, ?overwrite:Dynamic):Dynamic;
	/**
		Class constructor (for this class it's just `__class__`.
	**/
	public var _constructor : Dynamic;
	public function _delegate_method(name:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function _delegate_property_get(name:Dynamic):Dynamic;
	public function _delegate_property_set(name:Dynamic, new_values:Dynamic):Dynamic;
	/**
		Add additional __dir__ for this object.
	**/
	public function _dir_additions():Dynamic;
	/**
		Delete unwanted __dir__ for this object.
	**/
	public function _dir_deletions():Dynamic;
	/**
		Prevents setting additional attributes.
	**/
	public function _freeze():Dynamic;
	static public var _hidden_attrs : Dynamic;
	/**
		Reset cached properties. If ``key`` is passed, only clears that key.
	**/
	public function _reset_cache(?key:Dynamic):Dynamic;
	static public function _validate(data:Dynamic):Dynamic;
	/**
		Add new categories.
		
		`new_categories` will be included at the last/highest place in the
		categories and will be unused directly after this call.
		
		Parameters
		----------
		new_categories : category or list-like of category
		   The new categories to be included.
		inplace : bool, default False
		   Whether or not to add the categories inplace or return a copy of
		   this categorical with added categories.
		
		   .. deprecated:: 1.3.0
		
		Returns
		-------
		cat : Categorical or None
		    Categorical with new categories added or None if ``inplace=True``.
		
		Raises
		------
		ValueError
		    If the new categories include old categories or do not validate as
		    categories
		
		See Also
		--------
		rename_categories : Rename categories.
		reorder_categories : Reorder categories.
		remove_categories : Remove the specified categories.
		remove_unused_categories : Remove categories which are not used.
		set_categories : Set the categories to the specified ones.
		
		Examples
		--------
		>>> c = pd.Categorical(['c', 'b', 'c'])
		>>> c
		['c', 'b', 'c']
		Categories (2, object): ['b', 'c']
		
		>>> c.add_categories(['d', 'a'])
		['c', 'b', 'c']
		Categories (4, object): ['b', 'c', 'd', 'a']
	**/
	public function add_categories(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Set the Categorical to be ordered.
		
		Parameters
		----------
		inplace : bool, default False
		   Whether or not to set the ordered attribute in-place or return
		   a copy of this categorical with ordered set to True.
		
		Returns
		-------
		Categorical or None
		    Ordered Categorical or None if ``inplace=True``.
	**/
	public function as_ordered(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Set the Categorical to be unordered.
		
		Parameters
		----------
		inplace : bool, default False
		   Whether or not to set the ordered attribute in-place or return
		   a copy of this categorical with ordered set to False.
		
		Returns
		-------
		Categorical or None
		    Unordered Categorical or None if ``inplace=True``.
	**/
	public function as_unordered(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		The categories of this categorical.
		
		Setting assigns new values to each category (effectively a rename of
		each individual category).
		
		The assigned value has to be a list-like object. All items must be
		unique and the number of items in the new categories must be the same
		as the number of items in the old categories.
		
		Assigning to `categories` is a inplace operation!
		
		Raises
		------
		ValueError
		    If the new categories do not validate as categories or if the
		    number of new categories is unequal the number of old categories
		
		See Also
		--------
		rename_categories : Rename categories.
		reorder_categories : Reorder categories.
		add_categories : Add new categories.
		remove_categories : Remove the specified categories.
		remove_unused_categories : Remove categories which are not used.
		set_categories : Set the categories to the specified ones.
	**/
	public var categories : Dynamic;
	/**
		Return Series of codes as well as the index.
	**/
	public var codes : Dynamic;
	/**
		Whether the categories have an ordered relationship.
	**/
	public var ordered : Dynamic;
	/**
		Remove the specified categories.
		
		`removals` must be included in the old categories. Values which were in
		the removed categories will be set to NaN
		
		Parameters
		----------
		removals : category or list of categories
		   The categories which should be removed.
		inplace : bool, default False
		   Whether or not to remove the categories inplace or return a copy of
		   this categorical with removed categories.
		
		   .. deprecated:: 1.3.0
		
		Returns
		-------
		cat : Categorical or None
		    Categorical with removed categories or None if ``inplace=True``.
		
		Raises
		------
		ValueError
		    If the removals are not contained in the categories
		
		See Also
		--------
		rename_categories : Rename categories.
		reorder_categories : Reorder categories.
		add_categories : Add new categories.
		remove_unused_categories : Remove categories which are not used.
		set_categories : Set the categories to the specified ones.
		
		Examples
		--------
		>>> c = pd.Categorical(['a', 'c', 'b', 'c', 'd'])
		>>> c
		['a', 'c', 'b', 'c', 'd']
		Categories (4, object): ['a', 'b', 'c', 'd']
		
		>>> c.remove_categories(['d', 'a'])
		[NaN, 'c', 'b', 'c', NaN]
		Categories (2, object): ['b', 'c']
	**/
	public function remove_categories(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Remove categories which are not used.
		
		Parameters
		----------
		inplace : bool, default False
		   Whether or not to drop unused categories inplace or return a copy of
		   this categorical with unused categories dropped.
		
		   .. deprecated:: 1.2.0
		
		Returns
		-------
		cat : Categorical or None
		    Categorical with unused categories dropped or None if ``inplace=True``.
		
		See Also
		--------
		rename_categories : Rename categories.
		reorder_categories : Reorder categories.
		add_categories : Add new categories.
		remove_categories : Remove the specified categories.
		set_categories : Set the categories to the specified ones.
		
		Examples
		--------
		>>> c = pd.Categorical(['a', 'c', 'b', 'c', 'd'])
		>>> c
		['a', 'c', 'b', 'c', 'd']
		Categories (4, object): ['a', 'b', 'c', 'd']
		
		>>> c[2] = 'a'
		>>> c[4] = 'c'
		>>> c
		['a', 'c', 'a', 'c', 'c']
		Categories (4, object): ['a', 'b', 'c', 'd']
		
		>>> c.remove_unused_categories()
		['a', 'c', 'a', 'c', 'c']
		Categories (2, object): ['a', 'c']
	**/
	public function remove_unused_categories(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Rename categories.
		
		Parameters
		----------
		new_categories : list-like, dict-like or callable
		
		    New categories which will replace old categories.
		
		    * list-like: all items must be unique and the number of items in
		      the new categories must match the existing number of categories.
		
		    * dict-like: specifies a mapping from
		      old categories to new. Categories not contained in the mapping
		      are passed through and extra categories in the mapping are
		      ignored.
		
		    * callable : a callable that is called on all items in the old
		      categories and whose return values comprise the new categories.
		
		inplace : bool, default False
		    Whether or not to rename the categories inplace or return a copy of
		    this categorical with renamed categories.
		
		    .. deprecated:: 1.3.0
		
		Returns
		-------
		cat : Categorical or None
		    Categorical with removed categories or None if ``inplace=True``.
		
		Raises
		------
		ValueError
		    If new categories are list-like and do not have the same number of
		    items than the current categories or do not validate as categories
		
		See Also
		--------
		reorder_categories : Reorder categories.
		add_categories : Add new categories.
		remove_categories : Remove the specified categories.
		remove_unused_categories : Remove categories which are not used.
		set_categories : Set the categories to the specified ones.
		
		Examples
		--------
		>>> c = pd.Categorical(['a', 'a', 'b'])
		>>> c.rename_categories([0, 1])
		[0, 0, 1]
		Categories (2, int64): [0, 1]
		
		For dict-like ``new_categories``, extra keys are ignored and
		categories not in the dictionary are passed through
		
		>>> c.rename_categories({'a': 'A', 'c': 'C'})
		['A', 'A', 'b']
		Categories (2, object): ['A', 'b']
		
		You may also provide a callable to create the new categories
		
		>>> c.rename_categories(lambda x: x.upper())
		['A', 'A', 'B']
		Categories (2, object): ['A', 'B']
	**/
	public function rename_categories(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Reorder categories as specified in new_categories.
		
		`new_categories` need to include all old categories and no new category
		items.
		
		Parameters
		----------
		new_categories : Index-like
		   The categories in new order.
		ordered : bool, optional
		   Whether or not the categorical is treated as a ordered categorical.
		   If not given, do not change the ordered information.
		inplace : bool, default False
		   Whether or not to reorder the categories inplace or return a copy of
		   this categorical with reordered categories.
		
		   .. deprecated:: 1.3.0
		
		Returns
		-------
		cat : Categorical or None
		    Categorical with removed categories or None if ``inplace=True``.
		
		Raises
		------
		ValueError
		    If the new categories do not contain all old category items or any
		    new ones
		
		See Also
		--------
		rename_categories : Rename categories.
		add_categories : Add new categories.
		remove_categories : Remove the specified categories.
		remove_unused_categories : Remove categories which are not used.
		set_categories : Set the categories to the specified ones.
	**/
	public function reorder_categories(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Set the categories to the specified new_categories.
		
		`new_categories` can include new categories (which will result in
		unused categories) or remove old categories (which results in values
		set to NaN). If `rename==True`, the categories will simple be renamed
		(less or more items than in old categories will result in values set to
		NaN or in unused categories respectively).
		
		This method can be used to perform more than one action of adding,
		removing, and reordering simultaneously and is therefore faster than
		performing the individual steps via the more specialised methods.
		
		On the other hand this methods does not do checks (e.g., whether the
		old categories are included in the new categories on a reorder), which
		can result in surprising changes, for example when using special string
		dtypes, which does not considers a S1 string equal to a single char
		python string.
		
		Parameters
		----------
		new_categories : Index-like
		   The categories in new order.
		ordered : bool, default False
		   Whether or not the categorical is treated as a ordered categorical.
		   If not given, do not change the ordered information.
		rename : bool, default False
		   Whether or not the new_categories should be considered as a rename
		   of the old categories or as reordered categories.
		inplace : bool, default False
		   Whether or not to reorder the categories in-place or return a copy
		   of this categorical with reordered categories.
		
		   .. deprecated:: 1.3.0
		
		Returns
		-------
		Categorical with reordered categories or None if inplace.
		
		Raises
		------
		ValueError
		    If new_categories does not validate as categories
		
		See Also
		--------
		rename_categories : Rename categories.
		reorder_categories : Reorder categories.
		add_categories : Add new categories.
		remove_categories : Remove the specified categories.
		remove_unused_categories : Remove categories which are not used.
	**/
	public function set_categories(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}