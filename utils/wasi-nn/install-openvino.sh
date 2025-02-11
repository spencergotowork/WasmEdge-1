#!/usr/bin/env bash
# SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
# SPDX-FileCopyrightText: 2019-2022 Second State INC

if [[ ! -v "${OPENVINO_VERSION}" ]]; then
  OPENVINO_VERSION="2021.4.582"
fi
if [[ ! -v "${OPENVINO_YEAR}" ]]; then
  OPENVINO_YEAR="2021"
fi

set -e
echo "Installing OpenVINO with version ${OPENVINO_VERSION}"

if cat /etc/*release | grep ^NAME | grep CentOS; then
  echo "Installing OpenVINO with version ${OPENVINO_VERSION} on CentOS"
  yum install yum-utils python3 -y
  yum-config-manager --add-repo https://yum.repos.intel.com/openvino/$OPENVINO_YEAR/setup/intel-openvino-$OPENVINO_YEAR.repo
  rpm --import https://yum.repos.intel.com/openvino/$OPENVINO_YEAR/setup/RPM-GPG-KEY-INTEL-OPENVINO-$OPENVINO_YEAR
  yum install intel-openvino-runtime-centos7-$OPENVINO_VERSION -y
  
elif cat /etc/*release | grep ^NAME | grep Ubuntu; then
  echo "Installing OpenVINO with version ${OPENVINO_VERSION} on Ubuntu"
  curl -sSL https://apt.repos.intel.com/openvino/$OPENVINO_YEAR/GPG-PUB-KEY-INTEL-OPENVINO-$OPENVINO_YEAR | gpg --dearmor > /usr/share/keyrings/GPG-PUB-KEY-INTEL-OPENVINO-$OPENVINO_YEAR.gpg
  echo "deb [signed-by=/usr/share/keyrings/GPG-PUB-KEY-INTEL-OPENVINO-$OPENVINO_YEAR.gpg] https://apt.repos.intel.com/openvino/$OPENVINO_YEAR all main" | tee /etc/apt/sources.list.d/intel-openvino-$OPENVINO_YEAR.list
  apt update
  apt install -y intel-openvino-runtime-ubuntu20-$OPENVINO_VERSION
else
  echo "OS NOT DETECTED, couldn't install OpenVINO"
  exit 1;
fi

source /opt/intel/openvino_2021/bin/setupvars.sh
ldconfig