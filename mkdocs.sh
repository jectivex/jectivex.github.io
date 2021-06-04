#!/bin/sh
jazzy --swift-build-tool spm --theme jony --copyright 'www.jective.org' --source-directory ../JXKit/ -o docs/JXKit/ --github_url https://github.com/jectivex/JXKit
jazzy --swift-build-tool spm --theme jony --copyright 'www.jective.org' --source-directory ../Judo/ -o docs/Judo/ --github_url https://github.com/jectivex/Judo
jazzy --swift-build-tool spm --theme jony --copyright 'www.jective.org' --source-directory ../JSSwift/ -o docs/JSSwift/ --github_url https://github.com/jectivex/JSSwift

sed -i'.sedbk' 's;<p>Generated by.*;;g' `find docs/ -name '*.html'`
find docs -name '*.sedbk' -exec rm {} \;



