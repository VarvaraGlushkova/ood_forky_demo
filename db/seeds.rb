@fill_txt = "Bionore and Aden had been friends for what felt like an eternity. They met in college, bonding over late-night pizza and study sessions. Over time, their friendship evolved into something more... casual. They both agreed on a friends-with-benefits arrangement, and it seemed like the perfect solution. No strings attached, no drama, just fun. As the months went by, Aden found himself growing more and more attached to Bionore. He couldn't quite put his finger on when it started, but he remembered the way his heart skipped a beat when she smiled at him, the way his hands itched to touch her whenever she was near. He tried to brush it off as mere infatuation, but deep down, he knew it was something more."

@words = @fill_txt.downcase.gsub(/[-.—,':()]/, '').gsub(/  /, ' ').split(' ')

def seed
  reset_db
  create_users(10)
  create_story(30)
  create_chapter(40)
end

def reset_db
  Rake::Task['db:drop'].invoke
  Rake::Task['db:create'].invoke
  Rake::Task['db:migrate'].invoke
end

def create_users(quantity)
  i = 0

  quantity.times do
    user_data = {
      email: "user_#{i}@email.com",
      password: 'testtest'
    }

    user = User.create!(user_data)
    puts "User created with id #{user.id}"

    i += 1
  end
end

def get_random_bool
  [true, false].sample # rubocop:disable Layout/SpaceInsideArrayLiteralBrackets
end


def create_title
  title_n = []

  (1..4).to_a.sample.times do
    title_n << @words.sample
  end

  titlename = title_n.join(' ').capitalize + '.'
end

def create_annotation
  annotation_n = []

  (10..100).to_a.sample.times do
    annotation_n << @words.sample
  end

  annotationst = annotation_n.join(' ').capitalize + '.'
end

def create_text
  text_n = []

  (10..300).to_a.sample.times do
    text_n << @words.sample
  end

  textn = text_n.join(' ').capitalize + '.'
end

def upload_random_cover
  uploader = CoverUploader.new(Story.new, :cover)
  uploader.cache!(File.open(Dir.glob(File.join(Rails.root, "public/autoupload/covers", "*")).sample))
  uploader
end

def create_story(quantity)
  quantity.times do
    user = User.all.sample
    story = Story.create(title: create_title, annotation: create_annotation, is_public: get_random_bool, cover: upload_random_cover, user: user)
    puts "Story with id #{story.id} and title #{story.title} was made for user #{user.id}"
  end
end

def create_chapter(quantity)
  stories = Story.all

  puts stories

  if stories.empty?
    puts "No stories available to create chapters."
    return
  end

  stories.each do |story|
    chapter_count = quantity
    chapter_count.times do |i|
      chapter = Chapter.create!(
        title: create_title,
        chapter_body: create_text,
        place: 1,
        is_public: story.is_public,
        story_id: story.id,
        user: story.user
      )
      puts "Chapter with id #{chapter.id} was made for Story with id #{story.id}"
    end
  end
end





# def seed
#   reset_db
#   create_stories(10)
#   create_chapters(20)
#   create_forks(5)
#   # create_swatches(10..20)
#   # create_fills(2..8)
#   # create_colors
# end

# def reset_db
#   Rake::Task['db:drop'].invoke
#   Rake::Task['db:create'].invoke
#   Rake::Task['db:migrate'].invoke
# end


# def create_stories(quantity)
#   quantity.times do
#     # user = User.all.sample
#     story = Story.create(:title , :annotation)
#     puts "Story with name #{story.name} just created"
#   end
# end

seed
