.class abstract Lcom/android/quickstep/interaction/TutorialController;
.super Ljava/lang/Object;
.source "TutorialController.java"

# interfaces
.implements Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureAttemptCallback;
.implements Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureAttemptCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/interaction/TutorialController$TutorialType;
    }
.end annotation


# static fields
.field private static final ADVANCE_TUTORIAL_TIMEOUT_MS:I = 0x7d0

.field private static final DEFAULT_PIXEL_TIPS_APP_NAME:Ljava/lang/CharSequence;

.field private static final FEEDBACK_ANIMATION_MS:I = 0x85

.field private static final FINGER_DOT_ANIMATION_DURATION_MILLIS:I = 0x1f4

.field private static final FINGER_DOT_SMALL_SCALE:F = 0.7f

.field private static final FINGER_DOT_VISIBLE_ALPHA:F = 0.7f

.field private static final GESTURE_ANIMATION_DELAY_MS:I = 0x5dc

.field private static final GESTURE_ANIMATION_PAUSE_DURATION_MILLIS:J = 0x3e8L

.field private static final LOG_TAG:Ljava/lang/String; = "TutorialController"

.field private static final PIXEL_TIPS_APP_PACKAGE_NAME:Ljava/lang/String; = "com.google.android.apps.tips"

.field private static final RIPPLE_VISIBLE_MS:I = 0x12c


# instance fields
.field final mContext:Landroid/content/Context;

.field final mDoneButton:Landroid/widget/Button;

.field final mEdgeGestureVideoView:Landroid/widget/ImageView;

.field final mFakeHotseatView:Landroid/widget/FrameLayout;

.field final mFakeIconView:Lcom/android/launcher3/views/ClipIconView;

.field final mFakeLauncherView:Landroid/widget/RelativeLayout;

.field final mFakePreviousTaskView:Lcom/android/quickstep/interaction/AnimatedTaskView;

.field final mFakeTaskView:Landroid/widget/FrameLayout;

.field private mFakeTaskViewCallback:Ljava/lang/Runnable;

.field final mFakeTaskbarView:Lcom/android/quickstep/interaction/AnimatedTaskbarView;

.field private mFakeTaskbarViewCallback:Ljava/lang/Runnable;

.field final mFeedbackTitleView:Landroid/widget/TextView;

.field final mFeedbackView:Landroid/view/ViewGroup;

.field private mFeedbackViewCallback:Ljava/lang/Runnable;

.field final mFingerDotView:Landroid/widget/ImageView;

.field private mGestureCompleted:Z

.field mHotseatIconView:Landroid/view/View;

.field final mRippleDrawable:Landroid/graphics/drawable/RippleDrawable;

.field final mRippleView:Landroid/view/View;

.field private final mShowFeedbackRunnable:Ljava/lang/Runnable;

.field final mSkipButton:Landroid/widget/TextView;

.field private final mSkipTutorialDialog:Landroidx/appcompat/app/AlertDialog;

.field private final mTitleViewCallback:Ljava/lang/Runnable;

.field final mTutorialFragment:Lcom/android/quickstep/interaction/TutorialFragment;

.field final mTutorialStepView:Lcom/android/quickstep/interaction/TutorialStepIndicator;

.field mTutorialType:Lcom/android/quickstep/interaction/TutorialController$TutorialType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 72
    const-string v0, "Pixel Tips"

    sput-object v0, Lcom/android/quickstep/interaction/TutorialController;->DEFAULT_PIXEL_TIPS_APP_NAME:Ljava/lang/CharSequence;

    return-void
.end method

