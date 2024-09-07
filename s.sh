pkg update & upgrade
termux-setup-storage
pkg install openssl openssh

echo -e "\033[33m[*] ffmpeg packages...\033[0m"
pkg install ffmpeg
echo -e "\033[33m[*] Ubuntu packages...\033[0m"
pkg install proot-distro
proot-distro install ubuntu
proot-distro login ubuntu
apt install wget
apt install unzip
apt-get install libicu-dev
echo -e "\033[33m[*] m3u8dl packages...\033[0m"
wget https://github.com/nilaoda/N_m3u8DL-RE/releases/download/v0.1.5.3-beta/N_m3u8DL-RE_Beta_linux-arm64_20230323.tar.gz
tar -zxf N_m3u8DL-RE_Beta_linux-arm64_20230628.tar.gz
cp N_m3u8DL-RE_Beta_linux-arm64/N_m3u8DL-RE /usr/local/bin/
chmod +x /usr/local/bin/N_m3u8DL-RE
wget https://github.com/shaka-project/shaka-packager/releases/download/v3.0.1/packager-linux-arm64
cp packager-linux-arm64 /usr/local/bin/shaka-packager
chmod +x /usr/local/bin/shaka-packager
mkdir tmp; cd tmp
wget https://files.videohelp.com/u/301890/bento4_tools_android.zip
unzip bento4_tools_android.zip
chmod +x *
cp * /usr/local/bin/
cd ../; rm -r tmp
echo -e "\033[33m[*] Mkvtool packages...\033[0m"
apt install mkvtoolnix
echo -e "\033[33m[*] Python packages...\033[0m"
apt install python3 python3-venv python3-pip
echo -e "\033[33m[*] CDM packages...\033[0m"
wget https://github.com/shubhamgote/cew/raw/main/dl.zip
unzip dl.zip
echo -e "\033[33m[*] ffmpg packages...\033[0m"
wget https://johnvansickle.com/ffmpeg/releases/ffmpeg-release-arm64-static.tar.xz
tar -xvf ffmpeg-release-arm64-static.tar.xz --wildcards '*/ffmpeg' -O > ./ffmpeg
chmod +x ./ffmpeg
echo -e "\033[33m[*] PY ENV packages...\033[0m"
python3 -m venv env
source env/bin/activate
pip install requests yt-dlp bs4 google lxml protobuf==3.20.3 pycryptodomex xmltodict
echo -e "\033[33m[*] Running Script...\033[0m"
python3 m.py
