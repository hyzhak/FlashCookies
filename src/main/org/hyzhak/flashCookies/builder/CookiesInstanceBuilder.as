package org.hyzhak.flashCookies.builder
{
	import org.hyzhak.flashCookies.Cookies;

	public interface CookiesInstanceBuilder
	{
		function autoSync(value : Boolean) : CookiesInstanceBuilder;
		
		function build() : Cookies;
	}
}