package org.hyzhak.flashCookies.connections.sharedObject
{
	import org.hyzhak.flashCookies.builder.CookiesBuilderState;
	import org.hyzhak.flashCookies.connections.CookiesConnection;
	import org.hyzhak.flashCookies.connections.CookiesConnectionFactory;
	
	public class SharedObjectFactory implements CookiesConnectionFactory
	{
		public function create(state:CookiesBuilderState):CookiesConnection
		{
			return new SharedObjectCookies(state.getBundleNane(), state.isAutoSync);
		}
	}
}