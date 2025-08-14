FROM scratch

ADD 302ab299109b7e3c7befabe89571d1a2650916b3831b0c99837922a84dc5cd7e.tar.xz /
ADD 377914b1dd3bfaf00d2dc61b1ab4631a934fced2d2fc280080c05b002e582d4b.tar.xz /
ADD 73d4ac652ab28cec9888eb2e8f99bb66419478fdbcbd34b4665a466a95afefd0.tar.xz /
ADD d18818bc000d141330709e3b231bfca351b4e384f54ca5f2d77f75855a2d00df.tar.xz /
ADD d26f55c2d8a52609aa0dce55c84e1e1ebf46862d35d41076af557a0964160e8d.tar.xz /
ADD d76f007d1e4cc13654f02ff43cd5c862e0f03578a85497b2e5f40cd29d91fc51.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
