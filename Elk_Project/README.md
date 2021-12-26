## Automated ELK Stack Deployment

The files in this repository were used to configure the network depicted below.

![Elk_Stack_Diagram](https://user-images.githubusercontent.com/88590862/147399985-c89964be-9d23-4fd8-86e3-d1fa6c8a36c7.png)


These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above. Alternatively, select portions of the playbook files may be used to install only certain pieces of it, such as Filebeat.

  - Ansible/Filebeat/Filebeat_Config.yml
  - Ansible/Filebeat/filebeat-playbook.yml
  - Ansible/MetricBeat/Metricbeat-Config.yml
  - Ansible/MetricBeat/metricbeat-playbook.yml
  - Ansible/ELK/Install-Elk.yml
  - Ansible/Ansible_cfg/ansible.cfg
  - Ansible/Ansible_cfg/hosts.yml

This document contains the following details:
- Description of the Topologu
- Access Policies
- ELK Configuration
  - Beats in Use
  - Machines Being Monitored
- How to Use the Ansible Build


### Description of the Topology

The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the D*mn Vulnerable Web Application.

Load balancing ensures that the application will be highly available, in addition to restricting inbound access to the network.
- Load Balancers protect a system from DDoS attacks by shifting the attacking traffic. Access controls on the load balancers ensure only authorized users will be able to connect. 

Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the file systems of the VMs on the network and system metrics.
- Filebeat monitors the log files or locations that are specified, collects the log events then forwards them to either Elasticsearch or Logstash for indexing
- Metricbeat collects metrics and statistics from the operating system then sends results to Elasticsearch or Logstash

The configuration details of each machine may be found below.

| Name     | Function | IP Address | Operating System |
|----------|----------|------------|------------------|
| Jump Box | Gateway  | 10.0.0.1   |  Linux           |
| DVWA 1   | WebServer| 10.0.0.5   |  Linux           |
| DVWA 2   | WebServer| 10.0.0.6   |  Linux           |
| ELK      | Monitor  | 10.1.0.4   |  Linux           |

### Access Policies

The machines on the internal network are not exposed to the public Internet. 

Only the JumpBox machine can accept connections from the Internet. Access to this machine is only allowed from the following IP addresses:
- 47.185.114.58

Machines within the network can only be accessed by each other.
- The JumpBox VM was the only one allowed access to ELK. Its public IP is 52.152.145.104

A summary of the access policies in place can be found in the table below.

| Name     | Publicly Accessible | Allowed IP Addresses |
|----------|---------------------|----------------------|
| Jump Box | Yes                 | 47.185.114.58        |
| DVWA 1   | No                  | 10.0.0.4             |
| DVWA 2   | No                  | 10.0.0.4             |
| ELK      | No                  | 10.0.0.4             |

### Elk Configuration

Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous because...
- The configurations can be pushed out to hundreds of machines without having to personally configure each one. Saving time and money. 

The playbook implements the following tasks:
- Install Docker on Elk VM
- Install pip3
- Install Docker Python module
- Increase and use more virtual memory
- Download elk container image sebp/elk:761

The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance.

Images/metricbeat_data_ELK.PNG
Images/system_log.PNG

### Target Machines & Beats
This ELK server is configured to monitor the following machines:
- 10.0.0.5
- 10.0.0.6

We have installed the following Beats on these machines:
- Filebeat
- Metricbeat

These Beats allow us to collect the following information from each machine:
- Filebeat monitors the log files or locations that are specified, collects the log events then forwards them to either Elasticsearch or Logstash for indexing
- Metricbeat collects metrics and statistics from the operating system (CPU, RAM usage) then sends results to Elasticsearch or Logstash
 
### Using the Playbook
In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned: 

SSH into the control node and follow the steps below:
- Copy the playbook to our Ansible control node.
- Update the hosts file to include the what VMs to run each playbook on
- Run the playbook, on correct target machines to check that the installation worked as expected.

- Where do you copy it? I copy the bones of the playbook using Git.
- Which file do you update to make Ansible run the playbook on a specific machine? The hosts file
- How do I specify which machine to install the ELK server on versus which to install Filebeat on? By correctly putting the machines under the elk or webservers portion of the hosts file. 
- Which URL do you navigate to in order to check that the ELK server is running? http://13.83.14.114:5601/app/kibana (note the public IP does change)

