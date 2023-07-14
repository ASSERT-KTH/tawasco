FROM jacarte/ww6 as builder

# Just copy the binaries from the builder
COPY --from=builder /usr/local/bin /usr/local/bin
RUN ls /usr/local/bin