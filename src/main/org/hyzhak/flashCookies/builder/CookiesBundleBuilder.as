package org.hyzhak.flashCookies.builder
{

	public interface CookiesBundleBuilder extends CookiesConnectionBuilder
	{
		function bundle(name : String) : CookiesInstanceBuilder;		
	}
}