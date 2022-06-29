from psychopy import data, event, visual, core, gui
import os
import csv
import sys
import random

event.globalKeys.clear()

kitten_display_time = 5
stroop_display_time = 2
feedback_time = .5
fixation_time = 1

response_keys = ['1','2']

stim_folder = '/Users/elizabethbeard/Desktop/cog_summer_workshops_2022/psychopy/stim'

# Tutorial 1 - Stimuli presentation
## GUI 
myDlg = gui.Dlg()
myDlg.addText('ADORABLE STUDY')
myDlg.addField('Participant Number:')
myDlg.addField('Group (A/B): ')
myDlg.addField('Fullscreen? (y/n): ')
myDlg.show()

ppt_number = int(myDlg.data[0])
group = myDlg.data[1]

if myDlg.data[2] == 'y':
    full_screen = True
elif myDlg.data[2] == 'n':
    full_screen = False
else:
    print('Invalid response. Please select [y] or [n].')

## Windows
win = visual.Window([800,600], monitor='testMonitor', units='deg', fullscr=full_screen, screen = 0)

task_instructions_text_1 = 'In this experiment, you will be shown pictures of kittens \n and then shown color names (red, green, blue) in different "print" colors.'
task_instructions_text_2 = 'You need to \n press 1 if the color name matches the "print" color \n press 2 if the name does not match the "print" color.'

task_instructions_1 = visual.TextStim(win, text=task_instructions_text_1, pos=(0,1), wrapWidth=20, color='white', height=1.2)
task_instructions_2 = visual.TextStim(win, text=task_instructions_text_2, pos=(0,1), wrapWidth=20, color='white', height=1.2)

task_instructions_1.draw()
win.flip()
core.wait(5)

task_instructions_2.draw()
win.flip()
core.wait(5)

# Tutorial 2 - Response collection
wait_for_task = visual.TextStim(win, text='Press space to begin task', pos=(0,1), color='white', height=1.2)

wait_for_task.draw()
win.flip()
event.waitKeys(keyList=['space'])

## Global Keys
event.globalKeys.add(key='x', func=core.quit)

# Tutorial 3 - Moving Pieces
## Trial Handler
trial_data = [r for r in csv.DictReader(open(os.path.join(stim_folder, 'trial_info.csv')))]
trials = data.TrialHandler(trial_data, method="random", nReps=1)
print(trials)

trials.extraInfo = {'id': ppt_number, 'group': group}
print(trials.extraInfo)

## Clocks
timer = core.Clock()
globalClock = core.Clock()

# Tutorial 4 - Putting it all together
## Trial Loops
fixation = visual.TextStim(win, text="+", height=2)
word = visual.TextStim(win, height=1.2, alignHoriz='center', alignVert='center')
colors = ['red', 'green', 'blue']

def adorable_task(trial_info, group):
    
    if group == 'A':
        cat_number = random.choice(['1','2', '3'])
        cat = visual.ImageStim(win, image=os.path.join(stim_folder, 'cat{}.png'.format(cat_number)), units='norm')
        
        cat_size = cat.size
        cat_resize = cat_size*.25
        
        cat.size = cat_resize
        
        timer.reset()
        
        while timer.getTime() < kitten_display_time:
            cat.draw()
            win.flip()
    
    if group == 'B':
        
        timer.reset()
        
        while timer.getTime < kitten_display_time:
            fixation.draw()
            win.flip()
    
    globalClock.reset()
    
    for trial in trials:
        
        timer.reset()
        event.clearEvents()
        trials.addData('trial_onset', globalClock.getTime())
        
        word.setText(trial['color'])
        
        if trial['congruent'] == 'Y':
            color = trial['color']
        else:
            random.shuffle(colors)
            
            if colors[0] == trial['color']:
                color = colors[1]
            else:
                color = colors[0]
        
        word.setColor(color)
        trials.addData('text_color', color)
        
        while timer.getTime() < stroop_display_time:
            word.draw()
            win.flip()
            
            response = event.getKeys(keyList=response_keys, timeStamped = globalClock)
            
            if len(response) > 0:
                resp_val = int(response[0][0])
                rt_onset = response[0][1]
                
                core.wait(feedback_time)
                break
            
            else:
                resp_val = 'NA'
                rt_onset = 'NA'
                
        trials.addData('resp', resp_val)
        trials.addData('rt_onset', rt_onset)
        
        timer.reset()
        
        while timer.getTime() < fixation_time:
            fixation.draw()
            win.flip()
            
    ## Saving out our data
    trials.saveAsWideText(fileName=os.path.join(stim_folder, '{}.csv'.format(ppt_number)), delim=',')

## Execute our experiment function
adorable_task(trials, group)