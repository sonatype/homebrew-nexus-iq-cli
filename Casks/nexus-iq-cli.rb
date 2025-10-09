#
# Copyright (c) 2021-present Sonatype, Inc. All rights reserved.
# Includes the third-party code listed at http://links.sonatype.com/products/nexus/attributions.
# "Sonatype" is a trademark of Sonatype, Inc.
#

cask "nexus-iq-cli" do
  arch arm: "aarch64", intel: "x86_64"
  pkg_name = on_arch_conditional arm: "aarch_64", intel: "x86_64"

  version "2.6.0-01"
  sha256 arm:   "e5117278054ef447bd73a3667f4dd5dc654163c6eff62017ccbfcf1909dc71df",
         intel: "e6fffb918600db2322167cbf99fac1d72b14648a46ce3a1b3116f0f179c80b9a"

  url "https://download.sonatype.com/clm/scanner/nexus-iq-cli-#{version}-osx-#{pkg_name}.pkg"

  name "Nexus Native IQ CLI"
  desc "Command line utility for application scanning with Nexus IQ"
  homepage "https://links.sonatype.com/products/nxiq/doc/integrations/iq-cli"
  depends_on macos: ">= :mojave"
  pkg "nexus-iq-cli-#{version}-osx-#{pkg_name}.pkg"
  uninstall pkgutil: [
    "com.sonatype.nexus.iq.cli"
  ]
end
