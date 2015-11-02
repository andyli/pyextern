/* This file is generated, do not edit! */
package pandas.io.wb;
@:pythonImport("pandas.io.wb") extern class Wb_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var __warningregistry__ : Dynamic;
	static public var _cached_series : Dynamic;
	static public function _get_data(?indicator:Dynamic, ?country:Dynamic, ?start:Dynamic, ?end:Dynamic):Dynamic;
	static public var country_codes : Dynamic;
	/**
		Download data series from the World Bank's World Development Indicators
		
		Parameters
		----------
		
		indicator: string or list of strings
		    taken from the ``id`` field in ``WDIsearch()``
		
		country: string or list of strings.
		    ``all`` downloads data for all countries
		    2 or 3 character ISO country codes select individual
		    countries (e.g.``US``,``CA``) or (e.g.``USA``,``CAN``).  The codes
		    can be mixed.
		
		    The two ISO lists of countries, provided by wikipedia, are hardcoded
		    into pandas as of 11/10/2014.
		
		start: int
		    First year of the data series
		
		end: int
		    Last year of the data series (inclusive)
		
		errors: str {'ignore', 'warn', 'raise'}, default 'warn'
		    Country codes are validated against a hardcoded list.  This controls
		    the outcome of that validation, and attempts to also apply
		    to the results from world bank.
		
		    errors='raise', will raise a ValueError on a bad country code.
		
		Returns
		-------
		
		``pandas`` DataFrame with columns: country, iso_code, year,
		indicator value.
	**/
	static public function download(?country:Dynamic, ?indicator:Dynamic, ?start:Dynamic, ?end:Dynamic, ?errors:Dynamic):Dynamic;
	/**
		Query information about countries
		    
	**/
	static public function get_countries():Dynamic;
	/**
		Download information about all World Bank data series
		    
	**/
	static public function get_indicators():Dynamic;
	static public function lrange(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var print_function : Dynamic;
	/**
		reduce(function, sequence[, initial]) -> value
		
		Apply a function of two arguments cumulatively to the items of a sequence,
		from left to right, so as to reduce the sequence to a single value.
		For example, reduce(lambda x, y: x+y, [1, 2, 3, 4, 5]) calculates
		((((1+2)+3)+4)+5).  If initial is present, it is placed before the items
		of the sequence in the calculation, and serves as a default when the
		sequence is empty.
	**/
	static public function reduce(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Search available data series from the world bank
		
		Parameters
		----------
		
		string: string
		    regular expression
		field: string
		    id, name, source, sourceNote, sourceOrganization, topics
		    See notes below
		case: bool
		    case sensitive search?
		
		Notes
		-----
		
		The first time this function is run it will download and cache the full
		list of available series. Depending on the speed of your network
		connection, this can take time. Subsequent searches will use the cached
		copy, so they should be much faster.
		
		id : Data series indicator (for use with the ``indicator`` argument of
		``WDI()``) e.g. NY.GNS.ICTR.GN.ZS"
		name: Short description of the data series
		source: Data collection project
		sourceOrganization: Data collection organization
		note:
		sourceNote:
		topics:
	**/
	static public function search(?string:Dynamic, ?field:Dynamic, ?_case:Dynamic):Dynamic;
	static public function urlopen(url:Dynamic, ?data:Dynamic, ?timeout:Dynamic, ?cafile:Dynamic, ?capath:Dynamic, ?cadefault:Dynamic, ?context:Dynamic):Dynamic;
}