#!/usr/bin/python

# Requires https://gerrit.onap.org/r/#/c/47167/

import subprocess
import sys
import yaml

if not sys.argv[1]:
    print "No onap configuration supplied."
else:
    with open(sys.argv[1], 'r') as stream:
        data = yaml.load(stream)
        for helm in data:
            if 'enabled' in data[helm]:
                if data[helm]['enabled']:
                    subprocess.check_call(
                        ['/srv/oom/kubernetes/config/prepull_docker.sh', helm])
