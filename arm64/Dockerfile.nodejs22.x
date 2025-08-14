FROM scratch

ADD 0290ee4f8c3d9b1c0e813759af3549d544ce35bab86692510b607aae64458a92.tar.xz /
ADD 55531c9564dd3e8179b76484230c06a515cf030602d975beaa809ef7ba7a8ca4.tar.xz /
ADD 71c94088fff4d1c58b6808632d7839b8f38ea72a87ff2dfff346454790bd01dd.tar.xz /
ADD 87e7ff64ba1fd79e0fbb743935fa922466e1aebb21d4c8bd782e7dbbef6d070b.tar.xz /
ADD ad21c5209ea9fbcee9f3d48a4519a7c491b88c7bb69e8b6abec10154b79c72fb.tar.xz /
ADD d26f55c2d8a52609aa0dce55c84e1e1ebf46862d35d41076af557a0964160e8d.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
