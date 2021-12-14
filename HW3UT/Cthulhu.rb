require 'bundler'
Bundler.setup

require 'html_maker'

class Cthulhu
  def initialize(name)
    @name = name
    @asleep = false
    @lives = 10
    @mood = 10
    @stuff_in_belly = 10
    @stuff_in_intestine = 0
    @energy = 10
    @powers = 5
    @blood_lust = 5
    @cleanness = 10
    @intelligence = 1

    puts " #{@name} Народжений!"
    puts "#{Time.new} дата початку кінця"
    puts "Для ознайомлення з можливостями контактування з #{@name} введи help"
  end

  def feed
    puts 'Поглинає душі нещасних і набирається сил'
    @stuff_in_belly = 10
    @energy = 10
    @powers = 10
    time_passed
    make_html(stats)
  end

  def poop
    puts 'пакакаль'
    @stuff_in_intestine = 0
    @mood = 10
    @cleanness = 5
    time_passed
    make_html(stats)
  end

  def walking
    puts " #{@name} гуляє *Злий сміх наповнює простір* "
    @energy = 5
    @mood = 10
    @blood_lust = 2
    time_passed
    make_html(stats)
  end

  def sleep
    puts '...Zzzzzzzzzzz...'
    @asleep = true

    time_passed if @asleep

    @energy = 10 if @asleep

    @asleep = false if @asleep
    puts "Набарвшись темних сил #{@name} знову готовий до дивовижних пригод"
  end

  def play
    puts " #{@name} грається *Злий сміх наповнює простір* "
    @lives = 10
    @mood = 10
    time_passed
    make_html(stats)
  end

  def sacrifice
    puts "Приносимо жертви во славу #{@name}"
    @blood_lust = 2
    @powers = 10
    time_passed
    make_html(stats)
  end

  def sing
    puts 'Never gonna give you up'
    puts 'Never gonna let you down'
    puts 'Never gonna run around and desert you'
    puts 'Never gonna make you cry'
    puts 'Never gonna say goodbye'
    puts 'Never gonna tell a lie and hurt you'
    puts ' ^_________^ '
    @mood = 10
    time_passed
    make_html(stats)
  end

  def dance
    puts 'Весело махає своїми тентаклями під хіти поплавського'
    @mood = 10
    @cleanness = 5
    @intelligence = 1
    time_passed
    make_html(stats)
  end

  def bath
    puts 'весело булькає і грається каченятком'
    @cleanness = 10
    time_passed
    make_html(stats)
  end

  def hug
    puts 'Залиште великого в спокої! я народжений правити смертними!.... хоча продовжуй, могутньому це подобається'
    @mood = 10
    time_passed
    make_html(stats)
  end

  def read
    puts 'скоро всі таємниці світу будуть для мене відкриті! *зловісний сміх* '
    @energy = 10
    @powers = 10
    @blood_lust = 5
    @intelligence = 10
    time_passed
    make_html(stats)
  end

  def watch_films
    puts 'Тони попкорну зникають за ротовими щупальцями величного '
    @mood = 10
    @intelligence = 10
    time_passed
    make_html(stats)
  end

  def help
    puts 'feed - нагодувати вашого всемогутнього душами нещасних 👻'
    puts 'poop - зводити вашого всемогутнього в туалет 💩'
    puts 'walking - сходити зі всемогутнім на прогулянку 🏕'
    puts 'sleep - вкласти всемогутнього поспатки 🛏'
    puts 'play - погратись з всемогутнім 🏀'
    puts 'sacrifice - принести жертву во славу всемогутньому 💀'
    puts 'sing - дати мікрофон і послухати його вокальні можливості 🎙'
    puts 'dance - ввімкнути музику і просто глянути на що він здатний в танці 🎵'
    puts 'bath - покупати всемогутнього 🚿'
    puts 'hug - обійняти всемогутне зло 🤼‍♂️'
    puts 'read - дати почитати всемогутньому знання втрачених цивілізацій 📕'
    puts 'watch_films - повеселити всемогутнього веселим фільмом 🎞'
  end

  def stats
    @stats = "\n"
    @stats << "#{@lives} lives 💙 \n"
    @stats << "#{@mood} настрій 😐 " "\n"
    @stats << "#{@stuff_in_belly} насиченість 👻 " "\n"
    @stats << "#{@stuff_in_intestine} бажання сходити в туалет 💩 " "\n"
    @stats << "#{@energy} енергія 🔋 " "\n"
    @stats << "#{@powers} сили ✨ " "\n"
    @stats << "#{@blood_lust} жага крові 🩸 " "\n"
    @stats << "#{@cleanness} чистота 🚿 " "\n"
    @stats << "#{@intelligence} інтелект 📕 " "\n"
    @stats 
  end

  private

  def hungry?
    @stuff_in_belly <= 3
  end

  def poops?
    @stuff_in_intestine >= 10
  end

  def depressed?
    @mood <= 3
  end

  def want_to_kill?
    @blood_lust >= 10
  end

  def time_passed
    if @mood > 1
      @mood - 1
    else
      puts 'Весели мене, смертний!'
    end

    if @energy > 1
      @energy - 1
    else
      puts 'Я так стомився ((((((('
    end

    if @powers > 1
      @powers - 1
    else
      puts 'Мої сили зникають як людські цивілізації'
    end

    if @blood_lust < 10
      @blood_lust + 1
    else
      puts 'Моя жага до крові росте! я скоро знищу людську цивілізацію!'
    end

    if @cleanness > 1
      @cleanness - 1
    else
      puts 'Я смержу як нікчемна людина!'
    end

    if @stuff_in_belly.positive?
      @stuff_in_belly -= 2
      @stuff_in_intestine += 1

    else
      if @aleep
        @asleep = false
        puts 'Всесильний прокинувся в гніві!'
      end
      puts " #{@name} Від шаленого голоду забуває про все хороше що ви для нього робили і знищує світ нікчемних людішек разом з вами"
      exit
    end

    if @stuff_in_intestine >= 10
      @stuff_in_intestine = 0
      puts 'Прибери за мною рештки змучених душ, смертний! '
    end

    puts 'Мені потрібна людська душа, щоб втамувати голод!' if hungry?

    puts '... давай зробимо вигляд що нічого не сталось і ти просто прибереш це' if poops?

    puts 'навіть сотні смертей не принесуть мені радість((((((' if depressed?

    puts 'Пора вбивати !' if want_to_kill?
  end
end

puts 'Введіть ім\я для великого Ктулху'
name = gets.chomp
cthulhu = Cthulhu.new(name)

command = gets.chomp
until command == 'exit'
  case command
  when 'help'
    cthulhu.help
  when 'feed'
    cthulhu.feed
  when 'poop'
    cthulhu.poop
  when 'walking'
    cthulhu.walking
  when 'sleep'
    cthulhu.sleep
  when 'play'
    cthulhu.play
  when 'sacrifice'
    cthulhu.sacrifice
  when 'sing'
    cthulhu.sing
  when 'dance'
    cthulhu.dance
  when 'bath'
    cthulhu.bath
  when 'hug'
    cthulhu.hug
  when 'read'
    cthulhu.read
  when 'watch_films'
    cthulhu.watch_films
  else
    puts 'Такої команди немає в списку, перевір будь ласка правопис '
  end
  command = gets.chomp
end
