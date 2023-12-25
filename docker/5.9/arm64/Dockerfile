FROM arm64v8/swift:5.9-jammy

RUN mkdir /workspace
WORKDIR /workspace

COPY . /workspace

RUN swift build -c release

RUN cp /workspace/.build/release/swaggen /

ENTRYPOINT [ "/swaggen" ]