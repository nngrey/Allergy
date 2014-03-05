def allergy(number)

  result = []
  allergy_scores2 = {"eggs" => 1, 
                  "peanuts" => 2, 
                  "shellfish" => 4, 
                  "strawberries" => 8, 
                  "tomatoes" => 16, 
                  "chocolate" => 32, 
                  "pollen" => 64, 
                  "cats" => 128}

  allergy_scores = {"cats" => 128,
                  "pollen" => 64,
                  "chocolate" => 32,
                  "tomatoes" => 16,
                  "strawberries" => 8,
                  "shellfish" => 4,
                  "peanuts" => 2,
                  "eggs" => 1,  
                  }

  allergy_scores.each do |allergen, score|
    if number >= score
      result << allergen
      number = number - score
    end
  end
  result.join(", ")
end

while true
  puts "Enter your allergy number"
  input = gets.chomp
  if input == '\quit'
    exit
  else 
    puts allergy(input.to_i)
  end
end

