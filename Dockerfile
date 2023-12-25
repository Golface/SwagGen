ARG SWIFT_IMAGE=swift:5.9-jammy
FROM $SWIFT_IMAGE

RUN mkdir /workspace
WORKDIR /workspace

COPY . /workspace

RUN swift build -c release --static-swift-stdlib

RUN cp /workspace/.build/release/swaggen /

ENTRYPOINT [ "/swaggen" ]