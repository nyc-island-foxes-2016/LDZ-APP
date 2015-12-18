class View

  def get_input
    gets.chomp.downcase
  end

  def get_borough_input
    gets.chomp.downcase.capitalize
  end

  def intro_message
    puts "Hello user we know you're in a hurry so we wont waste your time. What borough are you in?"
  end

  def print_toilet(toilet)
    puts "How about going to #{toilet["name"]}? There is a bathroom located at #{toilet["location"]}."
  end

  def suffice?
    puts "Does this location meet your satisfaction? (yes/no)"
  end

  def option_response
    puts "That's alright. Let's look for another location."
  end

  def end_message
    puts "Sounds good! Enjoy!"
  end

  def invalid_borough
    puts "Please input a valid borough"
  end

  def picture

  #     p   %w[/      \ ]
  #     p  %w[(____/\  )]
  #     p  %w[ |___  U?(____]
  #     p  %w[ _\L.   |      \    ___]
  #     p %w[/ /"""\ /.-'     |   |\  |]
  #    p %w[( /  _/u     |    \___|_)_|]
  #     p %w[\|  \\      /   / \_(___ __)]
  #     p %w[ |   \\    /   /  |  |    |]
  #    p  %w[ |    )  _/   /   )  |    |]
  #     p %w[ _\__/.-'    /___(   |    |]
  #   p %w[_/  __________/     \  |    |]
  #  p %w[//  /  (              ) |    |]
  # p %w[( \__|___\    \______ /__|____|]
  # p %w[ \    (___\   |______)_/]
  #  p %w[ \   |\   \  \     /]
  #  p   %w[\  | \__ )  )___/]
  #  p    %w[\  \  )/  /__(]
  # p %w[___ |  /_//___|   \_________]
  #  p  %w[_/  ( /          \ ]
  #  p %w[`----'(____________)]
  end

end
