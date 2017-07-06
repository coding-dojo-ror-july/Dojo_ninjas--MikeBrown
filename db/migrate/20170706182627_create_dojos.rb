class CreateDojos < ActiveRecord::Migration
  def change
    create_table :dojos do |t|
      t.string :name
      t.string :city
      t.string :state

      t.timestamps null: false
    end
  end
end







# Assignment: Dojo Ninjas
# Create a new project called 'dojo_ninjas' and have it use the default SQLite database for both development and testing environment. For this project, you're going to need the following tables/models. Please see the following diagram and create the necessary model:



# Dojo
# Have it include the name of the dojo and the city and state of each dojo
# Have the first dojo be "CodingDojo Silicon Valley" in "Mountain View", "CA".
# Have the second dojo be "CodingDojo Seattle" in "Seattle", "WA".
# Have the third dojo be "CodingDojo New York" in "New York", "NY".
# Ninja
# Have it include first_name, last_name of each ninja in the dojo.
# Each dojo can have multiple ninjas and each ninja belongs to a specific dojo.
# IMPORTANT INFO: When you do any of these assignments in this chapter, you should not reference the foreign key directly. For example, instead of writing Ninja.create(dojo_id: 1, ...) , you should write do something like this: Ninja.create(dojo: Dojo.first, ...).  By doing this, we are preserving our database from having bad information. In the first example, a Ninja will be created even if a dojo with id of 1 does not yet exist. In the second example, Active Record will only create a ninja if there is a first dojo in our database.

# This is what you'll do:

# Start a new project (the name of the project should be 'dojo_ninjas') -------- DONE
# Create appropriate tables/models. -------- DONE
# Using Ruby console: -------- DONE
# Create 3 dojos (insert some blank entries just to make sure it's allowing you to insert empty entries) -------- DONE
# Change your models so that it does the following validations: -------- DONE
# For the dojo, require the presence of the name, city, and state; also require the state to be two characters long -------- DONE
# For the ninja, require the presence of the first name and last name -------- DONE
# Make sure that your ninja model belongs to the dojo (specify this in the model for both the dojo and the ninja) -------- DONE
# Using ruby console -------- DONE
# Delete the three dojos you created (e.g. Dojo.find(1).destroy; also look up destroy_all method) -------- DONE
# Create 3 additional dojos by using Dojo.new. -------- DONE
# Try to create a few more dojos but without specifying some of the required fields. Make sure that the validation works and generates the errors. -------- DONE
# Create 3 ninjas that belong to the first dojo you created. -------- DONE
# Create 3 more ninjas and have them belong to the second dojo you created. -------- DONE
# Create 3 more ninjas and have them belong to the third dojo you created. -------- DONE
# Make sure you understand how to get all of the ninjas for any dojo (e.g. get all the ninjas for the first dojo, second dojo, etc). -------- DONE
# How would you only retrieve the first_name of the ninjas that belong to the second dojo and order the result by created_at DESC order? -------- DONE
# Delete the second dojo. How could you adjust your model so that it automatically removes all of the ninjas associated with that dojo? add dependent: :destroy right next to has_many :ninjas in the Dojo model -------- DONE
# Make sure that you feel completely comfortable with using .all, .valid?, .where, .order, .limit, .save, .create, .errors, and other methods 