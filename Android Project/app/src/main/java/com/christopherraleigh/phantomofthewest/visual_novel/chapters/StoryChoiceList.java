package com.christopherraleigh.phantomofthewest.visual_novel.chapters;

import android.content.Context;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.support.annotation.NonNull;
import android.support.v4.content.ContextCompat;

import com.christopherraleigh.phantomofthewest.visual_novel.IStoryChoice;
import com.christopherraleigh.phantomofthewest.visual_novel.IStoryChoiceList;
import com.christopherraleigh.phantomofthewest.voice_overs.IVoiceover;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;

/**
 * Created by christopherraleigh on 2016-04-15.
 */
public class StoryChoiceList implements IStoryChoiceList {
    private IVoiceover audioComponent;

    private List<IStoryChoice> choices;

    private int imageID;

    StoryChoiceList(int image, List<IStoryChoice> choices)
    {
        this(image, choices, null);
    }

    StoryChoiceList(int imageID, List<IStoryChoice> choices, IVoiceover audioComponent)
    {
        this.imageID = imageID;
        this.choices = choices;
        this.audioComponent = audioComponent;
    }

    @Override
    public Drawable getImage(Context c) {
        Drawable image = ContextCompat.getDrawable(c, imageID);
        removeAliasing(image);
        return image;
    }

    @Override
    public void playAudio() {
        if (audioComponent != null)
        {
            audioComponent.play();
        }
    }

    @Override
    public void add(int location, IStoryChoice object) {
        choices.add(location, object);
    }

    @Override
    public boolean add(IStoryChoice object) {
        return choices.add(object);
    }

    @Override
    public boolean addAll(int location, Collection<? extends IStoryChoice> collection) {
        return choices.addAll(location, collection);
    }

    @Override
    public boolean addAll(Collection<? extends IStoryChoice> collection) {
        return choices.addAll(collection);
    }

    @Override
    public void clear() {
        choices.clear();
    }

    @Override
    public boolean contains(Object object) {
        return choices.contains(object);
    }

    @Override
    public boolean containsAll(Collection<?> collection) {
        return choices.containsAll(collection);
    }

    @Override
    public IStoryChoice get(int location) {
        return choices.get(location);
    }

    @Override
    public int indexOf(Object object) {
        return choices.indexOf(object);
    }

    @Override
    public boolean isEmpty() {
        return choices.isEmpty();
    }

    @NonNull
    @Override
    public Iterator<IStoryChoice> iterator() {
        return choices.iterator();
    }

    @Override
    public int lastIndexOf(Object object) {
        return choices.lastIndexOf(object);
    }

    @Override
    public ListIterator<IStoryChoice> listIterator() {
        return choices.listIterator();
    }

    @NonNull
    @Override
    public ListIterator<IStoryChoice> listIterator(int location) {
        return choices.listIterator(location);
    }

    @Override
    public IStoryChoice remove(int location) {
        return choices.remove(location);
    }

    @Override
    public boolean remove(Object object) {
        return choices.remove(object);
    }

    @Override
    public boolean removeAll(Collection<?> collection) {
        return choices.removeAll(collection);
    }

    @Override
    public boolean retainAll(Collection<?> collection) {
        return choices.retainAll(collection);
    }

    @Override
    public IStoryChoice set(int location, IStoryChoice object) {
        return choices.set(location, object);
    }

    @Override
    public int size() {
        return choices.size();
    }

    @NonNull
    @Override
    public List<IStoryChoice> subList(int start, int end) {
        return choices.subList(start, end);
    }

    @NonNull
    @Override
    public Object[] toArray() {
        return choices.toArray();
    }

    @NonNull
    @Override
    public <T> T[] toArray(T[] array) {
        return choices.toArray(array);
    }

    private void removeAliasing(Drawable d) {
        if (d instanceof BitmapDrawable) {
            BitmapDrawable bd = (BitmapDrawable) d;
            bd.setFilterBitmap(false);
        }
    }
}
