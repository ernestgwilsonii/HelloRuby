##################################
# Running the latest Rubt on Mac #
##################################

# Determine which version of Ruby is currently installed
ruby -v

# Install the Ruby Version Manager rvm
curl -L https://get.rvm.io | bash -s stable

# Add rvm to your current path
source ~/.rvm/scripts/rvm

# Install the latest version of Ruby
# REF: https://www.ruby-lang.org/en/downloads/
rvm install ruby-2.5.0

# Set the latest version of Ruby as the one you want to use
rvm use ruby-2.5.0
rvm --default use 2.5.0
rvm docs generate-ri
gem install --user-install executable-hooks

# Update/add these to your PATH
vi ~/.bash_profile
export PATH="/Users/YourUserHere/.rvm/gems/ruby-2.5.0/bin:/Users/YourUserHere/.gem/ruby/2.5.0/bin:$PATH"
:wq

# Verify Ruby Version
ruby -v

# Update rubygems
gem install rubygems-update
update_rubygems

# Install bundler
gem install bundler
rvm all-gemsets do gem update bundler

# Install rake
gem install rake


############################
# Manually installing gems #
############################

# Install rubocop
gem install rubocop

# Install minitest
gem install minitest


####################################################
# Installing gems using Gemfile via bundle install # 
####################################################

# Create a Gemfile for the bundle install
echo "source 'https://rubygems.org'" > Gemfile
echo "gem 'minitest', '~> 5.11.3'" >> Gemfile
echo "gem 'rake', '~> 12.3.1'" >> Gemfile
echo "gem 'rubocop', '~> 0.59.1'" >> Gemfile

# Install the bundle based on the Gemfile 
bundle install
