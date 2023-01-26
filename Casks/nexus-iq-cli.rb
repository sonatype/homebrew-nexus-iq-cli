#
# Copyright (c) 2021-present Sonatype, Inc. All rights reserved.
# Includes the third-party code listed at http://links.sonatype.com/products/nexus/attributions.
# "Sonatype" is a trademark of Sonatype, Inc.
#

cask "nexus-iq-cli" do
  version "1.153.0-01"
  sha256 "254284cf1c921376b6ff0b51d31acaa9bff78e49627caedfa1e70b55f73200d6"
  url "https://download.sonatype.com/clm/scanner/nexus-iq-cli-1.153.0-01+582-mac.pkg"
  name "Nexus Native IQ CLI"
  desc "Command line utility for application scanning with Nexus IQ"
  homepage "https://help.sonatype.com/integrations/nexus-iq-cli"
  depends_on macos: ">= :mojave"
  pkg "nexus-iq-cli-1.153.0-01 582-mac.pkg"
  uninstall pkgutil: [
    "com.sonatype.nexus.iq.cli"
  ]
end
