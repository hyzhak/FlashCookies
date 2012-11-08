package org.hyzhak.flashCookies.connections
{
	import org.hyzhak.flashCookies.builder.CookiesBundleBuilder;

	public interface CookiesConnectionBuilder
	{
		function withSharedObject() : CookiesBundleBuilder;		
		function withRest() : CookiesBundleBuilder;		
		function withLog() : CookiesBundleBuilder;		
	}
}