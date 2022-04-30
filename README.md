
# Roblox Currency Conversion
A basic currency conversion robux to cash.

## Usage
- Convert Robux to cash currency.
```lua
CurrencyConversion:fromRobux(Robux, Currency --optional)
```

- Convert Cash to robux.
```lua
CurrencyConversion:toRobux(Cash, Currency --optional)
```

- Using example.
```lua
local CurrencyConversion = require(workspace.CurrencyConversion)

local Robux = 50000

print("Price for R$"..Robux.." is $"..CurrencyConversion:fromRobux(Robux))
print("Developer Exchange rate is $"..CurrencyConversion:fromRobux(50000, "DevEX"))

-- Price for R$50000 is $625
-- Developer Exchange rate is $175
```
