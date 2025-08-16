FROM nextcloud:apache

#RUN apt-get update && apt-get install -y procps smbclient libsmbclient-dev && rm -rf /var/lib/apt/lists/*
RUN set -ex; \
    \
    apt-get update; \
    apt-get install -y --no-install-recommends \
        ffmpeg \
        ghostscript \
        libmagickcore-7.q16-10-extra \
        procps \
        smbclient \
        libsmbclient-dev \
        libreoffice \
    ; \
    rm -rf /var/lib/apt/lists/*
RUN pecl install smbclient
RUN docker-php-ext-enable smbclient
