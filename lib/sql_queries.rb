def selects_all_female_bears_return_name_and_age
  sql = <<-SQL
  SELECT name, age FROM bears WHERE gender="F" ;
  SQL
end

def selects_all_bears_names_and_orders_in_alphabetical_order
    sql = <<-SQL
  SELECT name FROM bears ORDER BY name ;
  SQL
end

def selects_all_bears_names_and_ages_that_are_alive_and_order_youngest_to_oldest
    sql = <<-SQL
  SELECT name, age FROM bears WHERE alive=1 ORDER BY age ;
  SQL
end

def selects_oldest_bear_and_returns_name_and_age
    sql = <<-SQL
  SELECT name, age 
  FROM bears
  ORDER BY age DESC
  LIMIT 1;
  SQL
end

def select_youngest_bear_and_returns_name_and_age
    sql = <<-SQL
    SELECT name, age 
    FROM bears
    ORDER BY age ASC
    LIMIT 1;
  SQL
end

def selects_most_prominent_color_and_returns_with_count
    sql = <<-SQL
  SELECT color, COUNT(name)
  FROM bears 
  WHERE color="dark brown" ;
  SQL
end

def counts_number_of_bears_with_goofy_temperaments
    sql = <<-SQL
  SELECT COUNT(name)
  FROM bears 
  WHERE temperament="goofy" ;
  SQL
end

def selects_bear_that_killed_Tim
    sql = <<-SQL
  SELECT *
  FROM bears 
  WHERE bears.name IS NULL;
  SQL
end
