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
end
