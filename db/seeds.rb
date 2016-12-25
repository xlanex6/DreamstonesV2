# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ author: 'Star Wars' }, { author: 'Lord of the Rings' }])
#   Character.create(author: 'Luke', movie: movies.first)
puts "Testimonial creation"
puts "Testimonial creation DONE"


Testimonial.create(
author: "Joanna & Craig",
text: "Working with Dreamstones was a great experience. They balanced the architectural vision and the project realities beautifully, had a deep understanding of our priorities, and operated responsively and professionally on all issues. The blend of their style and an understanding of ours led to a beautiful, practical, and unique home."
)
Testimonial.create(
author: "Nancy & David",
text: "We have worked with Dreamstones on our recent project and found them to be very thorough, approachable, quick and efficient. They are a pleasure to work with. The result has exceeded our expectations. They dealt with absolutely everything and we never thought it could have been so easy. If you’re considering building in France, these are the guys you must speak to. Thanks gain for all your help!"
)
Testimonial.create(
author: "Fiona",
text: "Dreamstones provided fast and professional advice when renovating my property in France. The changes required permission and had to be in keeping with restrictions on materials and timings. I was not able to go and visit the property so updates were vital. The service has been exceptional and I will use again and recommend to family and friends. This company makes it so easy. Thank you."
)
Testimonial.create(
author: "Paul and Chris",
text: "Dreamstones has provided the creativity and attention needed. Their professional staff listened to our needs and were diligent in making sure even the smallest details were considered in the design. During construction they were very responsive to questions and always prompt to answer. This project would not have been the same without their expertise and their team by our sides. Our highest recommendations to this talented team!"
)
Testimonial.create(
author: "Katie & David",
text: "We worked with Dreamstones and this proved ideal as the house we ended up buying was in need of total renovation. If we hadn't had the expertise and shared vision of Dreamstones, we would not have bought our farmhouse. Subsequently, we worked over several months finalising plans and designs, in great detail, to transform a dark lair of a place into something full of light and air. Dreamstones kept us up to speed on every nuance with frequent email and photo updates to ensure we were comfortable with the progress. This care and attention to detail coupled with their experience meant, by August 2015, we had the home of our dreams in Southern France."
)
Testimonial.create(
author: "Henry",
important: true,
text: "Thank you all for making my project happen, you are fantastic. This has been a pleasant journey thanks to you and I am delighted and grateful for having found you. I cannot imagine anything but using your services to build a house in France and don’t know how I would have done without you. I will definitely recommend to anyone with no hesitation!"
)
Testimonial.create(
author: "Linda & Fraser",
important: true,
text: "Dreamstones is the ideal team you want for your house project. From design to planning until completion of work, they have shown an incomparable level of care. This was our third house but a first with such a dedicated team sharing our passion like they did. Their attention to detail and positive attitude were essential to achieve what we had in mind and we really felt honoured to work with them. They deserve to be very successful. "
)
