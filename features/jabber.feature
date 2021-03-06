Feature: Offer up Jabber as a service
  As a sysadmin with existing Linux-based infrastructure
  I want to create a Jabber server
  So that I can have Jabber conferences and person-to-person instant messaging enabled

  Background: Always start with a bare Linux VM
    Given I have an empty Linux machine
    And the machine should become a Jabber server

  Scenario: Basic set up
    When I provision the host
    Then the Jabber server should be running
    And it should be listening for connections

  Scenario: With a virtualhost
    Given I have configured a virtualhost for "cukes.info"
    When I provision the host
    Then the Jabber server should be running
    And the "cukes.info" configuration should be enabled

  @wip
  Scenario: Open up to the outside world
    Given then firewall has been configured to allow Jabber through
    When I provision the host
    Then the Jabber port should be open to the outside world
