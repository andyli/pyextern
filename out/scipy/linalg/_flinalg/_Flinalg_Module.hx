/* This file is generated, do not edit! */
package scipy.linalg._flinalg;
@:pythonImport("scipy.linalg._flinalg") extern class _Flinalg_Module {
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var __version__ : Dynamic;
	/**
		cdet_c - Function signature:
		  det,info = cdet_c(a,[overwrite_a])
		Required arguments:
		  a : input rank-2 array('F') with bounds (n,n)
		Optional arguments:
		  overwrite_a := 0 input int
		Return objects:
		  det : complex
		  info : int
	**/
	static public function cdet_c(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		cdet_r - Function signature:
		  det,info = cdet_r(a,[overwrite_a])
		Required arguments:
		  a : input rank-2 array('F') with bounds (n,n)
		Optional arguments:
		  overwrite_a := 0 input int
		Return objects:
		  det : complex
		  info : int
	**/
	static public function cdet_r(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		clu_c - Function signature:
		  p,l,u,info = clu_c(a,[permute_l,overwrite_a])
		Required arguments:
		  a : input rank-2 array('F') with bounds (m,n)
		Optional arguments:
		  overwrite_a := 0 input int
		  permute_l := 0 input int
		Return objects:
		  p : rank-2 array('f') with bounds (m1,m1)
		  l : rank-2 array('F') with bounds (m,k)
		  u : rank-2 array('F') with bounds (k,n)
		  info : int
	**/
	static public function clu_c(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ddet_c - Function signature:
		  det,info = ddet_c(a,[overwrite_a])
		Required arguments:
		  a : input rank-2 array('d') with bounds (n,n)
		Optional arguments:
		  overwrite_a := 0 input int
		Return objects:
		  det : float
		  info : int
	**/
	static public function ddet_c(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ddet_r - Function signature:
		  det,info = ddet_r(a,[overwrite_a])
		Required arguments:
		  a : input rank-2 array('d') with bounds (n,n)
		Optional arguments:
		  overwrite_a := 0 input int
		Return objects:
		  det : float
		  info : int
	**/
	static public function ddet_r(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		dlu_c - Function signature:
		  p,l,u,info = dlu_c(a,[permute_l,overwrite_a])
		Required arguments:
		  a : input rank-2 array('d') with bounds (m,n)
		Optional arguments:
		  overwrite_a := 0 input int
		  permute_l := 0 input int
		Return objects:
		  p : rank-2 array('d') with bounds (m1,m1)
		  l : rank-2 array('d') with bounds (m,k)
		  u : rank-2 array('d') with bounds (k,n)
		  info : int
	**/
	static public function dlu_c(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		sdet_c - Function signature:
		  det,info = sdet_c(a,[overwrite_a])
		Required arguments:
		  a : input rank-2 array('f') with bounds (n,n)
		Optional arguments:
		  overwrite_a := 0 input int
		Return objects:
		  det : float
		  info : int
	**/
	static public function sdet_c(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		sdet_r - Function signature:
		  det,info = sdet_r(a,[overwrite_a])
		Required arguments:
		  a : input rank-2 array('f') with bounds (n,n)
		Optional arguments:
		  overwrite_a := 0 input int
		Return objects:
		  det : float
		  info : int
	**/
	static public function sdet_r(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		slu_c - Function signature:
		  p,l,u,info = slu_c(a,[permute_l,overwrite_a])
		Required arguments:
		  a : input rank-2 array('f') with bounds (m,n)
		Optional arguments:
		  overwrite_a := 0 input int
		  permute_l := 0 input int
		Return objects:
		  p : rank-2 array('f') with bounds (m1,m1)
		  l : rank-2 array('f') with bounds (m,k)
		  u : rank-2 array('f') with bounds (k,n)
		  info : int
	**/
	static public function slu_c(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		zdet_c - Function signature:
		  det,info = zdet_c(a,[overwrite_a])
		Required arguments:
		  a : input rank-2 array('D') with bounds (n,n)
		Optional arguments:
		  overwrite_a := 0 input int
		Return objects:
		  det : complex
		  info : int
	**/
	static public function zdet_c(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		zdet_r - Function signature:
		  det,info = zdet_r(a,[overwrite_a])
		Required arguments:
		  a : input rank-2 array('D') with bounds (n,n)
		Optional arguments:
		  overwrite_a := 0 input int
		Return objects:
		  det : complex
		  info : int
	**/
	static public function zdet_r(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		zlu_c - Function signature:
		  p,l,u,info = zlu_c(a,[permute_l,overwrite_a])
		Required arguments:
		  a : input rank-2 array('D') with bounds (m,n)
		Optional arguments:
		  overwrite_a := 0 input int
		  permute_l := 0 input int
		Return objects:
		  p : rank-2 array('d') with bounds (m1,m1)
		  l : rank-2 array('D') with bounds (m,k)
		  u : rank-2 array('D') with bounds (k,n)
		  info : int
	**/
	static public function zlu_c(args:haxe.extern.Rest<Dynamic>):Dynamic;
}