# Feature: Logging in as user and admin
#   As a user or Admin
#   I want to be able to log in
#   So I can manage bookings
#
#   @user_correct_login
#   Scenario: As a user I should be able to login
#     Given I am on the login page
#     When I input correct user login details
#     And I click login
#     Then I should be redirected to the user homepage

  # @admin_correct_login
  # Scenario: As a admin I should be able to login
  #   Given I am on the login page
  #   When I input correct admin login details
  #   And I click login
  #   Then I should be logged in as an admin
  #   And I should be redirected to the admin homepage
  # 
  # @incorrect_login
  # Scenario: As I enter incorrect login details I should be given an error
  #   Given I am on the login page
  #   When I input incorrect user login username
  #   And I input incorrect user login password
  #   And I click login
  #   Then I should be given an error message
  #
  # @user_room_booking
  # Scenario: As a user I am able to book a Room
  #   Given I am logged in as a user
  #   When I click to book a room
  #   And I fill in room booking details correctly # (Enter max cap save a Scenario)
  #   And I click save
  #   Then The room should be booked # (my need changing depending on details)
  #
  # @user_room_booking_occupied
  # Scenario: As a user I should be unable to book an already booked room
  #   Given I am logged in as a user
  #   When I click to book a room
  #   And I fill in details of a booked room
  #   And I click save
  #   Then The room should not be booked # Maybe an error message
  #
  # @user_room_booking_incorrect
  # Scenario: As a user I book a room with incorrect requirements
  #   Given I am logged in as a user
  #   When I click to book a room
  #   And I fill in room details incorrectly # (may need expanding each detail for table)
  #   And I click save
  #   Then The room should not be booked # (Maybe an error message // copied above)
  #
  #
  # @user_edit_booking
  # Scenario: Users should be able to edit their own bookings
  #   Given I am logged in as a user
  #   When I click edit booking
  #   And I fill in room booking details correctly
  #   And I click save
  #   Then The room booking should be updated
  #
  # @user_view_bookings
  # Scenario: As a user I can view current and future bookings
  #   Given I am logged in as a user
  #   When I access the index page
  #   Then I can view current and future bookings
  #
  # @user_delete_their_booking
  # Scenario: A user should be able to delete their booking
  #   Given I am logged in as a user
  #   When I click to book a room
  #   And I fill in room booking details correctly # (Enter max cap save a Scenario)
  #   And I click save
  #   And I access the index page
  #   And I click my booking
  #   And I click delete
  #   Then The booking should be deleted
  #
  # @user_delete_elses_booking # Only works if the delete is available
  # Scenario: A user shouldn't be able to delete another users booking
  #   Given I am logged in as a user
  #   When I access the index page
  #   And I click another users booking
  #   And I click delete
  #   Then The booking should still remain
  #
  # @create_new_room
  # Scenario: Admins should be able to create a new room
  #   Given I am logged in as an admin
  #   When I access the rooms resource
  #   And I click create a new room
  #   And I enter valid details
  #   And I click save
  #   Then A new room is created and available for use

  # @create_new_room_with_incorrect_details
  # Scenario: Creation of a new room should not be allowed with incorrect details
  #   Given I am logged in as an admin
  #   When I access the rooms resource
  #   And I click create a new room
  #   And I enter invalid details
  #   And I click save
  #   Then A new room creation error message should be given

  # @new_room_properties # may need to be deleted
  # Scenario: New rooms should be assigned colours
  #   Given I am logged in as an admin
  #   When I access the rooms resource
  #   And I click create a new room
  #   And I assign the room a colour
  #   And I click save
  #   Then A new room is created and assigned the appropriate colour
  #
  # @new_room_exsiting_properties
  # Scenario: Creating a new room with existing properties
  #   Given I am logged in as an admin
  #   When I access the rooms resource
  #   And I click create a new room
  #   And I assign an exsiting room colour
  #   And I assign an exsiting room name
  #   And I click save
  #   Then A new room shouldn't be created # maybe an error is thrown
  #
  # @room_edit
  # Scenario: Admins should be able to edit an existing room
  #   Given I am logged in as an admin
  #   When I access the rooms resource
  #   And I edit a room
  #   And I change the options for the room
  #   And I click save
  #   Then The options will be saved and updated
  #
  # @room_deletion
  # Scenario: Admins should be able to delete an existing room
  #   Given I am logged in as an admin
  #   When I access the rooms resource
  #   And I delete a room
  #   Then The room will be deleted and no longer available for bookings
  #
  # @admin_view_all_users
  # Scenario: Admins should be able to view all users
  #   Given I am logged in as an admin
  #   When I access the users resource
  #   Then All users are viewable
  #
  # @admin_promote_user
  # Scenario: Admins should be able to promote users to admins
  #   Given I am logged in as an admin
  #   When I access the users resource
  #   And I change a user role to admin
  #   Then The user will be able to access admin functionality
  #
  # @admin_remove_admin
  # Scenario: Admin should be able to remove an admin status
  #   Given I am logged in as an admin
  #   When I access the users resource
  #   And I change a user role from an admin to a normal user
  #   Then The user will not be able to access admin functionality
  #
  # @admin_three_tier_remove
  # Scenario: An admin shouldn't be able to remove admin status of the one who created them and etc for created a third removing the first
  #   Given I am logged in as an admin
  #   And I access the users resource
  #   When I
  #
  # @admin_remove_themself
  # Scenario: An admin should not be able to remove their own admin status
  #   Given I am logged in as an admin
  #   When I access the users resource
  #   And I change my own role to a normal user
  #   Then An error message is displayed
  #
  # @admin_book_room
  # Scenario: Admins should be able to book a room for a specified time
  #   Given I am logged in as an admin
  #   When I click to book a room
  #   And I fill in details correctly
  #   And I click book room
  #   Then The room should be booked
  #
  # @admin_prioritise_bookings
  # Scenario: Admins should be able to prioritise bookings
  #   Given I am logged in as an admin
  #   When I click view bookings
  #   And I change the priority of a booking
  #   Then The priority of the booking should be updated
  #
  # @admin_edit_booking
  # Scenario: Admins should be able to edit and update bookings
  #   Given I am logged in as an admin
  #   When I click to edit booking
  #   And I fill in details correctly
  #   And I click save
  #   Then The booking should be updated
  #
  # @admin_delete_booking
  # Scenario: Admins should be able to delete a booking which is no longer needed
  #   Given I am logged in as an admin
  #   When I click on a booking
  #   And I click delete
  #   Then The booking should be deleted
  #
  # @admin_filter_bookings_time
  # Scenario: Admins should be able to filter bookings by time period
  #   Given I am logged in as an admin
  #   When I filter bookings by time period # will depend on how this works
  #   Then The bookings for that time period will be displayed # will depend on how this works
