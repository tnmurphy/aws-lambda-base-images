FROM scratch
ADD x86_64/016bfa6b128425ee2ca60e7eece512e9d4d3aa41fe874c0fb4dab61b69b37dca.tar.xz /
ADD x86_64/31ba71845f487422dfb0f0f6ab09eb70089c51364892aa0bf4f6f4be046e897a.tar.xz /
ADD x86_64/73e1d5b4cd8911c1e3f6578b623dc825c56ddd62c7fd45ef2feaf9201ad55441.tar.xz /
ADD x86_64/d046beee6fab2d8149f03f4305212bb399ceecde37488b47abe98f855a50f5b8.tar.xz /
ADD x86_64/dbcbb74ab95e01fdcd2a4dea043888d72e9d3204b0d7a6d9b65e48bdf81efc98.tar.xz /
ADD x86_64/e77289f7dad39965a96422fb430a5adcc3d95f32732d9d43e8a9450e4bc5718a.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
