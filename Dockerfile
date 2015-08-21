FROM scivm/scientific-python-2.7
MAINTAINER "Cheewai Lai <cheewai.lai@gmail.com>"
RUN \
 pip install Pydap && \
 pip install uWSGI && \
 pip install pydap.handlers.netcdf && \
 pip install pydap.handlers.nca && \
 pip install pydap.responses.netcdf && \
 mkdir -p /var/www/pydap && \
 cd /var/www/pydap && \
 paster create -t pydap server && \
 echo
CMD ["/init.sh"]
