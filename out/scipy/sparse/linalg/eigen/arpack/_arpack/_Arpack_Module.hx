/* This file is generated, do not edit! */
package scipy.sparse.linalg.eigen.arpack._arpack;
@:pythonImport("scipy.sparse.linalg.eigen.arpack._arpack") extern class _Arpack_Module {
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var __version__ : Dynamic;
	/**
		cnaupd - Function signature:
		  ido,tol,resid,v,iparam,ipntr,info = cnaupd(ido,bmat,which,nev,tol,resid,v,iparam,ipntr,workd,workl,rwork,info,[n,ncv,ldv,lworkl])
		Required arguments:
		  ido : input int
		  bmat : input string(len=1)
		  which : input string(len=2)
		  nev : input int
		  tol : input float
		  resid : input rank-1 array('F') with bounds (n)
		  v : input rank-2 array('F') with bounds (ldv,ncv)
		  iparam : input rank-1 array('i') with bounds (11)
		  ipntr : input rank-1 array('i') with bounds (14)
		  workd : in/output rank-1 array('F') with bounds (3 * n)
		  workl : in/output rank-1 array('F') with bounds (lworkl)
		  rwork : in/output rank-1 array('f') with bounds (ncv)
		  info : input int
		Optional arguments:
		  n := len(resid) input int
		  ncv := shape(v,1) input int
		  ldv := shape(v,0) input int
		  lworkl := len(workl) input int
		Return objects:
		  ido : int
		  tol : float
		  resid : rank-1 array('F') with bounds (n)
		  v : rank-2 array('F') with bounds (ldv,ncv)
		  iparam : rank-1 array('i') with bounds (11)
		  ipntr : rank-1 array('i') with bounds (14)
		  info : int
	**/
	static public function cnaupd(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		cneupd - Function signature:
		  d,z,info = cneupd(rvec,howmny,select,sigma,workev,bmat,which,nev,tol,resid,v,iparam,ipntr,workd,workl,rwork,info,[ldz,n,ncv,ldv,lworkl])
		Required arguments:
		  rvec : input int
		  howmny : input string(len=1)
		  select : input rank-1 array('i') with bounds (ncv)
		  sigma : input complex
		  workev : input rank-1 array('F') with bounds (3 * ncv)
		  bmat : input string(len=1)
		  which : input string(len=2)
		  nev : input int
		  tol : input float
		  resid : input rank-1 array('F') with bounds (n)
		  v : input rank-2 array('F') with bounds (ldv,ncv)
		  iparam : input rank-1 array('i') with bounds (11)
		  ipntr : input rank-1 array('i') with bounds (14)
		  workd : input rank-1 array('F') with bounds (3 * n)
		  workl : input rank-1 array('F') with bounds (lworkl)
		  rwork : input rank-1 array('f') with bounds (ncv)
		  info : input int
		Optional arguments:
		  ldz := shape(z,0) input int
		  n := len(resid) input int
		  ncv := len(select) input int
		  ldv := shape(v,0) input int
		  lworkl := len(workl) input int
		Return objects:
		  d : rank-1 array('F') with bounds (nev)
		  z : rank-2 array('F') with bounds (n,nev)
		  info : int
	**/
	static public function cneupd(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		logfil - 'i'-scalar
		ndigit - 'i'-scalar
		mgetv0 - 'i'-scalar
		msaupd - 'i'-scalar
		msaup2 - 'i'-scalar
		msaitr - 'i'-scalar
		mseigt - 'i'-scalar
		msapps - 'i'-scalar
		msgets - 'i'-scalar
		mseupd - 'i'-scalar
		mnaupd - 'i'-scalar
		mnaup2 - 'i'-scalar
		mnaitr - 'i'-scalar
		mneigh - 'i'-scalar
		mnapps - 'i'-scalar
		mngets - 'i'-scalar
		mneupd - 'i'-scalar
		mcaupd - 'i'-scalar
		mcaup2 - 'i'-scalar
		mcaitr - 'i'-scalar
		mceigh - 'i'-scalar
		mcapps - 'i'-scalar
		mcgets - 'i'-scalar
		mceupd - 'i'-scalar
	**/
	static public function debug(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		dnaupd - Function signature:
		  ido,tol,resid,v,iparam,ipntr,info = dnaupd(ido,bmat,which,nev,tol,resid,v,iparam,ipntr,workd,workl,info,[n,ncv,ldv,lworkl])
		Required arguments:
		  ido : input int
		  bmat : input string(len=1)
		  which : input string(len=2)
		  nev : input int
		  tol : input float
		  resid : input rank-1 array('d') with bounds (n)
		  v : input rank-2 array('d') with bounds (ldv,ncv)
		  iparam : input rank-1 array('i') with bounds (11)
		  ipntr : input rank-1 array('i') with bounds (14)
		  workd : in/output rank-1 array('d') with bounds (3 * n)
		  workl : in/output rank-1 array('d') with bounds (lworkl)
		  info : input int
		Optional arguments:
		  n := len(resid) input int
		  ncv := shape(v,1) input int
		  ldv := shape(v,0) input int
		  lworkl := len(workl) input int
		Return objects:
		  ido : int
		  tol : float
		  resid : rank-1 array('d') with bounds (n)
		  v : rank-2 array('d') with bounds (ldv,ncv)
		  iparam : rank-1 array('i') with bounds (11)
		  ipntr : rank-1 array('i') with bounds (14)
		  info : int
	**/
	static public function dnaupd(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		dneupd - Function signature:
		  dr,di,z,info = dneupd(rvec,howmny,select,sigmar,sigmai,workev,bmat,which,nev,tol,resid,v,iparam,ipntr,workd,workl,info,[ldz,n,ncv,ldv,lworkl])
		Required arguments:
		  rvec : input int
		  howmny : input string(len=1)
		  select : input rank-1 array('i') with bounds (ncv)
		  sigmar : input float
		  sigmai : input float
		  workev : input rank-1 array('d') with bounds (3 * ncv)
		  bmat : input string(len=1)
		  which : input string(len=2)
		  nev : input int
		  tol : input float
		  resid : input rank-1 array('d') with bounds (n)
		  v : input rank-2 array('d') with bounds (n,ncv)
		  iparam : input rank-1 array('i') with bounds (11)
		  ipntr : input rank-1 array('i') with bounds (14)
		  workd : input rank-1 array('d') with bounds (3 * n)
		  workl : input rank-1 array('d') with bounds (lworkl)
		  info : input int
		Optional arguments:
		  ldz := shape(z,0) input int
		  n := len(resid) input int
		  ncv := len(select) input int
		  ldv := shape(v,0) input int
		  lworkl := len(workl) input int
		Return objects:
		  dr : rank-1 array('d') with bounds (nev + 1)
		  di : rank-1 array('d') with bounds (nev + 1)
		  z : rank-2 array('d') with bounds (n,nev + 1)
		  info : int
	**/
	static public function dneupd(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		dsaupd - Function signature:
		  ido,tol,resid,v,iparam,ipntr,info = dsaupd(ido,bmat,which,nev,tol,resid,v,iparam,ipntr,workd,workl,info,[n,ncv,ldv,lworkl])
		Required arguments:
		  ido : input int
		  bmat : input string(len=1)
		  which : input string(len=2)
		  nev : input int
		  tol : input float
		  resid : input rank-1 array('d') with bounds (n)
		  v : input rank-2 array('d') with bounds (ldv,ncv)
		  iparam : input rank-1 array('i') with bounds (11)
		  ipntr : input rank-1 array('i') with bounds (11)
		  workd : in/output rank-1 array('d') with bounds (3 * n)
		  workl : in/output rank-1 array('d') with bounds (lworkl)
		  info : input int
		Optional arguments:
		  n := len(resid) input int
		  ncv := shape(v,1) input int
		  ldv := shape(v,0) input int
		  lworkl := len(workl) input int
		Return objects:
		  ido : int
		  tol : float
		  resid : rank-1 array('d') with bounds (n)
		  v : rank-2 array('d') with bounds (ldv,ncv)
		  iparam : rank-1 array('i') with bounds (11)
		  ipntr : rank-1 array('i') with bounds (11)
		  info : int
	**/
	static public function dsaupd(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		dseupd - Function signature:
		  d,z,info = dseupd(rvec,howmny,select,sigma,bmat,which,nev,tol,resid,v,iparam,ipntr,workd,workl,info,[ldz,n,ncv,ldv,lworkl])
		Required arguments:
		  rvec : input int
		  howmny : input string(len=1)
		  select : input rank-1 array('i') with bounds (ncv)
		  sigma : input float
		  bmat : input string(len=1)
		  which : input string(len=2)
		  nev : input int
		  tol : input float
		  resid : input rank-1 array('d') with bounds (n)
		  v : input rank-2 array('d') with bounds (ldv,ncv)
		  iparam : input rank-1 array('i') with bounds (7)
		  ipntr : input rank-1 array('i') with bounds (11)
		  workd : input rank-1 array('d') with bounds (2 * n)
		  workl : input rank-1 array('d') with bounds (lworkl)
		  info : input int
		Optional arguments:
		  ldz := shape(z,0) input int
		  n := len(resid) input int
		  ncv := len(select) input int
		  ldv := shape(v,0) input int
		  lworkl := len(workl) input int
		Return objects:
		  d : rank-1 array('d') with bounds (nev)
		  z : rank-2 array('d') with bounds (n,nev)
		  info : int
	**/
	static public function dseupd(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		snaupd - Function signature:
		  ido,tol,resid,v,iparam,ipntr,info = snaupd(ido,bmat,which,nev,tol,resid,v,iparam,ipntr,workd,workl,info,[n,ncv,ldv,lworkl])
		Required arguments:
		  ido : input int
		  bmat : input string(len=1)
		  which : input string(len=2)
		  nev : input int
		  tol : input float
		  resid : input rank-1 array('f') with bounds (n)
		  v : input rank-2 array('f') with bounds (ldv,ncv)
		  iparam : input rank-1 array('i') with bounds (11)
		  ipntr : input rank-1 array('i') with bounds (14)
		  workd : in/output rank-1 array('f') with bounds (3 * n)
		  workl : in/output rank-1 array('f') with bounds (lworkl)
		  info : input int
		Optional arguments:
		  n := len(resid) input int
		  ncv := shape(v,1) input int
		  ldv := shape(v,0) input int
		  lworkl := len(workl) input int
		Return objects:
		  ido : int
		  tol : float
		  resid : rank-1 array('f') with bounds (n)
		  v : rank-2 array('f') with bounds (ldv,ncv)
		  iparam : rank-1 array('i') with bounds (11)
		  ipntr : rank-1 array('i') with bounds (14)
		  info : int
	**/
	static public function snaupd(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		sneupd - Function signature:
		  dr,di,z,info = sneupd(rvec,howmny,select,sigmar,sigmai,workev,bmat,which,nev,tol,resid,v,iparam,ipntr,workd,workl,info,[ldz,n,ncv,ldv,lworkl])
		Required arguments:
		  rvec : input int
		  howmny : input string(len=1)
		  select : input rank-1 array('i') with bounds (ncv)
		  sigmar : input float
		  sigmai : input float
		  workev : input rank-1 array('f') with bounds (3 * ncv)
		  bmat : input string(len=1)
		  which : input string(len=2)
		  nev : input int
		  tol : input float
		  resid : input rank-1 array('f') with bounds (n)
		  v : input rank-2 array('f') with bounds (n,ncv)
		  iparam : input rank-1 array('i') with bounds (11)
		  ipntr : input rank-1 array('i') with bounds (14)
		  workd : input rank-1 array('f') with bounds (3 * n)
		  workl : input rank-1 array('f') with bounds (lworkl)
		  info : input int
		Optional arguments:
		  ldz := shape(z,0) input int
		  n := len(resid) input int
		  ncv := len(select) input int
		  ldv := shape(v,0) input int
		  lworkl := len(workl) input int
		Return objects:
		  dr : rank-1 array('f') with bounds (nev + 1)
		  di : rank-1 array('f') with bounds (nev + 1)
		  z : rank-2 array('f') with bounds (n,nev + 1)
		  info : int
	**/
	static public function sneupd(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ssaupd - Function signature:
		  ido,tol,resid,v,iparam,ipntr,info = ssaupd(ido,bmat,which,nev,tol,resid,v,iparam,ipntr,workd,workl,info,[n,ncv,ldv,lworkl])
		Required arguments:
		  ido : input int
		  bmat : input string(len=1)
		  which : input string(len=2)
		  nev : input int
		  tol : input float
		  resid : input rank-1 array('f') with bounds (n)
		  v : input rank-2 array('f') with bounds (ldv,ncv)
		  iparam : input rank-1 array('i') with bounds (11)
		  ipntr : input rank-1 array('i') with bounds (11)
		  workd : in/output rank-1 array('f') with bounds (3 * n)
		  workl : in/output rank-1 array('f') with bounds (lworkl)
		  info : input int
		Optional arguments:
		  n := len(resid) input int
		  ncv := shape(v,1) input int
		  ldv := shape(v,0) input int
		  lworkl := len(workl) input int
		Return objects:
		  ido : int
		  tol : float
		  resid : rank-1 array('f') with bounds (n)
		  v : rank-2 array('f') with bounds (ldv,ncv)
		  iparam : rank-1 array('i') with bounds (11)
		  ipntr : rank-1 array('i') with bounds (11)
		  info : int
	**/
	static public function ssaupd(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		sseupd - Function signature:
		  d,z,info = sseupd(rvec,howmny,select,sigma,bmat,which,nev,tol,resid,v,iparam,ipntr,workd,workl,info,[ldz,n,ncv,ldv,lworkl])
		Required arguments:
		  rvec : input int
		  howmny : input string(len=1)
		  select : input rank-1 array('i') with bounds (ncv)
		  sigma : input float
		  bmat : input string(len=1)
		  which : input string(len=2)
		  nev : input int
		  tol : input float
		  resid : input rank-1 array('f') with bounds (n)
		  v : input rank-2 array('f') with bounds (ldv,ncv)
		  iparam : input rank-1 array('i') with bounds (7)
		  ipntr : input rank-1 array('i') with bounds (11)
		  workd : input rank-1 array('f') with bounds (2 * n)
		  workl : input rank-1 array('f') with bounds (lworkl)
		  info : input int
		Optional arguments:
		  ldz := shape(z,0) input int
		  n := len(resid) input int
		  ncv := len(select) input int
		  ldv := shape(v,0) input int
		  lworkl := len(workl) input int
		Return objects:
		  d : rank-1 array('f') with bounds (nev)
		  z : rank-2 array('f') with bounds (n,nev)
		  info : int
	**/
	static public function sseupd(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		nopx - 'i'-scalar
		nbx - 'i'-scalar
		nrorth - 'i'-scalar
		nitref - 'i'-scalar
		nrstrt - 'i'-scalar
		tsaupd - 'f'-scalar
		tsaup2 - 'f'-scalar
		tsaitr - 'f'-scalar
		tseigt - 'f'-scalar
		tsgets - 'f'-scalar
		tsapps - 'f'-scalar
		tsconv - 'f'-scalar
		tnaupd - 'f'-scalar
		tnaup2 - 'f'-scalar
		tnaitr - 'f'-scalar
		tneigh - 'f'-scalar
		tngets - 'f'-scalar
		tnapps - 'f'-scalar
		tnconv - 'f'-scalar
		tcaupd - 'f'-scalar
		tcaup2 - 'f'-scalar
		tcaitr - 'f'-scalar
		tceigh - 'f'-scalar
		tcgets - 'f'-scalar
		tcapps - 'f'-scalar
		tcconv - 'f'-scalar
		tmvopx - 'f'-scalar
		tmvbx - 'f'-scalar
		tgetv0 - 'f'-scalar
		titref - 'f'-scalar
		trvec - 'f'-scalar
	**/
	static public function timing(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		znaupd - Function signature:
		  ido,tol,resid,v,iparam,ipntr,info = znaupd(ido,bmat,which,nev,tol,resid,v,iparam,ipntr,workd,workl,rwork,info,[n,ncv,ldv,lworkl])
		Required arguments:
		  ido : input int
		  bmat : input string(len=1)
		  which : input string(len=2)
		  nev : input int
		  tol : input float
		  resid : input rank-1 array('D') with bounds (n)
		  v : input rank-2 array('D') with bounds (ldv,ncv)
		  iparam : input rank-1 array('i') with bounds (11)
		  ipntr : input rank-1 array('i') with bounds (14)
		  workd : in/output rank-1 array('D') with bounds (3 * n)
		  workl : in/output rank-1 array('D') with bounds (lworkl)
		  rwork : in/output rank-1 array('d') with bounds (ncv)
		  info : input int
		Optional arguments:
		  n := len(resid) input int
		  ncv := shape(v,1) input int
		  ldv := shape(v,0) input int
		  lworkl := len(workl) input int
		Return objects:
		  ido : int
		  tol : float
		  resid : rank-1 array('D') with bounds (n)
		  v : rank-2 array('D') with bounds (ldv,ncv)
		  iparam : rank-1 array('i') with bounds (11)
		  ipntr : rank-1 array('i') with bounds (14)
		  info : int
	**/
	static public function znaupd(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		zneupd - Function signature:
		  d,z,info = zneupd(rvec,howmny,select,sigma,workev,bmat,which,nev,tol,resid,v,iparam,ipntr,workd,workl,rwork,info,[ldz,n,ncv,ldv,lworkl])
		Required arguments:
		  rvec : input int
		  howmny : input string(len=1)
		  select : input rank-1 array('i') with bounds (ncv)
		  sigma : input complex
		  workev : input rank-1 array('D') with bounds (3 * ncv)
		  bmat : input string(len=1)
		  which : input string(len=2)
		  nev : input int
		  tol : input float
		  resid : input rank-1 array('D') with bounds (n)
		  v : input rank-2 array('D') with bounds (ldv,ncv)
		  iparam : input rank-1 array('i') with bounds (11)
		  ipntr : input rank-1 array('i') with bounds (14)
		  workd : input rank-1 array('D') with bounds (3 * n)
		  workl : input rank-1 array('D') with bounds (lworkl)
		  rwork : input rank-1 array('d') with bounds (ncv)
		  info : input int
		Optional arguments:
		  ldz := shape(z,0) input int
		  n := len(resid) input int
		  ncv := len(select) input int
		  ldv := shape(v,0) input int
		  lworkl := len(workl) input int
		Return objects:
		  d : rank-1 array('D') with bounds (nev)
		  z : rank-2 array('D') with bounds (n,nev)
		  info : int
	**/
	static public function zneupd(args:haxe.extern.Rest<Dynamic>):Dynamic;
}