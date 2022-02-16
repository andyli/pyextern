/* This file is generated, do not edit! */
package pandas.tseries.api;
@:pythonImport("pandas.tseries.api") extern class Api_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Infer the most likely frequency given the input index. If the frequency is
		uncertain, a warning will be printed.
		
		Parameters
		----------
		index : DatetimeIndex or TimedeltaIndex
		  If passed a Series will use the values of the series (NOT THE INDEX).
		warn : bool, default True
		
		Returns
		-------
		str or None
		    None if no discernible frequency.
		
		Raises
		------
		TypeError
		    If the index is not datetime-like.
		ValueError
		    If there are fewer than three values.
		
		Examples
		--------
		>>> idx = pd.date_range(start='2020/12/01', end='2020/12/30', periods=30)
		>>> pd.infer_freq(idx)
		'D'
	**/
	static public function infer_freq(index:Dynamic, ?warn:Dynamic):Dynamic;
}