# Pixelated Problem Solver

This task was one of the easiest and straightforward ones I worked on. The goal was to extract text from an image or screenshot and then evaluate it to produce a meaningful output. For this, I primarily relied on the pytesseract library in Python, which is widely used for Optical Character Recognition (OCR).

First, I installed and set up the pytesseract library, ensuring it was properly linked with Tesseract OCR on my system. This allowed me to process images and extract text from them effectively. Using this library, I wrote a simple script to load an image or screenshot, process it through pytesseract, and extract the embedded text as a string.

Once the text was extracted, the next step was to evaluate its content. For this, I used Python's built-in eval() function, which evaluates a given string as a Python expression and returns the result. This made it particularly useful for processing mathematical expressions or other evaluative content extracted from the images.

For example, if the extracted text was a mathematical equation like "5 + 3", the eval() function would process it and return the output "8". This streamlined approach allowed me to efficiently extract and evaluate the content with minimal code.

Overall, this task helped me gain a deeper understanding of how OCR works and how to integrate it with Python’s powerful string evaluation capabilities. While the task was simple, it was also rewarding to see how quickly and accurately I could achieve the desired results using these tools.
