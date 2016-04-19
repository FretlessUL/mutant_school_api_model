module MutantSchoolAPIModel
  class Mutant

    def self.base_url
      "https://mutant-school.herokuapp.com/api/v1/mutants"
    end

    # Get all the mutants from the backend
    # mutant = Mutant.all
    def self.all
      response = HTTP.get(base_url)
      JSON.parse(response.to_s)
    end

    # Get a single mutant from the backend
    # mutant = Mutant.find(3)
    def self.find(id)
      response = HTTP.get("#{base_url}/#{id}")
      JSON.parse(response.to_s)
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
