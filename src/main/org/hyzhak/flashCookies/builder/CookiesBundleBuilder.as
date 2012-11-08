package org.hyzhak.flashCookies.builder
{
	import org.hyzhak.flashCookies.connections.CookiesConnectionBuilder;

	public interface CookiesBundleBuilder extends CookiesConnectionBuilder
	{
		function bundle(name : String) : CookiesInstanceBuilder;		
	}
}