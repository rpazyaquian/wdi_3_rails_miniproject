class Character < ActiveRecord::Base
  belongs_to :party

  def job
    job = read_attribute(:job).to_s
    if job == 'dps'
      job.upcase
    else
      job.capitalize
    end
  end
end
