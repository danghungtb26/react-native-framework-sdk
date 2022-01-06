package com.rnproject2;

import android.os.Bundle;

import androidx.appcompat.app.AppCompatActivity;

import com.facebook.react.ReactActivity;
import com.facebook.react.ReactInstanceManager;
import com.facebook.react.ReactRootView;
import com.facebook.react.common.LifecycleState;
import com.facebook.react.modules.core.DefaultHardwareBackBtnHandler;
import com.facebook.react.shell.MainReactPackage;

public class MainActivity extends AppCompatActivity implements DefaultHardwareBackBtnHandler {
  private ReactRootView mReactRootView;
  private ReactInstanceManager mReactInstanceManager;

  @Override
  protected void onCreate(Bundle savedInstanceState) {
    super.onCreate(savedInstanceState);
    mReactRootView = new ReactRootView(this);
    mReactInstanceManager = ReactInstanceManager.builder()
            .setApplication(getApplication())
            .setBundleAssetName("index.android.bundle")
            .setJSMainModulePath("index")
            .addPackage(new MainReactPackage())
            .setUseDeveloperSupport(false)
            .setInitialLifecycleState(LifecycleState.BEFORE_CREATE)
            .build();
    // The string here (e.g. "MyReactNativeApp") has to match
    // the string in AppRegistry.registerComponent() in index.js
    mReactRootView.startReactApplication(mReactInstanceManager, "RNProject2", null);

    setContentView(mReactRootView);

  }

  @Override
  public void invokeDefaultOnBackPressed() {
    super.onBackPressed();
  }

  @Override
  protected void onPause() {
    super.onPause();

    if (mReactInstanceManager != null) {
      mReactInstanceManager.onHostPause(this);
    }
  }

  @Override
  protected void onResume() {
    super.onResume();

    if (mReactInstanceManager != null) {
      mReactInstanceManager.onHostResume(this, this);
    }
  }

  @Override
  protected void onDestroy() {
    super.onDestroy();

    if (mReactInstanceManager != null) {
      mReactInstanceManager.onHostDestroy(this);
    }
    if (mReactRootView != null) {
      mReactRootView.unmountReactApplication();
    }
  }
}
