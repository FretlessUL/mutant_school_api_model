module MutantSchoolAPIModel
  class Mutant

    def self.base_url
      "https://mutant-school.herokuapp.com/api/v1/mutants"
    end

    def self.attribute_names
      [
        :id,
        :mutant_name,
        :real_name,
        :power,
        :eligibility_begins_at,
        :eligibility_ends_at,
        :may_advise_beginning_at,
        :url,
        :created_at,
        :updated_at,
        :advisor
      ]
    end

    def self.read_only_attribute_names
      [
        :id,
        :url,
        :created_at,
        :updated_at,
        :advisor
      ]
    end

    # Get all the mutants from the backend
    # mutant = Mutant.all
    def self.all
      response = HTTP.get(base_url)
      JSON.parse(response.to_s).map do |attributes_hash|
        Mutant.new(attributes_hash)
      end
    end

    # Get a single mutant from the backend
    # mutant = Mutant.find(3)
    def self.find(id)
      response = HTTP.get("#{base_url}/#{id}")
      Mutant.new(JSON.parse(response.to_s))
    end

    attr_accessor *(attribute_names - read_only_attribute_names)
    attr_reader *read_only_attribute_names

    def initialize(attr = {})
      # Set instance variables from the items in the hash
      attr.each do |name, value|
        if self.class.attribute_names.include? name.to_sym
          instance_variable_set("@#{name}", value)
        end
      end
    end

    # Create or update a mutant in the backend
    # mutant.save
    def save
    end

    # Delete a mutant from the backend
    # mutant.destroy
    def destroy
      #code
    end
  end
end
