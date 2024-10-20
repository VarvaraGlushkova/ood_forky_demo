def seed
  reset_db
  create_stories(10)
  create_chapters(20)
  create_forks(5)
  # create_swatches(10..20)
  # create_fills(2..8)
  # create_colors
end

def reset_db
  Rake::Task['db:drop'].invoke
  Rake::Task['db:create'].invoke
  Rake::Task['db:migrate'].invoke
end


# def create_stories(quantity)
#   quantity.times do
#     # user = User.all.sample
#     story = Story.create(:title , :annotation)
#     puts "Story with name #{story.name} just created"
#   end
# end
