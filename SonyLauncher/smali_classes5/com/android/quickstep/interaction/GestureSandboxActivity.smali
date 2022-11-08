.class public Lcom/android/quickstep/interaction/GestureSandboxActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "GestureSandboxActivity.java"


# static fields
.field private static final KEY_CURRENT_STEP:Ljava/lang/String; = "current_step"

.field private static final KEY_GESTURE_COMPLETE:Ljava/lang/String; = "gesture_complete"

.field private static final KEY_TUTORIAL_STEPS:Ljava/lang/String; = "tutorial_steps"


# instance fields
.field private mBinder:Lcom/android/quickstep/TouchInteractionService$TISBinder;

.field private mCurrentStep:I

.field private mCurrentTutorialStep:Lcom/android/quickstep/interaction/TutorialController$TutorialType;

.field private mFragment:Lcom/android/quickstep/interaction/TutorialFragment;

.field private mNumSteps:I

.field private mSharedPrefs:Landroid/content/SharedPreferences;

.field private mStatsLogManager:Lcom/android/launcher3/logging/StatsLogManager;

.field private mTISBindHelper:Lcom/android/quickstep/util/TISBindHelper;

.field private mTutorialSteps:[Lcom/android/quickstep/interaction/TutorialController$TutorialType;


# direct methods
.method public static synthetic $r8$lambda$MLfEr6VbCdzMtr9UZ7ONzOXK98Y(Lcom/android/quickstep/interaction/GestureSandboxActivity;Lcom/android/quickstep/TouchInteractionService$TISBinder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/interaction/GestureSandboxActivity;->onTISConnected(Lcom/android/quickstep/TouchInteractionService$TISBinder;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    return-void
.end method

.method private disableSystemGestures()V
    .locals 8

    .line 211
    invoke-virtual {p0}, Lcom/android/quickstep/interaction/GestureSandboxActivity;->getDisplay()Landroid/view/Display;

    move-result-object v0

    .line 212
    .local v0, "display":Landroid/view/Display;
    if-eqz v0, :cond_0

    .line 213
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 214
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 215
    invoke-virtual {p0}, Lcom/android/quickstep/interaction/GestureSandboxActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/graphics/Rect;

    new-instance v4, Landroid/graphics/Rect;

    iget v5, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v6, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    const/4 v7, 0x0

    invoke-direct {v4, v7, v7, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v4, v3, v7

    .line 216
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 215
    invoke-virtual {v2, v3}, Landroid/view/Window;->setSystemGestureExclusionRects(Ljava/util/List;)V

    .line 218
    .end local v1    # "metrics":Landroid/util/DisplayMetrics;
    :cond_0
    return-void
.end method

.method private getTutorialStepNames()[Ljava/lang/String;
    .locals 8

    .line 152
    iget-object v0, p0, Lcom/android/quickstep/interaction/GestureSandboxActivity;->mTutorialSteps:[Lcom/android/quickstep/interaction/TutorialController$TutorialType;

    array-length v1, v0

    new-array v1, v1, [Ljava/lang/String;

    .line 154
    .local v1, "tutorialStepNames":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 155
    .local v2, "i":I
    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v0, v4

    .line 156
    .local v5, "tutorialStep":Lcom/android/quickstep/interaction/TutorialController$TutorialType;
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "i":I
    .local v6, "i":I
    invoke-virtual {v5}, Lcom/android/quickstep/interaction/TutorialController$TutorialType;->name()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v2

    .line 155
    .end local v5    # "tutorialStep":Lcom/android/quickstep/interaction/TutorialController$TutorialType;
    add-int/lit8 v4, v4, 0x1

    move v2, v6

    goto :goto_0

    .line 159
    .end local v6    # "i":I
    .restart local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method private getTutorialSteps(Landroid/os/Bundle;)[Lcom/android/quickstep/interaction/TutorialController$TutorialType;
    .locals 8
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 163
    const/4 v0, 0x1

    new-array v1, v0, [Lcom/android/quickstep/interaction/TutorialController$TutorialType;

    sget-object v2, Lcom/android/quickstep/interaction/TutorialController$TutorialType;->BACK_NAVIGATION:Lcom/android/quickstep/interaction/TutorialController$TutorialType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 164
    .local v1, "defaultSteps":[Lcom/android/quickstep/interaction/TutorialController$TutorialType;
    iput v0, p0, Lcom/android/quickstep/interaction/GestureSandboxActivity;->mCurrentStep:I

    .line 165
    iput v0, p0, Lcom/android/quickstep/interaction/GestureSandboxActivity;->mNumSteps:I

    .line 167
    if-eqz p1, :cond_6

    const-string v2, "tutorial_steps"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_3

    .line 171
    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 172
    .local v2, "savedSteps":Ljava/lang/Object;
    const/4 v3, -0x1

    const-string v4, "current_step"

    invoke-virtual {p1, v4, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 175
    .local v3, "currentStep":I
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 176
    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 177
    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .local v4, "savedStepsNames":[Ljava/lang/String;
    :goto_0
    goto :goto_1

    .line 178
    .end local v4    # "savedStepsNames":[Ljava/lang/String;
    :cond_2
    instance-of v4, v2, [Ljava/lang/String;

    if-eqz v4, :cond_5

    .line 179
    move-object v4, v2

    check-cast v4, [Ljava/lang/String;

    .line 184
    .restart local v4    # "savedStepsNames":[Ljava/lang/String;
    :goto_1
    if-nez v4, :cond_3

    .line 185
    return-object v1

    .line 188
    :cond_3
    array-length v5, v4

    new-array v5, v5, [Lcom/android/quickstep/interaction/TutorialController$TutorialType;

    .line 189
    .local v5, "tutorialSteps":[Lcom/android/quickstep/interaction/TutorialController$TutorialType;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    array-length v7, v4

    if-ge v6, v7, :cond_4

    .line 190
    aget-object v7, v4, v6

    invoke-static {v7}, Lcom/android/quickstep/interaction/TutorialController$TutorialType;->valueOf(Ljava/lang/String;)Lcom/android/quickstep/interaction/TutorialController$TutorialType;

    move-result-object v7

    aput-object v7, v5, v6

    .line 189
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 193
    .end local v6    # "i":I
    :cond_4
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/quickstep/interaction/GestureSandboxActivity;->mCurrentStep:I

    .line 194
    array-length v0, v5

    iput v0, p0, Lcom/android/quickstep/interaction/GestureSandboxActivity;->mNumSteps:I

    .line 196
    return-object v5

    .line 181
    .end local v4    # "savedStepsNames":[Ljava/lang/String;
    .end local v5    # "tutorialSteps":[Lcom/android/quickstep/interaction/TutorialController$TutorialType;
    :cond_5
    return-object v1

    .line 168
    .end local v2    # "savedSteps":Ljava/lang/Object;
    .end local v3    # "currentStep":I
    :cond_6
    :goto_3
    return-object v1
.end method

.method private hideSystemUI()V
    .locals 2

    .line 200
    invoke-virtual {p0}, Lcom/android/quickstep/interaction/GestureSandboxActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1706

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 207
    invoke-virtual {p0}, Lcom/android/quickstep/interaction/GestureSandboxActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 208
    return-void
.end method

.method private onTISConnected(Lcom/android/quickstep/TouchInteractionService$TISBinder;)V
    .locals 1
    .param p1, "binder"    # Lcom/android/quickstep/TouchInteractionService$TISBinder;

    .line 227
    iput-object p1, p0, Lcom/android/quickstep/interaction/GestureSandboxActivity;->mBinder:Lcom/android/quickstep/TouchInteractionService$TISBinder;

    .line 228
    invoke-virtual {p0}, Lcom/android/quickstep/interaction/GestureSandboxActivity;->isResumed()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/quickstep/interaction/GestureSandboxActivity;->updateServiceState(Z)V

    .line 229
    return-void
.end method

.method private updateServiceState(Z)V
    .locals 2
    .param p1, "isEnabled"    # Z

    .line 238
    iget-object v0, p0, Lcom/android/quickstep/interaction/GestureSandboxActivity;->mBinder:Lcom/android/quickstep/TouchInteractionService$TISBinder;

    if-eqz v0, :cond_1

    .line 239
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/quickstep/interaction/GestureSandboxActivity;->getTaskId()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->setGestureBlockedTaskId(I)V

    .line 241
    :cond_1
    return-void
.end method


# virtual methods
.method public continueTutorial()V
    .locals 3

    .line 137
    invoke-virtual {p0}, Lcom/android/quickstep/interaction/GestureSandboxActivity;->isTutorialComplete()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/android/quickstep/interaction/GestureSandboxActivity;->mFragment:Lcom/android/quickstep/interaction/TutorialFragment;

    invoke-virtual {v0}, Lcom/android/quickstep/interaction/TutorialFragment;->closeTutorial()V

    .line 139
    return-void

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/interaction/GestureSandboxActivity;->mTutorialSteps:[Lcom/android/quickstep/interaction/TutorialController$TutorialType;

    iget v1, p0, Lcom/android/quickstep/interaction/GestureSandboxActivity;->mCurrentStep:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/quickstep/interaction/GestureSandboxActivity;->mCurrentTutorialStep:Lcom/android/quickstep/interaction/TutorialController$TutorialType;

    .line 142
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/quickstep/interaction/TutorialFragment;->newInstance(Lcom/android/quickstep/interaction/TutorialController$TutorialType;Z)Lcom/android/quickstep/interaction/TutorialFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/interaction/GestureSandboxActivity;->mFragment:Lcom/android/quickstep/interaction/TutorialFragment;

    .line 144
    invoke-virtual {p0}, Lcom/android/quickstep/interaction/GestureSandboxActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$id;->gesture_tutorial_fragment_container:I

    iget-object v2, p0, Lcom/android/quickstep/interaction/GestureSandboxActivity;->mFragment:Lcom/android/quickstep/interaction/TutorialFragment;

    .line 145
    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    new-instance v1, Lcom/android/quickstep/interaction/GestureSandboxActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/quickstep/interaction/GestureSandboxActivity$$ExternalSyntheticLambda1;-><init>(Lcom/android/quickstep/interaction/GestureSandboxActivity;)V

    .line 146
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->runOnCommit(Ljava/lang/Runnable;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 147
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 148
    iget v0, p0, Lcom/android/quickstep/interaction/GestureSandboxActivity;->mCurrentStep:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/quickstep/interaction/GestureSandboxActivity;->mCurrentStep:I

    .line 149
    return-void
.end method

.method public getCurrentStep()I
    .locals 1

    .line 124
    iget v0, p0, Lcom/android/quickstep/interaction/GestureSandboxActivity;->mCurrentStep:I

    return v0
.end method

.method public getNumSteps()I
    .locals 1

    .line 128
    iget v0, p0, Lcom/android/quickstep/interaction/GestureSandboxActivity;->mNumSteps:I

    return v0
.end method

.method protected getSharedPrefs()Landroid/content/SharedPreferences;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/android/quickstep/interaction/GestureSandboxActivity;->mSharedPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method protected getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/android/quickstep/interaction/GestureSandboxActivity;->mStatsLogManager:Lcom/android/launcher3/logging/StatsLogManager;

    return-object v0
.end method

.method public isTutorialComplete()Z
    .locals 2

    .line 120
    iget v0, p0, Lcom/android/quickstep/interaction/GestureSandboxActivity;->mCurrentStep:I

    iget v1, p0, Lcom/android/quickstep/interaction/GestureSandboxActivity;->mNumSteps:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method synthetic lambda$continueTutorial$0$com-android-quickstep-interaction-GestureSandboxActivity()V
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/android/quickstep/interaction/GestureSandboxActivity;->mFragment:Lcom/android/quickstep/interaction/TutorialFragment;

    invoke-virtual {v0}, Lcom/android/quickstep/interaction/TutorialFragment;->onAttachedToWindow()V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .line 83
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onAttachedToWindow()V

    .line 84
    invoke-direct {p0}, Lcom/android/quickstep/interaction/GestureSandboxActivity;->disableSystemGestures()V

    .line 85
    iget-object v0, p0, Lcom/android/quickstep/interaction/GestureSandboxActivity;->mFragment:Lcom/android/quickstep/interaction/TutorialFragment;

    invoke-virtual {v0}, Lcom/android/quickstep/interaction/TutorialFragment;->onAttachedToWindow()V

    .line 86
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 62
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/quickstep/interaction/GestureSandboxActivity;->requestWindowFeature(I)Z

    .line 64
    sget v1, Lcom/android/launcher3/R$layout;->gesture_tutorial_activity:I

    invoke-virtual {p0, v1}, Lcom/android/quickstep/interaction/GestureSandboxActivity;->setContentView(I)V

    .line 66
    invoke-static {p0}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/quickstep/interaction/GestureSandboxActivity;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 67
    invoke-virtual {p0}, Lcom/android/quickstep/interaction/GestureSandboxActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/logging/StatsLogManager;->newInstance(Landroid/content/Context;)Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/quickstep/interaction/GestureSandboxActivity;->mStatsLogManager:Lcom/android/launcher3/logging/StatsLogManager;

    .line 69
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/quickstep/interaction/GestureSandboxActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, p1

    .line 70
    .local v1, "args":Landroid/os/Bundle;
    :goto_0
    invoke-direct {p0, v1}, Lcom/android/quickstep/interaction/GestureSandboxActivity;->getTutorialSteps(Landroid/os/Bundle;)[Lcom/android/quickstep/interaction/TutorialController$TutorialType;

    move-result-object v2

    iput-object v2, p0, Lcom/android/quickstep/interaction/GestureSandboxActivity;->mTutorialSteps:[Lcom/android/quickstep/interaction/TutorialController$TutorialType;

    .line 71
    iget v3, p0, Lcom/android/quickstep/interaction/GestureSandboxActivity;->mCurrentStep:I

    sub-int/2addr v3, v0

    aget-object v0, v2, v3

    iput-object v0, p0, Lcom/android/quickstep/interaction/GestureSandboxActivity;->mCurrentTutorialStep:Lcom/android/quickstep/interaction/TutorialController$TutorialType;

    .line 72
    const/4 v2, 0x0

    .line 73
    const-string v3, "gesture_complete"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 72
    invoke-static {v0, v2}, Lcom/android/quickstep/interaction/TutorialFragment;->newInstance(Lcom/android/quickstep/interaction/TutorialController$TutorialType;Z)Lcom/android/quickstep/interaction/TutorialFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/interaction/GestureSandboxActivity;->mFragment:Lcom/android/quickstep/interaction/TutorialFragment;

    .line 74
    invoke-virtual {p0}, Lcom/android/quickstep/interaction/GestureSandboxActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    sget v2, Lcom/android/launcher3/R$id;->gesture_tutorial_fragment_container:I

    iget-object v3, p0, Lcom/android/quickstep/interaction/GestureSandboxActivity;->mFragment:Lcom/android/quickstep/interaction/TutorialFragment;

    .line 75
    invoke-virtual {v0, v2, v3}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 76
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 78
    new-instance v0, Lcom/android/quickstep/util/TISBindHelper;

    new-instance v2, Lcom/android/quickstep/interaction/GestureSandboxActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/quickstep/interaction/GestureSandboxActivity$$ExternalSyntheticLambda0;-><init>(Lcom/android/quickstep/interaction/GestureSandboxActivity;)V

    invoke-direct {v0, p0, v2}, Lcom/android/quickstep/util/TISBindHelper;-><init>(Landroid/content/Context;Ljava/util/function/Consumer;)V

    iput-object v0, p0, Lcom/android/quickstep/interaction/GestureSandboxActivity;->mTISBindHelper:Lcom/android/quickstep/util/TISBindHelper;

    .line 79
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 245
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onDestroy()V

    .line 246
    iget-object v0, p0, Lcom/android/quickstep/interaction/GestureSandboxActivity;->mTISBindHelper:Lcom/android/quickstep/util/TISBindHelper;

    invoke-virtual {v0}, Lcom/android/quickstep/util/TISBindHelper;->onDestroy()V

    .line 247
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/quickstep/interaction/GestureSandboxActivity;->updateServiceState(Z)V

    .line 248
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 90
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onDetachedFromWindow()V

    .line 91
    iget-object v0, p0, Lcom/android/quickstep/interaction/GestureSandboxActivity;->mFragment:Lcom/android/quickstep/interaction/TutorialFragment;

    invoke-virtual {v0}, Lcom/android/quickstep/interaction/TutorialFragment;->onDetachedFromWindow()V

    .line 92
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 233
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    .line 234
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/quickstep/interaction/GestureSandboxActivity;->updateServiceState(Z)V

    .line 235
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 222
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 223
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/quickstep/interaction/GestureSandboxActivity;->updateServiceState(Z)V

    .line 224
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 104
    invoke-direct {p0}, Lcom/android/quickstep/interaction/GestureSandboxActivity;->getTutorialStepNames()[Ljava/lang/String;

    move-result-object v0

    const-string v1, "tutorial_steps"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 105
    iget v0, p0, Lcom/android/quickstep/interaction/GestureSandboxActivity;->mCurrentStep:I

    const-string v1, "current_step"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 106
    iget-object v0, p0, Lcom/android/quickstep/interaction/GestureSandboxActivity;->mFragment:Lcom/android/quickstep/interaction/TutorialFragment;

    invoke-virtual {v0}, Lcom/android/quickstep/interaction/TutorialFragment;->isGestureComplete()Z

    move-result v0

    const-string v1, "gesture_complete"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 107
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 108
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasFocus"    # Z

    .line 96
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onWindowFocusChanged(Z)V

    .line 97
    if-eqz p1, :cond_0

    .line 98
    invoke-direct {p0}, Lcom/android/quickstep/interaction/GestureSandboxActivity;->hideSystemUI()V

    .line 100
    :cond_0
    return-void
.end method
