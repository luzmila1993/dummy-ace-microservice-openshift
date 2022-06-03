FROM cp.icr.io/cp/appc/ace-server-prod@sha256:2b8be27ffa0106c66d7bab819a8043bb7e01a7d049ede0df8439f9d42d799685
USER root
COPY compilado /home/aceuser/bars
RUN  chmod -R ugo+rwx /home/aceuser
USER 1000
RUN ace_compile_bars.sh
USER root
RUN  chmod -R ugo+rwx /home/aceuser
USER 1000
