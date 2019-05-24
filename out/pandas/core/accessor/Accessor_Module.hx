/* This file is generated, do not edit! */
package pandas.core.accessor;
@:pythonImport("pandas.core.accessor") extern class Accessor_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _doc : Dynamic;
	static public function _register_accessor(name:Dynamic, cls:Dynamic):Dynamic;
	/**
		Add delegated names to a class using a class decorator.  This provides
		an alternative usage to directly calling `_add_delegate_accessors`
		below a class definition.
		
		Parameters
		----------
		delegate : object
		    the class to get methods/properties & doc-strings
		acccessors : Sequence[str]
		    List of accessor to add
		typ : {'property', 'method'}
		overwrite : boolean, default False
		   overwrite the method/property in the target class if it exists
		
		Returns
		-------
		callable
		    A class decorator.
		
		Examples
		--------
		@delegate_names(Categorical, ["categories", "ordered"], "property")
		class CategoricalAccessor(PandasDelegate):
		    [...]
	**/
	static public function delegate_names(delegate:Dynamic, accessors:Dynamic, typ:Dynamic, ?overwrite:Dynamic):Dynamic;
	/**
		Register a custom accessor on DataFrame objects.
		
		Parameters
		----------
		name : str
		    Name under which the accessor should be registered. A warning is issued
		    if this name conflicts with a preexisting attribute.
		
		See Also
		--------
		register_series_accessor, register_index_accessor
		
		Notes
		-----
		When accessed, your accessor will be initialized with the pandas object
		the user is interacting with. So the signature must be
		
		.. code-block:: python
		
		    def __init__(self, pandas_object):  # noqa: E999
		        ...
		
		For consistency with pandas methods, you should raise an ``AttributeError``
		if the data passed to your accessor has an incorrect dtype.
		
		>>> pd.Series(['a', 'b']).dt
		Traceback (most recent call last):
		...
		AttributeError: Can only use .dt accessor with datetimelike values
		
		Examples
		--------
		
		In your library code::
		
		    import pandas as pd
		
		    @pd.api.extensions.register_dataframe_accessor("geo")
		    class GeoAccessor(object):
		        def __init__(self, pandas_obj):
		            self._obj = pandas_obj
		
		        @property
		        def center(self):
		            # return the geographic center point of this DataFrame
		            lat = self._obj.latitude
		            lon = self._obj.longitude
		            return (float(lon.mean()), float(lat.mean()))
		
		        def plot(self):
		            # plot this array's data on a map, e.g., using Cartopy
		            pass
		
		Back in an interactive IPython session:
		
		    >>> ds = pd.DataFrame({'longitude': np.linspace(0, 10),
		    ...                    'latitude': np.linspace(0, 20)})
		    >>> ds.geo.center
		    (5.0, 10.0)
		    >>> ds.geo.plot()
		    # plots data on a map
	**/
	static public function register_dataframe_accessor(name:Dynamic):Dynamic;
	/**
		Register a custom accessor on Index objects.
		
		Parameters
		----------
		name : str
		    Name under which the accessor should be registered. A warning is issued
		    if this name conflicts with a preexisting attribute.
		
		See Also
		--------
		register_dataframe_accessor, register_series_accessor
		
		Notes
		-----
		When accessed, your accessor will be initialized with the pandas object
		the user is interacting with. So the signature must be
		
		.. code-block:: python
		
		    def __init__(self, pandas_object):  # noqa: E999
		        ...
		
		For consistency with pandas methods, you should raise an ``AttributeError``
		if the data passed to your accessor has an incorrect dtype.
		
		>>> pd.Series(['a', 'b']).dt
		Traceback (most recent call last):
		...
		AttributeError: Can only use .dt accessor with datetimelike values
		
		Examples
		--------
		
		In your library code::
		
		    import pandas as pd
		
		    @pd.api.extensions.register_dataframe_accessor("geo")
		    class GeoAccessor(object):
		        def __init__(self, pandas_obj):
		            self._obj = pandas_obj
		
		        @property
		        def center(self):
		            # return the geographic center point of this DataFrame
		            lat = self._obj.latitude
		            lon = self._obj.longitude
		            return (float(lon.mean()), float(lat.mean()))
		
		        def plot(self):
		            # plot this array's data on a map, e.g., using Cartopy
		            pass
		
		Back in an interactive IPython session:
		
		    >>> ds = pd.DataFrame({'longitude': np.linspace(0, 10),
		    ...                    'latitude': np.linspace(0, 20)})
		    >>> ds.geo.center
		    (5.0, 10.0)
		    >>> ds.geo.plot()
		    # plots data on a map
	**/
	static public function register_index_accessor(name:Dynamic):Dynamic;
	/**
		Register a custom accessor on Series objects.
		
		Parameters
		----------
		name : str
		    Name under which the accessor should be registered. A warning is issued
		    if this name conflicts with a preexisting attribute.
		
		See Also
		--------
		register_dataframe_accessor, register_index_accessor
		
		Notes
		-----
		When accessed, your accessor will be initialized with the pandas object
		the user is interacting with. So the signature must be
		
		.. code-block:: python
		
		    def __init__(self, pandas_object):  # noqa: E999
		        ...
		
		For consistency with pandas methods, you should raise an ``AttributeError``
		if the data passed to your accessor has an incorrect dtype.
		
		>>> pd.Series(['a', 'b']).dt
		Traceback (most recent call last):
		...
		AttributeError: Can only use .dt accessor with datetimelike values
		
		Examples
		--------
		
		In your library code::
		
		    import pandas as pd
		
		    @pd.api.extensions.register_dataframe_accessor("geo")
		    class GeoAccessor(object):
		        def __init__(self, pandas_obj):
		            self._obj = pandas_obj
		
		        @property
		        def center(self):
		            # return the geographic center point of this DataFrame
		            lat = self._obj.latitude
		            lon = self._obj.longitude
		            return (float(lon.mean()), float(lat.mean()))
		
		        def plot(self):
		            # plot this array's data on a map, e.g., using Cartopy
		            pass
		
		Back in an interactive IPython session:
		
		    >>> ds = pd.DataFrame({'longitude': np.linspace(0, 10),
		    ...                    'latitude': np.linspace(0, 20)})
		    >>> ds.geo.center
		    (5.0, 10.0)
		    >>> ds.geo.plot()
		    # plots data on a map
	**/
	static public function register_series_accessor(name:Dynamic):Dynamic;
}