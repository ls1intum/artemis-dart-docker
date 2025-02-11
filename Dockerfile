FROM dart:3.6.1

RUN dart pub global activate junitreport 2.0.2
RUN dart pub global activate --source git https://github.com/ls1intum/dart_analyze_sarif.git --git-ref 0.0.1

RUN apt-get update && apt-get install -y --no-install-recommends \
  xmlstarlet \
  && rm -rf /var/lib/apt/lists/*
