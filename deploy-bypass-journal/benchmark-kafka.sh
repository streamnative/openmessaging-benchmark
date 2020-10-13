#!/bin/bash
#
# Licensed to the Apache Software Foundation (ASF) under one
# or more contributor license agreements.  See the NOTICE file
# distributed with this work for additional information
# regarding copyright ownership.  The ASF licenses this file
# to you under the Apache License, Version 2.0 (the
# "License"); you may not use this file except in compliance
# with the License.  You may obtain a copy of the License at
#
#   http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing,
# software distributed under the License is distributed on an
# "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
# KIND, either express or implied.  See the License for the
# specific language governing permissions and limitations
# under the License.
#

sudo bin/benchmark --drivers driver-kafka/kafka-batched-1ms-1mb-ack-1-sync.yaml workloads/1-topic-1-partition-1kb.yaml -o kafka-1-partitions-1kb-batched-1ms-1mb-ack-1-sync.json
sudo bin/benchmark --drivers driver-kafka/kafka-batched-1ms-1mb-ack-1-sync.yaml workloads/1-topic-100-partitions-1kb.yaml -o kafka-100-partitions-1kb-batched-1ms-1mb-ack-1-sync.json
sudo bin/benchmark --drivers driver-kafka/kafka-batched-1ms-1mb-ack-1-sync.yaml workloads/1-topic-1000-partitions-1kb.yaml -o kafka-1000-partitions-1kb-batched-1ms-1mb-ack-1-sync.json
sudo bin/benchmark --drivers driver-kafka/kafka-batched-1ms-1mb-ack-1-sync.yaml workloads/1-topic-2000-partitions-1kb.yaml -o kafka-2000-partitions-1kb-batched-1ms-1mb-ack-1-sync.json
sudo bin/benchmark --drivers driver-kafka/kafka-batched-1ms-1mb-ack-1-sync.yaml workloads/1-topic-5000-partitions-1kb.yaml -o kafka-5000-partitions-1kb-batched-1ms-1mb-ack-1-sync.json
sudo bin/benchmark --drivers driver-kafka/kafka-batched-1ms-1mb-ack-1-sync.yaml workloads/1-topic-8000-partitions-1kb.yaml -o kafka-8000-partitions-1kb-batched-1ms-1mb-ack-1-sync.json
sudo bin/benchmark --drivers driver-kafka/kafka-batched-1ms-1mb-ack-1-sync.yaml workloads/1-topic-10000-partitions-1kb.yaml -o kafka-10000-partitions-1kb-batched-1ms-1mb-ack-1-sync.json
sudo bin/benchmark --drivers driver-kafka/kafka-batched-1ms-1mb-ack-all-sync.yaml workloads/1-topic-1-partition-1kb.yaml -o kafka-1-partitions-1kb-batched-1ms-1mb-ack-all-sync.json
sudo bin/benchmark --drivers driver-kafka/kafka-batched-1ms-1mb-ack-all-sync.yaml workloads/1-topic-100-partitions-1kb.yaml -o kafka-100-partitions-1kb-batched-1ms-1mb-ack-all-sync.json
sudo bin/benchmark --drivers driver-kafka/kafka-batched-1ms-1mb-ack-all-sync.yaml workloads/1-topic-1000-partitions-1kb.yaml -o kafka-1000-partitions-1kb-batched-1ms-1mb-ack-all-sync.json
sudo bin/benchmark --drivers driver-kafka/kafka-batched-1ms-1mb-ack-all-sync.yaml workloads/1-topic-2000-partitions-1kb.yaml -o kafka-2000-partitions-1kb-batched-1ms-1mb-ack-all-sync.json
sudo bin/benchmark --drivers driver-kafka/kafka-batched-1ms-1mb-ack-all-sync.yaml workloads/1-topic-5000-partitions-1kb.yaml -o kafka-5000-partitions-1kb-batched-1ms-1mb-ack-all-sync.json
sudo bin/benchmark --drivers driver-kafka/kafka-batched-1ms-1mb-ack-all-sync.yaml workloads/1-topic-8000-partitions-1kb.yaml -o kafka-8000-partitions-1kb-batched-1ms-1mb-ack-all-sync.json
sudo bin/benchmark --drivers driver-kafka/kafka-batched-1ms-1mb-ack-all-sync.yaml workloads/1-topic-10000-partitions-1kb.yaml -o kafka-10000-partitions-1kb-batched-1ms-1mb-ack-all-sync.json

