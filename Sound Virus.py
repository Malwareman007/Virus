from gtts import gTTS
import os

msg='Your are hacked'
language='en'

obj = gTTS(text=msg, lang=language, slow=False)

obj.save('Sound.mp4')

while True:
    os.system('mpg321 Sound.mp4')
