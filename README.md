# The Bnd(tools) bundle hub.
This repository contains all the bundles that are distributed by bndtools. We pledge
to never remove this bundlehub, nor ever to make changes to an artifact once
deployed. So as long as github survives you're ok.

## Adding a new artifact
You can add a new artifact if you've write access. The easiest way to do this is to
use bnd.

      $ bnd put --repo . put https://exmple.com/bundles/mybundle.jar ...

See 'bnd help repo put' for more information. Alternatively you can just copy the
files to <bsn>/<bsn>-<version>.jar (notice that version must have no qualifier and
have all 3 nummeric parts. This is the standard repo format.
 
## Rebuilding the index (index.xml.gz) when adding bundles
After you've added a number of bundles you must update the index. A current version
of `repoindex` is in this repo later versions can be found [here][1]. Please update this version.

     $ make all

For the `make` challenged ... well, just ask someone with a more advanced OS ...

[1]: https://bndtools.ci.cloudbees.com/job/bindex.master/lastSuccessfulBuild/artifact/cnf/releaserepo/org.osgi.impl.bundle.repoindex.cli/
