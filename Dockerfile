# Iky Ganteng
FROM biansepang/weebproject:buster
#
# Iky
#
RUN git clone -b Paradise-Userbot https://github.com/kiyyawo/KIOO-BOT /root/userbot
RUN mkdir /root/userbot/.bin
RUN pip install --upgrade pip setuptools
WORKDIR /root/userbot

#Install python requirements
RUN pip3 install -r https://raw.githubusercontent.com/Rzky3016/Paradise-Userbot/Paradise-Userbot/requirements.txt

CMD ["python3","-m","userbot"]
