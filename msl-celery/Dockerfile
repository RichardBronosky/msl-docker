FROM dockerfile/python

MAINTAINER Bruno Bronosky <richard@bronosky.com>

RUN pip install -U https://github.com/RichardBronosky/service_layer/zipball/master
RUN pip install -U https://github.com/RichardBronosky/service_layer_config/zipball/master

RUN chmod a+w /data

CMD ["msl_worker"]
