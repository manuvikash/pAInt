import pygame as pg
import random





class Interface:
    def __init__(self, xdim, ydim):
        self.xdim = xdim
        self.ydim = ydim
        self.drawing = False
        self.last_pos = None
        self.w = 10
        self.drawcolor = (255, 255, 255)

    def init(self):
        global screen
        global prompt
        f = open("labels.txt","r")
        labels = f.readlines()
        f.close()
        prompt = random.choice(labels).capitalize().replace('_', ' ')
        pg.init()
        screen = pg.display.set_mode((self.xdim,self.ydim))
        bgcolor = (255,255,255)
        screen.fill(bgcolor)
        pg.font.init()
        my_font = pg.font.SysFont('Comic Sans MS', 25)
        text_surface = my_font.render(prompt[0:len(prompt)-1], False, (0,0,0))
        screen.blit(text_surface, (350,10))
        pg.draw.rect(screen, (0,0,0), pg.Rect(50, 50, 700, 700))
        #create submit button
        pg.draw.rect(screen, (128,128,128), pg.Rect(350, 750, 100, 50))
        my_font = pg.font.SysFont('Comic Sans MS', 25)
        text_surface = my_font.render("Submit", False, (255,255,255))
        screen.blit(text_surface, (360,760))
        pg.display.flip()


        self.mainloop()
    
    def draw(self,event):
        if event.type == pg.MOUSEMOTION:
            if (self.drawing):
                mouse_position = pg.mouse.get_pos()
                if self.last_pos is not None:
                    pg.draw.line(screen, self.drawcolor, self.last_pos, mouse_position, self.w)
                self.last_pos = mouse_position
        elif event.type == pg.MOUSEBUTTONUP:
            mouse_position = (0, 0)
            self.drawing = False
            self.last_pos = None
        elif event.type == pg.MOUSEBUTTONDOWN:
            self.drawing = True
        #quit is submit is pressed
        if event.type == pg.MOUSEBUTTONDOWN:
            if 350 <= event.pos[0] <= 450 and 750 <= event.pos[1] <= 800:
                pg.quit()
                quit()
    
    
    def mainloop(self):
        global screen
    
        loop = 1
        while loop:
            # checks every user interaction in this list
            for event in pg.event.get():
                if event.type == pg.MOUSEBUTTONDOWN:
                    if 350 <= event.pos[0] <= 450 and 750 <= event.pos[1] <= 800:
                        pg.image.save(screen, "image.png")
                        return

                if event.type == pg.QUIT:
                    loop = 0
                if event.type == pg.KEYDOWN:
                    if event.key == pg.K_r:
                        self.init()
                self.draw(event)
            pg.display.flip()
        pg.quit()

