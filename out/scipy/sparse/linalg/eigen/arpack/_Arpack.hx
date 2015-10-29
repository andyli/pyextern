/* This file is generated, do not edit! */
package scipy.sparse.linalg.eigen.arpack;
@:pythonImport("scipy.sparse.linalg.eigen.arpack._arpack") extern class _Arpack {
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var __version__ : Dynamic;
	/**
		ido,tol,resid,v,iparam,ipntr,info = cnaupd(ido,bmat,which,nev,tol,resid,v,iparam,ipntr,workd,workl,rwork,info,[n,ncv,ldv,lworkl])
		
		Wrapper for ``cnaupd``.
		
		Parameters
		----------
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
		
		Other Parameters
		----------------
		n : input int, optional
		    Default: len(resid)
		ncv : input int, optional
		    Default: shape(v,1)
		ldv : input int, optional
		    Default: shape(v,0)
		lworkl : input int, optional
		    Default: len(workl)
		
		Returns
		-------
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
		d,z,info = cneupd(rvec,howmny,select,sigma,workev,bmat,which,nev,tol,resid,v,iparam,ipntr,workd,workl,rwork,info,[ldz,n,ncv,ldv,lworkl])
		
		Wrapper for ``cneupd``.
		
		Parameters
		----------
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
		
		Other Parameters
		----------------
		ldz : input int, optional
		    Default: shape(z,0)
		n : input int, optional
		    Default: len(resid)
		ncv : input int, optional
		    Default: len(select)
		ldv : input int, optional
		    Default: shape(v,0)
		lworkl : input int, optional
		    Default: len(workl)
		
		Returns
		-------
		d : rank-1 array('F') with bounds (nev)
		z : rank-2 array('F') with bounds (n,nev)
		info : int
	**/
	static public function cneupd(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		'i'-scalar
		'i'-scalar
		'i'-scalar
		'i'-scalar
		'i'-scalar
		'i'-scalar
		'i'-scalar
		'i'-scalar
		'i'-scalar
		'i'-scalar
		'i'-scalar
		'i'-scalar
		'i'-scalar
		'i'-scalar
		'i'-scalar
		'i'-scalar
		'i'-scalar
		'i'-scalar
		'i'-scalar
		'i'-scalar
		'i'-scalar
		'i'-scalar
		'i'-scalar
		'i'-scalar
	**/
	static public function debug(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ido,tol,resid,v,iparam,ipntr,info = dnaupd(ido,bmat,which,nev,tol,resid,v,iparam,ipntr,workd,workl,info,[n,ncv,ldv,lworkl])
		
		Wrapper for ``dnaupd``.
		
		Parameters
		----------
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
		
		Other Parameters
		----------------
		n : input int, optional
		    Default: len(resid)
		ncv : input int, optional
		    Default: shape(v,1)
		ldv : input int, optional
		    Default: shape(v,0)
		lworkl : input int, optional
		    Default: len(workl)
		
		Returns
		-------
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
		dr,di,z,info = dneupd(rvec,howmny,select,sigmar,sigmai,workev,bmat,which,nev,tol,resid,v,iparam,ipntr,workd,workl,info,[ldz,n,ncv,ldv,lworkl])
		
		Wrapper for ``dneupd``.
		
		Parameters
		----------
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
		
		Other Parameters
		----------------
		ldz : input int, optional
		    Default: shape(z,0)
		n : input int, optional
		    Default: len(resid)
		ncv : input int, optional
		    Default: len(select)
		ldv : input int, optional
		    Default: shape(v,0)
		lworkl : input int, optional
		    Default: len(workl)
		
		Returns
		-------
		dr : rank-1 array('d') with bounds (nev + 1)
		di : rank-1 array('d') with bounds (nev + 1)
		z : rank-2 array('d') with bounds (n,nev + 1)
		info : int
	**/
	static public function dneupd(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ido,tol,resid,v,iparam,ipntr,info = dsaupd(ido,bmat,which,nev,tol,resid,v,iparam,ipntr,workd,workl,info,[n,ncv,ldv,lworkl])
		
		Wrapper for ``dsaupd``.
		
		Parameters
		----------
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
		
		Other Parameters
		----------------
		n : input int, optional
		    Default: len(resid)
		ncv : input int, optional
		    Default: shape(v,1)
		ldv : input int, optional
		    Default: shape(v,0)
		lworkl : input int, optional
		    Default: len(workl)
		
		Returns
		-------
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
		d,z,info = dseupd(rvec,howmny,select,sigma,bmat,which,nev,tol,resid,v,iparam,ipntr,workd,workl,info,[ldz,n,ncv,ldv,lworkl])
		
		Wrapper for ``dseupd``.
		
		Parameters
		----------
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
		
		Other Parameters
		----------------
		ldz : input int, optional
		    Default: shape(z,0)
		n : input int, optional
		    Default: len(resid)
		ncv : input int, optional
		    Default: len(select)
		ldv : input int, optional
		    Default: shape(v,0)
		lworkl : input int, optional
		    Default: len(workl)
		
		Returns
		-------
		d : rank-1 array('d') with bounds (nev)
		z : rank-2 array('d') with bounds (n,nev)
		info : int
	**/
	static public function dseupd(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ido,tol,resid,v,iparam,ipntr,info = snaupd(ido,bmat,which,nev,tol,resid,v,iparam,ipntr,workd,workl,info,[n,ncv,ldv,lworkl])
		
		Wrapper for ``snaupd``.
		
		Parameters
		----------
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
		
		Other Parameters
		----------------
		n : input int, optional
		    Default: len(resid)
		ncv : input int, optional
		    Default: shape(v,1)
		ldv : input int, optional
		    Default: shape(v,0)
		lworkl : input int, optional
		    Default: len(workl)
		
		Returns
		-------
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
		dr,di,z,info = sneupd(rvec,howmny,select,sigmar,sigmai,workev,bmat,which,nev,tol,resid,v,iparam,ipntr,workd,workl,info,[ldz,n,ncv,ldv,lworkl])
		
		Wrapper for ``sneupd``.
		
		Parameters
		----------
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
		
		Other Parameters
		----------------
		ldz : input int, optional
		    Default: shape(z,0)
		n : input int, optional
		    Default: len(resid)
		ncv : input int, optional
		    Default: len(select)
		ldv : input int, optional
		    Default: shape(v,0)
		lworkl : input int, optional
		    Default: len(workl)
		
		Returns
		-------
		dr : rank-1 array('f') with bounds (nev + 1)
		di : rank-1 array('f') with bounds (nev + 1)
		z : rank-2 array('f') with bounds (n,nev + 1)
		info : int
	**/
	static public function sneupd(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ido,tol,resid,v,iparam,ipntr,info = ssaupd(ido,bmat,which,nev,tol,resid,v,iparam,ipntr,workd,workl,info,[n,ncv,ldv,lworkl])
		
		Wrapper for ``ssaupd``.
		
		Parameters
		----------
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
		
		Other Parameters
		----------------
		n : input int, optional
		    Default: len(resid)
		ncv : input int, optional
		    Default: shape(v,1)
		ldv : input int, optional
		    Default: shape(v,0)
		lworkl : input int, optional
		    Default: len(workl)
		
		Returns
		-------
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
		d,z,info = sseupd(rvec,howmny,select,sigma,bmat,which,nev,tol,resid,v,iparam,ipntr,workd,workl,info,[ldz,n,ncv,ldv,lworkl])
		
		Wrapper for ``sseupd``.
		
		Parameters
		----------
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
		
		Other Parameters
		----------------
		ldz : input int, optional
		    Default: shape(z,0)
		n : input int, optional
		    Default: len(resid)
		ncv : input int, optional
		    Default: len(select)
		ldv : input int, optional
		    Default: shape(v,0)
		lworkl : input int, optional
		    Default: len(workl)
		
		Returns
		-------
		d : rank-1 array('f') with bounds (nev)
		z : rank-2 array('f') with bounds (n,nev)
		info : int
	**/
	static public function sseupd(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		'i'-scalar
		'i'-scalar
		'i'-scalar
		'i'-scalar
		'i'-scalar
		'f'-scalar
		'f'-scalar
		'f'-scalar
		'f'-scalar
		'f'-scalar
		'f'-scalar
		'f'-scalar
		'f'-scalar
		'f'-scalar
		'f'-scalar
		'f'-scalar
		'f'-scalar
		'f'-scalar
		'f'-scalar
		'f'-scalar
		'f'-scalar
		'f'-scalar
		'f'-scalar
		'f'-scalar
		'f'-scalar
		'f'-scalar
		'f'-scalar
		'f'-scalar
		'f'-scalar
		'f'-scalar
		'f'-scalar
	**/
	static public function timing(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ido,tol,resid,v,iparam,ipntr,info = znaupd(ido,bmat,which,nev,tol,resid,v,iparam,ipntr,workd,workl,rwork,info,[n,ncv,ldv,lworkl])
		
		Wrapper for ``znaupd``.
		
		Parameters
		----------
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
		
		Other Parameters
		----------------
		n : input int, optional
		    Default: len(resid)
		ncv : input int, optional
		    Default: shape(v,1)
		ldv : input int, optional
		    Default: shape(v,0)
		lworkl : input int, optional
		    Default: len(workl)
		
		Returns
		-------
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
		d,z,info = zneupd(rvec,howmny,select,sigma,workev,bmat,which,nev,tol,resid,v,iparam,ipntr,workd,workl,rwork,info,[ldz,n,ncv,ldv,lworkl])
		
		Wrapper for ``zneupd``.
		
		Parameters
		----------
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
		
		Other Parameters
		----------------
		ldz : input int, optional
		    Default: shape(z,0)
		n : input int, optional
		    Default: len(resid)
		ncv : input int, optional
		    Default: len(select)
		ldv : input int, optional
		    Default: shape(v,0)
		lworkl : input int, optional
		    Default: len(workl)
		
		Returns
		-------
		d : rank-1 array('D') with bounds (nev)
		z : rank-2 array('D') with bounds (n,nev)
		info : int
	**/
	static public function zneupd(args:haxe.extern.Rest<Dynamic>):Dynamic;
}