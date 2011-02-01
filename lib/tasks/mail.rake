namespace :mail do
  
  task :csv, :needs => :environment do
    # Email on the 1st and 15th of each month
    if [1, 15].include? Date.today.day
      LifecycleMailer.account_and_document_csvs
    end
  end
end