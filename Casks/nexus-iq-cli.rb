#
# Copyright (c) 2021-present Sonatype, Inc. All rights reserved.
# Includes the third-party code listed at http://links.sonatype.com/products/nexus/attributions.
# "Sonatype" is a trademark of Sonatype, Inc.
#

cask "nexus-iq-cli" do
  arch arm: "aarch64", intel: "x86_64"
  pkg_name = on_arch_conditional arm: "aarch_64", intel: "x86_64"

  version "2.9.0-01"
  sha256 arm:   "e6e50898285eebb2272a999ccaef614bac6f5435e644ed7654687ee52d59f9ae",
         intel: "533e1e0f7af338f08d4476dd036ecf4b0898a197e89aa4be3c25ddc71a2a721e"

  url "https://download.sonatype.com/clm/scanner/nexus-iq-cli-#{version}-osx-#{pkg_name}.pkg"

  name "Nexus Native IQ CLI"
  desc "Command line utility for application scanning with Nexus IQ"
  homepage "https://links.sonatype.com/products/nxiq/doc/integrations/iq-cli"
  on_macos do
    if MacOS.version < :big_sur
      odie "This formula requires macOS Big Sur (11.0) or newer"
    end
  end
  pkg "nexus-iq-cli-#{version}-osx-#{pkg_name}.pkg"
  uninstall pkgutil: [
    "com.sonatype.nexus.iq.cli"
  ]
end
