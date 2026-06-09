ARG BUILD_FROM=ghcr.io/hassio-addons/base/aarch64:20.2.0
FROM ${BUILD_FROM}

WORKDIR /data
# Install requirements for add-on
RUN \
  apk add --no-cache \
    python3 py3-pip
RUN pip3 install --no-cache-dir bcg

# Copy s6-overlay service definitions
COPY rootfs /
RUN chmod a+x /etc/services.d/hardwario_bcg/run /etc/services.d/hardwario_bcg/finish

ARG BUILD_ARCH
ARG BUILD_DATE
ARG BUILD_REF
ARG BUILD_VERSION

# Labels
LABEL \
    io.hass.name="ha-hardwario" \
    io.hass.description="home assistant ha-hardwario add-on" \
    io.hass.arch="${BUILD_ARCH}" \
    io.hass.type="addon" \
    io.hass.version=${BUILD_VERSION} \
    maintainer="Damien-Gl" \
    org.label-schema.description="Home Assistant ha-hardwario add-on" \
    org.label-schema.build-date=${BUILD_DATE} \
    org.label-schema.name="ha-hardwario" \
    org.label-schema.schema-version="1.0" \
    org.label-schema.url="https://github.com/damien-gl/ha-hardwario/" \
    org.label-schema.usage="https://github.com/damien-gl/ha-hardwario/README.md" \
    org.label-schema.vcs-ref=${BUILD_REF} \
    org.label-schema.vcs-url="https://github.com/damien-gl/ha-hardwario" \
    org.label-schema.vendor="Hass.io Addons"
