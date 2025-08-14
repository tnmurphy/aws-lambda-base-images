FROM scratch
ADD x86_64/10ab688f5237a1d956dd6e3cf9133c3f005eca4a30e0128bba50a296c16c25f2.tar.xz /
ADD x86_64/5f0b072d21a111d9043239f674937876dceec4cab92d5f20630691f1e024c611.tar.xz /
ADD x86_64/94eaa6a49f496c8d7f80d58ebaadefca05fb77299b8e9d31575fc4ddd3ac3b5b.tar.xz /
ADD x86_64/b9bd99f82adaaf9c56abae35ed3a5581da4132396888d70244d1f5ffc2edfc88.tar.xz /
ADD x86_64/dfcdb91a9957124dca8b122a8a8d58138ba6082a4628c0b957be0fc0f88ba08e.tar.xz /
ADD x86_64/ee7a3e44f485823c85322bf4abbcf5e23a56b218b42adcfd6881de788e04b32a.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