.method constructor <init>(Lcom/android/quickstep/interaction/TutorialFragment;Lcom/android/quickstep/interaction/TutorialController$TutorialType;)V
    .locals 3
    .param p1, "tutorialFragment"    # Lcom/android/quickstep/interaction/TutorialFragment;
    .param p2, "tutorialType"    # Lcom/android/quickstep/interaction/TutorialController$TutorialType;

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mGestureCompleted:Z

    .line 113
    iput-object p1, p0, Lcom/android/quickstep/interaction/TutorialController;->mTutorialFragment:Lcom/android/quickstep/interaction/TutorialFragment;

    .line 114
    iput-object p2, p0, Lcom/android/quickstep/interaction/TutorialController;->mTutorialType:Lcom/android/quickstep/interaction/TutorialController$TutorialType;

    .line 115
    invoke-virtual {p1}, Lcom/android/quickstep/interaction/TutorialFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mContext:Landroid/content/Context;

    .line 117
    invoke-virtual {p1}, Lcom/android/quickstep/interaction/TutorialFragment;->getRootView()Lcom/android/quickstep/interaction/RootSandboxLayout;

    move-result-object v0

    .line 118
    .local v0, "rootView":Lcom/android/quickstep/interaction/RootSandboxLayout;
    sget v1, Lcom/android/launcher3/R$id;->gesture_tutorial_fragment_close_button:I

    invoke-virtual {v0, v1}, Lcom/android/quickstep/interaction/RootSandboxLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/quickstep/interaction/TutorialController;->mSkipButton:Landroid/widget/TextView;

    .line 119
    new-instance v2, Lcom/android/quickstep/interaction/TutorialController$$ExternalSyntheticLambda12;

    invoke-direct {v2, p0}, Lcom/android/quickstep/interaction/TutorialController$$ExternalSyntheticLambda12;-><init>(Lcom/android/quickstep/interaction/TutorialController;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    sget v1, Lcom/android/launcher3/R$id;->gesture_tutorial_fragment_feedback_view:I

    invoke-virtual {v0, v1}, Lcom/android/quickstep/interaction/RootSandboxLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/quickstep/interaction/TutorialController;->mFeedbackView:Landroid/view/ViewGroup;

    .line 121
    sget v2, Lcom/android/launcher3/R$id;->gesture_tutorial_fragment_feedback_title:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/quickstep/interaction/TutorialController;->mFeedbackTitleView:Landroid/widget/TextView;

    .line 123
    sget v1, Lcom/android/launcher3/R$id;->gesture_tutorial_edge_gesture_video:I

    invoke-virtual {v0, v1}, Lcom/android/quickstep/interaction/RootSandboxLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/quickstep/interaction/TutorialController;->mEdgeGestureVideoView:Landroid/widget/ImageView;

    .line 124
    sget v1, Lcom/android/launcher3/R$id;->gesture_tutorial_fake_launcher_view:I

    invoke-virtual {v0, v1}, Lcom/android/quickstep/interaction/RootSandboxLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/android/quickstep/interaction/TutorialController;->mFakeLauncherView:Landroid/widget/RelativeLayout;

    .line 125
    sget v1, Lcom/android/launcher3/R$id;->gesture_tutorial_fake_hotseat_view:I

    invoke-virtual {v0, v1}, Lcom/android/quickstep/interaction/RootSandboxLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/quickstep/interaction/TutorialController;->mFakeHotseatView:Landroid/widget/FrameLayout;

    .line 126
    sget v1, Lcom/android/launcher3/R$id;->gesture_tutorial_fake_icon_view:I

    invoke-virtual {v0, v1}, Lcom/android/quickstep/interaction/RootSandboxLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/views/ClipIconView;

    iput-object v1, p0, Lcom/android/quickstep/interaction/TutorialController;->mFakeIconView:Lcom/android/launcher3/views/ClipIconView;

    .line 127
    sget v1, Lcom/android/launcher3/R$id;->gesture_tutorial_fake_task_view:I

    invoke-virtual {v0, v1}, Lcom/android/quickstep/interaction/RootSandboxLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/quickstep/interaction/TutorialController;->mFakeTaskView:Landroid/widget/FrameLayout;

    .line 128
    sget v1, Lcom/android/launcher3/R$id;->gesture_tutorial_fake_taskbar_view:I

    invoke-virtual {v0, v1}, Lcom/android/quickstep/interaction/RootSandboxLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/quickstep/interaction/AnimatedTaskbarView;

    iput-object v1, p0, Lcom/android/quickstep/interaction/TutorialController;->mFakeTaskbarView:Lcom/android/quickstep/interaction/AnimatedTaskbarView;

    .line 129
    sget v1, Lcom/android/launcher3/R$id;->gesture_tutorial_fake_previous_task_view:I

    .line 130
    invoke-virtual {v0, v1}, Lcom/android/quickstep/interaction/RootSandboxLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/quickstep/interaction/AnimatedTaskView;

    iput-object v1, p0, Lcom/android/quickstep/interaction/TutorialController;->mFakePreviousTaskView:Lcom/android/quickstep/interaction/AnimatedTaskView;

    .line 131
    sget v1, Lcom/android/launcher3/R$id;->gesture_tutorial_ripple_view:I

    invoke-virtual {v0, v1}, Lcom/android/quickstep/interaction/RootSandboxLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/quickstep/interaction/TutorialController;->mRippleView:Landroid/view/View;

    .line 132
    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/RippleDrawable;

    iput-object v1, p0, Lcom/android/quickstep/interaction/TutorialController;->mRippleDrawable:Landroid/graphics/drawable/RippleDrawable;

    .line 133
    sget v1, Lcom/android/launcher3/R$id;->gesture_tutorial_fragment_action_button:I

    invoke-virtual {v0, v1}, Lcom/android/quickstep/interaction/RootSandboxLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/quickstep/interaction/TutorialController;->mDoneButton:Landroid/widget/Button;

    .line 134
    sget v1, Lcom/android/launcher3/R$id;->gesture_tutorial_fragment_feedback_tutorial_step:I

    .line 135
    invoke-virtual {v0, v1}, Lcom/android/quickstep/interaction/RootSandboxLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/quickstep/interaction/TutorialStepIndicator;

    iput-object v1, p0, Lcom/android/quickstep/interaction/TutorialController;->mTutorialStepView:Lcom/android/quickstep/interaction/TutorialStepIndicator;

    .line 136
    sget v1, Lcom/android/launcher3/R$id;->gesture_tutorial_finger_dot:I

    invoke-virtual {v0, v1}, Lcom/android/quickstep/interaction/RootSandboxLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/quickstep/interaction/TutorialController;->mFingerDotView:Landroid/widget/ImageView;

    .line 137
    invoke-direct {p0}, Lcom/android/quickstep/interaction/TutorialController;->createSkipTutorialDialog()Landroidx/appcompat/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/quickstep/interaction/TutorialController;->mSkipTutorialDialog:Landroidx/appcompat/app/AlertDialog;

    .line 139
    new-instance v1, Lcom/android/quickstep/interaction/TutorialController$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0}, Lcom/android/quickstep/interaction/TutorialController$$ExternalSyntheticLambda13;-><init>(Lcom/android/quickstep/interaction/TutorialController;)V

    iput-object v1, p0, Lcom/android/quickstep/interaction/TutorialController;->mTitleViewCallback:Ljava/lang/Runnable;

    .line 141
    new-instance v1, Lcom/android/quickstep/interaction/TutorialController$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0}, Lcom/android/quickstep/interaction/TutorialController$$ExternalSyntheticLambda14;-><init>(Lcom/android/quickstep/interaction/TutorialController;)V

    iput-object v1, p0, Lcom/android/quickstep/interaction/TutorialController;->mShowFeedbackRunnable:Ljava/lang/Runnable;

    .line 164
    return-void
.end method

