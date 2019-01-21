FROM debian:buster
RUN apt-get update && apt-get -y install mediawiki2latex \
	ghc libghc-x509-dev libghc-pem-dev \
	libghc-regex-compat-dev libghc-http-dev cabal-install libghc-hxt-dev \
	libghc-split-dev libghc-blaze-html-dev libghc-file-embed-dev \
	libghc-highlighting-kate-dev  libghc-hxt-http-dev libghc-regex-pcre-dev \
	libghc-temporary-dev libghc-url-dev libghc-utf8-string-dev \
	libghc-utility-ht-dev libghc-http-conduit-dev libghc-happstack-server-dev \
	libghc-directory-tree-dev libghc-zip-archive-dev libghc-strict-dev \
	libghc-network-uri-dev \
	ghostscript calibre latex2rtf libreoffice


EXPOSE 80
RUN mkdir /downloads

WORKDIR /downloads
ENTRYPOINT ["mediawiki2latex"]
CMD ["mediawiki2latex", "-s", "80"]
