rails g model Appointment 

title:string 
start_time:integer 
end_time:integer 
schedule:references


rails g model Schedule
name:string

##################

Schedule:
  - Has many Appointments.
  - May be created, read, and destroyed.
  - Updated only to add or remove Appointments.
  - When a schedule is requested, Appointments should be returned ordered by start time. Soonest first.
  - May not contain overlapping Appointments.
    - Acceptable: [{start_time: 50, end_time: 55}, {start_time: 56, end_time: 90}]
    - Not Acceptable: [{start_time: 23, end_time: 191}, {start_time: 191, end_time: 207}] 

Appointment:
  - Belongs to one Schedule.
  - Defines at least a start time and an end time.
  - May be created, read, and destroyed.
  - May not be updated.


  #VALIDATION 
  - End time must be greater than the start time.
    - Acceptable: {start_time: 1, end_time: 2}
    - Not acceptable: {start_time: 1, end_time: 1}

Requirements:

  - RESTful API (I will use curl to interact with your server)

  - Ruby or Go

  - No restrictions on frameworks or tools, except...

  - No Databases. In memory storage only. (Data is lost when server shuts down.) 

  - Production quality - This should be something you would be comfortable submitting for peer review.

