/* This file is generated, do not edit! */
package scipy.linalg._calc_lwork;
@:pythonImport("scipy.linalg._calc_lwork") extern class _Calc_lwork_Module {
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var __version__ : Dynamic;
	/**
		gees - Function signature:
		  minwrk,maxwrk = gees(prefix,n,[compute_v])
		Required arguments:
		  prefix : input string(len=1)
		  n : input int
		Optional arguments:
		  compute_v := 1 input int
		Return objects:
		  minwrk : int
		  maxwrk : int
	**/
	static public function gees(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		geev - Function signature:
		  minwrk,maxwrk = geev(prefix,n,[compute_vl,compute_vr])
		Required arguments:
		  prefix : input string(len=1)
		  n : input int
		Optional arguments:
		  compute_vl := 1 input int
		  compute_vr := 1 input int
		Return objects:
		  minwrk : int
		  maxwrk : int
	**/
	static public function geev(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		gehrd - Function signature:
		  minwrk,maxwrk = gehrd(prefix,n,lo,hi)
		Required arguments:
		  prefix : input string(len=1)
		  n : input int
		  lo : input int
		  hi : input int
		Return objects:
		  minwrk : int
		  maxwrk : int
	**/
	static public function gehrd(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		gelss - Function signature:
		  minwrk,maxwrk = gelss(prefix,m,n,nrhs)
		Required arguments:
		  prefix : input string(len=1)
		  m : input int
		  n : input int
		  nrhs : input int
		Return objects:
		  minwrk : int
		  maxwrk : int
	**/
	static public function gelss(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		geqrf - Function signature:
		  minwrk,maxwrk = geqrf(prefix,m,n)
		Required arguments:
		  prefix : input string(len=1)
		  m : input int
		  n : input int
		Return objects:
		  minwrk : int
		  maxwrk : int
	**/
	static public function geqrf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		gesdd - Function signature:
		  minwrk,maxwrk = gesdd(prefix,m,n,compute_uv)
		Required arguments:
		  prefix : input string(len=1)
		  m : input int
		  n : input int
		  compute_uv : input int
		Return objects:
		  minwrk : int
		  maxwrk : int
	**/
	static public function gesdd(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		getri - Function signature:
		  minwrk,maxwrk = getri(prefix,n)
		Required arguments:
		  prefix : input string(len=1)
		  n : input int
		Return objects:
		  minwrk : int
		  maxwrk : int
	**/
	static public function getri(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		gqr - Function signature:
		  minwrk,maxwrk = gqr(prefix,m,n)
		Required arguments:
		  prefix : input string(len=1)
		  m : input int
		  n : input int
		Return objects:
		  minwrk : int
		  maxwrk : int
	**/
	static public function gqr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		heev - Function signature:
		  minwrk,maxwrk = heev(prefix,n,[lower])
		Required arguments:
		  prefix : input string(len=1)
		  n : input int
		Optional arguments:
		  lower := 0 input int
		Return objects:
		  minwrk : int
		  maxwrk : int
	**/
	static public function heev(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		syev - Function signature:
		  minwrk,maxwrk = syev(prefix,n,[lower])
		Required arguments:
		  prefix : input string(len=1)
		  n : input int
		Optional arguments:
		  lower := 0 input int
		Return objects:
		  minwrk : int
		  maxwrk : int
	**/
	static public function syev(args:haxe.extern.Rest<Dynamic>):Dynamic;
}