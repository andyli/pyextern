/* This file is generated, do not edit! */
package torch.optim.lr_scheduler;
@:pythonImport("torch.optim.lr_scheduler") extern class Lr_scheduler_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		bisect_right(a, x[, lo[, hi]]) -> index
		
		Return the index where to insert item x in list a, assuming a is sorted.
		
		The return value i is such that all e in a[:i] have e <= x, and all e in
		a[i:] have e > x.  So if x already appears in the list, i points just
		beyond the rightmost x already there
		
		Optional args lo (default 0) and hi (default len(a)) bound the
		slice of a to be searched.
	**/
	static public function bisect_right(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var inf : Dynamic;
}