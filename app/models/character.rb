class Character < ActiveRecord::Base
  belongs_to :party

  def job
    jobs[read_attribute(:job).to_sym]
  end

  def jobs
    {
      tank: "Tank",
      dps: "DPS",
      healer: "Healer"
    }
  end

  def job_choices
    jobs.to_a.map do |choice|
      choice.reverse
    end
  end
end
