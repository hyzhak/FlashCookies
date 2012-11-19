package org.hyzhak.flashCookies.connections.traces
{
	import org.hyzhak.flashCookies.builder.CookiesBuilderState;
	import org.hyzhak.flashCookies.connections.CookiesConnection;
	import org.hyzhak.flashCookies.connections.CookiesConnectionFactory;
	
	public class TracesFactory implements CookiesConnectionFactory
	{
		public function create(state:CookiesBuilderState):CookiesConnection
		{
			return new TracesCookies(state.getBundleNane());
		}
	}
}