#
# Copyright (c) 2021-present Sonatype, Inc. All rights reserved.
# Includes the third-party code listed at http://links.sonatype.com/products/nexus/attributions.
# "Sonatype" is a trademark of Sonatype, Inc.
#

cask "nexus-iq-cli" do
  arch arm: "aarch64", intel: "x86_64"
  pkg_name = on_arch_conditional arm: "aarch_64", intel: "x86_64"

  version "2.12.1-01"
  sha256 arm:   "e95cca8815b978c8b17fee1821fb35d29f4b98a3eb8eab42e008bef0c803ee8f",
         intel: "889179499f9a2bafb3909445e2dcfe3ed91c8baa5b5fff8c063c99537218db22"

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
