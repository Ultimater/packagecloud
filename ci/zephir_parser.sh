#!/usr/bin/env bash
#
#  Phalcon Framework
#
#  Copyright (c) 2011-present Phalcon Team (https://www.phalconphp.com)
#
#  This source file is subject to the New BSD License that is bundled
#  with this package in the file LICENSE.txt.
#
#  If you did not receive a copy of the license and are unable to
#  obtain it through the world-wide-web, please send an email
#  to license@phalconphp.com so we can send you a copy immediately.
#
#  Authors: Phalcon Framework Team <team@phalconphp.com>

set -e

echo -e "Install Zephir Parser..."

git clone -q --depth=1 https://github.com/phalcon/php-zephir-parser.git -b ${ZEPHIR_PARSER_VERSION} /tmp/parser &> /dev/null

# Only for Travis CI
TRAVIS_BUILD_DIR=/tmp/parser bash /tmp/parser/tests/ci/install-travis

php --ri "Zephir Parser"
