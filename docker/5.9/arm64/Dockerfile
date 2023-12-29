FROM arm64v8/swift:5.9-jammy

RUN mkdir /workspace
WORKDIR /workspace

COPY . /workspace

RUN swift build -c release

RUN cp /workspace/.build/release/swaggen /usr/local/bin

RUN mkdir -p /usr/local/share/swaggen \ 
    && cp -a /workspace/Templates /usr/local/share/swaggen \ 
    && mv /usr/local/share/swaggen/Templates/Swift /usr/local/share/swaggen/Templates/swift

ENTRYPOINT [ "/usr/local/bin/swaggen" ]