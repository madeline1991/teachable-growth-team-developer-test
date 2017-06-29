# Teachable Growth Team Developer Test

Thank you for applying to Teachable! Your goal with this test is to build an interface that allows a user to search for ruby gems, and save their favorites.

### Instructions

1. You will need to install Sketch on your computer to view the included design files. You can download a trial version of Sketch at https://www.sketchapp.com
2. Build the root.html.erb and favorites.html.erb pages to match the designs in the sketch file (located in the designs folder of this repo).
3. Images used in the sketch files have been included in app/assets/images
4. Now for the functionality - clicking the magnifying glass on the search bar should search the RubyGems database for the entered text. If there is an exact match then the gem name, its info, and its dependencies should be displayed as shown in the sketch file.
5. To accomplish the above, have the client send a request to the server (you create the route and method), which in turn should use the RubyGems gem (which has been added to the Gemfile for you, the documentation is here: https://github.com/rubygems/gems) to query the rubygems database and get the required info. Your server method should then return this info to the client.
6. After a gem has been displayed, clicking the star icon should save that gem to the user's favorites. Use localStorage to accomplish this. A full list of the user's favorites should be displayed at /favorites. Clicking the star icon on that page should remove the gem from the list.
7. On either page, clicking a gem name should link to that gem's page on rubygems.org (example: https://rubygems.org/gems/foo)

### Notes

1. A working example of this functionality (but with a completely different design) is available at https://stark-ravine-30041.herokuapp.com. Use this only to get a clearer idea of what the assignment is asking. Do not go looking for the code!

2. If you use a JavaScript framework, think about which one would be best for the task. Be prepared to defend your choice.

3. For extra credit, make the pages responsive. There are no designs for this, it's up to you to decide how this should look. Bootstrap has been added to this rails project for you.
