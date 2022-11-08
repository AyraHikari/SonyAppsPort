.class public Lcom/android/launcher3/allapps/WorkModeSwitch;
.super Landroid/widget/Button;
.source "WorkModeSwitch.java"

# interfaces
.implements Lcom/android/launcher3/Insettable;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback$KeyboardInsetListener;
.implements Lcom/android/launcher3/workprofile/PersonalWorkSlidingTabStrip$OnActivePageChangedListener;


# static fields
.field private static final FLAG_FADE_ONGOING:I = 0x2

.field private static final FLAG_PROFILE_TOGGLE_ONGOING:I = 0x8

.field private static final FLAG_TRANSLATION_ONGOING:I = 0x4


# instance fields
.field private mFlags:I

.field private final mInsets:Landroid/graphics/Rect;

.field private mOnWorkTab:Z

.field private mWorkEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 57
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher3/allapps/WorkModeSwitch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/allapps/WorkModeSwitch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 65
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/WorkModeSwitch;->mInsets:Landroid/graphics/Rect;

    .line 66
    return-void
.end method

.method private removeFlag(I)V
    .locals 2
    .param p1, "flag"    # I

    .line 199
    iget v0, p0, Lcom/android/launcher3/allapps/WorkModeSwitch;->mFlags:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/allapps/WorkModeSwitch;->mFlags:I

    .line 200
    return-void
.end method

.method private setFlag(I)V
    .locals 1
    .param p1, "flag"    # I

    .line 195
    iget v0, p0, Lcom/android/launcher3/allapps/WorkModeSwitch;->mFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/launcher3/allapps/WorkModeSwitch;->mFlags:I

    .line 196
    return-void
.end method

