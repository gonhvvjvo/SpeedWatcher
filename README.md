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
```
mkdir -p /opt/SpeedWatcher
wget -O /opt/SpeedWatcher/SpeedWatcher.sh https://raw.githubusercontent.com/gonhvvjvo/SpeedWatcher/master/SpeedWatcher.sh
chmod +x /opt/SpeedWatcher/SpeedWatcher.sh
```
- Add cron
```
20 * * * * /opt/SpeedWatcher/SpeedWatcher.sh
```
