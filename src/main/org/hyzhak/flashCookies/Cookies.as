package org.hyzhak.flashCookies
{
	public interface Cookies
	{
		function requestCookie(name : String) : *;
		function storeCookie(name : String, value : *) : void;
		function defaultCookie(name : String, value : *) : void;
		
		function sync() : void;
		
		function clear() : void;
	}
}