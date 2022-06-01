FROM ubuntu:20.04

COPY ./gix.yml .
COPY ./main .
COPY ./hooks ./hooks

CMD [ "./main" ]