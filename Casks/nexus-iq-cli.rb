#
# Copyright (c) 2021-present Sonatype, Inc. All rights reserved.
# Includes the third-party code listed at http://links.sonatype.com/products/nexus/attributions.
# "Sonatype" is a trademark of Sonatype, Inc.
#

cask "nexus-iq-cli" do
  version "1.163.0-01"
  sha256 "62cf68695b6c71e131e5e849056f77643a196de289022eacbaffd0d9890984ae"
  url "https://download.sonatype.com/clm/scanner/nexus-iq-cli-1.163.0-01+646-mac.pkg"
  name "Nexus Native IQ CLI"
  desc "Command line utility for application scanning with Nexus IQ"
  homepage "https://help.sonatype.com/integrations/nexus-iq-cli"
  depends_on macos: ">= :mojave"
  pkg "nexus-iq-cli-1.163.0-01+646-mac.pkg"
  uninstall pkgutil: [
    "com.sonatype.nexus.iq.cli"
  ]
end
