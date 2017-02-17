
FROM debian:latest

RUN apt-get update
RUN apt-get install -y git make build-essential libssl-dev libffi-dev libreadline-dev
RUN mkdir /home/git
RUN git clone https://github.com/kosh04/newlisp.git /home/git/newlisp
RUN cd /home/git/newlisp/ && make
RUN cp /home/git/newlisp/newlisp /usr/bin/newlisp
RUN mkdir /workspace
WORKDIR /workspace
ENTRYPOINT ["newlisp"]
