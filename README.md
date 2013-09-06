# The Bnd(tools) bundle hub.

## Rebuilding the index (index.xml.gz) when adding bundles

To rebuild the index, you will need a build of org.osgi.impl.bundle.repoindex.cli.jar.
The latest build can be found on [Jenkins][1]. Download the jar in some directory and then
run in the root of the this repository.

    java -jar ~/Downloads/org.osgi.impl.bundle.repoindex.cli.jar -n BundleHub */*.jar

This will update index.xml.gz which should be committed back to the repository.

[1]: https://bndtools.ci.cloudbees.com/job/bindex.master/lastSuccessfulBuild/artifact/cnf/releaserepo/org.osgi.impl.bundle.repoindex.cli/
