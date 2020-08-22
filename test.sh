#!/bin/sh
set -ex

# # Test instructions
# 1. Set the release name (release=$name)
# 2. Make test script executable `chmod +x test.sh`
# 3. Run `./test.sh`

release=monaco

./$release/sassc _test/test.scss _test/actual.css
diff _test/expected.css _test/actual.css
