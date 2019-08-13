# xrapid-sim
A simulator to simulate the costs of an xRapid transfer based on current prices. The original project developed by Matt Hamilton can be accessed at https://github.com/hammertoe/xrapid-sim

## Install

```
# virtualenv . -python=python3
# . bin/activate
# pip install -r requirements.txt
```

## Running

```
python3 xrapid-sim.py 5000 bittrex USD bitso MXN
Getting order book for XRP/USD from Bittrex
+ Bought 16176.09 XRP @ 0.2920
+ Bought 943.97 XRP @ 0.2930
Total Bought: 17120.05 XRP
Buy trade fee: 42.80 XRP
Net: 17077.25 XRP

Sending the 17077.25 XRP from Bittrex to Bitso

Getting order book for XRP/MXN from Bitso
- Sold 17077.25 XRP @ 5.5100
Total dest amount: 94095.67 MXN
Sell trade fee: 611.62 MXN
Net: 93484.05 MXN

xRapid comparison to Forex exchange rates
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Total dest amount (FX): 95306.75 MXN
xRapid efficiency (FX): 98.09%
xRapid fees       (FX): 1.91%
```

## Monitoring

One can monitor the exchange rate for various (currently hardcoded) amounts of USD to MXN using the following command

```
# simulate the xRapid exchange rate every 30 seconds
watch -n 30 "./monitor.sh | tee -a xRapid.csv"
```