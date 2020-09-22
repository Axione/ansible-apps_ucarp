# Ansible Role: ansible-apps_ucarp

## Description

[![Build Status](https://travis-ci.com/lotusnoir/ansible-apps_ucarp.svg?branch=master)](https://travis-ci.com/lotusnoir/ansible-apps_ucarp)[![License](https://img.shields.io/badge/license-MIT%20License-brightgreen.svg)](https://opensource.org/licenses/MIT)[![Ansible Role](https://img.shields.io/badge/ansible%20role-apps__ucarp-blue)](https://galaxy.ansible.com/lotusnoir/ansible-apps_ucarp/)[![GitHub tag](https://img.shields.io/badge/version-latest-blue)](https://github.com/lotusnoir/ansible-apps_ucarp/tags)

Deploy ucarp VIP using ansible.


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

This project is licensed under MIT License. See [LICENSE](/LICENSE) for more details.
