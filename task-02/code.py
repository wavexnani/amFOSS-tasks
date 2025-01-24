from PIL import Image
import pytesseract 
image = Image.open("/Users/chandramouli/Desktop/real amFOSS-tasks/task-02/screenshot.png")
text = pytesseract.image_to_string(image)
val=eval(text.strip())
print(val)
