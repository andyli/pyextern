/* This file is generated, do not edit! */
package pandas.core.groupby.indexing;
@:pythonImport("pandas.core.groupby.indexing", "GroupByIndexingMixin") extern class GroupByIndexingMixin {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		Default dir() implementation.
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
	public function ___init__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Void;
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
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		Size of object in memory, in bytes.
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
	public var _ascending_count : Dynamic;
	public var _descending_count : Dynamic;
	public function _make_mask_from_int(arg:Dynamic):Dynamic;
	public function _make_mask_from_list(args:Dynamic):Dynamic;
	public function _make_mask_from_positional_indexer(arg:Dynamic):Dynamic;
	public function _make_mask_from_slice(arg:Dynamic):Dynamic;
	public function _make_mask_from_tuple(args:Dynamic):Dynamic;
	/**
		Return positional selection for each group.
		
		``groupby._positional_selector[i:j]`` is similar to
		``groupby.apply(lambda x: x.iloc[i:j])``
		but much faster and preserves the original index and order.
		
		``_positional_selector[]`` is compatible with and extends :meth:`~GroupBy.head`
		and :meth:`~GroupBy.tail`. For example:
		
		- ``head(5)``
		- ``_positional_selector[5:-5]``
		- ``tail(5)``
		
		together return all the rows.
		
		Allowed inputs for the index are:
		
		- An integer valued iterable, e.g. ``range(2, 4)``.
		- A comma separated list of integers and slices, e.g. ``5``, ``2, 4``, ``2:4``.
		
		The output format is the same as :meth:`~GroupBy.head` and
		:meth:`~GroupBy.tail`, namely
		a subset of the ``DataFrame`` or ``Series`` with the index and order preserved.
		
		Returns
		-------
		Series
		    The filtered subset of the original Series.
		DataFrame
		    The filtered subset of the original DataFrame.
		
		See Also
		--------
		DataFrame.iloc : Purely integer-location based indexing for selection by
		    position.
		GroupBy.head : Return first n rows of each group.
		GroupBy.tail : Return last n rows of each group.
		GroupBy.nth : Take the nth row from each group if n is an int, or a
		    subset of rows, if n is a list of ints.
		
		Notes
		-----
		- The slice step cannot be negative.
		- If the index specification results in overlaps, the item is not duplicated.
		- If the index specification changes the order of items, then
		  they are returned in their original order.
		  By contrast, ``DataFrame.iloc`` can change the row order.
		- ``groupby()`` parameters such as as_index and dropna are ignored.
		
		The differences between ``_positional_selector[]`` and :meth:`~GroupBy.nth`
		with ``as_index=False`` are:
		
		- Input to ``_positional_selector`` can include
		  one or more slices whereas ``nth``
		  just handles an integer or a list of integers.
		- ``_positional_selector`` can  accept a slice relative to the
		  last row of each group.
		- ``_positional_selector`` does not have an equivalent to the
		  ``nth()`` ``dropna`` parameter.
		
		Examples
		--------
		>>> df = pd.DataFrame([["a", 1], ["a", 2], ["a", 3], ["b", 4], ["b", 5]],
		...                   columns=["A", "B"])
		>>> df.groupby("A")._positional_selector[1:2]
		   A  B
		1  a  2
		4  b  5
		
		>>> df.groupby("A")._positional_selector[1, -1]
		   A  B
		1  a  2
		2  a  3
		4  b  5
	**/
	public var _positional_selector : Dynamic;
}