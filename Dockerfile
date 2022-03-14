FROM vckyouuu/geezprojects:buster
# Ical ganteng, Yang hapus credit, Lo babi heheh
# ======================
#    iCalender-UBOT DOCKER
#   FROM DOCKERHUB.COM
# ======================

RUN git clone -b REMI-USERBOT https://github.com/dikyarya/REMI-USERBOT /root/userbot
RUN mkdir /root/userbot/.bin
RUN pip install --upgrade pip setuptools
WORKDIR /root/userbot

#Install python requirements
RUN pip3 install -r https://raw.githubusercontent.com/dikyarya/REMI-USERBOT/REMI-USERBOT/requirements.txt

CMD ["python3","-m","userbot"]
