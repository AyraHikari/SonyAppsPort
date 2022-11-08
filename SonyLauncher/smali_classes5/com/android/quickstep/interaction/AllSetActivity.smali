.class public Lcom/android/quickstep/interaction/AllSetActivity;
.super Landroid/app/Activity;
.source "AllSetActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/interaction/AllSetActivity$BgDrawable;,
        Lcom/android/quickstep/interaction/AllSetActivity$SkipButtonAccessibilityDelegate;
    }
.end annotation


# static fields
.field private static final EXTRA_ACCENT_COLOR_DARK_MODE:Ljava/lang/String; = "suwColorAccentDark"

.field private static final EXTRA_ACCENT_COLOR_LIGHT_MODE:Ljava/lang/String; = "suwColorAccentLight"

.field private static final HINT_BOTTOM_FACTOR:F = 0.060000002f

.field private static final LOG_TAG:Ljava/lang/String; = "AllSetActivity"

.field private static final MAX_SWIPE_DURATION:I = 0x15e

.field private static final URI_SYSTEM_NAVIGATION_SETTING:Ljava/lang/String; = "#Intent;action=com.android.settings.SEARCH_RESULT_TRAMPOLINE;S.:settings:fragment_args_key=gesture_system_navigation_input_summary;S.:settings:show_fragment=com.android.settings.gestures.SystemNavigationGestureSettings;end"


# instance fields
.field private mAnimatedBackground:Lcom/airbnb/lottie/LottieAnimationView;

.field private mBackground:Lcom/android/quickstep/interaction/AllSetActivity$BgDrawable;

.field private mBackgroundAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private mBinder:Lcom/android/quickstep/TouchInteractionService$TISBinder;

.field private mContentView:Landroid/view/View;

.field private mLauncherStartAnim:Lcom/android/launcher3/anim/AnimatorPlaybackController;

.field private final mSwipeProgress:Lcom/android/quickstep/AnimatedFloat;

.field private mSwipeUpShift:F

