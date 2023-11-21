# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# # create universal emotions
# UniversalEmotion.create(name: "Happiness")
# UniversalEmotion.create(name: "Sadness")
# UniversalEmotion.create(name: "Anger")
# UniversalEmotion.create(name: "Fear")
# UniversalEmotion.create(name: "Disgust")

# # already created emotions
# Emotion.create(name: "Embarrassed", description: "Self-conscious and uncomfortable about how you think others will perceive you.", user_id: 1, universal_emotion_id: 2)
# Emotion.create(name: "Terrified", description: "Feeling extreme fear.", user_id: 1, universal_emotion_id: 4)
# Emotion.create(name: "Happy", description: "Feeling or showing pleasure or contentment.", user_id: 1, universal_emotion_id: 1)
# Emotion.create(name: "Sad", description: "Feeling or showing sorrow; unhappy.", user_id: 1, universal_emotion_id: 2)
# Emotion.create(name: "Angry", description: "Feeling or showing strong annoyance, displeasure, or hostility; full of anger.", user_id: 1, universal_emotion_id: 3)
# Emotion.create(name: "Disgusted", description: "Feeling or showing revulsion or strong disapproval.", user_id: 1, universal_emotion_id: 5)
# Emotion.create(name: "Surprised", description: "Feeling or showing surprise because something unexpected has happened.", user_id: 1, universal_emotion_id: 1)
# Emotion.create(name: "Afraid", description: "Feeling fear or anxiety; frightened.", user_id: 1, universal_emotion_id: 4)

### FIX THIS HSIT ###

# already created bookings
# Booking.create(start_date: "2021-09-01", end_date: "2021-10-01", client_id: 2, owner_id: 1, emotion_id: 1)
# Booking.create(start_date: "2021-09-02", end_date: "2021-10-02", client_id: 2, owner_id: 1, emotion_id: 2)
# Booking.create(start_date: "2021-09-03", end_date: "2021-10-03", client_id: 2, owner_id: 1, emotion_id: 3)

# # already created ratings
# Rating.create(rating: 5, comment: "Great!", booking_id: 1)
# Rating.create(rating: 4, comment: "Good!", booking_id: 2)
# Rating.create(rating: 3, comment: "Okay!", booking_id: 3)

### FIX THIS HSIT ###
