FROM ubuntu
RUN apt update && apt install -y git

COPY init.sh .

ENTRYPOINT ["./init.sh"]