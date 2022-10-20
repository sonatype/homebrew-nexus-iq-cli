#
# Copyright (c) 2021-present Sonatype, Inc. All rights reserved.
# Includes the third-party code listed at http://links.sonatype.com/products/nexus/attributions.
# "Sonatype" is a trademark of Sonatype, Inc.
#

cask "nexus-iq-cli" do
  version "1.146.0-01"
  sha256 "40d34150b61abaefd6c26c92d0b58b0c0ea426134bb1765c715a065757693b91"
  url "https://download.sonatype.com/clm/scanner/nexus-iq-cli-1.146.0-01+538-mac.pkg"
  name "Nexus Native IQ CLI"
  desc "Command line utility for application scanning with Nexus IQ"
  homepage "https://help.sonatype.com/integrations/nexus-iq-cli"
  depends_on macos: ">= :mojave"
  pkg "nexus-iq-cli-1.146.0-01 538-mac.pkg"
  uninstall pkgutil: [
    "com.sonatype.nexus.iq.cli"
  ]
end
