"""
===============================================================================
ENGR 13300 Fall 2021

Program Description
   searches the text for a given phrase
   by multiple for loops, it truncates the end of the phrase
   then is take out all the commas in the senetence
   then searches the word

Assignment Information
    Assignment:     Ind HW7 - PY 4
    Author:         Maximilian Drach, mdrach@purdue.edu
    
                    
    Team ID:        LC5 - 07
    
Contributor:    Name, login@purdue [repeat for each]
    My contributor(s) helped me:
    [ ] understand the assignment expectations without
        telling me how they will approach it.
    [ ] understand different ways to think about a solution
        without helping me plan my solution.
    [ ] think through the meaning of a specific error or
        bug present in my code without looking at my code.
    Note that if you helped somebody else with their code, you
    have to list that person as a contributor here as well.

ACADEMIC INTEGRITY STATEMENT
I have not used source code obtained from any other unauthorized
source, either modified or unmodified. Neither have I provided
access to my code to another. The project I am submitting
is my own original work.
===============================================================================
"""

def end_of_puntuation(text):
    for i in range(len(text)):
        #gets the end of the lines of each sentence
        chart = text[i][-2:-1]
        
        #test is the end of each sentence has punctuation or not
        if(chart.isalnum() == False):
            #takes off the punctuation
            text[i] = text[i][0:len(text[i])-2]
        else:
            text[i] = text[i][0:len(text[i])-1]
    
    for i in range(len(text)):
        #this then splits up the list of text, by the spaces
        text[i] = text[i].split()  
    
    return text

def internal_separator(list_text):
    for i in range(len(list_text)):
        for j in range(len(list_text[i])):
            #this truncates the , or . if they are in the middle of a sentence
            if((list_text[i][j][-1] == ',') or (list_text[i][j][-1] == '.')):
                list_text[i][j] = list_text[i][j][0:-1]
    return list_text



def word_matcher(phrase, list_text):
    word_count = 0
    checker = 0
    for i in range(len(list_text)):
        for j in range(len(list_text[i])):
            #counts the word in the document
            word_count = word_count + 1
            #checks if the pharases match each other
            if(list_text[i][j].lower() == phrase.lower()):
                #counts the phrase ammount of time it appears
                checker = checker + 1
                
    return checker, word_count

def main():

    name_of_file = input('Enter the filename of the text file: ')
    word = input('Enter the search word: ')
    file = open(name_of_file, 'r')
    text = file.readlines()
    
    text = end_of_puntuation(text)
    text = internal_separator(text)
    search_count, text_word_count = word_matcher(word, text)
    word_precentage = (search_count/text_word_count)*100
    file.close()
    print(f'The word "{word}" appears {search_count} out of {text_word_count} words or {word_precentage:.2f}% of the time.')
    
if __name__ == '__main__':
    main()
    
    

