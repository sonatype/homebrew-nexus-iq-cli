<!--

    Copyright (c) 2021-present Sonatype, Inc. All rights reserved.
    Includes the third-party code listed at http://links.sonatype.com/products/nexus/attributions.
    "Sonatype" is a trademark of Sonatype, Inc.

-->
# homebrew-nexus-iq-cli

## Installation

The [Sonatype Nexus IQ CLI](https://help.sonatype.com/integrations/nexus-iq-cli) can be installed
using the Homebrew package manager. Specific documentation on the parameters supported
[can be found here](https://help.sonatype.com/integrations/nexus-iq-cli#NexusIQCLI-Usage).

These commands will make the installation available to Homebrew and install the 
latest and greatest version to your local machine.
```
brew tap sonatype/nexus-iq-cli
brew install --cask nexus-iq-cli
```

If you experience any issues please visit [our Support page](https://support.sonatype.com/hc/en-us/sections/203012548-Nexus-IQ-Server) for resources or to report your problem.

## Local Development and Testing

Once the repository is tapped by a regular installation (as above), you can locally develop and test
by updating the code in the tapped directory or by checking out other branches. Find Homebrew's clone
of the repository at `$(brew --repo)/Library/Taps/sonatype/homebrew-nexus-iq-cli`

To try local changes, reinstall the nexus-iq-cli: `brew reinstall --cask nexus-iq-cli`
