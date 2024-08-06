def get_medals
  medals = []
  n = gets.to_i
  n.times do
    country, gold, silver, bronze = gets.split
    medals.push([country, gold.to_i, silver.to_i, bronze.to_i])
  end
  medals
end

def formatted_print(medals)
  countries = medals.sort_by { |country| [-country[1], -country[2], -country[3], country[0]] }
  countries.each { |country| puts country.join(" ") }
end

medals = get_medals
formatted_print(medals)
