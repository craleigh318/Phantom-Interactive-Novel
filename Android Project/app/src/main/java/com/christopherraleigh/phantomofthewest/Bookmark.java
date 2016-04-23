package com.christopherraleigh.phantomofthewest;

import android.graphics.drawable.Drawable;

import com.christopherraleigh.phantomofthewest.visual_novel.IStoryChoice;
import com.christopherraleigh.phantomofthewest.visual_novel.IStoryChoiceList;
import com.christopherraleigh.phantomofthewest.visual_novel.PotWVN;

import java.lang.ref.WeakReference;
import java.util.Observable;
import java.util.Observer;

/**
 * Created by christopherraleigh on 2016-04-21.
 */
class Bookmark implements Observer {
    private IStoryChoiceList currentList = null;
    private int index = 0;
    private WeakReference<MainActivity> storyView;

    Bookmark(WeakReference<MainActivity> storyView) {
        this.storyView = storyView;
    }

    @Override
    public void update(Observable observable, Object data) {
        if (data instanceof PotWVN) {
            PotWVN vn = (PotWVN) data;
            currentList = vn.getCurrentChoices();
            listUpdated();
        }
    }

    void nextChoice() {
        int lastIndex = currentList.size() - 1;
        if (index >= lastIndex) {

            index = 0;
        } else {
            ++index;
        }
        choiceUpdated();
    }

    void previousChoice() {
        if (index <= 0) {
            int lastIndex = currentList.size() - 1;
            index = lastIndex;
        } else {
            --index;
        }
        choiceUpdated();
    }

    void selectChoice() {
        IStoryChoice currentChoice = getCurrentChoice();
        currentChoice.select();
    }

    private void choiceUpdated() {
        updateText();
    }

    private IStoryChoice getCurrentChoice() {
        if (currentList != null) {
            return currentList.get(index);
        }
        return null;
    }

    private void listUpdated() {
        updateButtons();
        updateImage();
        choiceUpdated();
    }

    private void updateButtons() {
        MainActivity strongStoryView = storyView.get();
        if (strongStoryView != null) {
            int numChoices;
            if (currentList != null) {
                numChoices = currentList.size();
            } else {
                numChoices = 0;
            }
            boolean willEnableContinue = (numChoices > 0);
            boolean willEnablePreviousAndNext = (numChoices > 1);
            strongStoryView.enableOKButton(willEnableContinue);
            strongStoryView.enableChoiceButtons(willEnablePreviousAndNext);
        }
    }

    private void updateImage() {
        MainActivity strongStoryView = storyView.get();
        if (strongStoryView != null) {
            Drawable newImage;
            if (currentList != null) {
                newImage = currentList.getImage(strongStoryView);
            } else {
                newImage = null;
            }
            strongStoryView.setImage(newImage);
        }
    }

    private void updateText() {
        MainActivity strongStoryView = storyView.get();
        if (strongStoryView != null) {
            IStoryChoice currentChoice = getCurrentChoice();
            CharSequence newText;
            if (currentChoice != null) {
                newText = currentChoice.getText(strongStoryView);
            } else {
                newText = "";
            }
            strongStoryView.setText(newText);
        }
    }
}
