#
# Copyright (c) 2021-present Sonatype, Inc. All rights reserved.
# Includes the third-party code listed at http://links.sonatype.com/products/nexus/attributions.
# "Sonatype" is a trademark of Sonatype, Inc.
#

cask "nexus-iq-cli" do
  version "1.133.0-02"
  sha256 "84006a107ef91c3e4f0994780f4ea83aa1fed13c9a16d8c4ed86df322bf15d85"
  url "https://download.sonatype.com/clm/scanner/nexus-iq-cli-1.133.0-02+423-mac.pkg"
  name "Nexus Native IQ CLI"
  desc "Command line utility for application scanning with Nexus IQ"
  homepage "https://help.sonatype.com/integrations/nexus-iq-cli"
  depends_on macos: ">= :mojave"
  pkg "nexus-iq-cli-1.133.0-02 423-mac.pkg"
  uninstall pkgutil: [
    "com.sonatype.nexus.iq.cli"
  ]
end
