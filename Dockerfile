FROM dart:3.6.1

RUN dart pub global activate junitreport 2.0.2

RUN apt-get update && apt-get install -y --no-install-recommends \
  xmlstarlet \
  && rm -rf /var/lib/apt/lists/*
