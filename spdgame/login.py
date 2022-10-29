import pygame
import time
import random

pygame.init()

# Game Screen Width
display_width = 800
display_height = 600

# Colours
pink = (255, 128, 176)
peach = (255, 199, 199)
blue = (147, 153, 255)
teal = (169, 255, 253)
black = (0, 0, 0)
white = (255, 255, 255)
green = (0, 255, 171)

# Fonts
largeText = pygame.font.Font(None, 115)
font = pygame.font.Font(None, 25)

# Display Screen
gameDisplay = pygame.display.set_mode((display_width, display_height))
pygame.display.set_caption('pAInt')

# Game Clock
clock = pygame.time.Clock()

# Input Login
username = ""
password = ""
usernameRect = pygame.Rect(200, 250, 400, 75)
passwordRect = pygame.Rect(200, 350, 400, 75)

def game_intro():

    intro = True
    
    while intro:
        for event in pygame.event.get():
            if event.type == pygame.QUIT:
                pygame.quit()
                quit()
            if event.type == pygame.KEYDOWN:
                if event.key == pygame.K_BACKSPACE:
                    username = username[:-1]
                else:
                    username += event.unicode
        gameDisplay.fill(peach)
        titlebox = largeText.render("pAInt", True, black)
        text_rect_0 = titlebox.get_rect(center=(display_width/2, display_height/4))
        gameDisplay.blit(titlebox, text_rect_0)
        
        mouse = pygame.mouse.get_pos()
        # Button 0
        pygame.draw.rect(gameDisplay, white, usernameRect, 0, 10)
        pygame.draw.rect(gameDisplay, white, passwordRect, 0, 10)
        
        pygame.display.update()
        clock.tick(15)

game_intro()
pygame.quit()
quit()