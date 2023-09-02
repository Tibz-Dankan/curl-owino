# signup
curl --data ="&firstName=Tibesigwa &lastName=Dankan &phoneNumber=256762832890 &password=yourpassword" http://localhost:8000/api/v1/users/signup

# login
curl --data ="&phoneNumber=256762832890 &password=yourpassword" http://localhost:8000/api/v1/users/signin
# valid login number, 256762832780 for kusiima nathaniel

# re-login
curl --data ="&refreshToken=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiaWF0IjoxNjkzMzM3NzQ1LCJleHAiOjE2OTMzMzc4MDV9.ccey-9kKmiwObQ3JA9er9bC3e3WBpR7Uf4Tw5M1a2dc" http://localhost:8000/api/v1/users/re-signin

# forgotPassword
curl --data ="&phoneNumber=256762832890" http://localhost:8000/api/v1/users/forgot-password

# validateResetToken
curl --data ="&resetToken=707623" http://localhost:8000/api/v1/users/validate-reset-token

# resetPassword
curl -X PATCH http://localhost:8000/api/v1/users/reset-password -d "&userId=1&password=yournewpassword"

# change password
curl -X PATCH http://localhost:8000/api/v1/users/change-password/5 -d "&currentPassword=Tibs@on20&newPassword=Tibz@on20"

# change password
curl -X PATCH http://localhost:8000/api/v1/users/change-phone-number/5 -d "&phoneNumber=256777605510"
