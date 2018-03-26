# Chef Intermediate

This is the repository dedicated to developing the **Chef Intermediate**.

## Abstract / Description

Chef Intermediate is an instructor-led course that introduces you to test-driven development and extending your cookbooks.

Building cookbooks with tests will increase the speed at which you work by giving you consistent feedback throughout the entire cookbook development process. Extending your cookbooks with custom resources will increase clarity within your recipes and provide resources that are portable to other cookbooks. While Ohai plugins gather data from your nodes that will aid in more dynamic recipes and extensive reporting.

In this course you will learn how to confidently refactor and extend a cookbook through explanation, demonstration, practice, and discussion. At the end of the course, you will have created a code repository that can be applied to solve the unique challenges you face managing your infrastructure.

## Learner Requirements

Participants need a network-enabled laptop with a terminal that supports SSH.

* Windows 7+ through [Putty](http://www.putty.org/) or [Cygwin with OpenSSH](https://www.cygwin.com/).

* Mac OS X 10.11

* Ubuntu 14.04

It’s best that learners have some familiarity and comfort with the following:

* Completed Chef Essentials or equivalent experience


## Agenda

* Introduction

* Why Write Tests? Why is that Hard?
* Writing a Test First
* Refactoring Cookbooks with Tests
* Faster Feedback with Unit Testing
* Testing Resources in Recipes
* Refactoring to Attributes
* Refactoring to Multiple Platforms
* Approaches to Extending Resources
* Why Use Custom Resources
* Creating a Custom Resource
* Refining a Custom Resource
* Ohai
* Ohai Plugins
* Creating an Ohai Plugin
* Tuning Ohai

> Custom Resources and Ohai start with some introductory sections to present
> some history, comparison, and analysis on why you should pursue this approach.
> These can be skipped in interest of time, level of pre-existing knowledge of
> the learners, or faith in your ability to explain an implementation on the
> fly.

## Published Content

The latest published version of these training materials are located as follows:

### Participant Guide

The participant guide is a PDF that contains the notes export from the content slides.

This content can be found here: https://opscode.box.com/v/intermediate-participant-guide

### Instructor Kit

* All slides for each module

* Instructor Guide for you to learn from, practice with, and perhaps use as reference while teaching. The instructor guide contains the notes export from the content slides with additional instructor notes and lab setup instructions.

* Participant Guide

This content can be found here: https://opscode.box.com/v/intermediate-instructor-kit

### Screencast Videos

This content can be found here: CONTENT IS CURRENTLY IN DEVELOPMENT

## Known Issues

There are no known issues at this time

## Workstation Setup

These modules focus on getting learners engaged with the content as quickly as possible. A workstation is provided to the learners. Details about what the workstation looks like can be found in [WORKSTATION.md](WORKSTATION.md).

For us at Chef this workstation is currently being managed as a Amazon Machine Instance (AMI). This AMI is managed by Chef through the Training AWS Account.

* Intermediate - CentOS 6.9 - 3.1.0

The AMI was generated with [Packer](https://github.com/chef-training/chefdk-image) and adheres to the following [policy](https://github.com/chef-training/chefdk-image/blob/master/cookbooks/workstations/recipes/intermediate.rb). It is based on a Marketplace AMI so it cannot be made public. If you would like access to this AMI to deliver training please contact [training@chef.io](mailto:training@chef.io) the request that includes your Amazon Account Id.
