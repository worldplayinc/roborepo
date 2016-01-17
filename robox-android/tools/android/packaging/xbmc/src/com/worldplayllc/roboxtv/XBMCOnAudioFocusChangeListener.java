package com.worldplayllc.roboxtv;

import android.media.AudioManager.OnAudioFocusChangeListener;
import android.util.Log;

public class XBMCOnAudioFocusChangeListener implements OnAudioFocusChangeListener
{
  native void _onAudioFocusChange(int focusChange);

  @Override
  public void onAudioFocusChange(int focusChange)
  {
    _onAudioFocusChange(focusChange);

  }
}
