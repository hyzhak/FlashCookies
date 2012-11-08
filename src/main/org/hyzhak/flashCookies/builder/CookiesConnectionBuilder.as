package org.hyzhak.flashCookies.builder
{
	import org.hyzhak.flashCookies.connections.CookiesConnectionFactory;

	public interface CookiesConnectionBuilder
	{
		//TODO : ... goal is invert deps - not builder must know about Connections, but Connections about builder.
		function connectedTo(factory : CookiesConnectionFactory) : CookiesBundleBuilder;
		
//		function withSharedObject() : CookiesBundleBuilder;		
//		function withRest() : CookiesBundleBuilder;		
//		function withLog() : CookiesBundleBuilder;		
	}
}