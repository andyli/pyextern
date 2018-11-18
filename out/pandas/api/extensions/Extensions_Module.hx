/* This file is generated, do not edit! */
package pandas.api.extensions;
@:pythonImport("pandas.api.extensions") extern class Extensions_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Register a custom accessor on DataFrame objects.
		
		Parameters
		----------
		name : str
		    Name under which the accessor should be registered. A warning is issued
		    if this name conflicts with a preexisting attribute.
		
		Notes
		-----
		When accessed, your accessor will be initialized with the pandas object
		the user is interacting with. So the signature must be
		
		.. code-block:: python
		
		    def __init__(self, pandas_object):
		
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
		
		See also
		--------
		register_series_accessor, register_index_accessor
	**/
	static public function register_dataframe_accessor(name:Dynamic):Dynamic;
	/**
		Register a custom accessor on Index objects.
		
		Parameters
		----------
		name : str
		    Name under which the accessor should be registered. A warning is issued
		    if this name conflicts with a preexisting attribute.
		
		Notes
		-----
		When accessed, your accessor will be initialized with the pandas object
		the user is interacting with. So the signature must be
		
		.. code-block:: python
		
		    def __init__(self, pandas_object):
		
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
		
		See also
		--------
		register_dataframe_accessor, register_series_accessor
	**/
	static public function register_index_accessor(name:Dynamic):Dynamic;
	/**
		Register a custom accessor on Series objects.
		
		Parameters
		----------
		name : str
		    Name under which the accessor should be registered. A warning is issued
		    if this name conflicts with a preexisting attribute.
		
		Notes
		-----
		When accessed, your accessor will be initialized with the pandas object
		the user is interacting with. So the signature must be
		
		.. code-block:: python
		
		    def __init__(self, pandas_object):
		
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
		
		See also
		--------
		register_dataframe_accessor, register_index_accessor
	**/
	static public function register_series_accessor(name:Dynamic):Dynamic;
	/**
		Take elements from an array.
		
		.. versionadded:: 0.23.0
		
		Parameters
		----------
		arr : sequence
		    Non array-likes (sequences without a dtype) are coereced
		    to an ndarray.
		indices : sequence of integers
		    Indices to be taken.
		axis : int, default 0
		    The axis over which to select values.
		allow_fill : bool, default False
		    How to handle negative values in `indices`.
		
		    * False: negative values in `indices` indicate positional indices
		      from the right (the default). This is similar to :func:`numpy.take`.
		
		    * True: negative values in `indices` indicate
		      missing values. These values are set to `fill_value`. Any other
		      other negative values raise a ``ValueError``.
		
		fill_value : any, optional
		    Fill value to use for NA-indices when `allow_fill` is True.
		    This may be ``None``, in which case the default NA value for
		    the type (``self.dtype.na_value``) is used.
		
		    For multi-dimensional `arr`, each *element* is filled with
		    `fill_value`.
		
		Returns
		-------
		ndarray or ExtensionArray
		    Same type as the input.
		
		Raises
		------
		IndexError
		    When `indices` is out of bounds for the array.
		ValueError
		    When the indexer contains negative values other than ``-1``
		    and `allow_fill` is True.
		
		Notes
		-----
		When `allow_fill` is False, `indices` may be whatever dimensionality
		is accepted by NumPy for `arr`.
		
		When `allow_fill` is True, `indices` should be 1-D.
		
		See Also
		--------
		numpy.take
		
		Examples
		--------
		>>> from pandas.api.extensions import take
		
		With the default ``allow_fill=False``, negative numbers indicate
		positional indices from the right.
		
		>>> take(np.array([10, 20, 30]), [0, 0, -1])
		array([10, 10, 30])
		
		Setting ``allow_fill=True`` will place `fill_value` in those positions.
		
		>>> take(np.array([10, 20, 30]), [0, 0, -1], allow_fill=True)
		array([10., 10., nan])
		
		>>> take(np.array([10, 20, 30]), [0, 0, -1], allow_fill=True,
		...      fill_value=-10)
		array([ 10,  10, -10])
	**/
	static public function take(arr:Dynamic, indices:Dynamic, ?axis:Dynamic, ?allow_fill:Dynamic, ?fill_value:Dynamic):Dynamic;
}