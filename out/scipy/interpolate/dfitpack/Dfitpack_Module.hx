/* This file is generated, do not edit! */
package scipy.interpolate.dfitpack;
@:pythonImport("scipy.interpolate.dfitpack") extern class Dfitpack_Module {
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var __version__ : Dynamic;
	/**
		bispeu - Function signature:
		  z,ier = bispeu(tx,ty,c,kx,ky,x,y)
		Required arguments:
		  tx : input rank-1 array('d') with bounds (nx)
		  ty : input rank-1 array('d') with bounds (ny)
		  c : input rank-1 array('d') with bounds ((nx-kx-1)*(ny-ky-1))
		  kx : input int
		  ky : input int
		  x : input rank-1 array('d') with bounds (m)
		  y : input rank-1 array('d') with bounds (m)
		Return objects:
		  z : rank-1 array('d') with bounds (m)
		  ier : int
	**/
	static public function bispeu(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		bispev - Function signature:
		  z,ier = bispev(tx,ty,c,kx,ky,x,y)
		Required arguments:
		  tx : input rank-1 array('d') with bounds (nx)
		  ty : input rank-1 array('d') with bounds (ny)
		  c : input rank-1 array('d') with bounds ((nx-kx-1)*(ny-ky-1))
		  kx : input int
		  ky : input int
		  x : input rank-1 array('d') with bounds (mx)
		  y : input rank-1 array('d') with bounds (my)
		Return objects:
		  z : rank-2 array('d') with bounds (mx,my)
		  ier : int
	**/
	static public function bispev(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		curfit - Function signature:
		  n,c,fp,ier = curfit(iopt,x,y,w,t,wrk,iwrk,[xb,xe,k,s])
		Required arguments:
		  iopt : input int
		  x : input rank-1 array('d') with bounds (m)
		  y : input rank-1 array('d') with bounds (m)
		  w : input rank-1 array('d') with bounds (m)
		  t : in/output rank-1 array('d') with bounds (nest)
		  wrk : in/output rank-1 array('d') with bounds (lwrk)
		  iwrk : in/output rank-1 array('i') with bounds (nest)
		Optional arguments:
		  xb := x[0] input float
		  xe := x[m-1] input float
		  k := 3 input int
		  s := 0.0 input float
		Return objects:
		  n : int
		  c : rank-1 array('d') with bounds (n)
		  fp : float
		  ier : int
	**/
	static public function curfit(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		dblint - Function signature:
		  dblint = dblint(tx,ty,c,kx,ky,xb,xe,yb,ye)
		Required arguments:
		  tx : input rank-1 array('d') with bounds (nx)
		  ty : input rank-1 array('d') with bounds (ny)
		  c : input rank-1 array('d') with bounds ((nx-kx-1)*(ny-ky-1))
		  kx : input int
		  ky : input int
		  xb : input float
		  xe : input float
		  yb : input float
		  ye : input float
		Return objects:
		  dblint : float
	**/
	static public function dblint(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		fpchec - Function signature:
		  ier = fpchec(x,t,k)
		Required arguments:
		  x : input rank-1 array('d') with bounds (m)
		  t : input rank-1 array('d') with bounds (n)
		  k : input int
		Return objects:
		  ier : int
	**/
	static public function fpchec(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		fpcurf0 - Function signature:
		  x,y,w,xb,xe,k,s,n,t,c,fp,fpint,nrdata,ier = fpcurf0(x,y,k,[w,xb,xe,s,nest])
		Required arguments:
		  x : input rank-1 array('d') with bounds (m)
		  y : input rank-1 array('d') with bounds (m)
		  k : input int
		Optional arguments:
		  w := 1.0 input rank-1 array('d') with bounds (m)
		  xb := x[0] input float
		  xe := x[m-1] input float
		  s := m input float
		  nest := (s==0.0?m+k+1:MAX(m/2,2*k1)) input int
		Return objects:
		  x : rank-1 array('d') with bounds (m)
		  y : rank-1 array('d') with bounds (m)
		  w : rank-1 array('d') with bounds (m)
		  xb : float
		  xe : float
		  k : int
		  s : float
		  n : int
		  t : rank-1 array('d') with bounds (nest)
		  c : rank-1 array('d') with bounds (nest)
		  fp : float
		  fpint : rank-1 array('d') with bounds (nest)
		  nrdata : rank-1 array('i') with bounds (nest)
		  ier : int
	**/
	static public function fpcurf0(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		fpcurf1 - Function signature:
		  x,y,w,xb,xe,k,s,n,t,c,fp,fpint,nrdata,ier = fpcurf1(x,y,w,xb,xe,k,s,n,t,c,fp,fpint,nrdata,ier,[overwrite_x,overwrite_y,overwrite_w,overwrite_t,overwrite_c,overwrite_fpint,overwrite_nrdata])
		Required arguments:
		  x : input rank-1 array('d') with bounds (m)
		  y : input rank-1 array('d') with bounds (m)
		  w : input rank-1 array('d') with bounds (m)
		  xb : input float
		  xe : input float
		  k : input int
		  s : input float
		  n : input int
		  t : input rank-1 array('d') with bounds (nest)
		  c : input rank-1 array('d') with bounds (nest)
		  fp : input float
		  fpint : input rank-1 array('d') with bounds (nest)
		  nrdata : input rank-1 array('i') with bounds (nest)
		  ier : input int
		Optional arguments:
		  overwrite_x := 1 input int
		  overwrite_y := 1 input int
		  overwrite_w := 1 input int
		  overwrite_t := 1 input int
		  overwrite_c := 1 input int
		  overwrite_fpint := 1 input int
		  overwrite_nrdata := 1 input int
		Return objects:
		  x : rank-1 array('d') with bounds (m)
		  y : rank-1 array('d') with bounds (m)
		  w : rank-1 array('d') with bounds (m)
		  xb : float
		  xe : float
		  k : int
		  s : float
		  n : int
		  t : rank-1 array('d') with bounds (nest)
		  c : rank-1 array('d') with bounds (nest)
		  fp : float
		  fpint : rank-1 array('d') with bounds (nest)
		  nrdata : rank-1 array('i') with bounds (nest)
		  ier : int
	**/
	static public function fpcurf1(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		fpcurfm1 - Function signature:
		  x,y,w,xb,xe,k,s,n,t,c,fp,fpint,nrdata,ier = fpcurfm1(x,y,k,t,[w,xb,xe,overwrite_t])
		Required arguments:
		  x : input rank-1 array('d') with bounds (m)
		  y : input rank-1 array('d') with bounds (m)
		  k : input int
		  t : input rank-1 array('d') with bounds (n)
		Optional arguments:
		  w := 1.0 input rank-1 array('d') with bounds (m)
		  xb := x[0] input float
		  xe := x[m-1] input float
		  overwrite_t := 1 input int
		Return objects:
		  x : rank-1 array('d') with bounds (m)
		  y : rank-1 array('d') with bounds (m)
		  w : rank-1 array('d') with bounds (m)
		  xb : float
		  xe : float
		  k : int
		  s : float
		  n : int
		  t : rank-1 array('d') with bounds (n)
		  c : rank-1 array('d') with bounds (nest)
		  fp : float
		  fpint : rank-1 array('d') with bounds (nest)
		  nrdata : rank-1 array('i') with bounds (nest)
		  ier : int
	**/
	static public function fpcurfm1(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		parcur - Function signature:
		  n,c,fp,ier = parcur(iopt,ipar,idim,u,x,w,ub,ue,t,wrk,iwrk,[k,s])
		Required arguments:
		  iopt : input int
		  ipar : input int
		  idim : input int
		  u : in/output rank-1 array('d') with bounds (m)
		  x : input rank-1 array('d') with bounds (mx)
		  w : input rank-1 array('d') with bounds (m)
		  ub : input float
		  ue : input float
		  t : in/output rank-1 array('d') with bounds (nest)
		  wrk : in/output rank-1 array('d') with bounds (lwrk)
		  iwrk : in/output rank-1 array('i') with bounds (nest)
		Optional arguments:
		  k := 3.0 input int
		  s := 0.0 input float
		Return objects:
		  n : int
		  c : rank-1 array('d') with bounds (nc)
		  fp : float
		  ier : int
	**/
	static public function parcur(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		parder - Function signature:
		  z,ier = parder(tx,ty,c,kx,ky,nux,nuy,x,y)
		Required arguments:
		  tx : input rank-1 array('d') with bounds (nx)
		  ty : input rank-1 array('d') with bounds (ny)
		  c : input rank-1 array('d') with bounds ((nx-kx-1)*(ny-ky-1))
		  kx : input int
		  ky : input int
		  nux : input int
		  nuy : input int
		  x : input rank-1 array('d') with bounds (mx)
		  y : input rank-1 array('d') with bounds (my)
		Return objects:
		  z : rank-2 array('d') with bounds (mx,my)
		  ier : int
	**/
	static public function parder(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		pardeu - Function signature:
		  z,ier = pardeu(tx,ty,c,kx,ky,nux,nuy,x,y)
		Required arguments:
		  tx : input rank-1 array('d') with bounds (nx)
		  ty : input rank-1 array('d') with bounds (ny)
		  c : input rank-1 array('d') with bounds ((nx-kx-1)*(ny-ky-1))
		  kx : input int
		  ky : input int
		  nux : input int
		  nuy : input int
		  x : input rank-1 array('d') with bounds (m)
		  y : input rank-1 array('d') with bounds (m)
		Return objects:
		  z : rank-1 array('d') with bounds (m)
		  ier : int
	**/
	static public function pardeu(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		percur - Function signature:
		  n,c,fp,ier = percur(iopt,x,y,w,t,wrk,iwrk,[k,s])
		Required arguments:
		  iopt : input int
		  x : input rank-1 array('d') with bounds (m)
		  y : input rank-1 array('d') with bounds (m)
		  w : input rank-1 array('d') with bounds (m)
		  t : in/output rank-1 array('d') with bounds (nest)
		  wrk : in/output rank-1 array('d') with bounds (lwrk)
		  iwrk : in/output rank-1 array('i') with bounds (nest)
		Optional arguments:
		  k := 3 input int
		  s := 0.0 input float
		Return objects:
		  n : int
		  c : rank-1 array('d') with bounds (n)
		  fp : float
		  ier : int
	**/
	static public function percur(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		regrid_smth - Function signature:
		  nx,tx,ny,ty,c,fp,ier = regrid_smth(x,y,z,[xb,xe,yb,ye,kx,ky,s])
		Required arguments:
		  x : input rank-1 array('d') with bounds (mx)
		  y : input rank-1 array('d') with bounds (my)
		  z : input rank-1 array('d') with bounds (mx*my)
		Optional arguments:
		  xb := dmin(x,mx) input float
		  xe := dmax(x,mx) input float
		  yb := dmin(y,my) input float
		  ye := dmax(y,my) input float
		  kx := 3 input int
		  ky := 3 input int
		  s := 0.0 input float
		Return objects:
		  nx : int
		  tx : rank-1 array('d') with bounds (nxest)
		  ny : int
		  ty : rank-1 array('d') with bounds (nyest)
		  c : rank-1 array('d') with bounds ((nxest-kx-1)*(nyest-ky-1))
		  fp : float
		  ier : int
	**/
	static public function regrid_smth(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		regrid_smth_spher - Function signature:
		  nu,tu,nv,tv,c,fp,ier = regrid_smth_spher(iopt,ider,u,v,r,[r0,r1,s])
		Required arguments:
		  iopt : input rank-1 array('i') with bounds (3)
		  ider : input rank-1 array('i') with bounds (4)
		  u : input rank-1 array('d') with bounds (mu)
		  v : input rank-1 array('d') with bounds (mv)
		  r : input rank-1 array('d') with bounds (mu*mv)
		Optional arguments:
		  r0 : input float
		  r1 : input float
		  s := 0.0 input float
		Return objects:
		  nu : int
		  tu : rank-1 array('d') with bounds (nuest)
		  nv : int
		  tv : rank-1 array('d') with bounds (nvest)
		  c : rank-1 array('d') with bounds ((nuest-4)*(nvest-4))
		  fp : float
		  ier : int
	**/
	static public function regrid_smth_spher(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		spalde - Function signature:
		  d,ier = spalde(t,c,k,x)
		Required arguments:
		  t : input rank-1 array('d') with bounds (n)
		  c : input rank-1 array('d') with bounds (n)
		  k : input int
		  x : input float
		Return objects:
		  d : rank-1 array('d') with bounds (k + 1)
		  ier : int
	**/
	static public function spalde(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		spherfit_lsq - Function signature:
		  tt,tp,c,fp,ier = spherfit_lsq(teta,phi,r,tt,tp,[w,eps,overwrite_tt,overwrite_tp])
		Required arguments:
		  teta : input rank-1 array('d') with bounds (m)
		  phi : input rank-1 array('d') with bounds (m)
		  r : input rank-1 array('d') with bounds (m)
		  tt : input rank-1 array('d') with bounds (ntest)
		  tp : input rank-1 array('d') with bounds (npest)
		Optional arguments:
		  w := 1.0 input rank-1 array('d') with bounds (m)
		  eps := 1e-16 input float
		  overwrite_tt := 1 input int
		  overwrite_tp := 1 input int
		Return objects:
		  tt : rank-1 array('d') with bounds (ntest)
		  tp : rank-1 array('d') with bounds (npest)
		  c : rank-1 array('d') with bounds ((nt-4)*(np-4))
		  fp : float
		  ier : int
	**/
	static public function spherfit_lsq(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		spherfit_smth - Function signature:
		  nt,tt,np,tp,c,fp,ier = spherfit_smth(teta,phi,r,[w,s,eps])
		Required arguments:
		  teta : input rank-1 array('d') with bounds (m)
		  phi : input rank-1 array('d') with bounds (m)
		  r : input rank-1 array('d') with bounds (m)
		Optional arguments:
		  w := 1.0 input rank-1 array('d') with bounds (m)
		  s := m input float
		  eps := 1e-16 input float
		Return objects:
		  nt : int
		  tt : rank-1 array('d') with bounds (ntest)
		  np : int
		  tp : rank-1 array('d') with bounds (npest)
		  c : rank-1 array('d') with bounds ((ntest-4)*(npest-4))
		  fp : float
		  ier : int
	**/
	static public function spherfit_smth(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		splder - Function signature:
		  y = splder(t,c,k,x,[nu,e])
		Required arguments:
		  t : input rank-1 array('d') with bounds (n)
		  c : input rank-1 array('d') with bounds (n)
		  k : input int
		  x : input rank-1 array('d') with bounds (m)
		Optional arguments:
		  nu := 1 input int
		  e := 0 input int
		Return objects:
		  y : rank-1 array('d') with bounds (m)
	**/
	static public function splder(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		splev - Function signature:
		  y = splev(t,c,k,x,[e])
		Required arguments:
		  t : input rank-1 array('d') with bounds (n)
		  c : input rank-1 array('d') with bounds (n)
		  k : input int
		  x : input rank-1 array('d') with bounds (m)
		Optional arguments:
		  e := 0 input int
		Return objects:
		  y : rank-1 array('d') with bounds (m)
	**/
	static public function splev(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		splint - Function signature:
		  splint = splint(t,c,k,a,b)
		Required arguments:
		  t : input rank-1 array('d') with bounds (n)
		  c : input rank-1 array('d') with bounds (n)
		  k : input int
		  a : input float
		  b : input float
		Return objects:
		  splint : float
	**/
	static public function splint(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		sproot - Function signature:
		  zero,m,ier = sproot(t,c,[mest])
		Required arguments:
		  t : input rank-1 array('d') with bounds (n)
		  c : input rank-1 array('d') with bounds (n)
		Optional arguments:
		  mest := 3*(n-7) input int
		Return objects:
		  zero : rank-1 array('d') with bounds (mest)
		  m : int
		  ier : int
	**/
	static public function sproot(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		surfit_lsq - Function signature:
		  tx,ty,c,fp,ier = surfit_lsq(x,y,z,tx,ty,[w,xb,xe,yb,ye,kx,ky,eps,lwrk2,overwrite_tx,overwrite_ty])
		Required arguments:
		  x : input rank-1 array('d') with bounds (m)
		  y : input rank-1 array('d') with bounds (m)
		  z : input rank-1 array('d') with bounds (m)
		  tx : input rank-1 array('d') with bounds (nx)
		  ty : input rank-1 array('d') with bounds (ny)
		Optional arguments:
		  w := 1.0 input rank-1 array('d') with bounds (m)
		  xb := calc_b(x,m,tx,nx) input float
		  xe := calc_e(x,m,tx,nx) input float
		  yb := calc_b(y,m,ty,ny) input float
		  ye := calc_e(y,m,ty,ny) input float
		  kx := 3 input int
		  ky := 3 input int
		  eps := 1e-16 input float
		  overwrite_tx := 1 input int
		  overwrite_ty := 1 input int
		  lwrk2 := calc_surfit_lwrk2(m,kx,ky,nxest,nyest) input int
		Return objects:
		  tx : rank-1 array('d') with bounds (nx)
		  ty : rank-1 array('d') with bounds (ny)
		  c : rank-1 array('d') with bounds ((nx-kx-1)*(ny-ky-1))
		  fp : float
		  ier : int
	**/
	static public function surfit_lsq(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		surfit_smth - Function signature:
		  nx,tx,ny,ty,c,fp,wrk1,ier = surfit_smth(x,y,z,[w,xb,xe,yb,ye,kx,ky,s,nxest,nyest,eps,lwrk2])
		Required arguments:
		  x : input rank-1 array('d') with bounds (m)
		  y : input rank-1 array('d') with bounds (m)
		  z : input rank-1 array('d') with bounds (m)
		Optional arguments:
		  w := 1.0 input rank-1 array('d') with bounds (m)
		  xb := dmin(x,m) input float
		  xe := dmax(x,m) input float
		  yb := dmin(y,m) input float
		  ye := dmax(y,m) input float
		  kx := 3 input int
		  ky := 3 input int
		  s := m input float
		  nxest := imax(kx+1+sqrt(m/2),2*(kx+1)) input int
		  nyest := imax(ky+1+sqrt(m/2),2*(ky+1)) input int
		  eps := 1e-16 input float
		  lwrk2 := calc_surfit_lwrk2(m,kx,ky,nxest,nyest) input int
		Return objects:
		  nx : int
		  tx : rank-1 array('d') with bounds (nmax)
		  ny : int
		  ty : rank-1 array('d') with bounds (nmax)
		  c : rank-1 array('d') with bounds ((nxest-kx-1)*(nyest-ky-1))
		  fp : float
		  wrk1 : rank-1 array('d') with bounds (lwrk1)
		  ier : int
	**/
	static public function surfit_smth(args:haxe.extern.Rest<Dynamic>):Dynamic;
}