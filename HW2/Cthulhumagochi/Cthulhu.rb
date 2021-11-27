class Cthulhu
	
	def initialize name
		@name = name
		@asleep = false
		@lives = 10
		@mood = 10
		@stuffInBelly = 10
		@stuffInIntestine = 0
		@energy = 10
		@powers = 5
		@bloodLust = 5
		@cleanness = 10
		@intelligence = 1
		
		puts @name + ' Народжений!'
		puts Time.new.to_s + ' дата початку кінця'
		puts 'Для ознайомлення з можливостями контактування з ' + @name + ' введи help'
		
	end
	
	
	def feed
		puts 'Поглинає душі нещасних і набирається сил'
		@stuffInBelly = 10
		@energy = 10
		@powers = 10
		timePassed
	end
	
	def poop
		puts 'пакакаль'
		@stuffInIntestine = 0
		@mood = 10
		@cleanness = 5
		timePassed
	end
	
	def walking
		puts ' *Злий сміх наповнює простір* '
		@energy = 5
		@mood = 10
		@bloodLust = 2
		timePassed
	end
	
	def sleep
		puts '...Zzzzzzzzzzz...'
		@asleep = true

			if @asleep
				timePassed				
			end
			
			if @asleep
				@energy = 10
			end
		
			if @asleep			
				@asleep = false 
			end
			puts 'Набарвшись темних сил ' + @name + ' знову готовий до дивовижних пригод'
	end
	
	def play
		puts ' *Злий сміх наповнює простір* '
		@lives = 10
		@mood = 10
		timePassed
	end
	
	def sacrifice
		puts 'Приносимо жертви во славу ' + @name
		@bloodLust = 2
		@powers = 10
		timePassed		
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
		timePassed		
	end
	
	def dance
		puts 'Весело махає своїми тентаклями під хіти поплавського'
		@mood = 10
		@cleanness = 5
		@intelligence = 1
		timePassed		
	end
	
	def bath
		puts 'весело булькає і грається каченятком'
		@cleanness = 10
		timePassed
	end
	
	def hug
		puts 'Залиште великого в спокої! я народжений правити смертними!.... хоча продовжуй, могутньому це подобається'
		@mood = 10
		timePassed
	end
	
	
	def read
		puts 'скоро всі таємниці світу будуть для мене відкриті! *зловісний сміх* '
		@energy = 10
		@powers = 10
		@bloodLust = 5
		@intelligence = 10
		timePassed		
	end
	
	def watchFilms
		puts 'Тони попкорну зникають за ротовими щупальцями величного '
		@mood = 10
		@intelligence = 10
	end
	
	def help
		puts 'feed - нагодувати вашого всемогутнього душами нещасних'
		puts 'poop - зводити вашого всемогутнього в туалет'
		puts 'walking - сходити зі всемогутнім на прогулянку '
		puts 'sleep - вкласти всемогутнього поспатки'
		puts 'play - погратись з всемогутнім'
		puts 'sacrifice - принести жертву во славу всемогутньому'
		puts 'sing - дати мікрофон і послухати його вокальні можливості '
		puts 'dance - ввімкнути музику і просто глянути на що він здатний в танці '
		puts 'bath - покупати всемогутнього'
		puts 'hug - обійняти всемогутне зло'
		puts 'read - дати почитати всемогутньому знання втрачених цивілізацій'
		puts 'watchFilms - повеселити всемогутнього веселим фільмом'
		puts 'stats - показати стан вашого всемогутнього'
	end
	
	def stats
		puts @lives.to_s + ' lives'
		puts @mood.to_s + ' настрій'
		puts @stuffInBelly.to_s + ' насиченість'
		puts @stuffInIntestine.to_s + ' бажання сходити в туалет'
		puts @energy.to_s + ' енергія'
		puts @powers.to_s + ' сили'
		puts @bloodLust.to_s + ' жага крові'
		puts @cleanness.to_s + ' чистота'
		puts @intelligence.to_s + ' інтелект'
	end
	
	
	
	
	private
	
	def hungry?
		@stuffInBelly <= 3
	end
	
	def poops?
		@stuffInIntestine >= 10
	end
	
	def depressed?
		@mood <= 3
	end
	
	def wantToKill?
		@bloodLust >= 10
	end
	
	
	
	def timePassed
		if @mood  > 1
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
		
		if @bloodLust < 10
			@bloodLust + 1
		else
			puts 'Моя жага до крові росте! я скоро знищу людську цивілізацію!'
		end
		
		if @cleanness > 1				
			@cleanness - 1
		else
			puts 'Я смержу як нікчемна людина!'
		end
		
			
		if @stuffInBelly > 0
			@stuffInBelly     = @stuffInBelly     - 2
			@stuffInIntestine = @stuffInIntestine + 1
			
		else
			if @aleep
				@asleep = false
				puts 'Всесильний прокинувся в гніві!'
			end
			puts  @name + ' Від шаленого голоду забуває про все хороше що ви для нього робили і знищує світ нікчемних людішек разом з вами'
			exit
		end
		
		if @stuffInIntestine >= 10
			@stuffInIntestine = 0
			puts 'Прибери за мною рештки змучених душ, смертний! '
		end
		
		if hungry?
			puts 'Мені потрібна людська душа, щоб втамувати голод!'
		end
		
		if poops?
			puts '... давай зробимо вигляд що нічого не сталось і ти просто прибереш це'
		end
		
		if depressed?
			puts 'навіть сотні смертей не принесуть мені радість(((((('
		end
		
		if wantToKill?
			puts 'Пора вбивати !'
		end			
			
	# timePassed
	end

end

puts 'Введіть ім\я для великого Ктулху'
name = gets.chomp
cthulhu = Cthulhu.new(name)


command  = gets.chomp
until command  == 'exit'do
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
	when 'watchFilms'
		cthulhu.watchFilms
	when 'stats'
		cthulhu.stats
	else
		puts 'Такої команди немає в списку, перевір будь ласка правопис '
	end
	command  = gets.chomp
end

	
	
