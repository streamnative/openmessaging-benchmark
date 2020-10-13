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

sudo bin/benchmark --drivers driver-pulsar/pulsar-batched-1ms-linger-1mb-ack-1.yaml workloads/1-topic-1-partition-1kb.yaml -o pulsar-1-partitions-1kb-batched-1ms-1mb-ack-1-sync.json
sudo bin/benchmark --drivers driver-pulsar/pulsar-batched-1ms-linger-1mb-ack-1.yaml workloads/1-topic-100-partitions-1kb.yaml -o pulsar-100-partitions-1kb-batched-1ms-1mb-ack-1-sync.json
sudo bin/benchmark --drivers driver-pulsar/pulsar-batched-1ms-linger-1mb-ack-1.yaml workloads/1-topic-1000-partitions-1kb.yaml -o pulsar-1000-partitions-1kb-batched-1ms-1mb-ack-1-sync.json
sudo bin/benchmark --drivers driver-pulsar/pulsar-batched-1ms-linger-1mb-ack-1.yaml workloads/1-topic-2000-partitions-1kb.yaml -o pulsar-2000-partitions-1kb-batched-1ms-1mb-ack-1-sync.json
sudo bin/benchmark --drivers driver-pulsar/pulsar-batched-1ms-linger-1mb-ack-1.yaml workloads/1-topic-5000-partitions-1kb.yaml -o pulsar-5000-partitions-1kb-batched-1ms-1mb-ack-1-sync.json
sudo bin/benchmark --drivers driver-pulsar/pulsar-batched-1ms-linger-1mb-ack-1.yaml workloads/1-topic-8000-partitions-1kb.yaml -o pulsar-8000-partitions-1kb-batched-1ms-1mb-ack-1-sync.json
sudo bin/benchmark --drivers driver-pulsar/pulsar-batched-1ms-linger-1mb-ack-1.yaml workloads/1-topic-10000-partitions-1kb.yaml -o pulsar-10000-partitions-1kb-batched-1ms-1mb-ack-1-sync.json
sudo bin/benchmark --drivers driver-pulsar/pulsar-batched-1ms-linger-1mb-ack-2.yaml workloads/1-topic-1-partition-1kb.yaml -o pulsar-1-partitions-1kb-batched-1ms-1mb-ack-2-sync.json
sudo bin/benchmark --drivers driver-pulsar/pulsar-batched-1ms-linger-1mb-ack-2.yaml workloads/1-topic-100-partitions-1kb.yaml -o pulsar-100-partitions-1kb-batched-1ms-1mb-ack-2-sync.json
sudo bin/benchmark --drivers driver-pulsar/pulsar-batched-1ms-linger-1mb-ack-2.yaml workloads/1-topic-1000-partitions-1kb.yaml -o pulsar-1000-partitions-1kb-batched-1ms-1mb-ack-2-sync.json
sudo bin/benchmark --drivers driver-pulsar/pulsar-batched-1ms-linger-1mb-ack-2.yaml workloads/1-topic-2000-partitions-1kb.yaml -o pulsar-2000-partitions-1kb-batched-1ms-1mb-ack-2-sync.json
sudo bin/benchmark --drivers driver-pulsar/pulsar-batched-1ms-linger-1mb-ack-2.yaml workloads/1-topic-5000-partitions-1kb.yaml -o pulsar-5000-partitions-1kb-batched-1ms-1mb-ack-2-sync.json
sudo bin/benchmark --drivers driver-pulsar/pulsar-batched-1ms-linger-1mb-ack-2.yaml workloads/1-topic-8000-partitions-1kb.yaml -o pulsar-8000-partitions-1kb-batched-1ms-1mb-ack-2-sync.json
sudo bin/benchmark --drivers driver-pulsar/pulsar-batched-1ms-linger-1mb-ack-2.yaml workloads/1-topic-10000-partitions-1kb.yaml -o pulsar-10000-partitions-1kb-batched-1ms-1mb-ack-2-sync.json

