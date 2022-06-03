FROM alpine:3.16.0

# Installs shell related tools
RUN apk --no-cache add sudo shadow bash \
# Installs some compatibility libraries
  gcompat libc6-compat coreutils binutils \
# Installs some extra tools
  curl wget jq git nano