.method private createSkipTutorialDialog()Landroidx/appcompat/app/AlertDialog;
    .locals 11

    .line 585
    const-string v0, "TutorialController"

    iget-object v1, p0, Lcom/android/quickstep/interaction/TutorialController;->mContext:Landroid/content/Context;

    instance-of v2, v1, Lcom/android/quickstep/interaction/GestureSandboxActivity;

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    .line 586
    check-cast v1, Lcom/android/quickstep/interaction/GestureSandboxActivity;

    .line 587
    .local v1, "sandboxActivity":Lcom/android/quickstep/interaction/GestureSandboxActivity;
    sget v2, Lcom/android/launcher3/R$layout;->gesture_tutorial_dialog:I

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 589
    .local v2, "contentView":Landroid/view/View;
    new-instance v3, Landroidx/appcompat/app/AlertDialog$Builder;

    sget v4, Lcom/android/launcher3/R$style;->Theme_AppCompat_Dialog_Alert:I

    invoke-direct {v3, v1, v4}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 591
    invoke-virtual {v3, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v3

    .line 592
    invoke-virtual {v3}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v3

    .line 594
    .local v3, "tutorialDialog":Landroidx/appcompat/app/AlertDialog;
    iget-object v4, p0, Lcom/android/quickstep/interaction/TutorialController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 595
    .local v4, "packageManager":Landroid/content/pm/PackageManager;
    sget-object v5, Lcom/android/quickstep/interaction/TutorialController;->DEFAULT_PIXEL_TIPS_APP_NAME:Ljava/lang/CharSequence;

    .line 598
    .local v5, "tipsAppName":Ljava/lang/CharSequence;
    :try_start_0
    const-string v6, "com.google.android.apps.tips"

    const/16 v7, 0x80

    .line 599
    invoke-virtual {v4, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    .line 598
    invoke-virtual {v4, v6}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v6
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v6

    .line 607
    goto :goto_0

    .line 601
    :catch_0
    move-exception v6

    .line 602
    .local v6, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v7, "Could not find app label for package name: com.google.android.apps.tips. Defaulting to \'Pixel Tips.\'"

    invoke-static {v0, v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 609
    .end local v6    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_0
    sget v6, Lcom/android/launcher3/R$id;->gesture_tutorial_dialog_subtitle:I

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 611
    .local v6, "subtitleTextView":Landroid/widget/TextView;
    if-eqz v6, :cond_0

    .line 612
    iget-object v7, p0, Lcom/android/quickstep/interaction/TutorialController;->mContext:Landroid/content/Context;

    sget v8, Lcom/android/launcher3/R$string;->skip_tutorial_dialog_subtitle:I

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v9, v10

    .line 613
    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 612
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 615
    :cond_0
    const-string v7, "No subtitle view in the skip tutorial dialog to update."

    invoke-static {v0, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    :goto_1
    sget v7, Lcom/android/launcher3/R$id;->gesture_tutorial_dialog_cancel_button:I

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    .line 620
    .local v7, "cancelButton":Landroid/widget/Button;
    if-eqz v7, :cond_1

    .line 621
    new-instance v8, Lcom/android/quickstep/interaction/TutorialController$$ExternalSyntheticLambda1;

    invoke-direct {v8, v3}, Lcom/android/quickstep/interaction/TutorialController$$ExternalSyntheticLambda1;-><init>(Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 624
    :cond_1
    const-string v8, "No cancel button in the skip tutorial dialog to update."

    invoke-static {v0, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    :goto_2
    sget v8, Lcom/android/launcher3/R$id;->gesture_tutorial_dialog_confirm_button:I

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    .line 629
    .local v8, "confirmButton":Landroid/widget/Button;
    if-eqz v8, :cond_2

    .line 630
    new-instance v0, Lcom/android/quickstep/interaction/TutorialController$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, v3}, Lcom/android/quickstep/interaction/TutorialController$$ExternalSyntheticLambda2;-><init>(Lcom/android/quickstep/interaction/TutorialController;Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {v8, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    .line 635
    :cond_2
    const-string v9, "No confirm button in the skip tutorial dialog to update."

    invoke-static {v0, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    :goto_3
    invoke-virtual {v3}, Landroidx/appcompat/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v9, Landroid/graphics/drawable/ColorDrawable;

    const v10, 0x106000d

    .line 639
    invoke-virtual {v1, v10}, Lcom/android/quickstep/interaction/GestureSandboxActivity;->getColor(I)I

    move-result v10

    invoke-direct {v9, v10}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 638
    invoke-virtual {v0, v9}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 641
    return-object v3

    .line 644
    .end local v1    # "sandboxActivity":Lcom/android/quickstep/interaction/GestureSandboxActivity;
    .end local v2    # "contentView":Landroid/view/View;
    .end local v3    # "tutorialDialog":Landroidx/appcompat/app/AlertDialog;
    .end local v4    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v5    # "tipsAppName":Ljava/lang/CharSequence;
    .end local v6    # "subtitleTextView":Landroid/widget/TextView;
    .end local v7    # "cancelButton":Landroid/widget/Button;
    .end local v8    # "confirmButton":Landroid/widget/Button;
    :cond_3
    return-object v3
.end method

.method static synthetic lambda$createSkipTutorialDialog$8(Landroidx/appcompat/app/AlertDialog;Landroid/view/View;)V
    .locals 0
    .param p0, "tutorialDialog"    # Landroidx/appcompat/app/AlertDialog;
    .param p1, "v"    # Landroid/view/View;

    .line 622
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    return-void
.end method

.method private playFeedbackAnimation(Landroid/animation/Animator;Landroid/graphics/drawable/AnimatedVectorDrawable;Ljava/lang/Runnable;Z)V
    .locals 7
    .param p1, "gestureAnimation"    # Landroid/animation/Animator;
    .param p2, "edgeAnimation"    # Landroid/graphics/drawable/AnimatedVectorDrawable;
    .param p3, "onStartRunnable"    # Ljava/lang/Runnable;
    .param p4, "useGestureAnimationDelay"    # Z

    .line 374
    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 375
    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    .line 377
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/drawable/AnimatedVectorDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 378
    invoke-virtual {p2}, Landroid/graphics/drawable/AnimatedVectorDrawable;->reset()V

    .line 380
    :cond_1
    new-instance v0, Lcom/android/quickstep/interaction/TutorialController$1;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p2

    move v4, p4

    move-object v5, p3

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/quickstep/interaction/TutorialController$1;-><init>(Lcom/android/quickstep/interaction/TutorialController;Landroid/graphics/drawable/AnimatedVectorDrawable;ZLjava/lang/Runnable;Landroid/animation/Animator;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 406
    invoke-virtual {p0}, Lcom/android/quickstep/interaction/TutorialController;->cancelQueuedGestureAnimation()V

    .line 407
    if-eqz p4, :cond_2

    .line 408
    iput-object p3, p0, Lcom/android/quickstep/interaction/TutorialController;->mFeedbackViewCallback:Ljava/lang/Runnable;

    .line 409
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/quickstep/interaction/TutorialController$$ExternalSyntheticLambda11;

    invoke-direct {v0, p1}, Lcom/android/quickstep/interaction/TutorialController$$ExternalSyntheticLambda11;-><init>(Landroid/animation/Animator;)V

    iput-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mFakeTaskViewCallback:Ljava/lang/Runnable;

    .line 411
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mFeedbackView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/quickstep/interaction/TutorialController;->mFeedbackViewCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 412
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mFakeTaskView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/quickstep/interaction/TutorialController;->mFakeTaskViewCallback:Ljava/lang/Runnable;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 414
    :cond_2
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    .line 416
    :goto_0
    return-void
.end method

.method private showSkipTutorialDialog()V
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mSkipTutorialDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 168
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 170
    :cond_0
    return-void
.end method

.method private updateDrawables()V
    .locals 3

    .line 524
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 525
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mTutorialFragment:Lcom/android/quickstep/interaction/TutorialFragment;

    invoke-virtual {v0}, Lcom/android/quickstep/interaction/TutorialFragment;->getRootView()Lcom/android/quickstep/interaction/RootSandboxLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/interaction/TutorialController;->mContext:Landroid/content/Context;

    .line 526
    invoke-virtual {p0}, Lcom/android/quickstep/interaction/TutorialController;->getMockWallpaperResId()I

    move-result v2

    .line 525
    invoke-static {v1, v2}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/quickstep/interaction/RootSandboxLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 527
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mTutorialFragment:Lcom/android/quickstep/interaction/TutorialFragment;

    invoke-virtual {v0}, Lcom/android/quickstep/interaction/TutorialFragment;->updateFeedbackAnimation()Z

    .line 528
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mFakeLauncherView:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/android/quickstep/interaction/TutorialController;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/launcher3/R$color;->gesture_tutorial_fake_wallpaper_color:I

    .line 529
    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    .line 528
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 530
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mFakeHotseatView:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/android/quickstep/interaction/TutorialController;->getMockHotseatResId()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/quickstep/interaction/TutorialController;->updateFakeViewLayout(Landroid/view/ViewGroup;I)V

    .line 531
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mFakeHotseatView:Landroid/widget/FrameLayout;

    sget v1, Lcom/android/launcher3/R$id;->hotseat_icon_1:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mHotseatIconView:Landroid/view/View;

    .line 532
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mFakeTaskView:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/android/quickstep/interaction/TutorialController;->getMockAppTaskLayoutResId()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/quickstep/interaction/TutorialController;->updateFakeViewLayout(Landroid/view/ViewGroup;I)V

    .line 533
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mFakeTaskView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/quickstep/interaction/TutorialController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/quickstep/interaction/TutorialController$$ExternalSyntheticLambda0;-><init>(Lcom/android/quickstep/interaction/TutorialController;)V

    .line 534
    invoke-static {v1}, Lcom/android/launcher3/anim/AnimatorListeners;->forSuccessCallback(Ljava/lang/Runnable;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v1

    .line 533
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 535
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mFakePreviousTaskView:Lcom/android/quickstep/interaction/AnimatedTaskView;

    iget-object v1, p0, Lcom/android/quickstep/interaction/TutorialController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 536
    invoke-virtual {p0}, Lcom/android/quickstep/interaction/TutorialController;->getMockPreviousAppTaskThumbnailColorResId()I

    move-result v2

    .line 535
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/quickstep/interaction/AnimatedTaskView;->setFakeTaskViewFillColor(I)V

    .line 537
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mFakeIconView:Lcom/android/launcher3/views/ClipIconView;

    iget-object v1, p0, Lcom/android/quickstep/interaction/TutorialController;->mContext:Landroid/content/Context;

    .line 538
    invoke-virtual {p0}, Lcom/android/quickstep/interaction/TutorialController;->getMockAppIconResId()I

    move-result v2

    .line 537
    invoke-static {v1, v2}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/views/ClipIconView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 540
    :cond_0
    return-void
.end method

.method private updateLayout()V
    .locals 7

    .line 543
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 544
    return-void

    .line 546
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mFeedbackView:Landroid/view/ViewGroup;

    .line 547
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 548
    .local v0, "feedbackLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v1, p0, Lcom/android/quickstep/interaction/TutorialController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 549
    iget-object v2, p0, Lcom/android/quickstep/interaction/TutorialController;->mTutorialFragment:Lcom/android/quickstep/interaction/TutorialFragment;

    invoke-virtual {v2}, Lcom/android/quickstep/interaction/TutorialFragment;->isLargeScreen()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 550
    sget v2, Lcom/android/launcher3/R$dimen;->gesture_tutorial_tablet_feedback_margin_start_end:I

    goto :goto_0

    .line 551
    :cond_1
    sget v2, Lcom/android/launcher3/R$dimen;->gesture_tutorial_feedback_margin_start_end:I

    .line 548
    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 552
    iget-object v1, p0, Lcom/android/quickstep/interaction/TutorialController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 553
    iget-object v2, p0, Lcom/android/quickstep/interaction/TutorialController;->mTutorialFragment:Lcom/android/quickstep/interaction/TutorialFragment;

    invoke-virtual {v2}, Lcom/android/quickstep/interaction/TutorialFragment;->isLargeScreen()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 554
    sget v2, Lcom/android/launcher3/R$dimen;->gesture_tutorial_tablet_feedback_margin_start_end:I

    goto :goto_1

    .line 555
    :cond_2
    sget v2, Lcom/android/launcher3/R$dimen;->gesture_tutorial_feedback_margin_start_end:I

    .line 552
    :goto_1
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    .line 556
    iget-object v1, p0, Lcom/android/quickstep/interaction/TutorialController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 557
    iget-object v2, p0, Lcom/android/quickstep/interaction/TutorialController;->mTutorialFragment:Lcom/android/quickstep/interaction/TutorialFragment;

    invoke-virtual {v2}, Lcom/android/quickstep/interaction/TutorialFragment;->isLargeScreen()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 558
    sget v2, Lcom/android/launcher3/R$dimen;->gesture_tutorial_tablet_feedback_margin_top:I

    goto :goto_2

    .line 559
    :cond_3
    sget v2, Lcom/android/launcher3/R$dimen;->gesture_tutorial_feedback_margin_top:I

    .line 556
    :goto_2
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 561
    iget-object v1, p0, Lcom/android/quickstep/interaction/TutorialController;->mFakeTaskbarView:Lcom/android/quickstep/interaction/AnimatedTaskbarView;

    iget-object v2, p0, Lcom/android/quickstep/interaction/TutorialController;->mTutorialFragment:Lcom/android/quickstep/interaction/TutorialFragment;

    invoke-virtual {v2}, Lcom/android/quickstep/interaction/TutorialFragment;->isLargeScreen()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    goto :goto_3

    :cond_4
    const/16 v2, 0x8

    :goto_3
    invoke-virtual {v1, v2}, Lcom/android/quickstep/interaction/AnimatedTaskbarView;->setVisibility(I)V

    .line 563
    iget-object v1, p0, Lcom/android/quickstep/interaction/TutorialController;->mFakeHotseatView:Landroid/widget/FrameLayout;

    .line 564
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 565
    .local v1, "hotseatLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v2, p0, Lcom/android/quickstep/interaction/TutorialController;->mTutorialFragment:Lcom/android/quickstep/interaction/TutorialFragment;

    invoke-virtual {v2}, Lcom/android/quickstep/interaction/TutorialFragment;->isLargeScreen()Z

    move-result v2

    const/16 v3, 0x15

    const/16 v4, 0x14

    const/16 v5, 0xc

    if-nez v2, :cond_7

    .line 566
    iget-object v2, p0, Lcom/android/quickstep/interaction/TutorialController;->mTutorialFragment:Lcom/android/quickstep/interaction/TutorialFragment;

    invoke-virtual {v2}, Lcom/android/quickstep/interaction/TutorialFragment;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v2

    .line 567
    .local v2, "dp":Lcom/android/launcher3/DeviceProfile;
    iget-object v6, p0, Lcom/android/quickstep/interaction/TutorialController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v6}, Lcom/android/launcher3/DeviceProfile;->updateIsSeascape(Landroid/content/Context;)Z

    .line 569
    iget-boolean v6, v2, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-eqz v6, :cond_6

    .line 570
    invoke-virtual {v2}, Lcom/android/launcher3/DeviceProfile;->isSeascape()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 571
    move v3, v4

    goto :goto_4

    .line 572
    :cond_5
    goto :goto_4

    .line 573
    :cond_6
    move v3, v5

    .line 569
    :goto_4
    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 574
    .end local v2    # "dp":Lcom/android/launcher3/DeviceProfile;
    goto :goto_5

    .line 575
    :cond_7
    const/4 v2, -0x1

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 576
    const/4 v2, -0x2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 577
    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 578
    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 579
    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 581
    :goto_5
    iget-object v2, p0, Lcom/android/quickstep/interaction/TutorialController;->mFakeHotseatView:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 582
    return-void
.end method

.method private updateSubtext()V
    .locals 3

    .line 519
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mTutorialStepView:Lcom/android/quickstep/interaction/TutorialStepIndicator;

    iget-object v1, p0, Lcom/android/quickstep/interaction/TutorialController;->mTutorialFragment:Lcom/android/quickstep/interaction/TutorialFragment;

    .line 520
    invoke-virtual {v1}, Lcom/android/quickstep/interaction/TutorialFragment;->getCurrentStep()I

    move-result v1

    iget-object v2, p0, Lcom/android/quickstep/interaction/TutorialController;->mTutorialFragment:Lcom/android/quickstep/interaction/TutorialFragment;

    invoke-virtual {v2}, Lcom/android/quickstep/interaction/TutorialFragment;->getNumSteps()I

    move-result v2

    .line 519
    invoke-virtual {v0, v1, v2}, Lcom/android/quickstep/interaction/TutorialStepIndicator;->setTutorialProgress(II)V

    .line 521
    return-void
.end method


# virtual methods
.method cancelQueuedGestureAnimation()V
    .locals 3

    .line 353
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mFeedbackViewCallback:Ljava/lang/Runnable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 354
    iget-object v2, p0, Lcom/android/quickstep/interaction/TutorialController;->mFeedbackView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 355
    iput-object v1, p0, Lcom/android/quickstep/interaction/TutorialController;->mFeedbackViewCallback:Ljava/lang/Runnable;

    .line 357
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mFakeTaskViewCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 358
    iget-object v2, p0, Lcom/android/quickstep/interaction/TutorialController;->mFakeTaskView:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 359
    iput-object v1, p0, Lcom/android/quickstep/interaction/TutorialController;->mFakeTaskViewCallback:Ljava/lang/Runnable;

    .line 361
    :cond_1
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mFakeTaskbarViewCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 362
    iget-object v2, p0, Lcom/android/quickstep/interaction/TutorialController;->mFakeTaskbarView:Lcom/android/quickstep/interaction/AnimatedTaskbarView;

    invoke-virtual {v2, v0}, Lcom/android/quickstep/interaction/AnimatedTaskbarView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 363
    iput-object v1, p0, Lcom/android/quickstep/interaction/TutorialController;->mFakeTaskbarViewCallback:Ljava/lang/Runnable;

    .line 365
    :cond_2
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mFeedbackTitleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/quickstep/interaction/TutorialController;->mTitleViewCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 366
    return-void
.end method

.method protected createAnimationPause()Landroid/animation/Animator;
    .locals 3

    .line 690
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method protected createFingerDotAppearanceAnimatorSet()Landroid/animation/AnimatorSet;
    .locals 7

    .line 648
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mFingerDotView:Landroid/widget/ImageView;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    invoke-static {v0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 650
    .local v0, "alphaAnimator":Landroid/animation/ObjectAnimator;
    iget-object v1, p0, Lcom/android/quickstep/interaction/TutorialController;->mFingerDotView:Landroid/widget/ImageView;

    sget-object v3, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v4, v2, [F

    fill-array-data v4, :array_1

    invoke-static {v1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 652
    .local v1, "yScaleAnimator":Landroid/animation/ObjectAnimator;
    iget-object v3, p0, Lcom/android/quickstep/interaction/TutorialController;->mFingerDotView:Landroid/widget/ImageView;

    sget-object v4, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v2, v2, [F

    fill-array-data v2, :array_2

    invoke-static {v3, v4, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 654
    .local v2, "xScaleAnimator":Landroid/animation/ObjectAnimator;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 656
    .local v3, "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 657
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 658
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 660
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 662
    .local v4, "appearanceAnimatorSet":Landroid/animation/AnimatorSet;
    invoke-virtual {v4, v3}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 663
    const-wide/16 v5, 0x1f4

    invoke-virtual {v4, v5, v6}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 665
    return-object v4

    :array_0
    .array-data 4
        0x0
        0x3f333333    # 0.7f
    .end array-data

    :array_1
    .array-data 4
        0x3f333333    # 0.7f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f333333    # 0.7f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method protected createFingerDotDisappearanceAnimatorSet()Landroid/animation/AnimatorSet;
    .locals 7

    .line 669
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mFingerDotView:Landroid/widget/ImageView;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    invoke-static {v0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 671
    .local v0, "alphaAnimator":Landroid/animation/ObjectAnimator;
    iget-object v1, p0, Lcom/android/quickstep/interaction/TutorialController;->mFingerDotView:Landroid/widget/ImageView;

    sget-object v3, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v4, v2, [F

    fill-array-data v4, :array_1

    invoke-static {v1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 673
    .local v1, "yScaleAnimator":Landroid/animation/ObjectAnimator;
    iget-object v3, p0, Lcom/android/quickstep/interaction/TutorialController;->mFingerDotView:Landroid/widget/ImageView;

    sget-object v4, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v2, v2, [F

    fill-array-data v2, :array_2

    invoke-static {v3, v4, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 675
    .local v2, "xScaleAnimator":Landroid/animation/ObjectAnimator;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 677
    .local v3, "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 678
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 679
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 681
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 683
    .local v4, "appearanceAnimatorSet":Landroid/animation/AnimatorSet;
    invoke-virtual {v4, v3}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 684
    const-wide/16 v5, 0x1f4

    invoke-virtual {v4, v5, v6}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 686
    return-object v4

    :array_0
    .array-data 4
        0x3f333333    # 0.7f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f333333    # 0.7f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3f333333    # 0.7f
    .end array-data
.end method

.method fadeTaskViewAndRun(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;

    .line 216
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mFakeTaskView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-static {p1}, Lcom/android/launcher3/anim/AnimatorListeners;->forSuccessCallback(Ljava/lang/Runnable;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 217
    return-void
.end method

.method public getHotseatIconLeft()I
    .locals 2

    .line 178
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mHotseatIconView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 179
    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mFakeHotseatView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v0

    iget-object v1, p0, Lcom/android/quickstep/interaction/TutorialController;->mHotseatIconView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    add-int/2addr v0, v1

    .line 178
    :goto_0
    return v0
.end method

.method public getHotseatIconTop()I
    .locals 2

    .line 173
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mHotseatIconView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 174
    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mFakeHotseatView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTop()I

    move-result v0

    iget-object v1, p0, Lcom/android/quickstep/interaction/TutorialController;->mHotseatIconView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    add-int/2addr v0, v1

    .line 173
    :goto_0
    return v0
.end method

.method public getIntroductionSubtitle()I
    .locals 1

    .line 226
    const/4 v0, -0x1

    return v0
.end method

.method public getIntroductionTitle()I
    .locals 1

    .line 221
    const/4 v0, -0x1

    return v0
.end method

.method public getMockAppIconResId()I
    .locals 1

    .line 207
    sget v0, Lcom/android/launcher3/R$drawable;->default_sandbox_app_icon:I

    return v0
.end method

.method protected getMockAppTaskLayoutResId()I
    .locals 1

    .line 197
    const/4 v0, -0x1

    return v0
.end method

.method protected getMockHotseatResId()I
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mTutorialFragment:Lcom/android/quickstep/interaction/TutorialFragment;

    invoke-virtual {v0}, Lcom/android/quickstep/interaction/TutorialFragment;->isLargeScreen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 189
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mTutorialFragment:Lcom/android/quickstep/interaction/TutorialFragment;

    invoke-virtual {v0}, Lcom/android/quickstep/interaction/TutorialFragment;->isFoldable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    sget v0, Lcom/android/launcher3/R$layout;->gesture_tutorial_foldable_mock_hotseat:I

    goto :goto_0

    .line 191
    :cond_0
    sget v0, Lcom/android/launcher3/R$layout;->gesture_tutorial_tablet_mock_hotseat:I

    goto :goto_0

    .line 192
    :cond_1
    sget v0, Lcom/android/launcher3/R$layout;->gesture_tutorial_mock_hotseat:I

    .line 188
    :goto_0
    return v0
.end method

.method protected getMockPreviousAppTaskThumbnailColorResId()I
    .locals 1

    .line 202
    sget v0, Lcom/android/launcher3/R$color;->gesture_tutorial_fake_previous_task_view_color:I

    return v0
.end method

.method public getMockWallpaperResId()I
    .locals 1

    .line 212
    sget v0, Lcom/android/launcher3/R$drawable;->default_sandbox_wallpaper:I

    return v0
.end method

.method public getSpokenIntroductionSubtitle()I
    .locals 1

    .line 231
    const/4 v0, -0x1

    return v0
.end method

.method public getSuccessFeedbackSubtitle()I
    .locals 1

    .line 236
    const/4 v0, -0x1

    return v0
.end method

.method hideActionButton()V
    .locals 2

    .line 459
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mSkipButton:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 461
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mDoneButton:Landroid/widget/Button;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 462
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mDoneButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 463
    return-void
.end method

.method hideFakeTaskbar(Z)V
    .locals 2
    .param p1, "animateToHotseat"    # Z

    .line 472
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mTutorialFragment:Lcom/android/quickstep/interaction/TutorialFragment;

    invoke-virtual {v0}, Lcom/android/quickstep/interaction/TutorialFragment;->isLargeScreen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 473
    return-void

    .line 475
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mFakeTaskbarViewCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 476
    iget-object v1, p0, Lcom/android/quickstep/interaction/TutorialController;->mFakeTaskbarView:Lcom/android/quickstep/interaction/AnimatedTaskbarView;

    invoke-virtual {v1, v0}, Lcom/android/quickstep/interaction/AnimatedTaskbarView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 478
    :cond_1
    if-eqz p1, :cond_2

    .line 479
    new-instance v0, Lcom/android/quickstep/interaction/TutorialController$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/android/quickstep/interaction/TutorialController$$ExternalSyntheticLambda4;-><init>(Lcom/android/quickstep/interaction/TutorialController;)V

    iput-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mFakeTaskbarViewCallback:Ljava/lang/Runnable;

    goto :goto_0

    .line 482
    :cond_2
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mFakeTaskbarView:Lcom/android/quickstep/interaction/AnimatedTaskbarView;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/quickstep/interaction/TutorialController$$ExternalSyntheticLambda5;

    invoke-direct {v1, v0}, Lcom/android/quickstep/interaction/TutorialController$$ExternalSyntheticLambda5;-><init>(Lcom/android/quickstep/interaction/AnimatedTaskbarView;)V

    iput-object v1, p0, Lcom/android/quickstep/interaction/TutorialController;->mFakeTaskbarViewCallback:Ljava/lang/Runnable;

    .line 484
    :goto_0
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mFakeTaskbarView:Lcom/android/quickstep/interaction/AnimatedTaskbarView;

    iget-object v1, p0, Lcom/android/quickstep/interaction/TutorialController;->mFakeTaskbarViewCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/quickstep/interaction/AnimatedTaskbarView;->post(Ljava/lang/Runnable;)Z

    .line 485
    return-void
.end method

.method hideFeedback()V
    .locals 2

    .line 344
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mFeedbackView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 345
    return-void

    .line 347
    :cond_0
    invoke-virtual {p0}, Lcom/android/quickstep/interaction/TutorialController;->cancelQueuedGestureAnimation()V

    .line 348
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mFeedbackView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->clearAnimation()V

    .line 349
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mFeedbackView:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 350
    return-void
.end method

.method public isGestureCompleted()Z
    .locals 1

    .line 340
    iget-boolean v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mGestureCompleted:Z

    return v0
.end method

.method synthetic lambda$createSkipTutorialDialog$9$com-android-quickstep-interaction-TutorialController(Landroidx/appcompat/app/AlertDialog;Landroid/view/View;)V
    .locals 2
    .param p1, "tutorialDialog"    # Landroidx/appcompat/app/AlertDialog;
    .param p2, "v"    # Landroid/view/View;

    .line 631
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mTutorialFragment:Lcom/android/quickstep/interaction/TutorialFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/quickstep/interaction/TutorialFragment;->closeTutorial(Z)V

    .line 632
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    .line 633
    return-void
.end method

.method synthetic lambda$hideFakeTaskbar$5$com-android-quickstep-interaction-TutorialController()V
    .locals 2

    .line 480
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mFakeTaskbarView:Lcom/android/quickstep/interaction/AnimatedTaskbarView;

    iget-object v1, p0, Lcom/android/quickstep/interaction/TutorialController;->mFakeHotseatView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Lcom/android/quickstep/interaction/AnimatedTaskbarView;->animateDisappearanceToHotseat(Landroid/view/ViewGroup;)V

    return-void
.end method

.method synthetic lambda$new$0$com-android-quickstep-interaction-TutorialController(Landroid/view/View;)V
    .locals 0
    .param p1, "button"    # Landroid/view/View;

    .line 119
    invoke-direct {p0}, Lcom/android/quickstep/interaction/TutorialController;->showSkipTutorialDialog()V

    return-void
.end method

.method synthetic lambda$new$1$com-android-quickstep-interaction-TutorialController()V
    .locals 2

    .line 139
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mFeedbackTitleView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->sendAccessibilityEvent(I)V

    return-void
.end method

.method synthetic lambda$new$2$com-android-quickstep-interaction-TutorialController()V
    .locals 4

    .line 152
    iget-boolean v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mGestureCompleted:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mTutorialFragment:Lcom/android/quickstep/interaction/TutorialFragment;

    invoke-virtual {v0}, Lcom/android/quickstep/interaction/TutorialFragment;->isAtFinalStep()Z

    move-result v0

    if-nez v0, :cond_1

    .line 153
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mFeedbackViewCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 154
    iget-object v1, p0, Lcom/android/quickstep/interaction/TutorialController;->mFeedbackView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mTutorialFragment:Lcom/android/quickstep/interaction/TutorialFragment;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/quickstep/interaction/TutorialController$$ExternalSyntheticLambda10;

    invoke-direct {v1, v0}, Lcom/android/quickstep/interaction/TutorialController$$ExternalSyntheticLambda10;-><init>(Lcom/android/quickstep/interaction/TutorialFragment;)V

    iput-object v1, p0, Lcom/android/quickstep/interaction/TutorialController;->mFeedbackViewCallback:Ljava/lang/Runnable;

    .line 157
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mFeedbackView:Landroid/view/ViewGroup;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 160
    :cond_1
    return-void
.end method

.method synthetic lambda$new$3$com-android-quickstep-interaction-TutorialController()V
    .locals 4

    .line 142
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mFeedbackView:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 143
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mFeedbackView:Landroid/view/ViewGroup;

    const v1, 0x3f733333    # 0.95f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setScaleX(F)V

    .line 144
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mFeedbackView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setScaleY(F)V

    .line 145
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mFeedbackView:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 146
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mFeedbackView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 147
    const-wide/16 v1, 0x85

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 148
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 149
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 150
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v3, Lcom/android/quickstep/interaction/TutorialController$$ExternalSyntheticLambda9;

    invoke-direct {v3, p0}, Lcom/android/quickstep/interaction/TutorialController$$ExternalSyntheticLambda9;-><init>(Lcom/android/quickstep/interaction/TutorialController;)V

    .line 151
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 161
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 162
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mFeedbackTitleView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/quickstep/interaction/TutorialController;->mTitleViewCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v1, v2}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 163
    return-void
.end method

.method synthetic lambda$showFakeTaskbar$6$com-android-quickstep-interaction-TutorialController()V
    .locals 2

    .line 496
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mFakeTaskbarView:Lcom/android/quickstep/interaction/AnimatedTaskbarView;

    iget-object v1, p0, Lcom/android/quickstep/interaction/TutorialController;->mFakeHotseatView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Lcom/android/quickstep/interaction/AnimatedTaskbarView;->animateAppearanceFromHotseat(Landroid/view/ViewGroup;)V

    return-void
.end method

.method synthetic lambda$showRippleEffect$4$com-android-quickstep-interaction-TutorialController(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "onCompleteRunnable"    # Ljava/lang/Runnable;

    .line 426
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mRippleDrawable:Landroid/graphics/drawable/RippleDrawable;

    const/4 v1, 0x0

    new-array v1, v1, [I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/RippleDrawable;->setState([I)Z

    .line 427
    if-eqz p1, :cond_0

    .line 428
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 430
    :cond_0
    return-void
.end method

.method synthetic lambda$updateDrawables$7$com-android-quickstep-interaction-TutorialController()V
    .locals 1

    .line 534
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mFakeTaskView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    return-void
.end method

.method onActionButtonClicked(Landroid/view/View;)V
    .locals 1
    .param p1, "button"    # Landroid/view/View;

    .line 434
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mTutorialFragment:Lcom/android/quickstep/interaction/TutorialFragment;

    invoke-virtual {v0}, Lcom/android/quickstep/interaction/TutorialFragment;->continueTutorial()V

    .line 435
    return-void
.end method

.method setRippleHotspot(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 419
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mRippleDrawable:Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/RippleDrawable;->setHotspot(FF)V

    .line 420
    return-void
.end method

.method setTutorialType(Lcom/android/quickstep/interaction/TutorialController$TutorialType;)V
    .locals 0
    .param p1, "tutorialType"    # Lcom/android/quickstep/interaction/TutorialController$TutorialType;

    .line 183
    iput-object p1, p0, Lcom/android/quickstep/interaction/TutorialController;->mTutorialType:Lcom/android/quickstep/interaction/TutorialController$TutorialType;

    .line 184
    return-void
.end method

.method showActionButton()V
    .locals 2

    .line 466
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mSkipButton:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 467
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mDoneButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 468
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mDoneButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/quickstep/interaction/TutorialController$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/android/quickstep/interaction/TutorialController$$ExternalSyntheticLambda6;-><init>(Lcom/android/quickstep/interaction/TutorialController;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 469
    return-void
.end method

.method showFakeTaskbar(Z)V
    .locals 2
    .param p1, "animateFromHotseat"    # Z

    .line 488
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mTutorialFragment:Lcom/android/quickstep/interaction/TutorialFragment;

    invoke-virtual {v0}, Lcom/android/quickstep/interaction/TutorialFragment;->isLargeScreen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 489
    return-void

    .line 491
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mFakeTaskbarViewCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 492
    iget-object v1, p0, Lcom/android/quickstep/interaction/TutorialController;->mFakeTaskbarView:Lcom/android/quickstep/interaction/AnimatedTaskbarView;

    invoke-virtual {v1, v0}, Lcom/android/quickstep/interaction/AnimatedTaskbarView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 494
    :cond_1
    if-eqz p1, :cond_2

    .line 495
    new-instance v0, Lcom/android/quickstep/interaction/TutorialController$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lcom/android/quickstep/interaction/TutorialController$$ExternalSyntheticLambda7;-><init>(Lcom/android/quickstep/interaction/TutorialController;)V

    iput-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mFakeTaskbarViewCallback:Ljava/lang/Runnable;

    goto :goto_0

    .line 498
    :cond_2
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mFakeTaskbarView:Lcom/android/quickstep/interaction/AnimatedTaskbarView;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/quickstep/interaction/TutorialController$$ExternalSyntheticLambda8;

    invoke-direct {v1, v0}, Lcom/android/quickstep/interaction/TutorialController$$ExternalSyntheticLambda8;-><init>(Lcom/android/quickstep/interaction/AnimatedTaskbarView;)V

    iput-object v1, p0, Lcom/android/quickstep/interaction/TutorialController;->mFakeTaskbarViewCallback:Ljava/lang/Runnable;

    .line 500
    :goto_0
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mFakeTaskbarView:Lcom/android/quickstep/interaction/AnimatedTaskbarView;

    iget-object v1, p0, Lcom/android/quickstep/interaction/TutorialController;->mFakeTaskbarViewCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/quickstep/interaction/AnimatedTaskbarView;->post(Ljava/lang/Runnable;)Z

    .line 501
    return-void
.end method

.method showFeedback()V
    .locals 4

    .line 240
    iget-boolean v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mGestureCompleted:Z

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mFeedbackView:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 242
    return-void

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mTutorialFragment:Lcom/android/quickstep/interaction/TutorialFragment;

    invoke-virtual {v0}, Lcom/android/quickstep/interaction/TutorialFragment;->getGestureAnimation()Landroid/animation/Animator;

    move-result-object v0

    .line 245
    .local v0, "gestureAnimation":Landroid/animation/Animator;
    iget-object v1, p0, Lcom/android/quickstep/interaction/TutorialController;->mTutorialFragment:Lcom/android/quickstep/interaction/TutorialFragment;

    invoke-virtual {v1}, Lcom/android/quickstep/interaction/TutorialFragment;->getEdgeAnimation()Landroid/graphics/drawable/AnimatedVectorDrawable;

    move-result-object v1

    .line 246
    .local v1, "edgeAnimation":Landroid/graphics/drawable/AnimatedVectorDrawable;
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 247
    iget-object v2, p0, Lcom/android/quickstep/interaction/TutorialController;->mShowFeedbackRunnable:Ljava/lang/Runnable;

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/quickstep/interaction/TutorialController;->playFeedbackAnimation(Landroid/animation/Animator;Landroid/graphics/drawable/AnimatedVectorDrawable;Ljava/lang/Runnable;Z)V

    .line 249
    :cond_1
    return-void
.end method

.method showFeedback(I)V
    .locals 1
    .param p1, "subtitleResId"    # I

    .line 273
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/quickstep/interaction/TutorialController;->showFeedback(IZ)V

    .line 274
    return-void
.end method

.method showFeedback(IIIZZ)V
    .locals 5
    .param p1, "titleResId"    # I
    .param p2, "subtitleResId"    # I
    .param p3, "spokenSubtitleResId"    # I
    .param p4, "isGestureSuccessful"    # Z
    .param p5, "useGestureAnimationDelay"    # Z

    .line 297
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mFeedbackTitleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/quickstep/interaction/TutorialController;->mTitleViewCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 298
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mFeedbackViewCallback:Ljava/lang/Runnable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 299
    iget-object v2, p0, Lcom/android/quickstep/interaction/TutorialController;->mFeedbackView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 300
    iput-object v1, p0, Lcom/android/quickstep/interaction/TutorialController;->mFeedbackViewCallback:Ljava/lang/Runnable;

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mFeedbackTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 304
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mFeedbackView:Landroid/view/ViewGroup;

    sget v2, Lcom/android/launcher3/R$id;->gesture_tutorial_fragment_feedback_subtitle:I

    .line 305
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 306
    .local v0, "subtitle":Landroid/widget/TextView;
    const/4 v2, -0x1

    if-ne p3, v2, :cond_1

    .line 307
    iget-object v2, p0, Lcom/android/quickstep/interaction/TutorialController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_0

    .line 308
    :cond_1
    iget-object v2, p0, Lcom/android/quickstep/interaction/TutorialController;->mContext:Landroid/content/Context;

    .line 309
    invoke-virtual {v2, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/android/quickstep/interaction/TutorialController;->mContext:Landroid/content/Context;

    invoke-virtual {v3, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 308
    invoke-static {v2, v3}, Lcom/android/launcher3/Utilities;->wrapForTts(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 306
    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 310
    if-eqz p4, :cond_3

    .line 311
    iget-object v2, p0, Lcom/android/quickstep/interaction/TutorialController;->mTutorialFragment:Lcom/android/quickstep/interaction/TutorialFragment;

    invoke-virtual {v2}, Lcom/android/quickstep/interaction/TutorialFragment;->isAtFinalStep()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 312
    invoke-virtual {p0}, Lcom/android/quickstep/interaction/TutorialController;->showActionButton()V

    .line 315
    :cond_2
    iget-object v2, p0, Lcom/android/quickstep/interaction/TutorialController;->mFakeTaskViewCallback:Ljava/lang/Runnable;

    if-eqz v2, :cond_3

    .line 316
    iget-object v3, p0, Lcom/android/quickstep/interaction/TutorialController;->mFakeTaskView:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 317
    iput-object v1, p0, Lcom/android/quickstep/interaction/TutorialController;->mFakeTaskViewCallback:Ljava/lang/Runnable;

    .line 320
    :cond_3
    iput-boolean p4, p0, Lcom/android/quickstep/interaction/TutorialController;->mGestureCompleted:Z

    .line 322
    iget-object v1, p0, Lcom/android/quickstep/interaction/TutorialController;->mTutorialFragment:Lcom/android/quickstep/interaction/TutorialFragment;

    invoke-virtual {v1}, Lcom/android/quickstep/interaction/TutorialFragment;->getGestureAnimation()Landroid/animation/Animator;

    move-result-object v1

    .line 323
    .local v1, "gestureAnimation":Landroid/animation/Animator;
    iget-object v2, p0, Lcom/android/quickstep/interaction/TutorialController;->mTutorialFragment:Lcom/android/quickstep/interaction/TutorialFragment;

    invoke-virtual {v2}, Lcom/android/quickstep/interaction/TutorialFragment;->getEdgeAnimation()Landroid/graphics/drawable/AnimatedVectorDrawable;

    move-result-object v2

    .line 324
    .local v2, "edgeAnimation":Landroid/graphics/drawable/AnimatedVectorDrawable;
    if-nez p4, :cond_4

    if-eqz v1, :cond_4

    if-eqz v2, :cond_4

    .line 325
    iget-object v3, p0, Lcom/android/quickstep/interaction/TutorialController;->mShowFeedbackRunnable:Ljava/lang/Runnable;

    invoke-direct {p0, v1, v2, v3, p5}, Lcom/android/quickstep/interaction/TutorialController;->playFeedbackAnimation(Landroid/animation/Animator;Landroid/graphics/drawable/AnimatedVectorDrawable;Ljava/lang/Runnable;Z)V

    .line 330
    return-void

    .line 332
    :cond_4
    iget-object v3, p0, Lcom/android/quickstep/interaction/TutorialController;->mTutorialFragment:Lcom/android/quickstep/interaction/TutorialFragment;

    invoke-virtual {v3}, Lcom/android/quickstep/interaction/TutorialFragment;->releaseFeedbackAnimation()V

    .line 334
    iget-object v3, p0, Lcom/android/quickstep/interaction/TutorialController;->mShowFeedbackRunnable:Ljava/lang/Runnable;

    iput-object v3, p0, Lcom/android/quickstep/interaction/TutorialController;->mFeedbackViewCallback:Ljava/lang/Runnable;

    .line 336
    iget-object v4, p0, Lcom/android/quickstep/interaction/TutorialController;->mFeedbackView:Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 337
    return-void
.end method

.method showFeedback(IZ)V
    .locals 7
    .param p1, "subtitleResId"    # I
    .param p2, "isGestureSuccessful"    # Z

    .line 282
    nop

    .line 283
    if-eqz p2, :cond_0

    .line 284
    sget v0, Lcom/android/launcher3/R$string;->gesture_tutorial_nice:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/android/launcher3/R$string;->gesture_tutorial_try_again:I

    :goto_0
    move v2, v0

    const/4 v4, -0x1

    const/4 v6, 0x0

    .line 282
    move-object v1, p0

    move v3, p1

    move v5, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/quickstep/interaction/TutorialController;->showFeedback(IIIZZ)V

    .line 289
    return-void
.end method

.method showRippleEffect(Ljava/lang/Runnable;)V
    .locals 4
    .param p1, "onCompleteRunnable"    # Ljava/lang/Runnable;

    .line 423
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mRippleDrawable:Landroid/graphics/drawable/RippleDrawable;

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/RippleDrawable;->setState([I)Z

    .line 425
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mRippleView:Landroid/view/View;

    new-instance v1, Lcom/android/quickstep/interaction/TutorialController$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/android/quickstep/interaction/TutorialController$$ExternalSyntheticLambda3;-><init>(Lcom/android/quickstep/interaction/TutorialController;Ljava/lang/Runnable;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 431
    return-void

    :array_0
    .array-data 4
        0x10100a7
        0x101009e
    .end array-data
.end method

.method showSuccessFeedback()V
    .locals 4

    .line 255
    invoke-virtual {p0}, Lcom/android/quickstep/interaction/TutorialController;->getSuccessFeedbackSubtitle()I

    move-result v0

    .line 256
    .local v0, "successSubtitleResId":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 259
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot show success feedback for tutorial step: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/quickstep/interaction/TutorialController;->mTutorialType:Lcom/android/quickstep/interaction/TutorialController$TutorialType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", no success feedback subtitle"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    const-string v3, "TutorialController"

    invoke-static {v3, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 264
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/quickstep/interaction/TutorialController;->showFeedback(IZ)V

    .line 265
    return-void
.end method

.method transitToController()V
    .locals 2

    .line 439
    invoke-virtual {p0}, Lcom/android/quickstep/interaction/TutorialController;->hideFeedback()V

    .line 440
    invoke-virtual {p0}, Lcom/android/quickstep/interaction/TutorialController;->hideActionButton()V

    .line 441
    invoke-virtual {p0}, Lcom/android/quickstep/interaction/TutorialController;->updateCloseButton()V

    .line 442
    invoke-direct {p0}, Lcom/android/quickstep/interaction/TutorialController;->updateSubtext()V

    .line 443
    invoke-direct {p0}, Lcom/android/quickstep/interaction/TutorialController;->updateDrawables()V

    .line 444
    invoke-direct {p0}, Lcom/android/quickstep/interaction/TutorialController;->updateLayout()V

    .line 446
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mGestureCompleted:Z

    .line 447
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mFakeHotseatView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 448
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 450
    :cond_0
    return-void
.end method

.method updateCloseButton()V
    .locals 2

    .line 453
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mSkipButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/quickstep/interaction/TutorialController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/launcher3/Utilities;->isDarkTheme(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 454
    sget v1, Lcom/android/launcher3/R$style;->TextAppearance_GestureTutorial_Feedback_Subtext:I

    goto :goto_0

    .line 455
    :cond_0
    sget v1, Lcom/android/launcher3/R$style;->TextAppearance_GestureTutorial_Feedback_Subtext_Dark:I

    .line 453
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 456
    return-void
.end method

.method updateFakeAppTaskViewLayout(I)V
    .locals 1
    .param p1, "mockAppTaskLayoutResId"    # I

    .line 504
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mFakeTaskView:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0, p1}, Lcom/android/quickstep/interaction/TutorialController;->updateFakeViewLayout(Landroid/view/ViewGroup;I)V

    .line 505
    return-void
.end method

.method updateFakeViewLayout(Landroid/view/ViewGroup;I)V
    .locals 3
    .param p1, "view"    # Landroid/view/ViewGroup;
    .param p2, "mockLayoutResId"    # I

    .line 508
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 509
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 510
    iget-object v1, p0, Lcom/android/quickstep/interaction/TutorialController;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    .line 511
    invoke-static {v1, p2, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 510
    invoke-virtual {p1, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 516
    :cond_0
    return-void
.end method
