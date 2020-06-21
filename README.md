# SpeedWatcher
Script Internet Speed Test &amp; Send LINE Alert
# How to use
- Install speedtest-cli (require login root)
```
ln -s /usr/bin/python3.8 /usr/bin/python
wget -O /usr/bin/speedtest-cli https://raw.githubusercontent.com/sivel/speedtest-cli/master/speedtest.py
chmod +x /usr/bin/speedtest-cli
```
- Edit script & Insert your LINE token
- Add cront
```
20 * * * * /home/lucky/SpeedWatcher.sh
```
- Don't forget to make the script executable:
```
chmod +x /home/lucky/SpeedWatcher.sh
```
