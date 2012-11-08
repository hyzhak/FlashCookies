package org.hyzhak.flashCookies.connections.flexLogger
{
	import org.hyzhak.flashCookies.builder.CookiesBuilderState;
	import org.hyzhak.flashCookies.connections.CookiesConnection;
	import org.hyzhak.flashCookies.connections.CookiesConnectionFactory;
	
	public class FlexLoggerFactory implements CookiesConnectionFactory
	{
		public function create(state:CookiesBuilderState):CookiesConnection
		{
			return new FlexLoggerCookies(state.getBundleNane());
		}
	}
}