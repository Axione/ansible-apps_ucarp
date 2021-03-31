# Ansible Role: ansible-apps_ucarp

## Description

[![Build Status](https://travis-ci.com/lotusnoir/ansible-apps_ucarp.svg?branch=master?style=flat)](https://travis-ci.com/lotusnoir/ansible-apps_ucarp)
[![License](https://img.shields.io/badge/license-Apache--2.0-brightgreen?style=flat)](https://opensource.org/licenses/Apache-2.0)
[![Ansible Role](https://img.shields.io/badge/galaxy-apps_ucarp-purple?style=flat)](https://galaxy.ansible.com/lotusnoir/apps_ucarp)
![GitHub repo size](https://img.shields.io/github/repo-size/lotusnoir/ansible-apps_ucarp?color=orange&style=flat)
![Ansible Quality Score](https://img.shields.io/ansible/quality/52300)
[![downloads](https://img.shields.io/ansible/role/d/52300)](https://galaxy.ansible.com/lotusnoir/apps_ucarp)
[![Version](https://img.shields.io/github/release/lotusnoir/ansible-apps_ucarp.svg)](https://github.com/lotusnoir/ansible-apps_ucarp/releases/)
[![Quality Gate Status](https://sonarcloud.io/api/project_badges/measure?project=lotusnoir_ansible-apps_ucarp&metric=alert_status)](https://sonarcloud.io/dashboard?id=lotusnoir_ansible-apps_ucarp)
[![Maintainability Rating](https://sonarcloud.io/api/project_badges/measure?project=lotusnoir_ansible-apps_ucarp&metric=sqale_rating)](https://sonarcloud.io/dashboard?id=lotusnoir_ansible-apps_ucarp)
[![Reliability Rating](https://sonarcloud.io/api/project_badges/measure?project=lotusnoir_ansible-apps_ucarp&metric=reliability_rating)](https://sonarcloud.io/dashboard?id=lotusnoir_ansible-apps_ucarp)
[![Security Rating](https://sonarcloud.io/api/project_badges/measure?project=lotusnoir_ansible-apps_ucarp&metric=security_rating)](https://sonarcloud.io/dashboard?id=lotusnoir_ansible-apps_ucarp)

Deploy [ucarp](http://manpages.ubuntu.com/manpages/xenial/man8/ucarp.8.html) VIP using ansible.

## Role variables

| Name           | Default Value | Description                        |
| -------------- | ------------- | -----------------------------------|
| `ucarpconfig` | "" | ucarp init options |

## Examples

	---
	- hosts: apps_ucarp
	  become: yes
	  become_method: sudo
	  gather_facts: yes
	  roles:
	    - role: ansible-apps_ucarp
	  vars:
        ucarp_config:
          - {vip: "10.64.33.203", instance: 23, passwd: "{{ vault_ntp_ucarp }}", interface: "ens3", skew: 50,master: true }
	  environment: 
	    http_proxy: "{{ http_proxy }}"
	    https_proxy: "{{ https_proxy }}"
	    no_proxy: "{{ no_proxy }}

## License

This project is licensed under Apache License. See [LICENSE](/LICENSE) for more details.
