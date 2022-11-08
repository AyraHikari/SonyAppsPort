.class public Lcom/android/launcher3/hybridhotseat/HotseatEduDialog;
.super Lcom/android/launcher3/views/AbstractSlideInView;
.source "HotseatEduDialog.java"

# interfaces
.implements Lcom/android/launcher3/Insettable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/launcher3/views/AbstractSlideInView<",
        "Lcom/android/launcher3/Launcher;",
        ">;",
        "Lcom/android/launcher3/Insettable;"
    }
.end annotation


# static fields
.field private static final DEFAULT_CLOSE_DURATION:I = 0xc8

.field protected static final FINAL_SCRIM_BG_COLOR:I = -0x78000000

.field private static final MIGRATION_EXPERIMENT_IDENTIFIER:I = 0x1


# instance fields
.field private mDismissBtn:Landroid/widget/Button;

.field private mHotseatEduController:Lcom/android/launcher3/hybridhotseat/HotseatEduController;

.field private mHotseatWrapper:Landroid/view/View;

.field private final mInsets:Landroid/graphics/Rect;

.field private mSampleHotseat:Lcom/android/launcher3/CellLayout;


# direct methods
.method public static synthetic $r8$lambda$59Q9-TXwJv_qKCayFz2rQquGifA(Lcom/android/launcher3/hybridhotseat/HotseatEduDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/hybridhotseat/HotseatEduDialog;->onDismiss(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$l1TgCsJ24qHLJHd95ELQLaIDaLM(Lcom/android/launcher3/hybridhotseat/HotseatEduDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/hybridhotseat/HotseatEduDialog;->onAccept(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attr"    # Landroid/util/AttributeSet;

    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/hybridhotseat/HotseatEduDialog;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 79
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/views/AbstractSlideInView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatEduDialog;->mInsets:Landroid/graphics/Rect;

    .line 80
    iput-object p0, p0, Lcom/android/launcher3/hybridhotseat/HotseatEduDialog;->mContent:Landroid/view/ViewGroup;

    .line 81
    return-void
.end method

.method private animateOpen()V
    .locals 6

    .line 172
    iget-boolean v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatEduDialog;->mIsOpen:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatEduDialog;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 175
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatEduDialog;->mIsOpen:Z

    .line 176
    iget-object v1, p0, Lcom/android/launcher3/hybridhotseat/HotseatEduDialog;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    new-array v2, v0, [Landroid/animation/PropertyValuesHolder;

    sget-object v3, Lcom/android/launcher3/hybridhotseat/HotseatEduDialog;->TRANSLATION_SHIFT:Landroid/util/Property;

    new-array v0, v0, [F

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v4, v0, v5

    .line 177
    invoke-static {v3, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    aput-object v0, v2, v5

    .line 176
    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 178
    iget-object v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatEduDialog;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    sget-object v1, Lcom/android/launcher3/anim/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 179
    iget-object v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatEduDialog;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 180
    return-void

    .line 173
    :cond_1
    :goto_0
    return-void
.end method

.method public static getDialog(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/hybridhotseat/HotseatEduDialog;
    .locals 4
    .param p0, "launcher"    # Lcom/android/launcher3/Launcher;

    .line 230
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 231
    .local v0, "layoutInflater":Landroid/view/LayoutInflater;
    sget v1, Lcom/android/launcher3/R$layout;->predicted_hotseat_edu:I

    .line 232
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v2

    .line 231
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/hybridhotseat/HotseatEduDialog;

    return-object v1
.end method

.method private onAccept(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 126
    iget-object v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatEduDialog;->mHotseatEduController:Lcom/android/launcher3/hybridhotseat/HotseatEduController;

    invoke-virtual {v0}, Lcom/android/launcher3/hybridhotseat/HotseatEduController;->migrate()V

    .line 127
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/hybridhotseat/HotseatEduDialog;->handleClose(Z)V

    .line 129
    iget-object v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatEduDialog;->mHotseatEduController:Lcom/android/launcher3/hybridhotseat/HotseatEduController;

    invoke-virtual {v0}, Lcom/android/launcher3/hybridhotseat/HotseatEduController;->moveHotseatItems()V

    .line 130
    iget-object v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatEduDialog;->mHotseatEduController:Lcom/android/launcher3/hybridhotseat/HotseatEduController;

    invoke-virtual {v0}, Lcom/android/launcher3/hybridhotseat/HotseatEduController;->finishOnboarding()V

    .line 131
    iget-object v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatEduDialog;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_HOTSEAT_EDU_ACCEPT:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    .line 132
    return-void
.end method

.method private onDismiss(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 135
    iget-object v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatEduDialog;->mHotseatEduController:Lcom/android/launcher3/hybridhotseat/HotseatEduController;

    invoke-virtual {v0}, Lcom/android/launcher3/hybridhotseat/HotseatEduController;->showDimissTip()V

    .line 136
    iget-object v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatEduDialog;->mHotseatEduController:Lcom/android/launcher3/hybridhotseat/HotseatEduController;

    invoke-virtual {v0}, Lcom/android/launcher3/hybridhotseat/HotseatEduController;->finishOnboarding()V

    .line 137
    iget-object v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatEduDialog;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_HOTSEAT_EDU_DENY:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    .line 138
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/hybridhotseat/HotseatEduDialog;->handleClose(Z)V

    .line 139
    return-void
.end method

.method private populatePreview(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            ">;)V"
        }
    .end annotation

    .line 199
    .local p1, "predictions":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/hybridhotseat/HotseatEduDialog;->mActivityContext:Landroid/content/Context;

    check-cast v1, Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    iget v1, v1, Lcom/android/launcher3/DeviceProfile;->numShownHotseatIcons:I

    if-ge v0, v1, :cond_0

    .line 200
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    .line 201
    .local v7, "info":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    iget-object v1, p0, Lcom/android/launcher3/hybridhotseat/HotseatEduDialog;->mSampleHotseat:Lcom/android/launcher3/CellLayout;

    invoke-static {v1, v7}, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->createIcon(Landroid/view/ViewGroup;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Lcom/android/launcher3/uioverrides/PredictedAppIcon;

    move-result-object v8

    .line 202
    .local v8, "icon":Lcom/android/launcher3/uioverrides/PredictedAppIcon;
    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->setEnabled(Z)V

    .line 203
    const/4 v2, 0x2

    invoke-virtual {v8, v2}, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->setImportantForAccessibility(I)V

    .line 204
    invoke-virtual {v8}, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->verifyHighRes()V

    .line 205
    new-instance v5, Lcom/android/launcher3/CellLayout$LayoutParams;

    const/4 v2, 0x1

    invoke-direct {v5, v0, v1, v2, v2}, Lcom/android/launcher3/CellLayout$LayoutParams;-><init>(IIII)V

    .line 206
    .local v5, "lp":Lcom/android/launcher3/CellLayout$LayoutParams;
    iget-object v1, p0, Lcom/android/launcher3/hybridhotseat/HotseatEduDialog;->mSampleHotseat:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v7}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getViewId()I

    move-result v4

    const/4 v6, 0x1

    move-object v2, v8

    move v3, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/CellLayout;->addViewToCellLayout(Landroid/view/View;IILcom/android/launcher3/CellLayout$LayoutParams;Z)Z

    .line 199
    .end local v5    # "lp":Lcom/android/launcher3/CellLayout$LayoutParams;
    .end local v7    # "info":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .end local v8    # "icon":Lcom/android/launcher3/uioverrides/PredictedAppIcon;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 208
    .end local v0    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method protected getScrimColor(Landroid/content/Context;)I
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 195
    const/high16 v0, -0x78000000

    return v0
.end method

.method protected handleClose(Z)V
    .locals 3
    .param p1, "animate"    # Z

    .line 184
    const/4 v0, 0x1

    const-wide/16 v1, 0xc8

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/launcher3/hybridhotseat/HotseatEduDialog;->handleClose(ZJ)V

    .line 185
    return-void
.end method

.method protected isOfType(I)Z
    .locals 1
    .param p1, "type"    # I

    .line 143
    and-int/lit8 v0, p1, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 189
    invoke-super {p0, p1}, Lcom/android/launcher3/views/AbstractSlideInView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 190
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/hybridhotseat/HotseatEduDialog;->handleClose(Z)V

    .line 191
    return-void
.end method

.method protected onFinishInflate()V
    .locals 8

    .line 91
    invoke-super {p0}, Lcom/android/launcher3/views/AbstractSlideInView;->onFinishInflate()V

    .line 92
    sget v0, Lcom/android/launcher3/R$id;->hotseat_wrapper:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/hybridhotseat/HotseatEduDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatEduDialog;->mHotseatWrapper:Landroid/view/View;

    .line 93
    sget v0, Lcom/android/launcher3/R$id;->sample_prediction:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/hybridhotseat/HotseatEduDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    iput-object v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatEduDialog;->mSampleHotseat:Lcom/android/launcher3/CellLayout;

    .line 95
    invoke-virtual {p0}, Lcom/android/launcher3/hybridhotseat/HotseatEduDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 96
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Lcom/android/launcher3/hybridhotseat/HotseatEduDialog;->mActivityContext:Landroid/content/Context;

    check-cast v1, Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    .line 97
    .local v1, "grid":Lcom/android/launcher3/DeviceProfile;
    invoke-virtual {v1, v0}, Lcom/android/launcher3/DeviceProfile;->getHotseatLayoutPadding(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v2

    .line 99
    .local v2, "padding":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/android/launcher3/hybridhotseat/HotseatEduDialog;->mSampleHotseat:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v3}, Lcom/android/launcher3/CellLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v4, v1, Lcom/android/launcher3/DeviceProfile;->cellHeightPx:I

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 100
    iget-object v3, p0, Lcom/android/launcher3/hybridhotseat/HotseatEduDialog;->mSampleHotseat:Lcom/android/launcher3/CellLayout;

    iget v4, v1, Lcom/android/launcher3/DeviceProfile;->numShownHotseatIcons:I

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher3/CellLayout;->setGridSize(II)V

    .line 101
    iget-object v3, p0, Lcom/android/launcher3/hybridhotseat/HotseatEduDialog;->mSampleHotseat:Lcom/android/launcher3/CellLayout;

    iget v4, v2, Landroid/graphics/Rect;->left:I

    iget v5, v2, Landroid/graphics/Rect;->right:I

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6, v5, v6}, Lcom/android/launcher3/CellLayout;->setPadding(IIII)V

    .line 103
    sget v3, Lcom/android/launcher3/R$id;->turn_predictions_on:I

    invoke-virtual {p0, v3}, Lcom/android/launcher3/hybridhotseat/HotseatEduDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 104
    .local v3, "turnOnBtn":Landroid/widget/Button;
    new-instance v4, Lcom/android/launcher3/hybridhotseat/HotseatEduDialog$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lcom/android/launcher3/hybridhotseat/HotseatEduDialog$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/hybridhotseat/HotseatEduDialog;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    sget v4, Lcom/android/launcher3/R$id;->no_thanks:I

    invoke-virtual {p0, v4}, Lcom/android/launcher3/hybridhotseat/HotseatEduDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/launcher3/hybridhotseat/HotseatEduDialog;->mDismissBtn:Landroid/widget/Button;

    .line 107
    new-instance v5, Lcom/android/launcher3/hybridhotseat/HotseatEduDialog$$ExternalSyntheticLambda1;

    invoke-direct {v5, p0}, Lcom/android/launcher3/hybridhotseat/HotseatEduDialog$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/hybridhotseat/HotseatEduDialog;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    sget v4, Lcom/android/launcher3/R$id;->button_container:I

    invoke-virtual {p0, v4}, Lcom/android/launcher3/hybridhotseat/HotseatEduDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 110
    .local v4, "buttonContainer":Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/launcher3/uioverrides/ApiWrapper;->getHotseatEndOffset(Landroid/content/Context;)I

    move-result v5

    .line 111
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getPaddingEnd()I

    move-result v6

    sub-int/2addr v5, v6

    .line 112
    .local v5, "adjustedMarginEnd":I
    sget-object v6, Lcom/android/launcher3/InvariantDeviceProfile;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v6, v0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/InvariantDeviceProfile;

    .line 113
    invoke-virtual {v6, v0}, Lcom/android/launcher3/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lcom/android/launcher3/DeviceProfile;

    move-result-object v6

    iget-boolean v6, v6, Lcom/android/launcher3/DeviceProfile;->isTaskbarPresent:Z

    if-eqz v6, :cond_0

    if-lez v5, :cond_0

    .line 114
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 119
    :cond_0
    sget-object v6, Lcom/android/launcher3/config/FeatureFlags;->HOTSEAT_MIGRATE_TO_FOLDER:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v6}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 120
    sget v6, Lcom/android/launcher3/R$id;->hotseat_edu_content:I

    invoke-virtual {p0, v6}, Lcom/android/launcher3/hybridhotseat/HotseatEduDialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    sget v7, Lcom/android/launcher3/R$string;->hotseat_edu_message_migrate_alt:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 123
    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 85
    invoke-super/range {p0 .. p5}, Lcom/android/launcher3/views/AbstractSlideInView;->onLayout(ZIIII)V

    .line 86
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/android/launcher3/hybridhotseat/HotseatEduDialog;->setTranslationShift(F)V

    .line 87
    return-void
.end method

.method public setHotseatEduController(Lcom/android/launcher3/hybridhotseat/HotseatEduController;)V
    .locals 0
    .param p1, "hotseatEduController"    # Lcom/android/launcher3/hybridhotseat/HotseatEduController;

    .line 68
    iput-object p1, p0, Lcom/android/launcher3/hybridhotseat/HotseatEduDialog;->mHotseatEduController:Lcom/android/launcher3/hybridhotseat/HotseatEduController;

    .line 69
    return-void
.end method

.method public setInsets(Landroid/graphics/Rect;)V
    .locals 9
    .param p1, "insets"    # Landroid/graphics/Rect;

    .line 148
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/launcher3/hybridhotseat/HotseatEduDialog;->mInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    .line 149
    .local v0, "leftInset":I
    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/android/launcher3/hybridhotseat/HotseatEduDialog;->mInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    .line 150
    .local v1, "rightInset":I
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/android/launcher3/hybridhotseat/HotseatEduDialog;->mInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    .line 151
    .local v2, "bottomInset":I
    iget-object v3, p0, Lcom/android/launcher3/hybridhotseat/HotseatEduDialog;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {v3, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 152
    iget-object v3, p0, Lcom/android/launcher3/hybridhotseat/HotseatEduDialog;->mActivityContext:Landroid/content/Context;

    check-cast v3, Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getOrientation()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    .line 153
    invoke-virtual {p0}, Lcom/android/launcher3/hybridhotseat/HotseatEduDialog;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0, v0, v3, v1, v4}, Lcom/android/launcher3/hybridhotseat/HotseatEduDialog;->setPadding(IIII)V

    .line 154
    iget-object v3, p0, Lcom/android/launcher3/hybridhotseat/HotseatEduDialog;->mHotseatWrapper:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/launcher3/hybridhotseat/HotseatEduDialog;->getPaddingTop()I

    move-result v5

    iget-object v6, p0, Lcom/android/launcher3/hybridhotseat/HotseatEduDialog;->mHotseatWrapper:Landroid/view/View;

    .line 155
    invoke-virtual {v6}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    .line 154
    invoke-virtual {v3, v4, v5, v6, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 156
    iget-object v3, p0, Lcom/android/launcher3/hybridhotseat/HotseatEduDialog;->mHotseatWrapper:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher3/hybridhotseat/HotseatEduDialog;->mActivityContext:Landroid/content/Context;

    check-cast v4, Lcom/android/launcher3/Launcher;

    .line 157
    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v4

    iget v4, v4, Lcom/android/launcher3/DeviceProfile;->hotseatBarSizePx:I

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 160
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/hybridhotseat/HotseatEduDialog;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0, v4, v3, v4, v4}, Lcom/android/launcher3/hybridhotseat/HotseatEduDialog;->setPadding(IIII)V

    .line 161
    iget-object v3, p0, Lcom/android/launcher3/hybridhotseat/HotseatEduDialog;->mHotseatWrapper:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/launcher3/hybridhotseat/HotseatEduDialog;->getPaddingTop()I

    move-result v5

    iget-object v6, p0, Lcom/android/launcher3/hybridhotseat/HotseatEduDialog;->mHotseatWrapper:Landroid/view/View;

    .line 162
    invoke-virtual {v6}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    .line 163
    invoke-virtual {p0}, Lcom/android/launcher3/hybridhotseat/HotseatEduDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/android/launcher3/R$dimen;->bottom_sheet_edu_padding:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    .line 161
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 164
    sget v3, Lcom/android/launcher3/R$id;->hotseat_edu_heading:I

    invoke-virtual {p0, v3}, Lcom/android/launcher3/hybridhotseat/HotseatEduDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    sget v4, Lcom/android/launcher3/R$string;->hotseat_edu_title_migrate_landscape:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 166
    sget v3, Lcom/android/launcher3/R$id;->hotseat_edu_content:I

    invoke-virtual {p0, v3}, Lcom/android/launcher3/hybridhotseat/HotseatEduDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    sget v4, Lcom/android/launcher3/R$string;->hotseat_edu_message_migrate_landscape:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 169
    :goto_0
    return-void
.end method

.method public show(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            ">;)V"
        }
    .end annotation

    .line 214
    .local p1, "predictions":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/hybridhotseat/HotseatEduDialog;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    .line 215
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/hybridhotseat/HotseatEduDialog;->mActivityContext:Landroid/content/Context;

    check-cast v1, Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    iget v1, v1, Lcom/android/launcher3/DeviceProfile;->numShownHotseatIcons:I

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatEduDialog;->mHotseatEduController:Lcom/android/launcher3/hybridhotseat/HotseatEduController;

    if-nez v0, :cond_0

    goto :goto_0

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatEduDialog;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-static {v0}, Lcom/android/launcher3/AbstractFloatingView;->closeAllOpenViews(Lcom/android/launcher3/views/ActivityContext;)V

    .line 220
    invoke-virtual {p0}, Lcom/android/launcher3/hybridhotseat/HotseatEduDialog;->attachToContainer()V

    .line 221
    invoke-direct {p0}, Lcom/android/launcher3/hybridhotseat/HotseatEduDialog;->animateOpen()V

    .line 222
    invoke-direct {p0, p1}, Lcom/android/launcher3/hybridhotseat/HotseatEduDialog;->populatePreview(Ljava/util/List;)V

    .line 223
    iget-object v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatEduDialog;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_HOTSEAT_EDU_SEEN:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    .line 224
    return-void

    .line 217
    :cond_1
    :goto_0
    return-void
.end method
