--[[

    @NyaRemi / AkaSokuro
    
    A basic currency conversion robux to cash.

]]



local DefaultCurrency = "USD"

local CurrencyRate = {
	USD = 0.0125, -- 1 Robux equals to 1.25 cents in Dollar
	DevEX = 0.0035 -- 1 Robux equals to 0.35 cents in Developer Exchange
}



--[[   Main   ]]

local CurrencyConversion = {}

function CurrencyConversion:fromRobux (Robux, Currency)
	
	if not Currency then Currency = DefaultCurrency end
	
	if CurrencyRate[Currency] then Currency = CurrencyRate[Currency] end
	
	return Robux*Currency
	
end

function CurrencyConversion:toRobux (Cash, Currency)
	
	if not Currency then Currency = DefaultCurrency end
	
	if CurrencyRate[Currency] then Currency = CurrencyRate[Currency] end
	
	return Cash/Currency
	
end

return CurrencyConversion
