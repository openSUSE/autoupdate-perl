# Specify the license of the container build description (see also the LICENSE file)
# SPDX-License-Identifier: MIT
# Define the names/tags of the container
#!BuildTag: opensuse/autoupdate-perl:latest opensuse/autoupdate-perl:%PKG_VERSION% opensuse/autoupdate-perl:%PKG_VERSION%.%RELEASE%

FROM opensuse/tumbleweed

# Define labels according to https://en.opensuse.org/Building_derived_containers
# labelprefix=org.opensuse.autoupdate-perl
LABEL org.opencontainers.image.title="Container for running autoupdate devel:languages:perl"
LABEL org.opencontainers.image.description="This contains %PKG_VERSION%"
LABEL org.opencontainers.image.version="%PKG_VERSION%.%RELEASE%"
LABEL org.opencontainers.image.url="https://github.com/openSUSE/autoupdate-perl"
LABEL org.opensuse.reference="registry.opensuse.org/home/tinita/cpanspec/container/containers/opensuse/autoupdate-perl:%PKG_VERSION%.%RELEASE%"
LABEL org.openbuildservice.disturl="%DISTURL%"
LABEL org.opencontainers.image.created="%BUILDTIME%"
# endlabelprefix

RUN zypper install -y -C \
        git \
        git-lfs \
        gzip \
        obs-service-format_spec_file \
        obs-service-download_files \
        osc \
        procmail \
        tar \
        wget \
        openssh-clients \
        'perl(Algorithm::Diff)' \
        'perl(Archive::Zip)' \
        'perl(Class::Accessor::Chained)' \
        'perl(File::ShareDir::Install)' \
        'perl(LWP::UserAgent)' \
        'perl(Module::Build)' \
        'perl(Module::Build::Tiny)' \
        'perl(Parse::CPAN::Packages)' \
        'perl(Perl::PrereqScanner)' \
        'perl(Pod::POM)' \
        'perl(Text::Autoformat)' \
        'perl(YAML::XS)' \
        'perl(XML::Simple)' \
        'perl(LWP::Protocol::https)' \
   && zypper clean

RUN groupadd cpan \
    && useradd -g cpan cpanbuild \
    && usermod -G cpan root \
  && true

COPY known_hosts /etc/ssh/ssh_known_hosts
