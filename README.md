About
=====

This sample is for project where specific network rules and configuration must be performed in order to allow servers to communicate.

This code sample takes advantage of ansible to check connectivity between hosts, assuming :
* The ansible inventory declares all project's hosts
* The ansible controller can access all hosts

Features
========
* Check connectivity between ansible group of hosts
* Multiple port can be tested at once
* A mock can be deployed on target host to simulate the service if none running on the same port
* Soft assertion

Sample content
==============

sample.yml
----------
This playbook load a descriptor and run the check for each configuration

conf/app-db.json
----------
A simple configuration as a JSON file :
> All servers in *app* group should access to all servers in *database* group using port 5432 and 5433
> A mock on destination servers ports should be run in order to simulate the database (if none running)

check.yml
---------
The engine, based on Linux **nc**.