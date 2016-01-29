/* This file is generated, do not edit! */
package scipy.linalg.blas;
@:pythonImport("scipy.linalg.blas") extern class Blas_Module {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _blas_alias : Dynamic;
	static public var _cblas : Dynamic;
	/**
		Return available BLAS/LAPACK functions.
		
		Used also in lapack.py. See get_blas_funcs for docstring.
	**/
	static public function _get_funcs(names:Dynamic, arrays:Dynamic, dtype:Dynamic, lib_name:Dynamic, fmodule:Dynamic, cmodule:Dynamic, fmodule_name:Dynamic, cmodule_name:Dynamic, alias:Dynamic):Dynamic;
	static public var _type_conv : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		caxpy - Function signature:
		  z = caxpy(x,y,[n,a,offx,incx,offy,incy])
		Required arguments:
		  x : input rank-1 array('F') with bounds (*)
		  y : input rank-1 array('F') with bounds (*)
		Optional arguments:
		  n := (len(x)-offx)/abs(incx) input int
		  a := (1.0, 0.0) input complex
		  offx := 0 input int
		  incx := 1 input int
		  offy := 0 input int
		  incy := 1 input int
		Return objects:
		  z : rank-1 array('F') with bounds (*) and y storage
	**/
	static public function caxpy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ccopy - Function signature:
		  y = ccopy(x,y,[n,offx,incx,offy,incy])
		Required arguments:
		  x : input rank-1 array('F') with bounds (*)
		  y : input rank-1 array('F') with bounds (*)
		Optional arguments:
		  n := (len(x)-offx)/abs(incx) input int
		  offx := 0 input int
		  incx := 1 input int
		  offy := 0 input int
		  incy := 1 input int
		Return objects:
		  y : rank-1 array('F') with bounds (*)
	**/
	static public function ccopy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		cdotc - Function signature:
		  xy = cdotc(x,y,[n,offx,incx,offy,incy])
		Required arguments:
		  x : input rank-1 array('F') with bounds (*)
		  y : input rank-1 array('F') with bounds (*)
		Optional arguments:
		  n := (len(x)-offx)/abs(incx) input int
		  offx := 0 input int
		  incx := 1 input int
		  offy := 0 input int
		  incy := 1 input int
		Return objects:
		  xy : complex
	**/
	static public function cdotc(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		cdotu - Function signature:
		  xy = cdotu(x,y,[n,offx,incx,offy,incy])
		Required arguments:
		  x : input rank-1 array('F') with bounds (*)
		  y : input rank-1 array('F') with bounds (*)
		Optional arguments:
		  n := (len(x)-offx)/abs(incx) input int
		  offx := 0 input int
		  incx := 1 input int
		  offy := 0 input int
		  incy := 1 input int
		Return objects:
		  xy : complex
	**/
	static public function cdotu(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		cgemm - Function signature:
		  c = cgemm(alpha,a,b,[beta,c,trans_a,trans_b,overwrite_c])
		Required arguments:
		  alpha : input complex
		  a : input rank-2 array('F') with bounds (lda,ka)
		  b : input rank-2 array('F') with bounds (ldb,kb)
		Optional arguments:
		  beta := (0.0, 0.0) input complex
		  c : input rank-2 array('F') with bounds (m,n)
		  overwrite_c := 0 input int
		  trans_a := 0 input int
		  trans_b := 0 input int
		Return objects:
		  c : rank-2 array('F') with bounds (m,n)
	**/
	static public function cgemm(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		cgemv - Function signature:
		  y = cgemv(alpha,a,x,[beta,y,offx,incx,offy,incy,trans,overwrite_y])
		Required arguments:
		  alpha : input complex
		  a : input rank-2 array('F') with bounds (m,n)
		  x : input rank-1 array('F') with bounds (*)
		Optional arguments:
		  beta := (0.0, 0.0) input complex
		  y : input rank-1 array('F') with bounds (ly)
		  overwrite_y := 0 input int
		  offx := 0 input int
		  incx := 1 input int
		  offy := 0 input int
		  incy := 1 input int
		  trans := 0 input int
		Return objects:
		  y : rank-1 array('F') with bounds (ly)
	**/
	static public function cgemv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		cgerc - Function signature:
		  a = cgerc(alpha,x,y,[incx,incy,a,overwrite_x,overwrite_y,overwrite_a])
		Required arguments:
		  alpha : input complex
		  x : input rank-1 array('F') with bounds (m)
		  y : input rank-1 array('F') with bounds (n)
		Optional arguments:
		  overwrite_x := 1 input int
		  incx := 1 input int
		  overwrite_y := 1 input int
		  incy := 1 input int
		  a := (0.0,0.0) input rank-2 array('F') with bounds (m,n)
		  overwrite_a := 0 input int
		Return objects:
		  a : rank-2 array('F') with bounds (m,n)
	**/
	static public function cgerc(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		cgeru - Function signature:
		  a = cgeru(alpha,x,y,[incx,incy,a,overwrite_x,overwrite_y,overwrite_a])
		Required arguments:
		  alpha : input complex
		  x : input rank-1 array('F') with bounds (m)
		  y : input rank-1 array('F') with bounds (n)
		Optional arguments:
		  overwrite_x := 1 input int
		  incx := 1 input int
		  overwrite_y := 1 input int
		  incy := 1 input int
		  a := (0.0,0.0) input rank-2 array('F') with bounds (m,n)
		  overwrite_a := 0 input int
		Return objects:
		  a : rank-2 array('F') with bounds (m,n)
	**/
	static public function cgeru(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		chemm - Function signature:
		  c = chemm(alpha,a,b,[beta,c,side,lower,overwrite_c])
		Required arguments:
		  alpha : input complex
		  a : input rank-2 array('F') with bounds (lda,ka)
		  b : input rank-2 array('F') with bounds (ldb,kb)
		Optional arguments:
		  beta := (0.0, 0.0) input complex
		  c : input rank-2 array('F') with bounds (m,n)
		  overwrite_c := 0 input int
		  side := 0 input int
		  lower := 0 input int
		Return objects:
		  c : rank-2 array('F') with bounds (m,n)
	**/
	static public function chemm(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		chemv - Function signature:
		  y = chemv(alpha,a,x,[beta,y,offx,incx,offy,incy,lower,overwrite_y])
		Required arguments:
		  alpha : input complex
		  a : input rank-2 array('F') with bounds (n,n)
		  x : input rank-1 array('F') with bounds (*)
		Optional arguments:
		  beta := (0.0, 0.0) input complex
		  y : input rank-1 array('F') with bounds (ly)
		  overwrite_y := 0 input int
		  offx := 0 input int
		  incx := 1 input int
		  offy := 0 input int
		  incy := 1 input int
		  lower := 0 input int
		Return objects:
		  y : rank-1 array('F') with bounds (ly)
	**/
	static public function chemv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		cher - Function signature:
		  a = cher(alpha,x,[lower,incx,offx,n,a,overwrite_a])
		Required arguments:
		  alpha : input complex
		  x : input rank-1 array('F') with bounds (*)
		Optional arguments:
		  lower := 0 input int
		  incx := 1 input int
		  offx := 0 input int
		  n := (len(x)-1-offx)/abs(incx)+1 input int
		  a : input rank-2 array('F') with bounds (n,n)
		  overwrite_a := 0 input int
		Return objects:
		  a : rank-2 array('F') with bounds (n,n)
	**/
	static public function cher(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		cher2 - Function signature:
		  a = cher2(alpha,x,y,[lower,incx,offx,incy,offy,n,a,overwrite_a])
		Required arguments:
		  alpha : input complex
		  x : input rank-1 array('F') with bounds (*)
		  y : input rank-1 array('F') with bounds (*)
		Optional arguments:
		  lower := 0 input int
		  incx := 1 input int
		  offx := 0 input int
		  incy := 1 input int
		  offy := 0 input int
		  n := ((len(x)-1-offx)/abs(incx)+1 <=(len(y)-1-offy)/abs(incy)+1 ?(len(x)-1-offx)/abs(incx)+1 :(len(y)-1-offy)/abs(incy)+1) input int
		  a : input rank-2 array('F') with bounds (n,n)
		  overwrite_a := 0 input int
		Return objects:
		  a : rank-2 array('F') with bounds (n,n)
	**/
	static public function cher2(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		cher2k - Function signature:
		  c = cher2k(alpha,a,b,[beta,c,trans,lower,overwrite_c])
		Required arguments:
		  alpha : input complex
		  a : input rank-2 array('F') with bounds (lda,ka)
		  b : input rank-2 array('F') with bounds (ldb,kb)
		Optional arguments:
		  beta := (0.0, 0.0) input complex
		  c : input rank-2 array('F') with bounds (n,n)
		  overwrite_c := 0 input int
		  trans := 0 input int
		  lower := 0 input int
		Return objects:
		  c : rank-2 array('F') with bounds (n,n)
	**/
	static public function cher2k(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		cherk - Function signature:
		  c = cherk(alpha,a,[beta,c,trans,lower,overwrite_c])
		Required arguments:
		  alpha : input complex
		  a : input rank-2 array('F') with bounds (lda,ka)
		Optional arguments:
		  beta := (0.0, 0.0) input complex
		  c : input rank-2 array('F') with bounds (n,n)
		  overwrite_c := 0 input int
		  trans := 0 input int
		  lower := 0 input int
		Return objects:
		  c : rank-2 array('F') with bounds (n,n)
	**/
	static public function cherk(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		crotg - Function signature:
		  c,s = crotg(a,b)
		Required arguments:
		  a : input complex
		  b : input complex
		Return objects:
		  c : complex
		  s : complex
	**/
	static public function crotg(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		cscal - Function signature:
		  x = cscal(a,x,[n,offx,incx])
		Required arguments:
		  a : input complex
		  x : input rank-1 array('F') with bounds (*)
		Optional arguments:
		  n := (len(x)-offx)/abs(incx) input int
		  offx := 0 input int
		  incx := 1 input int
		Return objects:
		  x : rank-1 array('F') with bounds (*)
	**/
	static public function cscal(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		csrot - Function signature:
		  x,y = csrot(x,y,c,s,[n,offx,incx,offy,incy,overwrite_x,overwrite_y])
		Required arguments:
		  x : input rank-1 array('F') with bounds (*)
		  y : input rank-1 array('F') with bounds (*)
		  c : input float
		  s : input float
		Optional arguments:
		  n := (len(x)-1-offx)/abs(incx)+1 input int
		  overwrite_x := 0 input int
		  offx := 0 input int
		  incx := 1 input int
		  overwrite_y := 0 input int
		  offy := 0 input int
		  incy := 1 input int
		Return objects:
		  x : rank-1 array('F') with bounds (*)
		  y : rank-1 array('F') with bounds (*)
	**/
	static public function csrot(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		csscal - Function signature:
		  x = csscal(a,x,[n,offx,incx,overwrite_x])
		Required arguments:
		  a : input float
		  x : input rank-1 array('F') with bounds (*)
		Optional arguments:
		  n := (len(x)-offx)/abs(incx) input int
		  overwrite_x := 0 input int
		  offx := 0 input int
		  incx := 1 input int
		Return objects:
		  x : rank-1 array('F') with bounds (*)
	**/
	static public function csscal(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		cswap - Function signature:
		  x,y = cswap(x,y,[n,offx,incx,offy,incy])
		Required arguments:
		  x : input rank-1 array('F') with bounds (*)
		  y : input rank-1 array('F') with bounds (*)
		Optional arguments:
		  n := (len(x)-offx)/abs(incx) input int
		  offx := 0 input int
		  incx := 1 input int
		  offy := 0 input int
		  incy := 1 input int
		Return objects:
		  x : rank-1 array('F') with bounds (*)
		  y : rank-1 array('F') with bounds (*)
	**/
	static public function cswap(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		csymm - Function signature:
		  c = csymm(alpha,a,b,[beta,c,side,lower,overwrite_c])
		Required arguments:
		  alpha : input complex
		  a : input rank-2 array('F') with bounds (lda,ka)
		  b : input rank-2 array('F') with bounds (ldb,kb)
		Optional arguments:
		  beta := (0.0, 0.0) input complex
		  c : input rank-2 array('F') with bounds (m,n)
		  overwrite_c := 0 input int
		  side := 0 input int
		  lower := 0 input int
		Return objects:
		  c : rank-2 array('F') with bounds (m,n)
	**/
	static public function csymm(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		csyr - Function signature:
		  a = csyr(alpha,x,[lower,incx,offx,n,a,overwrite_a])
		Required arguments:
		  alpha : input complex
		  x : input rank-1 array('F') with bounds (*)
		Optional arguments:
		  lower := 0 input int
		  incx := 1 input int
		  offx := 0 input int
		  n := (len(x)-1-offx)/abs(incx)+1 input int
		  a : input rank-2 array('F') with bounds (n,n)
		  overwrite_a := 0 input int
		Return objects:
		  a : rank-2 array('F') with bounds (n,n)
	**/
	static public function csyr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		csyr2k - Function signature:
		  c = csyr2k(alpha,a,b,[beta,c,trans,lower,overwrite_c])
		Required arguments:
		  alpha : input complex
		  a : input rank-2 array('F') with bounds (lda,ka)
		  b : input rank-2 array('F') with bounds (ldb,kb)
		Optional arguments:
		  beta := (0.0, 0.0) input complex
		  c : input rank-2 array('F') with bounds (n,n)
		  overwrite_c := 0 input int
		  trans := 0 input int
		  lower := 0 input int
		Return objects:
		  c : rank-2 array('F') with bounds (n,n)
	**/
	static public function csyr2k(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		csyrk - Function signature:
		  c = csyrk(alpha,a,[beta,c,trans,lower,overwrite_c])
		Required arguments:
		  alpha : input complex
		  a : input rank-2 array('F') with bounds (lda,ka)
		Optional arguments:
		  beta := (0.0, 0.0) input complex
		  c : input rank-2 array('F') with bounds (n,n)
		  overwrite_c := 0 input int
		  trans := 0 input int
		  lower := 0 input int
		Return objects:
		  c : rank-2 array('F') with bounds (n,n)
	**/
	static public function csyrk(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ctrmm - Function signature:
		  b = ctrmm(alpha,a,b,[side,lower,trans_a,diag,overwrite_b])
		Required arguments:
		  alpha : input complex
		  a : input rank-2 array('F') with bounds (lda,k)
		  b : input rank-2 array('F') with bounds (ldb,n)
		Optional arguments:
		  overwrite_b := 0 input int
		  side := 0 input int
		  lower := 0 input int
		  trans_a := 0 input int
		  diag := 0 input int
		Return objects:
		  b : rank-2 array('F') with bounds (ldb,n)
	**/
	static public function ctrmm(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ctrmv - Function signature:
		  x = ctrmv(a,x,[offx,incx,lower,trans,unitdiag,overwrite_x])
		Required arguments:
		  a : input rank-2 array('F') with bounds (n,n)
		  x : input rank-1 array('F') with bounds (*)
		Optional arguments:
		  overwrite_x := 0 input int
		  offx := 0 input int
		  incx := 1 input int
		  lower := 0 input int
		  trans := 0 input int
		  unitdiag := 0 input int
		Return objects:
		  x : rank-1 array('F') with bounds (*)
	**/
	static public function ctrmv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		dasum - Function signature:
		  s = dasum(x,[n,offx,incx])
		Required arguments:
		  x : input rank-1 array('d') with bounds (*)
		Optional arguments:
		  n := (len(x)-offx)/abs(incx) input int
		  offx := 0 input int
		  incx := 1 input int
		Return objects:
		  s : float
	**/
	static public function dasum(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		daxpy - Function signature:
		  z = daxpy(x,y,[n,a,offx,incx,offy,incy])
		Required arguments:
		  x : input rank-1 array('d') with bounds (*)
		  y : input rank-1 array('d') with bounds (*)
		Optional arguments:
		  n := (len(x)-offx)/abs(incx) input int
		  a := 1.0 input float
		  offx := 0 input int
		  incx := 1 input int
		  offy := 0 input int
		  incy := 1 input int
		Return objects:
		  z : rank-1 array('d') with bounds (*) and y storage
	**/
	static public function daxpy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		dcopy - Function signature:
		  y = dcopy(x,y,[n,offx,incx,offy,incy])
		Required arguments:
		  x : input rank-1 array('d') with bounds (*)
		  y : input rank-1 array('d') with bounds (*)
		Optional arguments:
		  n := (len(x)-offx)/abs(incx) input int
		  offx := 0 input int
		  incx := 1 input int
		  offy := 0 input int
		  incy := 1 input int
		Return objects:
		  y : rank-1 array('d') with bounds (*)
	**/
	static public function dcopy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ddot - Function signature:
		  xy = ddot(x,y,[n,offx,incx,offy,incy])
		Required arguments:
		  x : input rank-1 array('d') with bounds (*)
		  y : input rank-1 array('d') with bounds (*)
		Optional arguments:
		  n := (len(x)-offx)/abs(incx) input int
		  offx := 0 input int
		  incx := 1 input int
		  offy := 0 input int
		  incy := 1 input int
		Return objects:
		  xy : float
	**/
	static public function ddot(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		dgemm - Function signature:
		  c = dgemm(alpha,a,b,[beta,c,trans_a,trans_b,overwrite_c])
		Required arguments:
		  alpha : input float
		  a : input rank-2 array('d') with bounds (lda,ka)
		  b : input rank-2 array('d') with bounds (ldb,kb)
		Optional arguments:
		  beta := 0.0 input float
		  c : input rank-2 array('d') with bounds (m,n)
		  overwrite_c := 0 input int
		  trans_a := 0 input int
		  trans_b := 0 input int
		Return objects:
		  c : rank-2 array('d') with bounds (m,n)
	**/
	static public function dgemm(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		dgemv - Function signature:
		  y = dgemv(alpha,a,x,[beta,y,offx,incx,offy,incy,trans,overwrite_y])
		Required arguments:
		  alpha : input float
		  a : input rank-2 array('d') with bounds (m,n)
		  x : input rank-1 array('d') with bounds (*)
		Optional arguments:
		  beta := 0.0 input float
		  y : input rank-1 array('d') with bounds (ly)
		  overwrite_y := 0 input int
		  offx := 0 input int
		  incx := 1 input int
		  offy := 0 input int
		  incy := 1 input int
		  trans := 0 input int
		Return objects:
		  y : rank-1 array('d') with bounds (ly)
	**/
	static public function dgemv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		dger - Function signature:
		  a = dger(alpha,x,y,[incx,incy,a,overwrite_x,overwrite_y,overwrite_a])
		Required arguments:
		  alpha : input float
		  x : input rank-1 array('d') with bounds (m)
		  y : input rank-1 array('d') with bounds (n)
		Optional arguments:
		  overwrite_x := 1 input int
		  incx := 1 input int
		  overwrite_y := 1 input int
		  incy := 1 input int
		  a := 0.0 input rank-2 array('d') with bounds (m,n)
		  overwrite_a := 0 input int
		Return objects:
		  a : rank-2 array('d') with bounds (m,n)
	**/
	static public function dger(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var division : Dynamic;
	/**
		dnrm2 - Function signature:
		  n2 = dnrm2(x,[n,offx,incx])
		Required arguments:
		  x : input rank-1 array('d') with bounds (*)
		Optional arguments:
		  n := (len(x)-offx)/abs(incx) input int
		  offx := 0 input int
		  incx := 1 input int
		Return objects:
		  n2 : float
	**/
	static public function dnrm2(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		drot - Function signature:
		  x,y = drot(x,y,c,s,[n,offx,incx,offy,incy,overwrite_x,overwrite_y])
		Required arguments:
		  x : input rank-1 array('d') with bounds (*)
		  y : input rank-1 array('d') with bounds (*)
		  c : input float
		  s : input float
		Optional arguments:
		  n := (len(x)-1-offx)/abs(incx)+1 input int
		  overwrite_x := 0 input int
		  offx := 0 input int
		  incx := 1 input int
		  overwrite_y := 0 input int
		  offy := 0 input int
		  incy := 1 input int
		Return objects:
		  x : rank-1 array('d') with bounds (*)
		  y : rank-1 array('d') with bounds (*)
	**/
	static public function drot(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		drotg - Function signature:
		  c,s = drotg(a,b)
		Required arguments:
		  a : input float
		  b : input float
		Return objects:
		  c : float
		  s : float
	**/
	static public function drotg(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		drotm - Function signature:
		  x,y = drotm(x,y,param,[n,offx,incx,offy,incy,overwrite_x,overwrite_y])
		Required arguments:
		  x : input rank-1 array('d') with bounds (*)
		  y : input rank-1 array('d') with bounds (*)
		  param : input rank-1 array('d') with bounds (5)
		Optional arguments:
		  n := (len(x)-offx)/abs(incx) input int
		  overwrite_x := 0 input int
		  offx := 0 input int
		  incx := 1 input int
		  overwrite_y := 0 input int
		  offy := 0 input int
		  incy := 1 input int
		Return objects:
		  x : rank-1 array('d') with bounds (*)
		  y : rank-1 array('d') with bounds (*)
	**/
	static public function drotm(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		drotmg - Function signature:
		  param = drotmg(d1,d2,x1,y1)
		Required arguments:
		  d1 : input float
		  d2 : input float
		  x1 : input float
		  y1 : input float
		Return objects:
		  param : rank-1 array('d') with bounds (5)
	**/
	static public function drotmg(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		dscal - Function signature:
		  x = dscal(a,x,[n,offx,incx])
		Required arguments:
		  a : input float
		  x : input rank-1 array('d') with bounds (*)
		Optional arguments:
		  n := (len(x)-offx)/abs(incx) input int
		  offx := 0 input int
		  incx := 1 input int
		Return objects:
		  x : rank-1 array('d') with bounds (*)
	**/
	static public function dscal(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		dswap - Function signature:
		  x,y = dswap(x,y,[n,offx,incx,offy,incy])
		Required arguments:
		  x : input rank-1 array('d') with bounds (*)
		  y : input rank-1 array('d') with bounds (*)
		Optional arguments:
		  n := (len(x)-offx)/abs(incx) input int
		  offx := 0 input int
		  incx := 1 input int
		  offy := 0 input int
		  incy := 1 input int
		Return objects:
		  x : rank-1 array('d') with bounds (*)
		  y : rank-1 array('d') with bounds (*)
	**/
	static public function dswap(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		dsymm - Function signature:
		  c = dsymm(alpha,a,b,[beta,c,side,lower,overwrite_c])
		Required arguments:
		  alpha : input float
		  a : input rank-2 array('d') with bounds (lda,ka)
		  b : input rank-2 array('d') with bounds (ldb,kb)
		Optional arguments:
		  beta := 0.0 input float
		  c : input rank-2 array('d') with bounds (m,n)
		  overwrite_c := 0 input int
		  side := 0 input int
		  lower := 0 input int
		Return objects:
		  c : rank-2 array('d') with bounds (m,n)
	**/
	static public function dsymm(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		dsymv - Function signature:
		  y = dsymv(alpha,a,x,[beta,y,offx,incx,offy,incy,lower,overwrite_y])
		Required arguments:
		  alpha : input float
		  a : input rank-2 array('d') with bounds (n,n)
		  x : input rank-1 array('d') with bounds (*)
		Optional arguments:
		  beta := 0.0 input float
		  y : input rank-1 array('d') with bounds (ly)
		  overwrite_y := 0 input int
		  offx := 0 input int
		  incx := 1 input int
		  offy := 0 input int
		  incy := 1 input int
		  lower := 0 input int
		Return objects:
		  y : rank-1 array('d') with bounds (ly)
	**/
	static public function dsymv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		dsyr - Function signature:
		  a = dsyr(alpha,x,[lower,incx,offx,n,a,overwrite_a])
		Required arguments:
		  alpha : input float
		  x : input rank-1 array('d') with bounds (*)
		Optional arguments:
		  lower := 0 input int
		  incx := 1 input int
		  offx := 0 input int
		  n := (len(x)-1-offx)/abs(incx)+1 input int
		  a : input rank-2 array('d') with bounds (n,n)
		  overwrite_a := 0 input int
		Return objects:
		  a : rank-2 array('d') with bounds (n,n)
	**/
	static public function dsyr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		dsyr2 - Function signature:
		  a = dsyr2(alpha,x,y,[lower,incx,offx,incy,offy,n,a,overwrite_a])
		Required arguments:
		  alpha : input float
		  x : input rank-1 array('d') with bounds (*)
		  y : input rank-1 array('d') with bounds (*)
		Optional arguments:
		  lower := 0 input int
		  incx := 1 input int
		  offx := 0 input int
		  incy := 1 input int
		  offy := 0 input int
		  n := ((len(x)-1-offx)/abs(incx)+1 <=(len(y)-1-offy)/abs(incy)+1 ?(len(x)-1-offx)/abs(incx)+1 :(len(y)-1-offy)/abs(incy)+1) input int
		  a : input rank-2 array('d') with bounds (n,n)
		  overwrite_a := 0 input int
		Return objects:
		  a : rank-2 array('d') with bounds (n,n)
	**/
	static public function dsyr2(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		dsyr2k - Function signature:
		  c = dsyr2k(alpha,a,b,[beta,c,trans,lower,overwrite_c])
		Required arguments:
		  alpha : input float
		  a : input rank-2 array('d') with bounds (lda,ka)
		  b : input rank-2 array('d') with bounds (ldb,kb)
		Optional arguments:
		  beta := 0.0 input float
		  c : input rank-2 array('d') with bounds (n,n)
		  overwrite_c := 0 input int
		  trans := 0 input int
		  lower := 0 input int
		Return objects:
		  c : rank-2 array('d') with bounds (n,n)
	**/
	static public function dsyr2k(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		dsyrk - Function signature:
		  c = dsyrk(alpha,a,[beta,c,trans,lower,overwrite_c])
		Required arguments:
		  alpha : input float
		  a : input rank-2 array('d') with bounds (lda,ka)
		Optional arguments:
		  beta := 0.0 input float
		  c : input rank-2 array('d') with bounds (n,n)
		  overwrite_c := 0 input int
		  trans := 0 input int
		  lower := 0 input int
		Return objects:
		  c : rank-2 array('d') with bounds (n,n)
	**/
	static public function dsyrk(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		dtrmm - Function signature:
		  b = dtrmm(alpha,a,b,[side,lower,trans_a,diag,overwrite_b])
		Required arguments:
		  alpha : input float
		  a : input rank-2 array('d') with bounds (lda,k)
		  b : input rank-2 array('d') with bounds (ldb,n)
		Optional arguments:
		  overwrite_b := 0 input int
		  side := 0 input int
		  lower := 0 input int
		  trans_a := 0 input int
		  diag := 0 input int
		Return objects:
		  b : rank-2 array('d') with bounds (ldb,n)
	**/
	static public function dtrmm(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		dtrmv - Function signature:
		  x = dtrmv(a,x,[offx,incx,lower,trans,unitdiag,overwrite_x])
		Required arguments:
		  a : input rank-2 array('d') with bounds (n,n)
		  x : input rank-1 array('d') with bounds (*)
		Optional arguments:
		  overwrite_x := 0 input int
		  offx := 0 input int
		  incx := 1 input int
		  lower := 0 input int
		  trans := 0 input int
		  unitdiag := 0 input int
		Return objects:
		  x : rank-1 array('d') with bounds (*)
	**/
	static public function dtrmv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		dzasum - Function signature:
		  s = dzasum(x,[n,offx,incx])
		Required arguments:
		  x : input rank-1 array('D') with bounds (*)
		Optional arguments:
		  n := (len(x)-offx)/abs(incx) input int
		  offx := 0 input int
		  incx := 1 input int
		Return objects:
		  s : float
	**/
	static public function dzasum(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		dznrm2 - Function signature:
		  n2 = dznrm2(x,[n,offx,incx])
		Required arguments:
		  x : input rank-1 array('D') with bounds (*)
		Optional arguments:
		  n := (len(x)-offx)/abs(incx) input int
		  offx := 0 input int
		  incx := 1 input int
		Return objects:
		  n2 : float
	**/
	static public function dznrm2(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Find best-matching BLAS/LAPACK type.
		
		Arrays are used to determine the optimal prefix of BLAS routines.
		
		Parameters
		----------
		arrays : sequence of ndarrays, optional
		    Arrays can be given to determine optimal prefix of BLAS
		    routines. If not given, double-precision routines will be
		    used, otherwise the most generic type in arrays will be used.
		dtype : str or dtype, optional
		    Data-type specifier. Not used if `arrays` is non-empty.
		
		Returns
		-------
		prefix : str
		    BLAS/LAPACK prefix character.
		dtype : dtype
		    Inferred Numpy data type.
		prefer_fortran : bool
		    Whether to prefer Fortran order routines over C order.
	**/
	static public function find_best_blas_type(?arrays:Dynamic, ?dtype:Dynamic):String;
	/**
		Return available BLAS function objects from names.
		
		Arrays are used to determine the optimal prefix of BLAS routines.
		
		Parameters
		----------
		names : str or sequence of str
		    Name(s) of BLAS functions without type prefix.
		
		arrays : sequence of ndarrays, optional
		    Arrays can be given to determine optimal prefix of BLAS
		    routines. If not given, double-precision routines will be
		    used, otherwise the most generic type in arrays will be used.
		
		dtype : str or dtype, optional
		    Data-type specifier. Not used if `arrays` is non-empty.
		
		
		Returns
		-------
		funcs : list
		    List containing the found function(s).
		
		
		Notes
		-----
		This routine automatically chooses between Fortran/C
		interfaces. Fortran code is used whenever possible for arrays with
		column major order. In all other cases, C code is preferred.
		
		In BLAS, the naming convention is that all functions start with a
		type prefix, which depends on the type of the principal
		matrix. These can be one of {'s', 'd', 'c', 'z'} for the numpy
		types {float32, float64, complex64, complex128} respectively.
		The code and the dtype are stored in attributes `typecode` and `dtype`
		of the returned functions.
	**/
	static public function get_blas_funcs(names:Dynamic, ?arrays:Dynamic, ?dtype:Dynamic):Array<Dynamic>;
	/**
		icamax - Function signature:
		  k = icamax(x,[n,offx,incx])
		Required arguments:
		  x : input rank-1 array('F') with bounds (*)
		Optional arguments:
		  n := (len(x)-offx)/abs(incx) input int
		  offx := 0 input int
		  incx := 1 input int
		Return objects:
		  k : int
	**/
	static public function icamax(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		idamax - Function signature:
		  k = idamax(x,[n,offx,incx])
		Required arguments:
		  x : input rank-1 array('d') with bounds (*)
		Optional arguments:
		  n := (len(x)-offx)/abs(incx) input int
		  offx := 0 input int
		  incx := 1 input int
		Return objects:
		  k : int
	**/
	static public function idamax(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		isamax - Function signature:
		  k = isamax(x,[n,offx,incx])
		Required arguments:
		  x : input rank-1 array('f') with bounds (*)
		Optional arguments:
		  n := (len(x)-offx)/abs(incx) input int
		  offx := 0 input int
		  incx := 1 input int
		Return objects:
		  k : int
	**/
	static public function isamax(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		izamax - Function signature:
		  k = izamax(x,[n,offx,incx])
		Required arguments:
		  x : input rank-1 array('D') with bounds (*)
		Optional arguments:
		  n := (len(x)-offx)/abs(incx) input int
		  offx := 0 input int
		  incx := 1 input int
		Return objects:
		  k : int
	**/
	static public function izamax(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var print_function : Dynamic;
	/**
		sasum - Function signature:
		  s = sasum(x,[n,offx,incx])
		Required arguments:
		  x : input rank-1 array('f') with bounds (*)
		Optional arguments:
		  n := (len(x)-offx)/abs(incx) input int
		  offx := 0 input int
		  incx := 1 input int
		Return objects:
		  s : float
	**/
	static public function sasum(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		saxpy - Function signature:
		  z = saxpy(x,y,[n,a,offx,incx,offy,incy])
		Required arguments:
		  x : input rank-1 array('f') with bounds (*)
		  y : input rank-1 array('f') with bounds (*)
		Optional arguments:
		  n := (len(x)-offx)/abs(incx) input int
		  a := 1.0 input float
		  offx := 0 input int
		  incx := 1 input int
		  offy := 0 input int
		  incy := 1 input int
		Return objects:
		  z : rank-1 array('f') with bounds (*) and y storage
	**/
	static public function saxpy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		scasum - Function signature:
		  s = scasum(x,[n,offx,incx])
		Required arguments:
		  x : input rank-1 array('F') with bounds (*)
		Optional arguments:
		  n := (len(x)-offx)/abs(incx) input int
		  offx := 0 input int
		  incx := 1 input int
		Return objects:
		  s : float
	**/
	static public function scasum(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		scnrm2 - Function signature:
		  n2 = scnrm2(x,[n,offx,incx])
		Required arguments:
		  x : input rank-1 array('F') with bounds (*)
		Optional arguments:
		  n := (len(x)-offx)/abs(incx) input int
		  offx := 0 input int
		  incx := 1 input int
		Return objects:
		  n2 : float
	**/
	static public function scnrm2(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		scopy - Function signature:
		  y = scopy(x,y,[n,offx,incx,offy,incy])
		Required arguments:
		  x : input rank-1 array('f') with bounds (*)
		  y : input rank-1 array('f') with bounds (*)
		Optional arguments:
		  n := (len(x)-offx)/abs(incx) input int
		  offx := 0 input int
		  incx := 1 input int
		  offy := 0 input int
		  incy := 1 input int
		Return objects:
		  y : rank-1 array('f') with bounds (*)
	**/
	static public function scopy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		sdot - Function signature:
		  xy = sdot(x,y,[n,offx,incx,offy,incy])
		Required arguments:
		  x : input rank-1 array('f') with bounds (*)
		  y : input rank-1 array('f') with bounds (*)
		Optional arguments:
		  n := (len(x)-offx)/abs(incx) input int
		  offx := 0 input int
		  incx := 1 input int
		  offy := 0 input int
		  incy := 1 input int
		Return objects:
		  xy : float
	**/
	static public function sdot(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		sgemm - Function signature:
		  c = sgemm(alpha,a,b,[beta,c,trans_a,trans_b,overwrite_c])
		Required arguments:
		  alpha : input float
		  a : input rank-2 array('f') with bounds (lda,ka)
		  b : input rank-2 array('f') with bounds (ldb,kb)
		Optional arguments:
		  beta := 0.0 input float
		  c : input rank-2 array('f') with bounds (m,n)
		  overwrite_c := 0 input int
		  trans_a := 0 input int
		  trans_b := 0 input int
		Return objects:
		  c : rank-2 array('f') with bounds (m,n)
	**/
	static public function sgemm(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		sgemv - Function signature:
		  y = sgemv(alpha,a,x,[beta,y,offx,incx,offy,incy,trans,overwrite_y])
		Required arguments:
		  alpha : input float
		  a : input rank-2 array('f') with bounds (m,n)
		  x : input rank-1 array('f') with bounds (*)
		Optional arguments:
		  beta := 0.0 input float
		  y : input rank-1 array('f') with bounds (ly)
		  overwrite_y := 0 input int
		  offx := 0 input int
		  incx := 1 input int
		  offy := 0 input int
		  incy := 1 input int
		  trans := 0 input int
		Return objects:
		  y : rank-1 array('f') with bounds (ly)
	**/
	static public function sgemv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		sger - Function signature:
		  a = sger(alpha,x,y,[incx,incy,a,overwrite_x,overwrite_y,overwrite_a])
		Required arguments:
		  alpha : input float
		  x : input rank-1 array('f') with bounds (m)
		  y : input rank-1 array('f') with bounds (n)
		Optional arguments:
		  overwrite_x := 1 input int
		  incx := 1 input int
		  overwrite_y := 1 input int
		  incy := 1 input int
		  a := 0.0 input rank-2 array('f') with bounds (m,n)
		  overwrite_a := 0 input int
		Return objects:
		  a : rank-2 array('f') with bounds (m,n)
	**/
	static public function sger(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		snrm2 - Function signature:
		  n2 = snrm2(x,[n,offx,incx])
		Required arguments:
		  x : input rank-1 array('f') with bounds (*)
		Optional arguments:
		  n := (len(x)-offx)/abs(incx) input int
		  offx := 0 input int
		  incx := 1 input int
		Return objects:
		  n2 : float
	**/
	static public function snrm2(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		srot - Function signature:
		  x,y = srot(x,y,c,s,[n,offx,incx,offy,incy,overwrite_x,overwrite_y])
		Required arguments:
		  x : input rank-1 array('f') with bounds (*)
		  y : input rank-1 array('f') with bounds (*)
		  c : input float
		  s : input float
		Optional arguments:
		  n := (len(x)-1-offx)/abs(incx)+1 input int
		  overwrite_x := 0 input int
		  offx := 0 input int
		  incx := 1 input int
		  overwrite_y := 0 input int
		  offy := 0 input int
		  incy := 1 input int
		Return objects:
		  x : rank-1 array('f') with bounds (*)
		  y : rank-1 array('f') with bounds (*)
	**/
	static public function srot(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		srotg - Function signature:
		  c,s = srotg(a,b)
		Required arguments:
		  a : input float
		  b : input float
		Return objects:
		  c : float
		  s : float
	**/
	static public function srotg(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		srotm - Function signature:
		  x,y = srotm(x,y,param,[n,offx,incx,offy,incy,overwrite_x,overwrite_y])
		Required arguments:
		  x : input rank-1 array('f') with bounds (*)
		  y : input rank-1 array('f') with bounds (*)
		  param : input rank-1 array('f') with bounds (5)
		Optional arguments:
		  n := (len(x)-offx)/abs(incx) input int
		  overwrite_x := 0 input int
		  offx := 0 input int
		  incx := 1 input int
		  overwrite_y := 0 input int
		  offy := 0 input int
		  incy := 1 input int
		Return objects:
		  x : rank-1 array('f') with bounds (*)
		  y : rank-1 array('f') with bounds (*)
	**/
	static public function srotm(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		srotmg - Function signature:
		  param = srotmg(d1,d2,x1,y1)
		Required arguments:
		  d1 : input float
		  d2 : input float
		  x1 : input float
		  y1 : input float
		Return objects:
		  param : rank-1 array('f') with bounds (5)
	**/
	static public function srotmg(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		sscal - Function signature:
		  x = sscal(a,x,[n,offx,incx])
		Required arguments:
		  a : input float
		  x : input rank-1 array('f') with bounds (*)
		Optional arguments:
		  n := (len(x)-offx)/abs(incx) input int
		  offx := 0 input int
		  incx := 1 input int
		Return objects:
		  x : rank-1 array('f') with bounds (*)
	**/
	static public function sscal(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		sswap - Function signature:
		  x,y = sswap(x,y,[n,offx,incx,offy,incy])
		Required arguments:
		  x : input rank-1 array('f') with bounds (*)
		  y : input rank-1 array('f') with bounds (*)
		Optional arguments:
		  n := (len(x)-offx)/abs(incx) input int
		  offx := 0 input int
		  incx := 1 input int
		  offy := 0 input int
		  incy := 1 input int
		Return objects:
		  x : rank-1 array('f') with bounds (*)
		  y : rank-1 array('f') with bounds (*)
	**/
	static public function sswap(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ssymm - Function signature:
		  c = ssymm(alpha,a,b,[beta,c,side,lower,overwrite_c])
		Required arguments:
		  alpha : input float
		  a : input rank-2 array('f') with bounds (lda,ka)
		  b : input rank-2 array('f') with bounds (ldb,kb)
		Optional arguments:
		  beta := 0.0 input float
		  c : input rank-2 array('f') with bounds (m,n)
		  overwrite_c := 0 input int
		  side := 0 input int
		  lower := 0 input int
		Return objects:
		  c : rank-2 array('f') with bounds (m,n)
	**/
	static public function ssymm(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ssymv - Function signature:
		  y = ssymv(alpha,a,x,[beta,y,offx,incx,offy,incy,lower,overwrite_y])
		Required arguments:
		  alpha : input float
		  a : input rank-2 array('f') with bounds (n,n)
		  x : input rank-1 array('f') with bounds (*)
		Optional arguments:
		  beta := 0.0 input float
		  y : input rank-1 array('f') with bounds (ly)
		  overwrite_y := 0 input int
		  offx := 0 input int
		  incx := 1 input int
		  offy := 0 input int
		  incy := 1 input int
		  lower := 0 input int
		Return objects:
		  y : rank-1 array('f') with bounds (ly)
	**/
	static public function ssymv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ssyr - Function signature:
		  a = ssyr(alpha,x,[lower,incx,offx,n,a,overwrite_a])
		Required arguments:
		  alpha : input float
		  x : input rank-1 array('f') with bounds (*)
		Optional arguments:
		  lower := 0 input int
		  incx := 1 input int
		  offx := 0 input int
		  n := (len(x)-1-offx)/abs(incx)+1 input int
		  a : input rank-2 array('f') with bounds (n,n)
		  overwrite_a := 0 input int
		Return objects:
		  a : rank-2 array('f') with bounds (n,n)
	**/
	static public function ssyr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ssyr2 - Function signature:
		  a = ssyr2(alpha,x,y,[lower,incx,offx,incy,offy,n,a,overwrite_a])
		Required arguments:
		  alpha : input float
		  x : input rank-1 array('f') with bounds (*)
		  y : input rank-1 array('f') with bounds (*)
		Optional arguments:
		  lower := 0 input int
		  incx := 1 input int
		  offx := 0 input int
		  incy := 1 input int
		  offy := 0 input int
		  n := ((len(x)-1-offx)/abs(incx)+1 <=(len(y)-1-offy)/abs(incy)+1 ?(len(x)-1-offx)/abs(incx)+1 :(len(y)-1-offy)/abs(incy)+1) input int
		  a : input rank-2 array('f') with bounds (n,n)
		  overwrite_a := 0 input int
		Return objects:
		  a : rank-2 array('f') with bounds (n,n)
	**/
	static public function ssyr2(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ssyr2k - Function signature:
		  c = ssyr2k(alpha,a,b,[beta,c,trans,lower,overwrite_c])
		Required arguments:
		  alpha : input float
		  a : input rank-2 array('f') with bounds (lda,ka)
		  b : input rank-2 array('f') with bounds (ldb,kb)
		Optional arguments:
		  beta := 0.0 input float
		  c : input rank-2 array('f') with bounds (n,n)
		  overwrite_c := 0 input int
		  trans := 0 input int
		  lower := 0 input int
		Return objects:
		  c : rank-2 array('f') with bounds (n,n)
	**/
	static public function ssyr2k(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ssyrk - Function signature:
		  c = ssyrk(alpha,a,[beta,c,trans,lower,overwrite_c])
		Required arguments:
		  alpha : input float
		  a : input rank-2 array('f') with bounds (lda,ka)
		Optional arguments:
		  beta := 0.0 input float
		  c : input rank-2 array('f') with bounds (n,n)
		  overwrite_c := 0 input int
		  trans := 0 input int
		  lower := 0 input int
		Return objects:
		  c : rank-2 array('f') with bounds (n,n)
	**/
	static public function ssyrk(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		strmm - Function signature:
		  b = strmm(alpha,a,b,[side,lower,trans_a,diag,overwrite_b])
		Required arguments:
		  alpha : input float
		  a : input rank-2 array('f') with bounds (lda,k)
		  b : input rank-2 array('f') with bounds (ldb,n)
		Optional arguments:
		  overwrite_b := 0 input int
		  side := 0 input int
		  lower := 0 input int
		  trans_a := 0 input int
		  diag := 0 input int
		Return objects:
		  b : rank-2 array('f') with bounds (ldb,n)
	**/
	static public function strmm(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		strmv - Function signature:
		  x = strmv(a,x,[offx,incx,lower,trans,unitdiag,overwrite_x])
		Required arguments:
		  a : input rank-2 array('f') with bounds (n,n)
		  x : input rank-1 array('f') with bounds (*)
		Optional arguments:
		  overwrite_x := 0 input int
		  offx := 0 input int
		  incx := 1 input int
		  lower := 0 input int
		  trans := 0 input int
		  unitdiag := 0 input int
		Return objects:
		  x : rank-1 array('f') with bounds (*)
	**/
	static public function strmv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		zaxpy - Function signature:
		  z = zaxpy(x,y,[n,a,offx,incx,offy,incy])
		Required arguments:
		  x : input rank-1 array('D') with bounds (*)
		  y : input rank-1 array('D') with bounds (*)
		Optional arguments:
		  n := (len(x)-offx)/abs(incx) input int
		  a := (1.0, 0.0) input complex
		  offx := 0 input int
		  incx := 1 input int
		  offy := 0 input int
		  incy := 1 input int
		Return objects:
		  z : rank-1 array('D') with bounds (*) and y storage
	**/
	static public function zaxpy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		zcopy - Function signature:
		  y = zcopy(x,y,[n,offx,incx,offy,incy])
		Required arguments:
		  x : input rank-1 array('D') with bounds (*)
		  y : input rank-1 array('D') with bounds (*)
		Optional arguments:
		  n := (len(x)-offx)/abs(incx) input int
		  offx := 0 input int
		  incx := 1 input int
		  offy := 0 input int
		  incy := 1 input int
		Return objects:
		  y : rank-1 array('D') with bounds (*)
	**/
	static public function zcopy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		zdotc - Function signature:
		  xy = zdotc(x,y,[n,offx,incx,offy,incy])
		Required arguments:
		  x : input rank-1 array('D') with bounds (*)
		  y : input rank-1 array('D') with bounds (*)
		Optional arguments:
		  n := (len(x)-offx)/abs(incx) input int
		  offx := 0 input int
		  incx := 1 input int
		  offy := 0 input int
		  incy := 1 input int
		Return objects:
		  xy : complex
	**/
	static public function zdotc(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		zdotu - Function signature:
		  xy = zdotu(x,y,[n,offx,incx,offy,incy])
		Required arguments:
		  x : input rank-1 array('D') with bounds (*)
		  y : input rank-1 array('D') with bounds (*)
		Optional arguments:
		  n := (len(x)-offx)/abs(incx) input int
		  offx := 0 input int
		  incx := 1 input int
		  offy := 0 input int
		  incy := 1 input int
		Return objects:
		  xy : complex
	**/
	static public function zdotu(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		zdrot - Function signature:
		  x,y = zdrot(x,y,c,s,[n,offx,incx,offy,incy,overwrite_x,overwrite_y])
		Required arguments:
		  x : input rank-1 array('D') with bounds (*)
		  y : input rank-1 array('D') with bounds (*)
		  c : input float
		  s : input float
		Optional arguments:
		  n := (len(x)-1-offx)/abs(incx)+1 input int
		  overwrite_x := 0 input int
		  offx := 0 input int
		  incx := 1 input int
		  overwrite_y := 0 input int
		  offy := 0 input int
		  incy := 1 input int
		Return objects:
		  x : rank-1 array('D') with bounds (*)
		  y : rank-1 array('D') with bounds (*)
	**/
	static public function zdrot(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		zdscal - Function signature:
		  x = zdscal(a,x,[n,offx,incx,overwrite_x])
		Required arguments:
		  a : input float
		  x : input rank-1 array('D') with bounds (*)
		Optional arguments:
		  n := (len(x)-offx)/abs(incx) input int
		  overwrite_x := 0 input int
		  offx := 0 input int
		  incx := 1 input int
		Return objects:
		  x : rank-1 array('D') with bounds (*)
	**/
	static public function zdscal(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		zgemm - Function signature:
		  c = zgemm(alpha,a,b,[beta,c,trans_a,trans_b,overwrite_c])
		Required arguments:
		  alpha : input complex
		  a : input rank-2 array('D') with bounds (lda,ka)
		  b : input rank-2 array('D') with bounds (ldb,kb)
		Optional arguments:
		  beta := (0.0, 0.0) input complex
		  c : input rank-2 array('D') with bounds (m,n)
		  overwrite_c := 0 input int
		  trans_a := 0 input int
		  trans_b := 0 input int
		Return objects:
		  c : rank-2 array('D') with bounds (m,n)
	**/
	static public function zgemm(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		zgemv - Function signature:
		  y = zgemv(alpha,a,x,[beta,y,offx,incx,offy,incy,trans,overwrite_y])
		Required arguments:
		  alpha : input complex
		  a : input rank-2 array('D') with bounds (m,n)
		  x : input rank-1 array('D') with bounds (*)
		Optional arguments:
		  beta := (0.0, 0.0) input complex
		  y : input rank-1 array('D') with bounds (ly)
		  overwrite_y := 0 input int
		  offx := 0 input int
		  incx := 1 input int
		  offy := 0 input int
		  incy := 1 input int
		  trans := 0 input int
		Return objects:
		  y : rank-1 array('D') with bounds (ly)
	**/
	static public function zgemv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		zgerc - Function signature:
		  a = zgerc(alpha,x,y,[incx,incy,a,overwrite_x,overwrite_y,overwrite_a])
		Required arguments:
		  alpha : input complex
		  x : input rank-1 array('D') with bounds (m)
		  y : input rank-1 array('D') with bounds (n)
		Optional arguments:
		  overwrite_x := 1 input int
		  incx := 1 input int
		  overwrite_y := 1 input int
		  incy := 1 input int
		  a := (0.0,0.0) input rank-2 array('D') with bounds (m,n)
		  overwrite_a := 0 input int
		Return objects:
		  a : rank-2 array('D') with bounds (m,n)
	**/
	static public function zgerc(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		zgeru - Function signature:
		  a = zgeru(alpha,x,y,[incx,incy,a,overwrite_x,overwrite_y,overwrite_a])
		Required arguments:
		  alpha : input complex
		  x : input rank-1 array('D') with bounds (m)
		  y : input rank-1 array('D') with bounds (n)
		Optional arguments:
		  overwrite_x := 1 input int
		  incx := 1 input int
		  overwrite_y := 1 input int
		  incy := 1 input int
		  a := (0.0,0.0) input rank-2 array('D') with bounds (m,n)
		  overwrite_a := 0 input int
		Return objects:
		  a : rank-2 array('D') with bounds (m,n)
	**/
	static public function zgeru(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		zhemm - Function signature:
		  c = zhemm(alpha,a,b,[beta,c,side,lower,overwrite_c])
		Required arguments:
		  alpha : input complex
		  a : input rank-2 array('D') with bounds (lda,ka)
		  b : input rank-2 array('D') with bounds (ldb,kb)
		Optional arguments:
		  beta := (0.0, 0.0) input complex
		  c : input rank-2 array('D') with bounds (m,n)
		  overwrite_c := 0 input int
		  side := 0 input int
		  lower := 0 input int
		Return objects:
		  c : rank-2 array('D') with bounds (m,n)
	**/
	static public function zhemm(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		zhemv - Function signature:
		  y = zhemv(alpha,a,x,[beta,y,offx,incx,offy,incy,lower,overwrite_y])
		Required arguments:
		  alpha : input complex
		  a : input rank-2 array('D') with bounds (n,n)
		  x : input rank-1 array('D') with bounds (*)
		Optional arguments:
		  beta := (0.0, 0.0) input complex
		  y : input rank-1 array('D') with bounds (ly)
		  overwrite_y := 0 input int
		  offx := 0 input int
		  incx := 1 input int
		  offy := 0 input int
		  incy := 1 input int
		  lower := 0 input int
		Return objects:
		  y : rank-1 array('D') with bounds (ly)
	**/
	static public function zhemv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		zher - Function signature:
		  a = zher(alpha,x,[lower,incx,offx,n,a,overwrite_a])
		Required arguments:
		  alpha : input complex
		  x : input rank-1 array('D') with bounds (*)
		Optional arguments:
		  lower := 0 input int
		  incx := 1 input int
		  offx := 0 input int
		  n := (len(x)-1-offx)/abs(incx)+1 input int
		  a : input rank-2 array('D') with bounds (n,n)
		  overwrite_a := 0 input int
		Return objects:
		  a : rank-2 array('D') with bounds (n,n)
	**/
	static public function zher(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		zher2 - Function signature:
		  a = zher2(alpha,x,y,[lower,incx,offx,incy,offy,n,a,overwrite_a])
		Required arguments:
		  alpha : input complex
		  x : input rank-1 array('D') with bounds (*)
		  y : input rank-1 array('D') with bounds (*)
		Optional arguments:
		  lower := 0 input int
		  incx := 1 input int
		  offx := 0 input int
		  incy := 1 input int
		  offy := 0 input int
		  n := ((len(x)-1-offx)/abs(incx)+1 <=(len(y)-1-offy)/abs(incy)+1 ?(len(x)-1-offx)/abs(incx)+1 :(len(y)-1-offy)/abs(incy)+1) input int
		  a : input rank-2 array('D') with bounds (n,n)
		  overwrite_a := 0 input int
		Return objects:
		  a : rank-2 array('D') with bounds (n,n)
	**/
	static public function zher2(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		zher2k - Function signature:
		  c = zher2k(alpha,a,b,[beta,c,trans,lower,overwrite_c])
		Required arguments:
		  alpha : input complex
		  a : input rank-2 array('D') with bounds (lda,ka)
		  b : input rank-2 array('D') with bounds (ldb,kb)
		Optional arguments:
		  beta := (0.0, 0.0) input complex
		  c : input rank-2 array('D') with bounds (n,n)
		  overwrite_c := 0 input int
		  trans := 0 input int
		  lower := 0 input int
		Return objects:
		  c : rank-2 array('D') with bounds (n,n)
	**/
	static public function zher2k(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		zherk - Function signature:
		  c = zherk(alpha,a,[beta,c,trans,lower,overwrite_c])
		Required arguments:
		  alpha : input complex
		  a : input rank-2 array('D') with bounds (lda,ka)
		Optional arguments:
		  beta := (0.0, 0.0) input complex
		  c : input rank-2 array('D') with bounds (n,n)
		  overwrite_c := 0 input int
		  trans := 0 input int
		  lower := 0 input int
		Return objects:
		  c : rank-2 array('D') with bounds (n,n)
	**/
	static public function zherk(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		zrotg - Function signature:
		  c,s = zrotg(a,b)
		Required arguments:
		  a : input complex
		  b : input complex
		Return objects:
		  c : complex
		  s : complex
	**/
	static public function zrotg(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		zscal - Function signature:
		  x = zscal(a,x,[n,offx,incx])
		Required arguments:
		  a : input complex
		  x : input rank-1 array('D') with bounds (*)
		Optional arguments:
		  n := (len(x)-offx)/abs(incx) input int
		  offx := 0 input int
		  incx := 1 input int
		Return objects:
		  x : rank-1 array('D') with bounds (*)
	**/
	static public function zscal(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		zswap - Function signature:
		  x,y = zswap(x,y,[n,offx,incx,offy,incy])
		Required arguments:
		  x : input rank-1 array('D') with bounds (*)
		  y : input rank-1 array('D') with bounds (*)
		Optional arguments:
		  n := (len(x)-offx)/abs(incx) input int
		  offx := 0 input int
		  incx := 1 input int
		  offy := 0 input int
		  incy := 1 input int
		Return objects:
		  x : rank-1 array('D') with bounds (*)
		  y : rank-1 array('D') with bounds (*)
	**/
	static public function zswap(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		zsymm - Function signature:
		  c = zsymm(alpha,a,b,[beta,c,side,lower,overwrite_c])
		Required arguments:
		  alpha : input complex
		  a : input rank-2 array('D') with bounds (lda,ka)
		  b : input rank-2 array('D') with bounds (ldb,kb)
		Optional arguments:
		  beta := (0.0, 0.0) input complex
		  c : input rank-2 array('D') with bounds (m,n)
		  overwrite_c := 0 input int
		  side := 0 input int
		  lower := 0 input int
		Return objects:
		  c : rank-2 array('D') with bounds (m,n)
	**/
	static public function zsymm(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		zsyr - Function signature:
		  a = zsyr(alpha,x,[lower,incx,offx,n,a,overwrite_a])
		Required arguments:
		  alpha : input complex
		  x : input rank-1 array('D') with bounds (*)
		Optional arguments:
		  lower := 0 input int
		  incx := 1 input int
		  offx := 0 input int
		  n := (len(x)-1-offx)/abs(incx)+1 input int
		  a : input rank-2 array('D') with bounds (n,n)
		  overwrite_a := 0 input int
		Return objects:
		  a : rank-2 array('D') with bounds (n,n)
	**/
	static public function zsyr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		zsyr2k - Function signature:
		  c = zsyr2k(alpha,a,b,[beta,c,trans,lower,overwrite_c])
		Required arguments:
		  alpha : input complex
		  a : input rank-2 array('D') with bounds (lda,ka)
		  b : input rank-2 array('D') with bounds (ldb,kb)
		Optional arguments:
		  beta := (0.0, 0.0) input complex
		  c : input rank-2 array('D') with bounds (n,n)
		  overwrite_c := 0 input int
		  trans := 0 input int
		  lower := 0 input int
		Return objects:
		  c : rank-2 array('D') with bounds (n,n)
	**/
	static public function zsyr2k(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		zsyrk - Function signature:
		  c = zsyrk(alpha,a,[beta,c,trans,lower,overwrite_c])
		Required arguments:
		  alpha : input complex
		  a : input rank-2 array('D') with bounds (lda,ka)
		Optional arguments:
		  beta := (0.0, 0.0) input complex
		  c : input rank-2 array('D') with bounds (n,n)
		  overwrite_c := 0 input int
		  trans := 0 input int
		  lower := 0 input int
		Return objects:
		  c : rank-2 array('D') with bounds (n,n)
	**/
	static public function zsyrk(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ztrmm - Function signature:
		  b = ztrmm(alpha,a,b,[side,lower,trans_a,diag,overwrite_b])
		Required arguments:
		  alpha : input complex
		  a : input rank-2 array('D') with bounds (lda,k)
		  b : input rank-2 array('D') with bounds (ldb,n)
		Optional arguments:
		  overwrite_b := 0 input int
		  side := 0 input int
		  lower := 0 input int
		  trans_a := 0 input int
		  diag := 0 input int
		Return objects:
		  b : rank-2 array('D') with bounds (ldb,n)
	**/
	static public function ztrmm(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ztrmv - Function signature:
		  x = ztrmv(a,x,[offx,incx,lower,trans,unitdiag,overwrite_x])
		Required arguments:
		  a : input rank-2 array('D') with bounds (n,n)
		  x : input rank-1 array('D') with bounds (*)
		Optional arguments:
		  overwrite_x := 0 input int
		  offx := 0 input int
		  incx := 1 input int
		  lower := 0 input int
		  trans := 0 input int
		  unitdiag := 0 input int
		Return objects:
		  x : rank-1 array('D') with bounds (*)
	**/
	static public function ztrmv(args:haxe.extern.Rest<Dynamic>):Dynamic;
}