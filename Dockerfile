FROM sandy1709/catuserbot:alpine

#clonning repo 
RUN git clone https://github.com/REBEL75/REBELUSERBOT.git /root/REBELBOT
#working directory 
WORKDIR /root/REBELBOT

# Install requirements
RUN pip3 install -U -r requirements.txt

ENV PATH="/home/userbot/bin:$PATH"

CMD ["python3","-m","userbot"]
