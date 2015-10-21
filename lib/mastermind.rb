require "./mastermind/version.rb"

module Mastermind
	require_relative "./mastermind/slots.rb"
	require_relative "./mastermind/player.rb"
	require_relative "./mastermind/board.rb"
	require_relative "./mastermind/core_extensions.rb"
	require_relative "./mastermind/game.rb"
	require_relative "./mastermind/computer_player.rb"
	require_relative "./mastermind/human_player.rb"
	x = Mastermind::Game.new
	x.game_setup
end