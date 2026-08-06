#
# Copyright (c) 2021-present Sonatype, Inc. All rights reserved.
# Includes the third-party code listed at http://links.sonatype.com/products/nexus/attributions.
# "Sonatype" is a trademark of Sonatype, Inc.
#

cask "nexus-iq-cli" do
  arch arm: "aarch64", intel: "x86_64"
  pkg_name = on_arch_conditional arm: "aarch_64", intel: "x86_64"

  version "2.13.2-01"
  sha256 arm:   "86fae77a0b5ba3130fc4731cdba1e06e14be2949a24bc44935c3b6fc762713c2",
         intel: "30be4938007ba87c34b0eee17ed86582a663e758f8fdf2460c1e146df799cf7a"

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
