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
	/**
		Register a custom accessor on  objects.
		
		Parameters
		----------
		name : str
		    Name under which the accessor should be registered. A warning is issued
		    if this name conflicts with a preexisting attribute.
		
		Returns
		-------
		callable
		    A class decorator.
		
		See Also
		--------
		register_dataframe_accessor : Register a custom accessor on DataFrame objects.
		register_series_accessor : Register a custom accessor on Series objects.
		register_index_accessor : Register a custom accessor on Index objects.
		
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
		    class GeoAccessor:
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
		
		    .. code-block:: ipython
		
		        In [1]: ds = pd.DataFrame({"longitude": np.linspace(0, 10),
		           ...:                    "latitude": np.linspace(0, 20)})
		        In [2]: ds.geo.center
		        Out[2]: (5.0, 10.0)
		        In [3]: ds.geo.plot()  # plots data on a map
	**/
	static public function _register_accessor(name:Dynamic, cls:Dynamic):Dynamic;
	static public var annotations : Dynamic;
	/**
		Add delegated names to a class using a class decorator.  This provides
		an alternative usage to directly calling `_add_delegate_accessors`
		below a class definition.
		
		Parameters
		----------
		delegate : object
		    The class to get methods/properties & doc-strings.
		accessors : Sequence[str]
		    List of accessor to add.
		typ : {'property', 'method'}
		overwrite : bool, default False
		   Overwrite the method/property in the target class if it exists.
		
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
		A decorator take docstring templates, concatenate them and perform string
		substitution on it.
		
		This decorator will add a variable "_docstring_components" to the wrapped
		callable to keep track the original docstring template for potential usage.
		If it should be consider as a template, it will be saved as a string.
		Otherwise, it will be saved as callable, and later user __doc__ and dedent
		to get docstring.
		
		Parameters
		----------
		*docstrings : str or callable
		    The string / docstring / docstring template to be appended in order
		    after default docstring under callable.
		**params
		    The string which would be used to format docstring template.
	**/
	static public function doc(?docstrings:python.VarArgs<Dynamic>, ?params:python.KwArgs<Dynamic>):Dynamic;
	/**
		Find the first place in the stack that is not inside pandas
		(tests notwithstanding).
	**/
	static public function find_stack_level():Dynamic;
	/**
		Register a custom accessor on DataFrame objects.
		
		Parameters
		----------
		name : str
		    Name under which the accessor should be registered. A warning is issued
		    if this name conflicts with a preexisting attribute.
		
		Returns
		-------
		callable
		    A class decorator.
		
		See Also
		--------
		register_dataframe_accessor : Register a custom accessor on DataFrame objects.
		register_series_accessor : Register a custom accessor on Series objects.
		register_index_accessor : Register a custom accessor on Index objects.
		
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
		    class GeoAccessor:
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
		
		    .. code-block:: ipython
		
		        In [1]: ds = pd.DataFrame({"longitude": np.linspace(0, 10),
		           ...:                    "latitude": np.linspace(0, 20)})
		        In [2]: ds.geo.center
		        Out[2]: (5.0, 10.0)
		        In [3]: ds.geo.plot()  # plots data on a map
	**/
	static public function register_dataframe_accessor(name:Dynamic):Dynamic;
	/**
		Register a custom accessor on Index objects.
		
		Parameters
		----------
		name : str
		    Name under which the accessor should be registered. A warning is issued
		    if this name conflicts with a preexisting attribute.
		
		Returns
		-------
		callable
		    A class decorator.
		
		See Also
		--------
		register_dataframe_accessor : Register a custom accessor on DataFrame objects.
		register_series_accessor : Register a custom accessor on Series objects.
		register_index_accessor : Register a custom accessor on Index objects.
		
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
		    class GeoAccessor:
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
		
		    .. code-block:: ipython
		
		        In [1]: ds = pd.DataFrame({"longitude": np.linspace(0, 10),
		           ...:                    "latitude": np.linspace(0, 20)})
		        In [2]: ds.geo.center
		        Out[2]: (5.0, 10.0)
		        In [3]: ds.geo.plot()  # plots data on a map
	**/
	static public function register_index_accessor(name:Dynamic):Dynamic;
	/**
		Register a custom accessor on Series objects.
		
		Parameters
		----------
		name : str
		    Name under which the accessor should be registered. A warning is issued
		    if this name conflicts with a preexisting attribute.
		
		Returns
		-------
		callable
		    A class decorator.
		
		See Also
		--------
		register_dataframe_accessor : Register a custom accessor on DataFrame objects.
		register_series_accessor : Register a custom accessor on Series objects.
		register_index_accessor : Register a custom accessor on Index objects.
		
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
		    class GeoAccessor:
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
		
		    .. code-block:: ipython
		
		        In [1]: ds = pd.DataFrame({"longitude": np.linspace(0, 10),
		           ...:                    "latitude": np.linspace(0, 20)})
		        In [2]: ds.geo.center
		        Out[2]: (5.0, 10.0)
		        In [3]: ds.geo.plot()  # plots data on a map
	**/
	static public function register_series_accessor(name:Dynamic):Dynamic;
}