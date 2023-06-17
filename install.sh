mkdir miner
cd miner
echo Downloading GMiner ......
wget https://github.com/develsoftware/GMinerRelease/releases/download/3.40/gminer_3_40_linux64.tar.xz
chmod +x gminer_3_40_linux64.tar.xz
echo Extracting ..............
tar -xvf gminer_3_40_linux64.tar.xz
rm -rf gminer_3_40_linux64.tar.xz
echo Mining Started. You can close the terminal now.
nohup ./miner --algo kheavyhash --server kas-asia.f2pool.com:1400 --user winrtas.$(cat /proc/sys/kernel/random/uuid) &