.method private updateVisibility()V
    .locals 3

    .line 158
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/WorkModeSwitch;->clearAnimation()V

    .line 159
    iget-boolean v0, p0, Lcom/android/launcher3/allapps/WorkModeSwitch;->mWorkEnabled:Z

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher3/allapps/WorkModeSwitch;->mOnWorkTab:Z

    if-eqz v0, :cond_0

    .line 160
    invoke-direct {p0, v1}, Lcom/android/launcher3/allapps/WorkModeSwitch;->setFlag(I)V

    .line 161
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/WorkModeSwitch;->setVisibility(I)V

    .line 162
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/WorkModeSwitch;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/allapps/WorkModeSwitch$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/launcher3/allapps/WorkModeSwitch$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/allapps/WorkModeSwitch;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 163
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/WorkModeSwitch;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_1

    .line 164
    invoke-direct {p0, v1}, Lcom/android/launcher3/allapps/WorkModeSwitch;->setFlag(I)V

    .line 165
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/WorkModeSwitch;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/allapps/WorkModeSwitch$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/launcher3/allapps/WorkModeSwitch$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/allapps/WorkModeSwitch;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 168
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 170
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public isEnabled()Z
    .locals 1

    .line 143
    invoke-super {p0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/WorkModeSwitch;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/launcher3/allapps/WorkModeSwitch;->mFlags:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method synthetic lambda$updateVisibility$0$com-android-launcher3-allapps-WorkModeSwitch()V
    .locals 1

    .line 162
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/launcher3/allapps/WorkModeSwitch;->removeFlag(I)V

    return-void
.end method

.method synthetic lambda$updateVisibility$1$com-android-launcher3-allapps-WorkModeSwitch()V
    .locals 1

    .line 166
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/launcher3/allapps/WorkModeSwitch;->removeFlag(I)V

    .line 167
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/WorkModeSwitch;->setVisibility(I)V

    .line 168
    return-void
.end method

.method public onActivePageChanged(I)V
    .locals 1
    .param p1, "page"    # I

    .line 127
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/launcher3/allapps/WorkModeSwitch;->mOnWorkTab:Z

    .line 128
    invoke-direct {p0}, Lcom/android/launcher3/allapps/WorkModeSwitch;->updateVisibility()V

    .line 129
    return-void
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 3
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .line 174
    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_R:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/WorkModeSwitch;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/WorkModeSwitch;->setTranslationY(F)V

    .line 176
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/WindowInsets;->isVisible(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v0

    .line 178
    .local v0, "keyboardInsets":Landroid/graphics/Insets;
    iget-object v1, p0, Lcom/android/launcher3/allapps/WorkModeSwitch;->mInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget v2, v0, Landroid/graphics/Insets;->bottom:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/allapps/WorkModeSwitch;->setTranslationY(F)V

    .line 181
    .end local v0    # "keyboardInsets":Landroid/graphics/Insets;
    :cond_0
    return-object p1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 133
    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_P:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/WorkModeSwitch;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/android/launcher3/allapps/WorkModeSwitch;->setFlag(I)V

    .line 135
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/WorkModeSwitch;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    .line 136
    .local v0, "activityContext":Lcom/android/launcher3/views/ActivityContext;
    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_TURN_OFF_WORK_APPS_TAP:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-interface {v1, v2}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    .line 137
    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getWorkManager()Lcom/android/launcher3/allapps/WorkProfileManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/launcher3/allapps/WorkProfileManager;->setWorkProfileEnabled(Z)V

    .line 139
    .end local v0    # "activityContext":Lcom/android/launcher3/views/ActivityContext;
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .line 70
    invoke-super {p0}, Landroid/widget/Button;->onFinishInflate()V

    .line 71
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/WorkModeSwitch;->setSelected(Z)V

    .line 72
    invoke-virtual {p0, p0}, Lcom/android/launcher3/allapps/WorkModeSwitch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_R:Z

    if-eqz v0, :cond_0

    .line 74
    new-instance v0, Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback;

    invoke-direct {v0, p0}, Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback;-><init>(Landroid/view/View;)V

    .line 76
    .local v0, "keyboardInsetAnimationCallback":Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback;
    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/WorkModeSwitch;->setWindowInsetsAnimationCallback(Landroid/view/WindowInsetsAnimation$Callback;)V

    .line 78
    .end local v0    # "keyboardInsetAnimationCallback":Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback;
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/WorkModeSwitch;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    .line 79
    .local v0, "activityContext":Lcom/android/launcher3/views/ActivityContext;
    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    .line 80
    .local v1, "grid":Lcom/android/launcher3/DeviceProfile;
    invoke-virtual {v1}, Lcom/android/launcher3/DeviceProfile;->getInsets()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/launcher3/allapps/WorkModeSwitch;->setInsets(Landroid/graphics/Rect;)V

    .line 82
    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getStringCache()Lcom/android/launcher3/model/StringCache;

    move-result-object v2

    .line 83
    .local v2, "cache":Lcom/android/launcher3/model/StringCache;
    if-eqz v2, :cond_1

    .line 84
    iget-object v3, v2, Lcom/android/launcher3/model/StringCache;->workProfilePauseButton:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/launcher3/allapps/WorkModeSwitch;->setText(Ljava/lang/CharSequence;)V

    .line 86
    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 115
    invoke-super/range {p0 .. p5}, Landroid/widget/Button;->onLayout(ZIIII)V

    .line 116
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/WorkModeSwitch;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    .line 117
    .local v0, "dp":Lcom/android/launcher3/DeviceProfile;
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/WorkModeSwitch;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 118
    .local v1, "parent":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, v0, Lcom/android/launcher3/DeviceProfile;->allAppsLeftRightPadding:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    .line 120
    .local v2, "size":I
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/WorkModeSwitch;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/android/launcher3/workprofile/PersonalWorkSlidingTabStrip;->getTabWidth(Landroid/content/Context;I)I

    move-result v3

    .line 121
    .local v3, "tabWidth":I
    sub-int v4, v2, v3

    div-int/lit8 v4, v4, 0x2

    iget v5, v0, Lcom/android/launcher3/DeviceProfile;->allAppsLeftRightPadding:I

    add-int/2addr v4, v5

    .line 122
    .local v4, "shift":I
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/WorkModeSwitch;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v5}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v5

    if-eqz v5, :cond_0

    int-to-float v5, v4

    goto :goto_0

    :cond_0
    neg-int v5, v4

    int-to-float v5, v5

    :goto_0
    invoke-virtual {p0, v5}, Lcom/android/launcher3/allapps/WorkModeSwitch;->setTranslationX(F)V

    .line 123
    return-void
.end method

.method public onTranslationEnd()V
    .locals 1

    .line 191
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/launcher3/allapps/WorkModeSwitch;->removeFlag(I)V

    .line 192
    return-void
.end method

.method public onTranslationStart()V
    .locals 1

    .line 186
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/launcher3/allapps/WorkModeSwitch;->setFlag(I)V

    .line 187
    return-void
.end method

.method public setInsets(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "insets"    # Landroid/graphics/Rect;

    .line 90
    iget-object v0, p0, Lcom/android/launcher3/allapps/WorkModeSwitch;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 91
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/WorkModeSwitch;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 92
    .local v0, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    if-eqz v0, :cond_3

    .line 93
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/WorkModeSwitch;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/launcher3/R$dimen;->work_fab_margin_bottom:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 94
    .local v1, "bottomMargin":I
    sget-object v2, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_FLOATING_SEARCH_BAR:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v2}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 95
    shl-int/lit8 v1, v1, 0x1

    .line 96
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/WorkModeSwitch;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/launcher3/R$dimen;->qsb_widget_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 99
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/WorkModeSwitch;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v2}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v2

    .line 100
    .local v2, "dp":Lcom/android/launcher3/DeviceProfile;
    iget v3, v2, Lcom/android/launcher3/DeviceProfile;->allAppsLeftRightPadding:I

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 101
    iget-boolean v3, v2, Lcom/android/launcher3/DeviceProfile;->isGestureMode:Z

    if-nez v3, :cond_2

    .line 102
    iget-boolean v3, v2, Lcom/android/launcher3/DeviceProfile;->isTaskbarPresent:Z

    if-eqz v3, :cond_1

    .line 103
    iget v3, v2, Lcom/android/launcher3/DeviceProfile;->taskbarSize:I

    add-int/2addr v1, v3

    goto :goto_0

    .line 105
    :cond_1
    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v3

    .line 109
    :cond_2
    :goto_0
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 111
    .end local v1    # "bottomMargin":I
    .end local v2    # "dp":Lcom/android/launcher3/DeviceProfile;
    :cond_3
    return-void
.end method

.method public updateCurrentState(Z)V
    .locals 1
    .param p1, "isEnabled"    # Z

    .line 150
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/android/launcher3/allapps/WorkModeSwitch;->removeFlag(I)V

    .line 151
    iget-boolean v0, p0, Lcom/android/launcher3/allapps/WorkModeSwitch;->mWorkEnabled:Z

    if-eq v0, p1, :cond_0

    .line 152
    iput-boolean p1, p0, Lcom/android/launcher3/allapps/WorkModeSwitch;->mWorkEnabled:Z

    .line 153
    invoke-direct {p0}, Lcom/android/launcher3/allapps/WorkModeSwitch;->updateVisibility()V

    .line 155
    :cond_0
    return-void
.end method
