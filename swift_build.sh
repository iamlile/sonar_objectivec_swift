#!/bin/sh
cd $WORKSPACE

rm -rf kuai-swiftlint.txt

swiftlint lint --path Duobao > xxx-swiftlint.txt


rm -rf sonar-project.properties

cat > sonar-project.properties <<- EOF

sonar.projectKey=xxx-iOS-swift

sonar.projectName=xxx-iOS-swift

sonar.projectVersion=x.x.x

sonar.language=swift

sonar.projectDescription=xxx with Swift

sonar.sources=sources

sonar.swift.workspace=xxx.xcworkspace

sonar.swift.appScheme=xxx

sonar.sourceEncoding=UTF-8

sonar.swift.swiftlint.report=xxx-swiftlint.txt

EOF

/bin/sh sonar-scanner -X
