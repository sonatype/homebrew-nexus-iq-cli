#
# Copyright (c) 2021-present Sonatype, Inc. All rights reserved.
# Includes the third-party code listed at http://links.sonatype.com/products/nexus/attributions.
# "Sonatype" is a trademark of Sonatype, Inc.
#

cask "nexus-iq-cli" do
  version "1.183.0-01"
  sha256 "7eef351cad8aae775d77a2a499342528aaad44e4e70fa8029d72ae1f187595c5"
  url "https://download.sonatype.com/clm/scanner/nexus-iq-cli-1.183.0-01+884-mac.pkg"
  name "Nexus Native IQ CLI"
  desc "Command line utility for application scanning with Nexus IQ"
  homepage "https://help.sonatype.com/integrations/nexus-iq-cli"
  depends_on macos: ">= :mojave"
  pkg "nexus-iq-cli-1.183.0-01+884-mac.pkg"
  uninstall pkgutil: [
    "com.sonatype.nexus.iq.cli"
  ]
end
