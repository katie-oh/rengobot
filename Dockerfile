FROM liuchong/rustup

RUN apt-get update
RUN apt-get install python3 python3-pip -y
RUN apt-get install -y git

RUN cargo install sgf-render

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY . .

ENTRYPOINT python3 rengobot.py
