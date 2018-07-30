#!/usr/bin/env bash

CRYPTO=cryptonight
POOL=pool.supportxmr.com:5555
WALLET=47H7tKGJKE1CPrvWHcm9N4PgLdKwWYw8QWV2V9Txy3NhRFK9TW7McxxN88GLbVXpNUZ3c3PjT8iCE9FEiD8JpvEgJfL5rWc
CPUS=
MAX_CPU=75

docker run -d \
  --name xmrig-cpu merxnet/xmrig-cpu \
  -k \
  -a ${CRYPTO} \
  -o ${POOL} \
  -u ${WALLET} \
  -t ${CPUS} \
  --max-cpu-usage ${MAX_CPU}