.field private mTISBindHelper:Lcom/android/quickstep/util/TISBindHelper;

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method public static synthetic $r8$lambda$9G7bDMNxUgwT2l8qfhjrXz9Z8JA(Lcom/android/quickstep/interaction/AllSetActivity;Lcom/android/quickstep/TouchInteractionService$TISBinder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/interaction/AllSetActivity;->onTISConnected(Lcom/android/quickstep/TouchInteractionService$TISBinder;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Bqx6lMb35TP_nkgdJH0ePIgulkU(Lcom/android/quickstep/interaction/AllSetActivity;Lcom/android/quickstep/GestureState;)Lcom/android/quickstep/AnimatedFloat;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/interaction/AllSetActivity;->createSwipeUpProxy(Lcom/android/quickstep/GestureState;)Lcom/android/quickstep/AnimatedFloat;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$g_mjCpO0mz9E7i2NHlxRTLyYMyM(Lcom/android/quickstep/interaction/AllSetActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/interaction/AllSetActivity;->onSwipeProgressUpdate()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmVibrator(Lcom/android/quickstep/interaction/AllSetActivity;)Landroid/os/Vibrator;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/interaction/AllSetActivity;->mVibrator:Landroid/os/Vibrator;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetVibrationEffect(Lcom/android/quickstep/interaction/AllSetActivity;)Landroid/os/VibrationEffect;
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/interaction/AllSetActivity;->getVibrationEffect()Landroid/os/VibrationEffect;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mrunOnUiHelperThread(Lcom/android/quickstep/interaction/AllSetActivity;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/interaction/AllSetActivity;->runOnUiHelperThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 73
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 88
    new-instance v0, Lcom/android/quickstep/AnimatedFloat;

    new-instance v1, Lcom/android/quickstep/interaction/AllSetActivity$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/android/quickstep/interaction/AllSetActivity$$ExternalSyntheticLambda4;-><init>(Lcom/android/quickstep/interaction/AllSetActivity;)V

    invoke-direct {v0, v1}, Lcom/android/quickstep/AnimatedFloat;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/quickstep/interaction/AllSetActivity;->mSwipeProgress:Lcom/android/quickstep/AnimatedFloat;

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/quickstep/interaction/AllSetActivity;->mLauncherStartAnim:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    return-void
.end method

.method private clearBinderOverride()V
    .locals 2

    .line 219
    iget-object v0, p0, Lcom/android/quickstep/interaction/AllSetActivity;->mBinder:Lcom/android/quickstep/TouchInteractionService$TISBinder;

    if-eqz v0, :cond_0

    .line 220
    invoke-virtual {v0}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->getTaskbarManager()Lcom/android/launcher3/taskbar/TaskbarManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/taskbar/TaskbarManager;->setSetupUIVisible(Z)V

    .line 221
    iget-object v0, p0, Lcom/android/quickstep/interaction/AllSetActivity;->mBinder:Lcom/android/quickstep/TouchInteractionService$TISBinder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->setSwipeUpProxy(Ljava/util/function/Function;)V

    .line 222
    iget-object v0, p0, Lcom/android/quickstep/interaction/AllSetActivity;->mBinder:Lcom/android/quickstep/TouchInteractionService$TISBinder;

    invoke-virtual {v0, v1}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->setOverviewTargetChangeListener(Ljava/lang/Runnable;)V

    .line 224
    :cond_0
    return-void
.end method

.method private createSwipeUpProxy(Lcom/android/quickstep/GestureState;)Lcom/android/quickstep/AnimatedFloat;
    .locals 3
    .param p1, "state"    # Lcom/android/quickstep/GestureState;

    .line 237
    invoke-virtual {p1}, Lcom/android/quickstep/GestureState;->getHomeIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/quickstep/interaction/AllSetActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 238
    return-object v1

    .line 240
    :cond_0
    invoke-virtual {p1}, Lcom/android/quickstep/GestureState;->getRunningTaskId()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/quickstep/interaction/AllSetActivity;->getTaskId()I

    move-result v2

    if-eq v0, v2, :cond_1

    .line 241
    return-object v1

    .line 243
    :cond_1
    iget-object v0, p0, Lcom/android/quickstep/interaction/AllSetActivity;->mSwipeProgress:Lcom/android/quickstep/AnimatedFloat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/quickstep/AnimatedFloat;->updateValue(F)V

    .line 244
    iget-object v0, p0, Lcom/android/quickstep/interaction/AllSetActivity;->mSwipeProgress:Lcom/android/quickstep/AnimatedFloat;

    return-object v0
.end method

.method private getVibrationEffect()Landroid/os/VibrationEffect;
    .locals 4

    .line 187
    invoke-static {}, Landroid/os/VibrationEffect;->startComposition()Landroid/os/VibrationEffect$Composition;

    move-result-object v0

    .line 188
    const/4 v1, 0x2

    const/high16 v2, 0x3f800000    # 1.0f

    const/16 v3, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/VibrationEffect$Composition;->addPrimitive(IFI)Landroid/os/VibrationEffect$Composition;

    move-result-object v0

    .line 189
    invoke-virtual {v0}, Landroid/os/VibrationEffect$Composition;->compose()Landroid/os/VibrationEffect;

    move-result-object v0

    .line 187
    return-object v0
.end method

.method private onSwipeProgressUpdate()V
    .locals 9

    .line 248
    iget-object v0, p0, Lcom/android/quickstep/interaction/AllSetActivity;->mBackground:Lcom/android/quickstep/interaction/AllSetActivity$BgDrawable;

    iget-object v1, p0, Lcom/android/quickstep/interaction/AllSetActivity;->mSwipeProgress:Lcom/android/quickstep/AnimatedFloat;

    iget v1, v1, Lcom/android/quickstep/AnimatedFloat;->value:F

    invoke-virtual {v0, v1}, Lcom/android/quickstep/interaction/AllSetActivity$BgDrawable;->setProgress(F)V

    .line 249
    iget-object v0, p0, Lcom/android/quickstep/interaction/AllSetActivity;->mSwipeProgress:Lcom/android/quickstep/AnimatedFloat;

    iget v1, v0, Lcom/android/quickstep/AnimatedFloat;->value:F

    sget-object v6, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    const/4 v2, 0x0

    const v3, 0x3d75c290    # 0.060000002f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    invoke-static/range {v1 .. v6}, Lcom/android/launcher3/Utilities;->mapBoundToRange(FFFFFLandroid/view/animation/Interpolator;)F

    move-result v0

    .line 251
    .local v0, "alpha":F
    iget-object v1, p0, Lcom/android/quickstep/interaction/AllSetActivity;->mContentView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 252
    iget-object v1, p0, Lcom/android/quickstep/interaction/AllSetActivity;->mContentView:Landroid/view/View;

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v2, v0, v2

    iget v3, p0, Lcom/android/quickstep/interaction/AllSetActivity;->mSwipeUpShift:F

    mul-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 254
    iget-object v1, p0, Lcom/android/quickstep/interaction/AllSetActivity;->mLauncherStartAnim:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    if-nez v1, :cond_0

    .line 255
    iget-object v1, p0, Lcom/android/quickstep/interaction/AllSetActivity;->mBinder:Lcom/android/quickstep/TouchInteractionService$TISBinder;

    invoke-virtual {v1}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->getTaskbarManager()Lcom/android/launcher3/taskbar/TaskbarManager;

    move-result-object v1

    const/16 v2, 0x15e

    invoke-virtual {v1, v2}, Lcom/android/launcher3/taskbar/TaskbarManager;->createLauncherStartFromSuwAnim(I)Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object v1

    iput-object v1, p0, Lcom/android/quickstep/interaction/AllSetActivity;->mLauncherStartAnim:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    .line 258
    :cond_0
    iget-object v1, p0, Lcom/android/quickstep/interaction/AllSetActivity;->mLauncherStartAnim:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    if-eqz v1, :cond_1

    .line 259
    iget-object v2, p0, Lcom/android/quickstep/interaction/AllSetActivity;->mSwipeProgress:Lcom/android/quickstep/AnimatedFloat;

    iget v3, v2, Lcom/android/quickstep/AnimatedFloat;->value:F

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    sget-object v8, Lcom/android/launcher3/anim/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-static/range {v3 .. v8}, Lcom/android/launcher3/Utilities;->mapBoundToRange(FFFFFLandroid/view/animation/Interpolator;)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->setPlayFraction(F)V

    .line 263
    :cond_1
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_2

    .line 264
    iget-object v1, p0, Lcom/android/quickstep/interaction/AllSetActivity;->mAnimatedBackground:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieAnimationView;->pauseAnimation()V

    goto :goto_0

    .line 265
    :cond_2
    iget-object v1, p0, Lcom/android/quickstep/interaction/AllSetActivity;->mAnimatedBackground:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieAnimationView;->isAnimating()Z

    move-result v1

    if-nez v1, :cond_3

    .line 266
    iget-object v1, p0, Lcom/android/quickstep/interaction/AllSetActivity;->mAnimatedBackground:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieAnimationView;->resumeAnimation()V

    .line 268
    :cond_3
    :goto_0
    return-void
.end method

.method private onTISConnected(Lcom/android/quickstep/TouchInteractionService$TISBinder;)V
    .locals 2
    .param p1, "binder"    # Lcom/android/quickstep/TouchInteractionService$TISBinder;

    .line 202
    iput-object p1, p0, Lcom/android/quickstep/interaction/AllSetActivity;->mBinder:Lcom/android/quickstep/TouchInteractionService$TISBinder;

    .line 203
    invoke-virtual {p1}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->getTaskbarManager()Lcom/android/launcher3/taskbar/TaskbarManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/quickstep/interaction/AllSetActivity;->isResumed()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/taskbar/TaskbarManager;->setSetupUIVisible(Z)V

    .line 204
    iget-object v0, p0, Lcom/android/quickstep/interaction/AllSetActivity;->mBinder:Lcom/android/quickstep/TouchInteractionService$TISBinder;

    invoke-virtual {p0}, Lcom/android/quickstep/interaction/AllSetActivity;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/android/quickstep/interaction/AllSetActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/quickstep/interaction/AllSetActivity$$ExternalSyntheticLambda0;-><init>(Lcom/android/quickstep/interaction/AllSetActivity;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->setSwipeUpProxy(Ljava/util/function/Function;)V

    .line 205
    iget-object v0, p0, Lcom/android/quickstep/interaction/AllSetActivity;->mBinder:Lcom/android/quickstep/TouchInteractionService$TISBinder;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/quickstep/interaction/AllSetActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Lcom/android/quickstep/interaction/AllSetActivity$$ExternalSyntheticLambda1;-><init>(Lcom/android/quickstep/TouchInteractionService$TISBinder;)V

    invoke-virtual {v0, v1}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->setOverviewTargetChangeListener(Ljava/lang/Runnable;)V

    .line 206
    iget-object v0, p0, Lcom/android/quickstep/interaction/AllSetActivity;->mBinder:Lcom/android/quickstep/TouchInteractionService$TISBinder;

    invoke-virtual {v0}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->preloadOverviewForSUWAllSet()V

    .line 207
    return-void
.end method

.method private runOnUiHelperThread(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 147
    sget-object v0, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    .line 148
    return-void
.end method

.method private startBackgroundAnimation()V
    .locals 4

    .line 151
    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_S:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/quickstep/interaction/AllSetActivity;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x2

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/Vibrator;->areAllPrimitivesSupported([I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 153
    iget-object v0, p0, Lcom/android/quickstep/interaction/AllSetActivity;->mBackgroundAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    if-nez v0, :cond_0

    .line 154
    new-instance v0, Lcom/android/quickstep/interaction/AllSetActivity$1;

    invoke-direct {v0, p0}, Lcom/android/quickstep/interaction/AllSetActivity$1;-><init>(Lcom/android/quickstep/interaction/AllSetActivity;)V

    iput-object v0, p0, Lcom/android/quickstep/interaction/AllSetActivity;->mBackgroundAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/interaction/AllSetActivity;->mAnimatedBackground:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v1, p0, Lcom/android/quickstep/interaction/AllSetActivity;->mBackgroundAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 179
    :cond_1
    iget-object v0, p0, Lcom/android/quickstep/interaction/AllSetActivity;->mAnimatedBackground:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 180
    return-void
.end method


# virtual methods
.method synthetic lambda$onCreate$0$com-android-quickstep-interaction-AllSetActivity(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 130
    :try_start_0
    const-string v0, "#Intent;action=com.android.settings.SEARCH_RESULT_TRAMPOLINE;S.:settings:fragment_args_key=gesture_system_navigation_input_summary;S.:settings:show_fragment=com.android.settings.gestures.SystemNavigationGestureSettings;end"

    .line 131
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 130
    invoke-virtual {p0, v0, v1}, Lcom/android/quickstep/interaction/AllSetActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    goto :goto_0

    .line 132
    :catch_0
    move-exception v0

    .line 133
    .local v0, "e":Ljava/net/URISyntaxException;
    const-string v1, "AllSetActivity"

    const-string v2, "Failed to parse system nav settings intent"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 135
    .end local v0    # "e":Ljava/net/URISyntaxException;
    :goto_0
    invoke-virtual {p0}, Lcom/android/quickstep/interaction/AllSetActivity;->finish()V

    .line 136
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 101
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 102
    sget v0, Lcom/android/launcher3/R$layout;->activity_allset:I

    invoke-virtual {p0, v0}, Lcom/android/quickstep/interaction/AllSetActivity;->setContentView(I)V

    .line 103
    sget v0, Lcom/android/launcher3/R$id;->root_view:I

    invoke-virtual {p0, v0}, Lcom/android/quickstep/interaction/AllSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x700

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 107
    invoke-virtual {p0}, Lcom/android/quickstep/interaction/AllSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    .line 108
    .local v0, "mode":I
    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 109
    .local v1, "isDarkTheme":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/quickstep/interaction/AllSetActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 110
    if-eqz v1, :cond_1

    const-string v3, "suwColorAccentDark"

    goto :goto_1

    :cond_1
    const-string v3, "suwColorAccentLight"

    .line 111
    :goto_1
    if-eqz v1, :cond_2

    const/4 v4, -0x1

    goto :goto_2

    :cond_2
    const/high16 v4, -0x1000000

    .line 109
    :goto_2
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 113
    .local v2, "accentColor":I
    sget v3, Lcom/android/launcher3/R$id;->icon:I

    invoke-virtual {p0, v3}, Lcom/android/quickstep/interaction/AllSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 115
    new-instance v3, Lcom/android/quickstep/interaction/AllSetActivity$BgDrawable;

    invoke-direct {v3, p0}, Lcom/android/quickstep/interaction/AllSetActivity$BgDrawable;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/quickstep/interaction/AllSetActivity;->mBackground:Lcom/android/quickstep/interaction/AllSetActivity$BgDrawable;

    .line 116
    sget v3, Lcom/android/launcher3/R$id;->root_view:I

    invoke-virtual {p0, v3}, Lcom/android/quickstep/interaction/AllSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/android/quickstep/interaction/AllSetActivity;->mBackground:Lcom/android/quickstep/interaction/AllSetActivity$BgDrawable;

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 117
    sget v3, Lcom/android/launcher3/R$id;->content_view:I

    invoke-virtual {p0, v3}, Lcom/android/quickstep/interaction/AllSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/quickstep/interaction/AllSetActivity;->mContentView:Landroid/view/View;

    .line 118
    invoke-virtual {p0}, Lcom/android/quickstep/interaction/AllSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/launcher3/R$dimen;->allset_swipe_up_shift:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    iput v3, p0, Lcom/android/quickstep/interaction/AllSetActivity;->mSwipeUpShift:F

    .line 120
    sget-object v3, Lcom/android/launcher3/InvariantDeviceProfile;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p0}, Lcom/android/quickstep/interaction/AllSetActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/InvariantDeviceProfile;

    .line 121
    invoke-virtual {v3, p0}, Lcom/android/launcher3/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lcom/android/launcher3/DeviceProfile;

    move-result-object v3

    iget-boolean v3, v3, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    .line 122
    .local v3, "isTablet":Z
    sget v4, Lcom/android/launcher3/R$id;->subtitle:I

    invoke-virtual {p0, v4}, Lcom/android/quickstep/interaction/AllSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 123
    .local v4, "subtitle":Landroid/widget/TextView;
    if-eqz v3, :cond_3

    .line 124
    sget v5, Lcom/android/launcher3/R$string;->allset_description_tablet:I

    goto :goto_3

    :cond_3
    sget v5, Lcom/android/launcher3/R$string;->allset_description:I

    .line 123
    :goto_3
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 126
    sget v5, Lcom/android/launcher3/R$id;->navigation_settings:I

    invoke-virtual {p0, v5}, Lcom/android/quickstep/interaction/AllSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 127
    .local v5, "tv":Landroid/widget/TextView;
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 128
    new-instance v6, Lcom/android/quickstep/interaction/AllSetActivity$$ExternalSyntheticLambda2;

    invoke-direct {v6, p0}, Lcom/android/quickstep/interaction/AllSetActivity$$ExternalSyntheticLambda2;-><init>(Lcom/android/quickstep/interaction/AllSetActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    sget v6, Lcom/android/launcher3/R$id;->hint:I

    invoke-virtual {p0, v6}, Lcom/android/quickstep/interaction/AllSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    new-instance v7, Lcom/android/quickstep/interaction/AllSetActivity$SkipButtonAccessibilityDelegate;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Lcom/android/quickstep/interaction/AllSetActivity$SkipButtonAccessibilityDelegate;-><init>(Lcom/android/quickstep/interaction/AllSetActivity;Lcom/android/quickstep/interaction/AllSetActivity$SkipButtonAccessibilityDelegate-IA;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 139
    new-instance v6, Lcom/android/quickstep/util/TISBindHelper;

    new-instance v7, Lcom/android/quickstep/interaction/AllSetActivity$$ExternalSyntheticLambda3;

    invoke-direct {v7, p0}, Lcom/android/quickstep/interaction/AllSetActivity$$ExternalSyntheticLambda3;-><init>(Lcom/android/quickstep/interaction/AllSetActivity;)V

    invoke-direct {v6, p0, v7}, Lcom/android/quickstep/util/TISBindHelper;-><init>(Landroid/content/Context;Ljava/util/function/Consumer;)V

    iput-object v6, p0, Lcom/android/quickstep/interaction/AllSetActivity;->mTISBindHelper:Lcom/android/quickstep/util/TISBindHelper;

    .line 141
    const-class v6, Landroid/os/Vibrator;

    invoke-virtual {p0, v6}, Lcom/android/quickstep/interaction/AllSetActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Vibrator;

    iput-object v6, p0, Lcom/android/quickstep/interaction/AllSetActivity;->mVibrator:Landroid/os/Vibrator;

    .line 142
    sget v6, Lcom/android/launcher3/R$id;->animated_background:I

    invoke-virtual {p0, v6}, Lcom/android/quickstep/interaction/AllSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v6, p0, Lcom/android/quickstep/interaction/AllSetActivity;->mAnimatedBackground:Lcom/airbnb/lottie/LottieAnimationView;

    .line 143
    invoke-direct {p0}, Lcom/android/quickstep/interaction/AllSetActivity;->startBackgroundAnimation()V

    .line 144
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 228
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 229
    iget-object v0, p0, Lcom/android/quickstep/interaction/AllSetActivity;->mTISBindHelper:Lcom/android/quickstep/util/TISBindHelper;

    invoke-virtual {v0}, Lcom/android/quickstep/util/TISBindHelper;->onDestroy()V

    .line 230
    invoke-direct {p0}, Lcom/android/quickstep/interaction/AllSetActivity;->clearBinderOverride()V

    .line 231
    iget-object v0, p0, Lcom/android/quickstep/interaction/AllSetActivity;->mBackgroundAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    if-eqz v0, :cond_0

    .line 232
    iget-object v1, p0, Lcom/android/quickstep/interaction/AllSetActivity;->mAnimatedBackground:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->removeAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 234
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 211
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 212
    invoke-direct {p0}, Lcom/android/quickstep/interaction/AllSetActivity;->clearBinderOverride()V

    .line 213
    iget-object v0, p0, Lcom/android/quickstep/interaction/AllSetActivity;->mSwipeProgress:Lcom/android/quickstep/AnimatedFloat;

    iget v0, v0, Lcom/android/quickstep/AnimatedFloat;->value:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 214
    invoke-virtual {p0}, Lcom/android/quickstep/interaction/AllSetActivity;->finishAndRemoveTask()V

    .line 216
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 194
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 195
    iget-object v0, p0, Lcom/android/quickstep/interaction/AllSetActivity;->mBinder:Lcom/android/quickstep/TouchInteractionService$TISBinder;

    if-eqz v0, :cond_0

    .line 196
    invoke-virtual {v0}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->getTaskbarManager()Lcom/android/launcher3/taskbar/TaskbarManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/taskbar/TaskbarManager;->setSetupUIVisible(Z)V

    .line 197
    iget-object v0, p0, Lcom/android/quickstep/interaction/AllSetActivity;->mBinder:Lcom/android/quickstep/TouchInteractionService$TISBinder;

    new-instance v1, Lcom/android/quickstep/interaction/AllSetActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/quickstep/interaction/AllSetActivity$$ExternalSyntheticLambda0;-><init>(Lcom/android/quickstep/interaction/AllSetActivity;)V

    invoke-virtual {v0, v1}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->setSwipeUpProxy(Ljava/util/function/Function;)V

    .line 199
    :cond_0
    return-void
.end method
