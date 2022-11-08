.class public Lcom/android/quickstep/TaskOverlayFactory;
.super Ljava/lang/Object;
.source "TaskOverlayFactory.java"

# interfaces
.implements Lcom/android/launcher3/util/ResourceBasedOverride;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/TaskOverlayFactory$OverlayUICallbacks;,
        Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;
    }
.end annotation


# static fields
.field private static final MENU_OPTIONS:[Lcom/android/quickstep/TaskShortcutFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 175
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/android/quickstep/TaskShortcutFactory;

    sget-object v1, Lcom/android/quickstep/TaskShortcutFactory;->APP_INFO:Lcom/android/quickstep/TaskShortcutFactory;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/quickstep/TaskShortcutFactory;->SPLIT_SCREEN:Lcom/android/quickstep/TaskShortcutFactory;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/quickstep/TaskShortcutFactory;->PIN:Lcom/android/quickstep/TaskShortcutFactory;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/quickstep/TaskShortcutFactory;->INSTALL:Lcom/android/quickstep/TaskShortcutFactory;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/quickstep/TaskShortcutFactory;->FREE_FORM:Lcom/android/quickstep/TaskShortcutFactory;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/quickstep/TaskShortcutFactory;->SOMC_FREE_FORM:Lcom/android/quickstep/TaskShortcutFactory;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/quickstep/TaskShortcutFactory;->WELLBEING:Lcom/android/quickstep/TaskShortcutFactory;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/quickstep/TaskOverlayFactory;->MENU_OPTIONS:[Lcom/android/quickstep/TaskShortcutFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addSplitOptions(Ljava/util/List;Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/quickstep/views/TaskView;Lcom/android/launcher3/DeviceProfile;)V
    .locals 16
    .param p1, "activity"    # Lcom/android/launcher3/BaseDraggingActivity;
    .param p2, "taskView"    # Lcom/android/quickstep/views/TaskView;
    .param p3, "deviceProfile"    # Lcom/android/launcher3/DeviceProfile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/popup/SystemShortcut;",
            ">;",
            "Lcom/android/launcher3/BaseDraggingActivity;",
            "Lcom/android/quickstep/views/TaskView;",
            "Lcom/android/launcher3/DeviceProfile;",
            ")V"
        }
    .end annotation

    .line 131
    .local p0, "outShortcuts":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/popup/SystemShortcut;>;"
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual/range {p2 .. p2}, Lcom/android/quickstep/views/TaskView;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object v2

    .line 132
    .local v2, "recentsView":Lcom/android/quickstep/views/RecentsView;
    invoke-virtual {v2}, Lcom/android/quickstep/views/RecentsView;->getPagedOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v3

    .line 133
    .local v3, "orientationHandler":Lcom/android/launcher3/touch/PagedOrientationHandler;
    invoke-virtual/range {p2 .. p2}, Lcom/android/quickstep/views/TaskView;->getTaskIds()[I

    move-result-object v4

    .line 134
    .local v4, "taskViewTaskIds":[I
    const/4 v5, 0x0

    aget v6, v4, v5

    const/4 v7, -0x1

    const/4 v8, 0x1

    if-eq v6, v7, :cond_0

    aget v6, v4, v8

    if-eq v6, v7, :cond_0

    move v6, v8

    goto :goto_0

    :cond_0
    move v6, v5

    .line 136
    .local v6, "taskViewHasMultipleTasks":Z
    :goto_0
    invoke-virtual {v2}, Lcom/android/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result v7

    const/4 v9, 0x2

    if-ge v7, v9, :cond_1

    move v7, v8

    goto :goto_1

    :cond_1
    move v7, v5

    .line 137
    .local v7, "notEnoughTasksToSplit":Z
    :goto_1
    iget-boolean v9, v1, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    if-eqz v9, :cond_2

    invoke-virtual/range {p2 .. p2}, Lcom/android/quickstep/views/TaskView;->isFocusedTask()Z

    move-result v9

    if-eqz v9, :cond_2

    move v5, v8

    .line 138
    .local v5, "isFocusedTask":Z
    :cond_2
    nop

    .line 139
    invoke-virtual {v2, v0}, Lcom/android/quickstep/views/RecentsView;->indexOfChild(Landroid/view/View;)I

    move-result v8

    invoke-virtual {v2, v8}, Lcom/android/quickstep/views/RecentsView;->isTaskInExpectedScrollPosition(I)Z

    move-result v8

    .line 140
    .local v8, "isTaskInExpectedScrollPosition":Z
    nop

    .line 141
    invoke-virtual/range {p2 .. p2}, Lcom/android/quickstep/views/TaskView;->getContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "activity"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/ActivityManager;

    .line 142
    .local v9, "activityManager":Landroid/app/ActivityManager;
    invoke-virtual {v9}, Landroid/app/ActivityManager;->isInLockTaskMode()Z

    move-result v10

    .line 144
    .local v10, "isLockTaskMode":Z
    if-nez v6, :cond_5

    if-nez v7, :cond_5

    if-nez v10, :cond_5

    if-eqz v5, :cond_3

    if-eqz v8, :cond_3

    move-object/from16 v0, p0

    move-object/from16 v15, p1

    goto :goto_3

    .line 149
    :cond_3
    nop

    .line 150
    invoke-interface {v3, v1}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getSplitPositionOptions(Lcom/android/launcher3/DeviceProfile;)Ljava/util/List;

    move-result-object v11

    .line 151
    .local v11, "positions":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;>;"
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;

    .line 152
    .local v13, "option":Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;
    new-instance v14, Lcom/android/quickstep/TaskShortcutFactory$SplitSelectSystemShortcut;

    move-object/from16 v15, p1

    invoke-direct {v14, v15, v0, v13}, Lcom/android/quickstep/TaskShortcutFactory$SplitSelectSystemShortcut;-><init>(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/quickstep/views/TaskView;Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;)V

    move-object/from16 v0, p0

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    .end local v13    # "option":Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;
    move-object/from16 v0, p2

    goto :goto_2

    .line 154
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v15, p1

    return-void

    .line 144
    .end local v11    # "positions":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;>;"
    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v15, p1

    .line 146
    :goto_3
    return-void
.end method

.method public static getEnabledShortcuts(Lcom/android/quickstep/views/TaskView;Lcom/android/launcher3/DeviceProfile;Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;)Ljava/util/List;
    .locals 11
    .param p0, "taskView"    # Lcom/android/quickstep/views/TaskView;
    .param p1, "deviceProfile"    # Lcom/android/launcher3/DeviceProfile;
    .param p2, "taskContainer"    # Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/TaskView;",
            "Lcom/android/launcher3/DeviceProfile;",
            "Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/launcher3/popup/SystemShortcut;",
            ">;"
        }
    .end annotation

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 75
    .local v0, "shortcuts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/popup/SystemShortcut;>;"
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/BaseDraggingActivity;

    .line 76
    .local v1, "activity":Lcom/android/launcher3/BaseDraggingActivity;
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getTaskIds()[I

    move-result-object v2

    const/4 v3, 0x1

    aget v2, v2, v3

    const/4 v4, 0x0

    const/4 v5, -0x1

    if-eq v2, v5, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    .line 77
    .local v2, "hasMultipleTasks":Z
    :goto_0
    sget-object v5, Lcom/android/quickstep/TaskOverlayFactory;->MENU_OPTIONS:[Lcom/android/quickstep/TaskShortcutFactory;

    array-length v6, v5

    move v7, v4

    :goto_1
    if-ge v7, v6, :cond_4

    aget-object v8, v5, v7

    .line 78
    .local v8, "menuOption":Lcom/android/quickstep/TaskShortcutFactory;
    if-eqz v2, :cond_1

    invoke-interface {v8}, Lcom/android/quickstep/TaskShortcutFactory;->showForSplitscreen()Z

    move-result v9

    if-nez v9, :cond_1

    .line 79
    goto :goto_2

    .line 82
    :cond_1
    invoke-interface {v8, v1, p2}, Lcom/android/quickstep/TaskShortcutFactory;->getShortcut(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;)Lcom/android/launcher3/popup/SystemShortcut;

    move-result-object v9

    .line 83
    .local v9, "shortcut":Lcom/android/launcher3/popup/SystemShortcut;
    if-nez v9, :cond_2

    .line 84
    goto :goto_2

    .line 87
    :cond_2
    sget-object v10, Lcom/android/quickstep/TaskShortcutFactory;->SPLIT_SCREEN:Lcom/android/quickstep/TaskShortcutFactory;

    if-ne v8, v10, :cond_3

    sget-object v10, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_SPLIT_SELECT:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    .line 88
    invoke-virtual {v10}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 89
    invoke-static {v0, v1, p0, p1}, Lcom/android/quickstep/TaskOverlayFactory;->addSplitOptions(Ljava/util/List;Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/quickstep/views/TaskView;Lcom/android/launcher3/DeviceProfile;)V

    goto :goto_2

    .line 91
    :cond_3
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    .end local v8    # "menuOption":Lcom/android/quickstep/TaskShortcutFactory;
    .end local v9    # "shortcut":Lcom/android/launcher3/popup/SystemShortcut;
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 94
    :cond_4
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/quickstep/views/RecentsView;->getPagedViewOrientedState()Lcom/android/quickstep/util/RecentsOrientedState;

    move-result-object v5

    .line 95
    .local v5, "orientedState":Lcom/android/quickstep/util/RecentsOrientedState;
    invoke-virtual {v5}, Lcom/android/quickstep/util/RecentsOrientedState;->isRecentsActivityRotationAllowed()Z

    move-result v6

    .line 96
    .local v6, "canLauncherRotate":Z
    invoke-virtual {v5}, Lcom/android/quickstep/util/RecentsOrientedState;->getTouchRotation()I

    move-result v7

    if-eqz v7, :cond_5

    goto :goto_3

    :cond_5
    move v3, v4

    .line 99
    .local v3, "isInLandscape":Z
    :goto_3
    if-nez v6, :cond_7

    if-eqz v3, :cond_7

    .line 101
    sget-object v4, Lcom/android/quickstep/TaskShortcutFactory;->SCREENSHOT:Lcom/android/quickstep/TaskShortcutFactory;

    .line 102
    invoke-interface {v4, v1, p2}, Lcom/android/quickstep/TaskShortcutFactory;->getShortcut(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;)Lcom/android/launcher3/popup/SystemShortcut;

    move-result-object v4

    .line 103
    .local v4, "screenshotShortcut":Lcom/android/launcher3/popup/SystemShortcut;
    if-eqz v4, :cond_6

    .line 104
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    :cond_6
    invoke-virtual {v5}, Lcom/android/quickstep/util/RecentsOrientedState;->getDisplayRotation()I

    move-result v7

    if-nez v7, :cond_7

    .line 109
    sget-object v7, Lcom/android/quickstep/TaskShortcutFactory;->MODAL:Lcom/android/quickstep/TaskShortcutFactory;

    .line 110
    invoke-interface {v7, v1, p2}, Lcom/android/quickstep/TaskShortcutFactory;->getShortcut(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;)Lcom/android/launcher3/popup/SystemShortcut;

    move-result-object v7

    .line 111
    .local v7, "modalShortcut":Lcom/android/launcher3/popup/SystemShortcut;
    if-eqz v7, :cond_7

    .line 112
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    .end local v4    # "screenshotShortcut":Lcom/android/launcher3/popup/SystemShortcut;
    .end local v7    # "modalShortcut":Lcom/android/launcher3/popup/SystemShortcut;
    :cond_7
    return-object v0
.end method


# virtual methods
.method public createOverlay(Lcom/android/quickstep/views/TaskThumbnailView;)Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;
    .locals 1
    .param p1, "thumbnailView"    # Lcom/android/quickstep/views/TaskThumbnailView;

    .line 157
    new-instance v0, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;

    invoke-direct {v0, p1}, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;-><init>(Lcom/android/quickstep/views/TaskThumbnailView;)V

    return-object v0
.end method

.method public initListeners()V
    .locals 0

    .line 165
    return-void
.end method

.method public removeListeners()V
    .locals 0

    .line 172
    return-void
.end method
