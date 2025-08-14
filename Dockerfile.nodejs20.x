FROM scratch
ADD x86_64/39f9b34954cd7b670563886af17ccb15dba3d6bfc675fc2332d38e35afe616a4.tar.xz /
ADD x86_64/7792c62de0c584af0d93f97fd168eaacdf6a481eaef22e3615508ebc9919f886.tar.xz /
ADD x86_64/94eaa6a49f496c8d7f80d58ebaadefca05fb77299b8e9d31575fc4ddd3ac3b5b.tar.xz /
ADD x86_64/a18087ec791eb99a42e4e595ab8ceb6829450b342af846d10f5266eca0f52ecf.tar.xz /
ADD x86_64/d5214cd6838b41ead2ca279893890ffbe9325f0fe75133aa105f04508dbcf671.tar.xz /
ADD x86_64/eccef13fb0375634b45a8c328465809d0dafc02bfe905a06628b471c4a6b92f2.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
