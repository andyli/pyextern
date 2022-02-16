/* This file is generated, do not edit! */
package pandas.core.internals.base;
@:pythonImport("pandas.core.internals.base") extern class Base_Module {
	static public function ArrayLike(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function DtypeObj(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Shape(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var T : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var annotations : Dynamic;
	static public function default_index(n:Dynamic):Dynamic;
	/**
		A decorator to indicate final methods and final classes.
		
		Use this decorator to indicate to type checkers that the decorated
		method cannot be overridden, and decorated class cannot be subclassed.
		For example:
		
		  class Base:
		      @final
		      def done(self) -> None:
		          ...
		  class Sub(Base):
		      def done(self) -> None:  # Error reported by type checker
		            ...
		
		  @final
		  class Leaf:
		      ...
		  class Other(Leaf):  # Error reported by type checker
		      ...
		
		There is no runtime checking of these properties.
	**/
	@:native("final")
	static public function _final(f:Dynamic):Dynamic;
	/**
		Find a common data type among the given dtypes.
		
		Parameters
		----------
		types : list of dtypes
		
		Returns
		-------
		pandas extension or numpy dtype
		
		See Also
		--------
		numpy.find_common_type
	**/
	static public function find_common_type(types:Dynamic):Dynamic;
	/**
		Find the common dtype for `blocks`.
		
		Parameters
		----------
		blocks : List[DtypeObj]
		
		Returns
		-------
		dtype : np.dtype, ExtensionDtype, or None
		    None is returned when `blocks` is empty.
	**/
	static public function interleaved_dtype(dtypes:Dynamic):Dynamic;
	/**
		Raise if we cannot losslessly set this element into an ndarray with this dtype.
		
		Specifically about places where we disagree with numpy.  i.e. there are
		cases where numpy will raise in doing the setitem that we do not check
		for here, e.g. setting str "X" into a numeric ndarray.
		
		Returns
		-------
		Any
		    The element, potentially cast to the dtype.
		
		Raises
		------
		ValueError : If we cannot losslessly store this element with this dtype.
	**/
	static public function np_can_hold_element(dtype:Dynamic, element:Dynamic):Dynamic;
}