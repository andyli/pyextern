/* This file is generated, do not edit! */
package pandas.core.arrays;
@:pythonImport("pandas.core.arrays") extern class Arrays_Module {
	static public var __all__ : Dynamic;
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
		Construct a new PeriodArray from a sequence of Period scalars.
		
		Parameters
		----------
		data : Sequence of Period objects
		    A sequence of Period objects. These are required to all have
		    the same ``freq.`` Missing values can be indicated by ``None``
		    or ``pandas.NaT``.
		freq : str, Tick, or Offset
		    The frequency of every element of the array. This can be specified
		    to avoid inferring the `freq` from `data`.
		copy : bool, default False
		    Whether to ensure a copy of the data is made.
		
		Returns
		-------
		PeriodArray
		
		See Also
		--------
		PeriodArray
		pandas.PeriodIndex
		
		Examples
		--------
		>>> period_array([pd.Period('2017', freq='A'),
		...               pd.Period('2018', freq='A')])
		<PeriodArray>
		['2017', '2018']
		Length: 2, dtype: period[A-DEC]
		
		>>> period_array([pd.Period('2017', freq='A'),
		...               pd.Period('2018', freq='A'),
		...               pd.NaT])
		<PeriodArray>
		['2017', '2018', 'NaT']
		Length: 3, dtype: period[A-DEC]
		
		Integers that look like years are handled
		
		>>> period_array([2000, 2001, 2002], freq='D')
		<PeriodArray>
		['2000-01-01', '2001-01-01', '2002-01-01']
		Length: 3, dtype: period[D]
		
		Datetime-like strings may also be passed
		
		>>> period_array(['2000-Q1', '2000-Q2', '2000-Q3', '2000-Q4'], freq='Q')
		<PeriodArray>
		['2000Q1', '2000Q2', '2000Q3', '2000Q4']
		Length: 4, dtype: period[Q-DEC]
	**/
	static public function period_array(data:Dynamic, ?freq:Dynamic, ?copy:Dynamic):Dynamic;
}