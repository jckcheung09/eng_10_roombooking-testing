Feature: Admin features

@admin_correct_login
Scenario: As a admin I should be able to login
  Given I am on the login page
  When I input correct admin login details
  And I click login
  Then I should be logged in as an admin
  And I should be redirected to the admin homepage

@create_new_room
Scenario: Admins should be able to create a new room
  Given I am logged in as an admin
  When I access the rooms resource
  And I click create a new room
  And I enter valid details
  And I click save
  Then A new room is created and available for use

@create_new_room_with_incorrect_details
Scenario: Creation of a new room should not be allowed with incorrect details
  Given I am logged in as an admin
  When I access the rooms resource
  And I click create a new room
  And I enter invalid details
  And I click save
  Then A new room creation error message should be given

@new_room_properties # may need to be deleted
Scenario: New rooms should be assigned colours
  Given I am logged in as an admin
  When I access the rooms resource
  And I click create a new room
  And I assign the room a colour
  And I click save
  Then A new room is created and assigned the appropriate colour

@new_room_exsiting_properties
Scenario: Creating a new room with existing properties
  Given I am logged in as an admin
  When I access the rooms resource
  And I click create a new room
  And I assign an exsiting room colour
  And I assign an exsiting room name
  And I click save
  Then A new room shouldn't be created # maybe an error is thrown

@room_edit
Scenario: Admins should be able to edit an existing room
  Given I am logged in as an admin
  When I access the rooms resource
  And I edit a room
  And I change the options for the room
  And I click save
  Then The options will be saved and updated

@room_deletion
Scenario: Admins should be able to delete an existing room
  Given I am logged in as an admin
  When I access the rooms resource
  And I delete a room
  Then The room will be deleted and no longer available for bookings

@admin_view_all_users
Scenario: Admins should be able to view all users
  Given I am logged in as an admin
  When I access the users resource
  Then All users are viewable

@admin_promote_user
Scenario: Admins should be able to promote users to admins
  Given I am logged in as an admin
  When I access the users resource
  And I change a user role to admin
  Then The user will be able to access admin functionality

@admin_remove_admin
Scenario: Admin should be able to remove an admin status
  Given I am logged in as an admin
  When I access the users resource
  And I change a user role from an admin to a normal user
  Then The user will not be able to access admin functionality

@admin_three_tier_remove
Scenario: An admin shouldn't be able to remove admin status of the one who created them and etc for created a third removing the first
  Given I am logged in as an admin
  And I access the users resource
  When I

@admin_remove_themself
Scenario: An admin should not be able to remove their own admin status
  Given I am logged in as an admin
  When I access the users resource
  And I change my own role to a normal user
  Then An error message is displayed

@admin_book_room
Scenario: Admins should be able to book a room for a specified time
  Given I am logged in as an admin
  When I click to book a room
  And I fill in details correctly
  And I click book room
  Then The room should be booked

@admin_prioritise_bookings
Scenario: Admins should be able to prioritise bookings
  Given I am logged in as an admin
  When I click view bookings
  And I change the priority of a booking
  Then The priority of the booking should be updated

@admin_edit_booking
Scenario: Admins should be able to edit and update bookings
  Given I am logged in as an admin
  When I click to edit booking
  And I fill in details correctly
  And I click save
  Then The booking should be updated

@admin_delete_booking
Scenario: Admins should be able to delete a booking which is no longer needed
  Given I am logged in as an admin
  When I click on a booking
  And I click delete
  Then The booking should be deleted

@admin_filter_bookings_time
Scenario: Admins should be able to filter bookings by time period
  Given I am logged in as an admin
  When I filter bookings by time period # will depend on how this works
  Then The bookings for that time period will be displayed # will depend on how this works
