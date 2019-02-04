class GameController < ApplicationController
 
  def user_plays_scissors
    
    @comp_move = ["rock","paper","scissors"].sample
    
    if @comp_move == "rock"
    @image = "far fa-hand-rock fa-10x"  
    @outcome = "lost"
    @color = "alert-danger"
    elsif @comp_move == "paper"
    @image = "far fa-hand-paper fa-10x" 
    @outcome = "won"
    @color = "alert-success"
    else
    @image = "far fa-hand-scissors fa-10x" 
    @outcome = "tied"
    @color = "alert-warning"
    end
    
    render("game_templates/played_scissors.html.erb")
    
  end 
  
  def user_plays_paper
    
    @comp_move = ["rock","paper","scissors"].sample
    
    if @comp_move == "rock"
    @image = "far fa-hand-rock fa-10x"  
    @outcome = "won"
    @color = "alert-success"
    elsif @comp_move == "paper"
    @image = "far fa-hand-paper fa-10x" 
    @outcome = "tied"
    @color = "alert-warning"
    else
    @image = "far fa-hand-scissors fa-10x" 
    @outcome = "lost"
    @color = "alert-danger"
    end
    
    render("game_templates/played_paper.html.erb")
    
  end 
  
  def user_plays_rock
    
    @comp_move = ["rock","paper","scissors"].sample
      
    if @comp_move == "rock"
    @image = "far fa-hand-rock fa-10x"  
    @outcome = "tied"
    @color = "alert-warning"
    elsif @comp_move == "paper"
    @image = "far fa-hand-paper fa-10x" 
    @outcome = "lost"
    @color = "alert-danger"
    else
    @image = "far fa-hand-scissors fa-10x" 
    @outcome = "won"
    @color = "alert-success"
    end
      
    render("game_templates/played_rock.html.erb")
  
  end 
  
  def index
  
    render("game_templates/index.html.erb")
  
  end
end