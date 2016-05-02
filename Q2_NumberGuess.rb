#---------
# name: NumberGuess.rb
#
#
#
#----------------

class Screen

 def cls
   puts ("\n" * 30)
   puts "\a"
 end
 
 

 def pause
    STDIN.gets
 end

end

class Game

	@@gameguesshistory =  Hash.new()
	

	
	def display_greeting
		Console_Screen.cls
		print "\t\t Welcome to the Ruby Number Guessing Game!" +
		"\n\n\n\n\n\n\n\n\n\n\n\n\ Press Enter to " + 
		"continue."

		Console_Screen.pause
	end

	def display_instruction
		Console_Screen.cls
		puts "Instruction:\n\n"

		puts "This game randomly generates a number from 1 to 100 and "
		puts "challaenges you to identify it in as few guesses and possible "
	end

	def generate_number
		# Solution B - The value is made to 1000. This could be got as a input from the player on the difficulty level he wants to play.
		return randomNo = 1 + rand(1000)
	end

	def play_game(trynumber)
		number = generate_number
		
		@@gameguesshistory[trynumber] = 1
		loop do
			Console_Screen.cls
			puts "Try Number is #{trynumber} - No of Guesses is #{@@gameguesshistory[trynumber]}"
			print "\nEnter your guess and press the enter key: "

			reply = STDIN.gets
			reply.chop!
			reply = reply.to_i

			if reply < 1 or reply > 1000 then
				#Solution c - Provide the feed back to the user 
				print "The values should be in the range of 1 to 1000"
				Console_Screen.pause
				redo # redo the ciurrent iteration of the loop
			end
			
			
			if reply == number then
				Console_Screen.cls
				print "You have guessed the number! Press Enter to continue."
				Console_Screen.pause
				break
			elsif reply < number then
				Console_Screen.cls
				print "Your guess is too low! Press enter to continue."
				Console_Screen.pause
			elsif reply > number then
				Console_Screen.cls
				print "Your guess is too high! Press enter to continue."
				Console_Screen.pause
			end
			
			guesscount = @@gameguesshistory[trynumber] + 1
			
			#Solution D - Check if the number of Guesses is more than 10 and let know the user that he has lost the game.
			if guesscount > 10 then
				print "The number of Attempt is more than 10. - You lost the game"
				Console_Screen.pause
				break
			end
			
			@@gameguesshistory[trynumber] = guesscount
			

		end
			
	end

	def display_credits
		Console_Screen.cls
		puts "\t\t\Thanks you for playing the number game!!"
	end
	
	def startTracking(tries)
		@@gameguesshistory[tries] = 1
	end
	
	def displayTracking()
		puts "Here is your Guess History"
		for key in @@gameguesshistory.keys
			puts "Try Number #{key} = number of guesses is #{@@gameguesshistory[key]}" 
		end
	end

	$noRight = 0

	Console_Screen = Screen.new

	SQ = Game.new

	SQ.display_greeting

	answer = ""

	loop do
		Console_Screen.cls

		print "Are you ready to play the Ruby Number Guessing Game? (y/n): "

		answer = STDIN.gets

		answer.chop!

		break if answer == "y" || answer == "n"
	end

	if answer == "n"

		Console_Screen.cls

		puts "Perhaps anoher time.\n\n"

	else
		SQ.display_instruction

		nooftimes = 0
		loop do
		
			nooftimes = nooftimes + 1
			puts "No of times Played is = #{nooftimes}" 
			
			# Solution A - Start the Tracking - Used a Hash to keep track of Tracking - Hash is initialized to new key on each Try's.
			SQ.startTracking(nooftimes)
			
			# Solution A - Display the Play History
			SQ.displayTracking()
			
			SQ.play_game(nooftimes)
			
			

			Console_Screen.cls

			print "Would you like to play again? (y/n): "

			playAgain = STDIN.gets
			playAgain.chop!

			break if playAgain == "n"
		end

		SQ.display_credits

	end

end