sudo bin/benchmark --drivers driver-kafka/kafka-batched-1ms-1mb-ack-1-nosync.yaml workloads/1-topic-1-partition-1kb.yaml -o kafka-1-partitions-1kb-batched-1ms-1mb-ack-1-nosync.json
sudo bin/benchmark --drivers driver-kafka/kafka-batched-1ms-1mb-ack-1-nosync.yaml workloads/1-topic-100-partitions-1kb.yaml -o kafka-100-partitions-1kb-batched-1ms-1mb-ack-1-nosync.json
sudo bin/benchmark --drivers driver-kafka/kafka-batched-1ms-1mb-ack-1-nosync.yaml workloads/1-topic-1000-partitions-1kb.yaml -o kafka-1000-partitions-1kb-batched-1ms-1mb-ack-1-nosync.json
sudo bin/benchmark --drivers driver-kafka/kafka-batched-1ms-1mb-ack-1-nosync.yaml workloads/1-topic-2000-partitions-1kb.yaml -o kafka-2000-partitions-1kb-batched-1ms-1mb-ack-1-nosync.json
sudo bin/benchmark --drivers driver-kafka/kafka-batched-1ms-1mb-ack-1-nosync.yaml workloads/1-topic-5000-partitions-1kb.yaml -o kafka-5000-partitions-1kb-batched-1ms-1mb-ack-1-nosync.json
sudo bin/benchmark --drivers driver-kafka/kafka-batched-1ms-1mb-ack-1-nosync.yaml workloads/1-topic-8000-partitions-1kb.yaml -o kafka-8000-partitions-1kb-batched-1ms-1mb-ack-1-nosync.json
sudo bin/benchmark --drivers driver-kafka/kafka-batched-1ms-1mb-ack-1-nosync.yaml workloads/1-topic-10000-partitions-1kb.yaml -o kafka-10000-partitions-1kb-batched-1ms-1mb-ack-1-nosync.json
sudo bin/benchmark --drivers driver-kafka/kafka-batched-1ms-1mb-ack-all-nosync.yaml workloads/1-topic-1-partition-1kb.yaml -o kafka-1-partitions-1kb-batched-1ms-1mb-ack-all-nosync.json
sudo bin/benchmark --drivers driver-kafka/kafka-batched-1ms-1mb-ack-all-nosync.yaml workloads/1-topic-100-partitions-1kb.yaml -o kafka-100-partitions-1kb-batched-1ms-1mb-ack-all-nosync.json
sudo bin/benchmark --drivers driver-kafka/kafka-batched-1ms-1mb-ack-all-nosync.yaml workloads/1-topic-1000-partitions-1kb.yaml -o kafka-1000-partitions-1kb-batched-1ms-1mb-ack-all-nosync.json
sudo bin/benchmark --drivers driver-kafka/kafka-batched-1ms-1mb-ack-all-nosync.yaml workloads/1-topic-2000-partitions-1kb.yaml -o kafka-2000-partitions-1kb-batched-1ms-1mb-ack-all-nosync.json
sudo bin/benchmark --drivers driver-kafka/kafka-batched-1ms-1mb-ack-all-nosync.yaml workloads/1-topic-5000-partitions-1kb.yaml -o kafka-5000-partitions-1kb-batched-1ms-1mb-ack-all-nosync.json
sudo bin/benchmark --drivers driver-kafka/kafka-batched-1ms-1mb-ack-all-nosync.yaml workloads/1-topic-8000-partitions-1kb.yaml -o kafka-8000-partitions-1kb-batched-1ms-1mb-ack-all-nosync.json
sudo bin/benchmark --drivers driver-kafka/kafka-batched-1ms-1mb-ack-all-nosync.yaml workloads/1-topic-10000-partitions-1kb.yaml -o kafka-10000-partitions-1kb-batched-1ms-1mb-ack-all-nosync.json

sudo bin/benchmark --drivers driver-kafka/kafka-batched-1ms-1mb-ack-1-nosync.yaml workloads/backlog-1-topic-100-partitions-1kb-200k-rate.yaml -o kafka-backlog-100-partitions-1kb-batched-1ms-ack-1-nosync.json
sudo bin/benchmark --drivers driver-kafka/kafka-batched-1ms-1mb-ack-all-nosync.yaml workloads/backlog-1-topic-100-partitions-1kb-200k-rate.yaml -o kafka-backlog-100-partitions-1kb-batched-1ms-ack-all-nosync.json