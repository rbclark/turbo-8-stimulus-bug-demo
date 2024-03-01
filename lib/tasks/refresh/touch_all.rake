namespace :refresh do
  desc "Touch all Group records every 5 seconds"
  task touch_all: :environment do
    loop do
      puts "Touching all Group records..."
      Group.all.each(&:touch)
      sleep 5
    end
  end
end