sudo bin/benchmark --drivers driver-pulsar/pulsar-batched-1ms-linger-1mb-ack-1.yaml workloads/1-topic-1-partition-1kb.yaml -o pulsar-1-partition-1kb-batched-1ms-1mb-ack-1-nosync.json
sudo bin/benchmark --drivers driver-pulsar/pulsar-batched-1ms-linger-1mb-ack-1.yaml workloads/1-topic-100-partitions-1kb.yaml -o pulsar-100-partitions-1kb-batched-1ms-1mb-ack-1-nosync.json
sudo bin/benchmark --drivers driver-pulsar/pulsar-batched-1ms-linger-1mb-ack-1.yaml workloads/1-topic-1000-partitions-1kb.yaml -o pulsar-1000-partitions-1kb-batched-1ms-1mb-ack-1-nosync.json
sudo bin/benchmark --drivers driver-pulsar/pulsar-batched-1ms-linger-1mb-ack-1.yaml workloads/1-topic-2000-partitions-1kb.yaml -o pulsar-2000-partitions-1kb-batched-1ms-1mb-ack-1-nosync.json
sudo bin/benchmark --drivers driver-pulsar/pulsar-batched-1ms-linger-1mb-ack-1.yaml workloads/1-topic-5000-partitions-1kb.yaml -o pulsar-5000-partitions-1kb-batched-1ms-1mb-ack-1-nosync.json
sudo bin/benchmark --drivers driver-pulsar/pulsar-batched-1ms-linger-1mb-ack-1.yaml workloads/1-topic-8000-partitions-1kb.yaml -o pulsar-8000-partitions-1kb-batched-1ms-1mb-ack-1-nosync.json
sudo bin/benchmark --drivers driver-pulsar/pulsar-batched-1ms-linger-1mb-ack-1.yaml workloads/1-topic-10000-partitions-1kb.yaml -o pulsar-10000-partitions-1kb-batched-1ms-1mb-ack-1-nosync.json
sudo bin/benchmark --drivers driver-pulsar/pulsar-batched-1ms-linger-1mb-ack-2.yaml workloads/1-topic-1-partition-1kb.yaml -o pulsar-1-partition-1kb-batched-1ms-1mb-ack-2-nosync.json
sudo bin/benchmark --drivers driver-pulsar/pulsar-batched-1ms-linger-1mb-ack-2.yaml workloads/1-topic-100-partitions-1kb.yaml -o pulsar-100-partitions-1kb-batched-1ms-1mb-ack-2-nosync.json
sudo bin/benchmark --drivers driver-pulsar/pulsar-batched-1ms-linger-1mb-ack-2.yaml workloads/1-topic-1000-partitions-1kb.yaml -o pulsar-1000-partitions-1kb-batched-1ms-1mb-ack-2-nosync.json
sudo bin/benchmark --drivers driver-pulsar/pulsar-batched-1ms-linger-1mb-ack-2.yaml workloads/1-topic-2000-partitions-1kb.yaml -o pulsar-2000-partitions-1kb-batched-1ms-1mb-ack-2-nosync.json
sudo bin/benchmark --drivers driver-pulsar/pulsar-batched-1ms-linger-1mb-ack-2.yaml workloads/1-topic-5000-partitions-1kb.yaml -o pulsar-5000-partitions-1kb-batched-1ms-1mb-ack-2-nosync.json
sudo bin/benchmark --drivers driver-pulsar/pulsar-batched-1ms-linger-1mb-ack-2.yaml workloads/1-topic-8000-partitions-1kb.yaml -o pulsar-8000-partitions-1kb-batched-1ms-1mb-ack-2-nosync.json
sudo bin/benchmark --drivers driver-pulsar/pulsar-batched-1ms-linger-1mb-ack-2.yaml workloads/1-topic-10000-partitions-1kb.yaml -o pulsar-10000-partitions-1kb-batched-1ms-1mb-ack-2-nosync.json

sudo bin/benchmark --drivers driver-pulsar/pulsar-batched-1ms-linger-1mb-ack-1.yaml workloads/backlog-1-topic-100-partitions-1kb-200k-rate.yaml -o pulsar-backlog-100-partitions-1kb-batched-1ms-ack-1-sync.json
sudo bin/benchmark --drivers driver-pulsar/pulsar-batched-1ms-linger-1mb-ack-2.yaml workloads/backlog-1-topic-100-partitions-1kb-200k-rate.yaml -o pulsar-backlog-100-partitions-1kb-batched-1ms-ack-2-sync.json

sudo bin/benchmark --drivers driver-pulsar/pulsar-batched-1ms-linger-1mb-ack-1.yaml workloads/backlog-1-topic-100-partitions-1kb-200k-rate.yaml -o pulsar-backlog-100-partitions-1kb-batched-1ms-ack-1-nosync.json
sudo bin/benchmark --drivers driver-pulsar/pulsar-batched-1ms-linger-1mb-ack-2.yaml workloads/backlog-1-topic-100-partitions-1kb-200k-rate.yaml -o pulsar-backlog-100-partitions-1kb-batched-1ms-ack-2-nosync.json

sudo bin/benchmark --drivers driver-pulsar/pulsar-batched-1ms-linger-1mb-ack-1.yaml workloads/1-topic-100-partitions-1kb.yaml -o pulsar-100-partitions-1kb-batched-1ms-1mb-ack-1-10-sub-nosync.json
sudo bin/benchmark --drivers driver-pulsar/pulsar-batched-1ms-linger-1mb-ack-2.yaml workloads/1-topic-100-partitions-1kb.yaml -o pulsar-100-partitions-1kb-batched-1ms-1mb-ack-2-10-sub-nosync.json

sudo bin/benchmark --drivers driver-pulsar/pulsar-batched-1ms-linger-1mb-ack-1.yaml workloads/1-topic-100-partitions-1kb.yaml -o pulsar-100-partitions-1kb-batched-1ms-1mb-ack-1-10-sub-sync.json
sudo bin/benchmark --drivers driver-pulsar/pulsar-batched-1ms-linger-1mb-ack-2.yaml workloads/1-topic-100-partitions-1kb.yaml -o pulsar-100-partitions-1kb-batched-1ms-1mb-ack-2-10-sub-sync.json

sudo bin/benchmark --drivers driver-pulsar/pulsar-batched-1ms-linger-1mb-ack-1.yaml workloads/backlog-1-topic-1-partition-1kb-200k-rate.yaml -o pulsar-backlog-1-partition-1kb-batched-1ms-ack-1-sync.json