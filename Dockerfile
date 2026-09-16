FROM unityci/hub:latest

ENV UNITY_VERSION=2017.4.0f1
ENV UNITY_CHANGESET=b5bd171ee9ba
ENV UNITY_PATH=/opt/Unity/Editor/Unity

RUN unity-hub install \
    --version ${UNITY_VERSION} \
    --changeset ${UNITY_CHANGESET} \
    --module android \
    android-sdk-ndk-tools \
    android-open-jdk

ENV PATH="/opt/Unity/Editor:${PATH}"

RUN mkdir -p /project

WORKDIR /project

CMD ["bash"]
