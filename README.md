# Deryls Testing Framework

DTF is designed to be a modular framework for testing everything from shell scripts, to Ruby, to Rails apps.

DTF is an umbrella which is designed to incorporate multiple sub-gems, each of which provides additional
functionality to DTF. DTF is the master skeleton within which all other dtf-* gems integrate.

## Internal architecture

DTF is designed in such a way that, with the master skeleton in place, one has only to load additional plugins
from any available DTF extension gem to add additional functionality. This can be anything ranging from
additional languages such as Ruby, Python, C, C++, etc, to testing methods and methodologies.

## DTF-Session Gem

  'dtf-session' gem is part of the DTF <dtf-gems.daviddwdowney.com> framework, and is designed for
  Bash shell command-line based testing.

## Installation
There are several ways to install, and configure the 'dtf-session' gem.

1) You would run ```gem install dtf-session```, and once installed, run ```rake dtf:install``` to
install the DTF baseline thor task(s).

2) You would include the gem in your project's Gemfile and ```bundle install``. Once installed,
you would then run ```rake dtf:install``` to install the DTF baseline thor task(s).

In both instances, you would continue on with the following instructions.

DTF uses Thor for setup and configuration, and has 3 possible sub-tasks under task name 'dtf_setup':

```sh
∴ thor list
dtf_setup
---------
thor dtf_setup:config [NAME]  # Copy db configuration file(s)
thor dtf_setup:install        # Installs database migrations, the main schema, and configuration files
```

As you can see, you can copy just the db config files, and/or the migrations, and main schema.

```sh
∴ thor help dtf_setup
Tasks:
  thor dtf_setup:config [NAME]  # Copy db configuration file(s)
  thor dtf_setup:help [TASK]    # Describe available tasks or one specific task
  thor dtf_setup:install        # Installs database migrations, the main schema, and configuration files
```

To see how to install everything you would run the following command:

```sh
∴ thor dtf_setup:help install
Usage:
  thor dtf_setup:install

Options:
  [--force]  

Installs database migrations, the main schema, and configuration files
```

To see how to install just the configuration files for accessing the database(s), you would run:

```sh
∴ thor dtf_setup:help config
Usage:
  thor dtf_setup:config [NAME]

Options:
  [--force]  

Copy db configuration file(s)
```

Once the configuration files and/or database migrations are in place, the remaining setup is handled by 'rake'.
To see all possible commands, you would run 'rake -T', and pick the one(s) you need.

```sh
∴ rake -T
rake build              # Build dtf-0.2.2.gem into the pkg directory
rake db:create          # Create the database from config/database.yml for the current Rails.env (use db:create:all to create all dbs i...
rake db:drop            # Drops the database for the current Rails.env (use db:drop:all to drop all databases)
rake db:fixtures:load   # Load fixtures into the current environment's database.
rake db:migrate         # Migrate the database (options: VERSION=x, VERBOSE=false).
rake db:migrate:status  # Display status of migrations
rake db:new_migration   # Create a new migration
rake db:rollback        # Rolls the schema back to the previous version (specify steps w/ STEP=n).
rake db:schema:dump     # Create a db/schema.rb file that can be portably used against any DB supported by AR
rake db:schema:load     # Load a schema.rb file into the database
rake db:seed            # Load the seed data from db/seeds.rb
rake db:setup           # Create the database, load the schema, and initialize with the seed data (use db:reset to also drop the db first)
rake db:structure:dump  # Dump the database structure to db/structure.sql. Specify another file with DB_STRUCTURE=db/my_structure.sql
rake db:version         # Retrieves the current schema version number
rake install            # Build and install dtf-0.2.2.gem into system gems
rake release            # Create tag v0.2.2 and build and push dtf-0.2.2.gem to Rubygems
```


## Usage
Once you have finished configuring your database(s) and applying all migrations, you are now ready to work with
DTF directly. The following is a summary of all current possible commands, and their expected options/parameters:

** STILL TO BE WRITTEN ***

--
Enjoy!
