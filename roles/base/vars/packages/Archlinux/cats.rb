#!/usr/bin/env ruby

require 'yaml'
require 'open3'
require 'csv'

APP_ROOT = File.expand_path(__FILE__)


# Load the YAML file
packages = YAML.load_file('workstation.yml')

descriptions = {}

# Fetch the package descriptions
packages.each do |category, package_list|
  package_list.each do |package|
    # Run the command to get the package description
    output, error, status = Open3.capture3("paru -Qi #{package} | grep Description | awk -F ':' '{print $2}' | xargs -0")

    if status.success?
      description = output.strip
      descriptions[package] = description
    else
      puts "Error fetching description for package #{package}: #{error}"
    end
  end
end

# Write the packages and their descriptions to a new CSV file
CSV.open("output_workstation.csv", "wb") do |csv|
  csv << ["Package", "Description"]
  descriptions.each do |package, description|
    csv << [package, description]
  end
end
