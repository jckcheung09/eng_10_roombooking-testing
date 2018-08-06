Feature: User features

@user_correct_login
Scenario: As a user I should be able to login
  Given I am on the login page
  When I input correct user login details
  And I click login
  Then I should be redirected to the user homepage

@incorrect_login
Scenario: As I enter incorrect login details I should be given an error
  Given I am on the login page
  When I input incorrect user login username
  And I input incorrect user login password
  And I click login
  Then I should be given an error message

@user_room_booking
Scenario: As a user I am able to book a Room
  Given I am logged in as a user
  When I click to book a room
  And I fill in room booking details correctly # (Enter max cap save a Scenario)
  And I click save
  Then The room should be booked # (my need changing depending on details)

@user_room_booking_occupied
Scenario: As a user I should be unable to book an already booked room
  Given I am logged in as a user
  When I click to book a room
  And I fill in details of a booked room
  And I click save
  Then The room should not be booked # Maybe an error message

@user_room_booking_incorrect
Scenario: As a user I book a room with incorrect requirements
  Given I am logged in as a user
  When I click to book a room
  And I fill in room details incorrectly # (may need expanding each detail for table)
  And I click save
  Then The room should not be booked # (Maybe an error message // copied above)


@user_edit_booking
Scenario: Users should be able to edit their own bookings
  Given I am logged in as a user
  When I click edit booking
  And I fill in room booking details correctly
  And I click save
  Then The room booking should be updated

@user_view_bookings
Scenario: As a user I can view current and future bookings
  Given I am logged in as a user
  When I access the index page
  Then I can view current and future bookings

@user_delete_their_booking
Scenario: A user should be able to delete their booking
  Given I am logged in as a user
  When I click to book a room
  And I fill in room booking details correctly # (Enter max cap save a Scenario)
  And I click save
  And I access the index page
  And I click my booking
  And I click delete
  Then The booking should be deleted

@user_delete_elses_booking # Only works if the delete is available
Scenario: A user shouldn't be able to delete another users booking
  Given I am logged in as a user
  When I access the index page
  And I click another users booking
  And I click delete
  Then The booking should still remain
