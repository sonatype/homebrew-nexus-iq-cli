#
# Copyright (c) 2021-present Sonatype, Inc. All rights reserved.
# Includes the third-party code listed at http://links.sonatype.com/products/nexus/attributions.
# "Sonatype" is a trademark of Sonatype, Inc.
#

cask "nexus-iq-cli" do
  arch arm: "aarch64", intel: "x86_64"
  pkg_name = on_arch_conditional arm: "aarch_64", intel: "x86_64"

  version "2.16.2-02"
  sha256 arm:   "aea6d5f37428bcb510a1ec2048d34452a22a953117c755789f3b268050ebf5a1",
         intel: "d975f1a954cf86d0659a7228c7cb8a9fab79c817e3f3ee79f583b6c12aef27cd"

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
