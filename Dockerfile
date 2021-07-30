# ========================================
# =               Warning!               =
# ========================================
# This is GitHub Action docker-based image.
# It is not intended for local development!
#
# The original image is available on Dockerhub,
# use it instead:
# https://hub.docker.com/r/logsightaihub/check-log-quality

FROM logsightaihub/check-log-quality:latest

# Metadata:
LABEL maintainer="logsight.ai"
LABEL vendor="logsight.ai"

# Entrypoint:
COPY ./entrypoint.sh /
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
