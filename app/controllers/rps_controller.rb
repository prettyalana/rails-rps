class RpsController < ApplicationController
  def homepage
    render({:template => "game_templates/homepage"})
  end
  def play_rock

    moves = ["rock", "paper", "scissors"]

    @comp_move = moves.sample
    
    if @comp_move == "rock"
      @outcome = "tied"
    elsif @comp_move == "paper"
      @outcome = "lost"
    else @comp_move == "scissors"
      @outcome = "won"
    end

    render({:template => "game_templates/play_rock"})
  end
  def play_paper
    
    moves = ["rock", "paper", "scissors"]
  
    @comp_move = moves.sample
  
    if @comp_move == "rock"
      @outcome = "won"
    elsif @comp_move == "paper"
      @outcome = "tied"
    else @comp_move == "scissors"
      @outcome = "lost"
    end

    render({:template => "game_templates/play_paper"})
  end
  def play_scissors

    moves = ["rock", "paper", "scissors"]
  
    @comp_move = moves.sample
  
    if @comp_move == "rock"
      @outcome = "lost"
    elsif @comp_move == "paper"
      @outcome = "won"
    else @comp_move == "scissors"
      @outcome = "tied"
    end
    
    render({:template => "game_templates/play_scissors"})
  end
end


  
  
  

  
