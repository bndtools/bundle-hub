INDEXER  = org.osgi.impl.bundle.repoindex.cli/org.osgi.impl.bundle.repoindex.cli-0.0.6.jar
REPONAME = BundleHub

JARS     = $(shell find * -name '*.jar' | sort)

.PHONY: all

all:
	java -jar "$(INDEXER)" -n "$(REPONAME)" $(JARS)
