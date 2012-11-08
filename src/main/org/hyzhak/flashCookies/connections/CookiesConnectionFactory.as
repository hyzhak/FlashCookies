package org.hyzhak.flashCookies.connections
{
	import org.hyzhak.flashCookies.builder.CookiesBuilderState;

	public interface CookiesConnectionFactory
	{
		function create(state : CookiesBuilderState) : CookiesConnection;
	}
}