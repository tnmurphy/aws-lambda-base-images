FROM scratch

ADD 223aed296ce51416a9dccb4eeb4f939c0b66520944f0ef02c5b2a57c0fa13898.tar.xz /
ADD 45d3fa29b33fa74f8235f5696251b77f827857f1542560098773da60d59c701b.tar.xz /
ADD 7c327eeeeff1ea10bbc7a938009c3ad90b36b9c8d42e0fdf579deba84ae71d79.tar.xz /
ADD 9a0c0d3bcbbc50e6c31b3d3fb88342df017cfae50182ec536b4078da04a8bac0.tar.xz /
ADD a445b40909c9d536c997065e9639478afab3cb281def2f6fe75225dc8e1161d2.tar.xz /
ADD ce282e5d41d542619ff50a742b306ebc4b03f8192e5e48a0f3cc80ffa50e3edf.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
