package com.christopherraleigh.phantomofthewest.voice_overs;

import android.content.Context;
import android.speech.tts.TextToSpeech;

/**
 * Created by christopherraleigh on 2016-05-26.
 */
public class VoiceoverManager {
    private TextToSpeech synthesizer;
    private int utteranceNumber = 0;

    public VoiceoverManager(Context c) {
        synthesizer = new TextToSpeech(c, null);
    }

    public int speak(CharSequence text) {
        return synthesizer.speak(text, TextToSpeech.QUEUE_FLUSH, null, getUtteranceName());
    }

    public int stopSpeech() {
        return synthesizer.stop();
    }

    @Override
    public void finalize() throws Throwable {
        synthesizer.shutdown();
        super.finalize();
    }

    private String getUtteranceName() {
        String utteranceName = "utterance" + utteranceNumber;
        ++utteranceNumber;
        return utteranceName;
    }
}
