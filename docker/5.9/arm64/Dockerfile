FROM arm64v8/swift:5.9-jammy

RUN mkdir -p /workspace/swaggen
WORKDIR /workspace

COPY . /workspace/swaggen

RUN swift build -c release

RUN cp /workspace/swaggen/.build/release/swaggen /usr/local/bin

RUN mkdir -p /usr/local/share/swaggen \ 
    && cp -a /workspace/swaggen/Templates /usr/local/share/swaggen \ 
    && mv /usr/local/share/swaggen/Templates/Swift /usr/local/share/swaggen/Templates/swift

ENTRYPOINT [ "/usr/local/bin/swaggen" ]