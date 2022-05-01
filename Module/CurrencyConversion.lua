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
	
	Currency = CurrencyRate[Currency] or Currency or DefaultCurrency
	
	return Robux*Currency
	
end

function CurrencyConversion:toRobux (Cash, Currency)
	
	Currency = CurrencyRate[Currency] or Currency or DefaultCurrency
	
	return Cash/Currency
	
end

return CurrencyConversion
