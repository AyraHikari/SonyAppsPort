.class public Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;
.super Ljava/lang/Object;
.source "HotseatPredictionController.java"

# interfaces
.implements Lcom/android/launcher3/dragndrop/DragController$DragListener;
.implements Lcom/android/launcher3/popup/SystemShortcut$Factory;
.implements Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;
.implements Lcom/android/launcher3/DragSource;
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/hybridhotseat/HotseatPredictionController$PinPrediction;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/launcher3/dragndrop/DragController$DragListener;",
        "Lcom/android/launcher3/popup/SystemShortcut$Factory<",
        "Lcom/android/launcher3/uioverrides/QuickstepLauncher;",
        ">;",
        "Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;",
        "Lcom/android/launcher3/DragSource;",
        "Landroid/view/ViewGroup$OnHierarchyChangeListener;"
    }
.end annotation


# static fields
.field private static final FLAG_DRAG_IN_PROGRESS:I = 0x2

.field private static final FLAG_FILL_IN_PROGRESS:I = 0x4

.field private static final FLAG_REMOVING_PREDICTED_ICON:I = 0x8

.field private static final FLAG_UPDATE_PAUSED:I = 0x1


# instance fields
.field private mHotSeatItemsCount:I

.field private final mHotseat:Lcom/android/launcher3/Hotseat;

.field private mIconRemoveAnimators:Landroid/animation/AnimatorSet;

.field private mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

.field private mOutlineDrawings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/uioverrides/PredictedAppIcon$PredictedIconOutlineDrawing;",
            ">;"
        }
    .end annotation
.end field

.field private mPauseFlags:I

.field private mPredictedItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mPredictionLongClickListener:Landroid/view/View$OnLongClickListener;

.field private final mUpdateFillIfNotLoading:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$_6Q9z5vvS6hdtkQqNZwcgKNt_74(Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->updateFillIfNotLoading()V

    return-void
.end method

.method public static synthetic $r8$lambda$m9Yo8Qd_MuOd-cCvava8QQsQWNs(Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->removeOutlineDrawings()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmIconRemoveAnimators(Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;)Landroid/animation/AnimatorSet;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mIconRemoveAnimators:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mfillGapsWithPrediction(Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->fillGapsWithPrediction(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mremoveIconWithoutNotify(Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;Lcom/android/launcher3/uioverrides/PredictedAppIcon;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->removeIconWithoutNotify(Lcom/android/launcher3/uioverrides/PredictedAppIcon;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/uioverrides/QuickstepLauncher;)V
    .locals 2
    .param p1, "launcher"    # Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController$$ExternalSyntheticLambda5;-><init>(Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;)V

    iput-object v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mUpdateFillIfNotLoading:Ljava/lang/Runnable;

    .line 86
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mPredictedItems:Ljava/util/List;

    .line 89
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mPauseFlags:I

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mOutlineDrawings:Ljava/util/List;

    .line 93
    new-instance v0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController$$ExternalSyntheticLambda6;-><init>(Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;)V

    iput-object v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mPredictionLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 117
    iput-object p1, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    .line 118
    invoke-virtual {p1}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mHotseat:Lcom/android/launcher3/Hotseat;

    .line 119
    iget-object v1, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-virtual {v1}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    iget v1, v1, Lcom/android/launcher3/DeviceProfile;->numShownHotseatIcons:I

    iput v1, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mHotSeatItemsCount:I

    .line 120
    iget-object v1, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-virtual {v1}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->getDragController()Lcom/android/launcher3/dragndrop/DragController;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/launcher3/dragndrop/DragController;->addDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)V

    .line 122
    invoke-virtual {p1, p0}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->addOnDeviceProfileChangeListener(Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;)V

    .line 123
    invoke-virtual {v0}, Lcom/android/launcher3/Hotseat;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 124
    return-void
.end method

.method private applyPredictedItems(Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;)V
    .locals 1
    .param p1, "items"    # Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;

    .line 308
    iget-object v0, p1, Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;->items:Ljava/util/List;

    iput-object v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mPredictedItems:Ljava/util/List;

    .line 309
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-static {v0}, Lcom/android/launcher3/hybridhotseat/HotseatRestoreHelper;->restoreBackup(Landroid/content/Context;)V

    .line 312
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->fillGapsWithPrediction()V

    .line 313
    return-void
.end method

.method private bindItems(Ljava/util/List;Z)V
    .locals 6
    .param p2, "animate"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            ">;Z)V"
        }
    .end annotation

    .line 231
    .local p1, "itemsToAdd":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;"
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 232
    .local v0, "animationSet":Landroid/animation/AnimatorSet;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    .line 233
    .local v2, "item":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    iget-object v3, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mHotseat:Lcom/android/launcher3/Hotseat;

    invoke-static {v3, v2}, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->createIcon(Landroid/view/ViewGroup;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Lcom/android/launcher3/uioverrides/PredictedAppIcon;

    move-result-object v3

    .line 234
    .local v3, "icon":Lcom/android/launcher3/uioverrides/PredictedAppIcon;
    iget-object v4, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-virtual {v4}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v4

    invoke-virtual {v4, v3, v2}, Lcom/android/launcher3/Workspace;->addInScreenFromBind(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)V

    .line 235
    iget-object v4, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mPredictionLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v3, v4}, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->finishBinding(Landroid/view/View$OnLongClickListener;)V

    .line 236
    if-eqz p2, :cond_0

    .line 237
    sget-object v4, Lcom/android/launcher3/LauncherAnimUtils;->SCALE_PROPERTY:Landroid/util/FloatProperty;

    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_0

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 239
    .end local v2    # "item":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .end local v3    # "icon":Lcom/android/launcher3/uioverrides/PredictedAppIcon;
    :cond_0
    goto :goto_0

    .line 240
    :cond_1
    if-eqz p2, :cond_2

    .line 241
    new-instance v1, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;)V

    .line 242
    invoke-static {v1}, Lcom/android/launcher3/anim/AnimatorListeners;->forSuccessCallback(Ljava/lang/Runnable;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v1

    .line 241
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 243
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_1

    .line 245
    :cond_2
    invoke-direct {p0}, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->removeOutlineDrawings()V

    .line 247
    :goto_1
    return-void

    nop

    :array_0
    .array-data 4
        0x3e4ccccd    # 0.2f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private fillGapsWithPrediction()V
    .locals 1

    .line 171
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->fillGapsWithPrediction(Z)V

    .line 172
    return-void
.end method

.method private fillGapsWithPrediction(Z)V
    .locals 9
    .param p1, "animate"    # Z

    .line 175
    iget v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mPauseFlags:I

    if-eqz v0, :cond_0

    .line 176
    return-void

    .line 179
    :cond_0
    const/4 v0, 0x0

    .line 180
    .local v0, "predictionIndex":I
    const/4 v1, 0x0

    .line 181
    .local v1, "numViewsAnimated":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 183
    .local v2, "newItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;"
    iget-object v3, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mIconRemoveAnimators:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 184
    iget-object v3, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mIconRemoveAnimators:Landroid/animation/AnimatorSet;

    new-instance v4, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController$1;

    invoke-direct {v4, p0, p1}, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController$1;-><init>(Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;Z)V

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 191
    return-void

    .line 194
    :cond_1
    iget v3, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mPauseFlags:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mPauseFlags:I

    .line 195
    const/4 v3, 0x0

    .local v3, "rank":I
    :goto_0
    iget v4, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mHotSeatItemsCount:I

    if-ge v3, v4, :cond_7

    .line 196
    iget-object v4, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mHotseat:Lcom/android/launcher3/Hotseat;

    .line 197
    invoke-virtual {v4, v3}, Lcom/android/launcher3/Hotseat;->getCellXFromOrder(I)I

    move-result v5

    iget-object v6, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mHotseat:Lcom/android/launcher3/Hotseat;

    .line 198
    invoke-virtual {v6, v3}, Lcom/android/launcher3/Hotseat;->getCellYFromOrder(I)I

    move-result v6

    .line 196
    invoke-virtual {v4, v5, v6}, Lcom/android/launcher3/Hotseat;->getChildAt(II)Landroid/view/View;

    move-result-object v4

    .line 200
    .local v4, "child":Landroid/view/View;
    if-eqz v4, :cond_2

    invoke-static {v4}, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->isPredictedIcon(Landroid/view/View;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 201
    goto :goto_2

    .line 203
    :cond_2
    iget-object v5, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mPredictedItems:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-gt v5, v0, :cond_3

    .line 205
    invoke-static {v4}, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->isPredictedIcon(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 206
    iget-object v5, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mHotseat:Lcom/android/launcher3/Hotseat;

    invoke-virtual {v5, v4}, Lcom/android/launcher3/Hotseat;->removeView(Landroid/view/View;)V

    goto :goto_2

    .line 210
    :cond_3
    iget-object v5, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mPredictedItems:Ljava/util/List;

    add-int/lit8 v6, v0, 0x1

    .line 211
    .end local v0    # "predictionIndex":I
    .local v6, "predictionIndex":I
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    .line 212
    .local v0, "predictedItem":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    invoke-static {v4}, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->isPredictedIcon(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v4}, Landroid/view/View;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 213
    move-object v5, v4

    check-cast v5, Lcom/android/launcher3/uioverrides/PredictedAppIcon;

    .line 214
    .local v5, "icon":Lcom/android/launcher3/uioverrides/PredictedAppIcon;
    invoke-virtual {v5, v0}, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->shouldAnimateIconChange(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Z

    move-result v7

    .line 215
    .local v7, "animateIconChange":Z
    invoke-virtual {v5, v0, v7, v1}, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->applyFromWorkspaceItem(Lcom/android/launcher3/model/data/WorkspaceItemInfo;ZI)V

    .line 216
    if-eqz v7, :cond_4

    .line 217
    add-int/lit8 v1, v1, 0x1

    .line 219
    :cond_4
    iget-object v8, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mPredictionLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v5, v8}, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->finishBinding(Landroid/view/View$OnLongClickListener;)V

    .line 220
    .end local v5    # "icon":Lcom/android/launcher3/uioverrides/PredictedAppIcon;
    .end local v7    # "animateIconChange":Z
    goto :goto_1

    .line 221
    :cond_5
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 223
    :goto_1
    invoke-direct {p0, v0, v3}, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->preparePredictionInfo(Lcom/android/launcher3/model/data/WorkspaceItemInfo;I)V

    move v0, v6

    .line 195
    .end local v4    # "child":Landroid/view/View;
    .end local v6    # "predictionIndex":I
    .local v0, "predictionIndex":I
    :cond_6
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 225
    .end local v3    # "rank":I
    :cond_7
    invoke-direct {p0, v2, p1}, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->bindItems(Ljava/util/List;Z)V

    .line 227
    iget v3, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mPauseFlags:I

    and-int/lit8 v3, v3, -0x5

    iput v3, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mPauseFlags:I

    .line 228
    return-void
.end method

.method private getPredictedIcons()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/launcher3/uioverrides/PredictedAppIcon;",
            ">;"
        }
    .end annotation

    .line 337
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 338
    .local v0, "icons":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/uioverrides/PredictedAppIcon;>;"
    iget-object v1, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mHotseat:Lcom/android/launcher3/Hotseat;

    invoke-virtual {v1}, Lcom/android/launcher3/Hotseat;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v1

    .line 339
    .local v1, "vg":Landroid/view/ViewGroup;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 340
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 341
    .local v3, "child":Landroid/view/View;
    invoke-static {v3}, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->isPredictedIcon(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 342
    move-object v4, v3

    check-cast v4, Lcom/android/launcher3/uioverrides/PredictedAppIcon;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 339
    .end local v3    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 345
    .end local v2    # "i":I
    :cond_1
    return-object v0
.end method

.method private static isPredictedIcon(Landroid/view/View;)Z
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .line 514
    instance-of v0, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v0, :cond_0

    .line 515
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    iget v0, v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->container:I

    const/16 v1, -0x67

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 514
    :goto_0
    return v0
.end method

.method static synthetic lambda$showEdu$2(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .locals 1
    .param p0, "i"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 157
    move-object v0, p0

    check-cast v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    return-object v0
.end method

.method private onHotseatHierarchyChanged()V
    .locals 2

    .line 137
    iget v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mPauseFlags:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->isWorkspaceLoading()Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mUpdateFillIfNotLoading:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 140
    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mUpdateFillIfNotLoading:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 142
    :cond_0
    return-void
.end method

.method private preparePredictionInfo(Lcom/android/launcher3/model/data/WorkspaceItemInfo;I)V
    .locals 1
    .param p1, "itemInfo"    # Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .param p2, "rank"    # I

    .line 420
    const/16 v0, -0x67

    iput v0, p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->container:I

    .line 421
    iput p2, p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->rank:I

    .line 422
    iget-object v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mHotseat:Lcom/android/launcher3/Hotseat;

    invoke-virtual {v0, p2}, Lcom/android/launcher3/Hotseat;->getCellXFromOrder(I)I

    move-result v0

    iput v0, p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->cellX:I

    .line 423
    iget-object v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mHotseat:Lcom/android/launcher3/Hotseat;

    invoke-virtual {v0, p2}, Lcom/android/launcher3/Hotseat;->getCellYFromOrder(I)I

    move-result v0

    iput v0, p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->cellY:I

    .line 424
    iput p2, p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->screenId:I

    .line 425
    return-void
.end method

.method private removeIconWithoutNotify(Lcom/android/launcher3/uioverrides/PredictedAppIcon;)V
    .locals 1
    .param p1, "icon"    # Lcom/android/launcher3/uioverrides/PredictedAppIcon;

    .line 387
    iget v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mPauseFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mPauseFlags:I

    .line 388
    iget-object v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mHotseat:Lcom/android/launcher3/Hotseat;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/Hotseat;->removeView(Landroid/view/View;)V

    .line 389
    iget v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mPauseFlags:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mPauseFlags:I

    .line 390
    return-void
.end method

.method private removeOutlineDrawings()V
    .locals 3

    .line 250
    iget-object v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mOutlineDrawings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mOutlineDrawings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/uioverrides/PredictedAppIcon$PredictedIconOutlineDrawing;

    .line 252
    .local v1, "outlineDrawing":Lcom/android/launcher3/uioverrides/PredictedAppIcon$PredictedIconOutlineDrawing;
    iget-object v2, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mHotseat:Lcom/android/launcher3/Hotseat;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/Hotseat;->removeDelegatedCellDrawing(Lcom/android/launcher3/CellLayout$DelegatedCellDrawing;)V

    .line 253
    .end local v1    # "outlineDrawing":Lcom/android/launcher3/uioverrides/PredictedAppIcon$PredictedIconOutlineDrawing;
    goto :goto_0

    .line 254
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mHotseat:Lcom/android/launcher3/Hotseat;

    invoke-virtual {v0}, Lcom/android/launcher3/Hotseat;->invalidate()V

    .line 255
    iget-object v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mOutlineDrawings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 256
    return-void
.end method

.method private removePredictedApps(Ljava/util/List;Lcom/android/launcher3/DropTarget$DragObject;)V
    .locals 7
    .param p2, "dragObject"    # Lcom/android/launcher3/DropTarget$DragObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/uioverrides/PredictedAppIcon$PredictedIconOutlineDrawing;",
            ">;",
            "Lcom/android/launcher3/DropTarget$DragObject;",
            ")V"
        }
    .end annotation

    .line 350
    .local p1, "outlines":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/uioverrides/PredictedAppIcon$PredictedIconOutlineDrawing;>;"
    iget-object v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mIconRemoveAnimators:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 351
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 353
    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mIconRemoveAnimators:Landroid/animation/AnimatorSet;

    .line 354
    invoke-direct {p0}, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->removeOutlineDrawings()V

    .line 355
    invoke-direct {p0}, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->getPredictedIcons()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/uioverrides/PredictedAppIcon;

    .line 356
    .local v1, "icon":Lcom/android/launcher3/uioverrides/PredictedAppIcon;
    invoke-virtual {v1}, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 357
    goto :goto_0

    .line 359
    :cond_1
    iget-object v2, p2, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    if-ne v2, p0, :cond_2

    iget-object v2, p2, Lcom/android/launcher3/DropTarget$DragObject;->originalView:Lcom/android/launcher3/dragndrop/DraggableView;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 360
    invoke-direct {p0, v1}, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->removeIconWithoutNotify(Lcom/android/launcher3/uioverrides/PredictedAppIcon;)V

    .line 361
    goto :goto_0

    .line 363
    :cond_2
    invoke-virtual {v1}, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    iget v2, v2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->rank:I

    .line 364
    .local v2, "rank":I
    new-instance v3, Lcom/android/launcher3/uioverrides/PredictedAppIcon$PredictedIconOutlineDrawing;

    iget-object v4, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mHotseat:Lcom/android/launcher3/Hotseat;

    .line 365
    invoke-virtual {v4, v2}, Lcom/android/launcher3/Hotseat;->getCellXFromOrder(I)I

    move-result v4

    iget-object v5, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mHotseat:Lcom/android/launcher3/Hotseat;

    invoke-virtual {v5, v2}, Lcom/android/launcher3/Hotseat;->getCellYFromOrder(I)I

    move-result v5

    invoke-direct {v3, v4, v5, v1}, Lcom/android/launcher3/uioverrides/PredictedAppIcon$PredictedIconOutlineDrawing;-><init>(IILcom/android/launcher3/uioverrides/PredictedAppIcon;)V

    .line 364
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 366
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->setEnabled(Z)V

    .line 367
    sget-object v4, Lcom/android/launcher3/LauncherAnimUtils;->SCALE_PROPERTY:Landroid/util/FloatProperty;

    const/4 v5, 0x1

    new-array v5, v5, [F

    const/4 v6, 0x0

    aput v6, v5, v3

    invoke-static {v1, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 368
    .local v3, "animator":Landroid/animation/ObjectAnimator;
    new-instance v4, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController$2;

    invoke-direct {v4, p0, v1}, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController$2;-><init>(Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;Lcom/android/launcher3/uioverrides/PredictedAppIcon;)V

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 376
    iget-object v4, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mIconRemoveAnimators:Landroid/animation/AnimatorSet;

    invoke-virtual {v4, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 377
    .end local v1    # "icon":Lcom/android/launcher3/uioverrides/PredictedAppIcon;
    .end local v2    # "rank":I
    .end local v3    # "animator":Landroid/animation/ObjectAnimator;
    goto :goto_0

    .line 378
    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mIconRemoveAnimators:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 379
    return-void
.end method

.method private updateFillIfNotLoading()V
    .locals 1

    .line 145
    iget v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mPauseFlags:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->isWorkspaceLoading()Z

    move-result v0

    if-nez v0, :cond_0

    .line 146
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->fillGapsWithPrediction(Z)V

    .line 148
    :cond_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->removeOnDeviceProfileChangeListener(Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;)V

    .line 264
    return-void
.end method

.method public bridge synthetic getShortcut(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Lcom/android/launcher3/popup/SystemShortcut;
    .locals 0

    .line 71
    check-cast p1, Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->getShortcut(Lcom/android/launcher3/uioverrides/QuickstepLauncher;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Lcom/android/launcher3/popup/SystemShortcut;

    move-result-object p1

    return-object p1
.end method

.method public getShortcut(Lcom/android/launcher3/uioverrides/QuickstepLauncher;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Lcom/android/launcher3/popup/SystemShortcut;
    .locals 7
    .param p1, "activity"    # Lcom/android/launcher3/uioverrides/QuickstepLauncher;
    .param p2, "itemInfo"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p3, "originalView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/uioverrides/QuickstepLauncher;",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            "Landroid/view/View;",
            ")",
            "Lcom/android/launcher3/popup/SystemShortcut<",
            "Lcom/android/launcher3/uioverrides/QuickstepLauncher;",
            ">;"
        }
    .end annotation

    .line 413
    iget v0, p2, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v1, -0x67

    if-eq v0, v1, :cond_0

    .line 414
    const/4 v0, 0x0

    return-object v0

    .line 416
    :cond_0
    new-instance v0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController$PinPrediction;

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController$PinPrediction;-><init>(Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;Lcom/android/launcher3/uioverrides/QuickstepLauncher;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;Lcom/android/launcher3/hybridhotseat/HotseatPredictionController$PinPrediction-IA;)V

    return-object v0
.end method

.method public hasPredictions()Z
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mPredictedItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method synthetic lambda$new$0$com-android-launcher3-hybridhotseat-HotseatPredictionController()V
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-static {}, Lcom/android/launcher3/hybridhotseat/HotseatEduController;->getSettingsIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method synthetic lambda$new$1$com-android-launcher3-hybridhotseat-HotseatPredictionController(Landroid/view/View;)Z
    .locals 11
    .param p1, "v"    # Landroid/view/View;

    .line 94
    iget-object v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-static {v0}, Lcom/android/launcher3/touch/ItemLongClickListener;->canStartDrag(Lcom/android/launcher3/Launcher;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->isSwitchingState()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->getOnboardingPrefs()Lcom/android/launcher3/util/OnboardingPrefs;

    move-result-object v0

    const-string v2, "launcher.hotseat_longpress_tip_seen"

    invoke-virtual {v0, v2}, Lcom/android/launcher3/util/OnboardingPrefs;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v3, 0x1

    if-nez v0, :cond_2

    .line 98
    iget-object v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    sget v4, Lcom/android/launcher3/R$string;->hotseat_tip_gaps_filled:I

    sget v5, Lcom/android/launcher3/R$string;->hotseat_prediction_settings:I

    const/4 v6, 0x0

    new-instance v7, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController$$ExternalSyntheticLambda2;

    invoke-direct {v7, p0}, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController$$ExternalSyntheticLambda2;-><init>(Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;)V

    invoke-static {v0, v4, v5, v6, v7}, Lcom/android/launcher3/views/Snackbar;->show(Landroid/content/Context;IILjava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 101
    iget-object v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->getOnboardingPrefs()Lcom/android/launcher3/util/OnboardingPrefs;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/launcher3/util/OnboardingPrefs;->markChecked(Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/dragndrop/DragLayer;->performHapticFeedback(I)Z

    .line 103
    return v3

    .line 108
    :cond_2
    new-instance v8, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-direct {v8, v0}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;-><init>(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    .line 109
    .local v8, "dragItem":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 110
    iget-object v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v4

    const/4 v6, 0x0

    new-instance v9, Lcom/android/launcher3/graphics/DragPreviewProvider;

    invoke-direct {v9, p1}, Lcom/android/launcher3/graphics/DragPreviewProvider;-><init>(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    .line 112
    invoke-virtual {v0}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->getDefaultWorkspaceDragOptions()Lcom/android/launcher3/dragndrop/DragOptions;

    move-result-object v10

    .line 110
    move-object v5, p1

    move-object v7, p0

    invoke-virtual/range {v4 .. v10}, Lcom/android/launcher3/Workspace;->beginDragShared(Landroid/view/View;Lcom/android/launcher3/dragndrop/DraggableView;Lcom/android/launcher3/DragSource;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/graphics/DragPreviewProvider;Lcom/android/launcher3/dragndrop/DragOptions;)Lcom/android/launcher3/dragndrop/DragView;

    .line 113
    return v3
.end method

.method synthetic lambda$setPredictedItems$4$com-android-launcher3-hybridhotseat-HotseatPredictionController(Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "items"    # Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;
    .param p2, "isVisible"    # Ljava/lang/Boolean;

    .line 290
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    return-void

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mHotseat:Lcom/android/launcher3/Hotseat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Hotseat;->setOnVisibilityAggregatedCallback(Ljava/util/function/Consumer;)V

    .line 295
    invoke-direct {p0, p1}, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->applyPredictedItems(Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;)V

    .line 296
    return-void
.end method

.method synthetic lambda$showEdu$3$com-android-launcher3-hybridhotseat-HotseatPredictionController()V
    .locals 3

    .line 155
    new-instance v0, Lcom/android/launcher3/hybridhotseat/HotseatEduController;

    iget-object v1, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-direct {v0, v1}, Lcom/android/launcher3/hybridhotseat/HotseatEduController;-><init>(Lcom/android/launcher3/Launcher;)V

    .line 156
    .local v0, "eduController":Lcom/android/launcher3/hybridhotseat/HotseatEduController;
    iget-object v1, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mPredictedItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController$$ExternalSyntheticLambda0;-><init>()V

    .line 157
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 158
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 156
    invoke-virtual {v0, v1}, Lcom/android/launcher3/hybridhotseat/HotseatEduController;->setPredictedApps(Ljava/util/List;)V

    .line 159
    invoke-virtual {v0}, Lcom/android/launcher3/hybridhotseat/HotseatEduController;->showEdu()V

    .line 160
    return-void
.end method

.method public logLaunchedAppRankingInfo(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/logging/InstanceId;)V
    .locals 8
    .param p1, "itemInfo"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p2, "instanceId"    # Lcom/android/launcher3/logging/InstanceId;

    .line 441
    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 442
    .local v0, "targetCN":Landroid/content/ComponentName;
    if-nez v0, :cond_0

    .line 443
    return-void

    .line 445
    :cond_0
    const/4 v1, -0x1

    .line 446
    .local v1, "rank":I
    iget-object v2, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mPredictedItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 447
    iget-object v4, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mPredictedItems:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/model/data/ItemInfo;

    .line 448
    .local v4, "info":Lcom/android/launcher3/model/data/ItemInfo;
    invoke-virtual {v4}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    iget-object v6, v4, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v5, v6}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 449
    move v1, v2

    .line 450
    goto :goto_1

    .line 446
    .end local v4    # "info":Lcom/android/launcher3/model/data/ItemInfo;
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 453
    .end local v2    # "i":I
    :cond_2
    :goto_1
    if-gez v1, :cond_3

    .line 454
    return-void

    .line 457
    :cond_3
    const/4 v2, 0x0

    .line 458
    .local v2, "cardinality":I
    invoke-direct {p0}, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->getPredictedIcons()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/uioverrides/PredictedAppIcon;

    .line 459
    .local v5, "icon":Lcom/android/launcher3/uioverrides/PredictedAppIcon;
    invoke-virtual {v5}, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/model/data/ItemInfo;

    .line 460
    .local v6, "info":Lcom/android/launcher3/model/data/ItemInfo;
    iget v7, v6, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    shl-int v7, v3, v7

    or-int/2addr v2, v7

    .line 461
    .end local v5    # "icon":Lcom/android/launcher3/uioverrides/PredictedAppIcon;
    .end local v6    # "info":Lcom/android/launcher3/model/data/ItemInfo;
    goto :goto_2

    .line 463
    :cond_4
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;->newBuilder()Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer$Builder;

    move-result-object v3

    .line 464
    .local v3, "containerBuilder":Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer$Builder;
    invoke-virtual {v3, v2}, Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer$Builder;->setCardinality(I)Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer$Builder;

    .line 465
    iget v4, p1, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v5, -0x67

    if-ne v4, v5, :cond_5

    .line 466
    invoke-virtual {v3, v1}, Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer$Builder;->setIndex(I)Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer$Builder;

    .line 468
    :cond_5
    iget-object v4, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-virtual {v4}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v4

    .line 469
    invoke-interface {v4, p2}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withInstanceId(Lcom/android/launcher3/logging/InstanceId;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v4

    .line 470
    invoke-interface {v4, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withRank(I)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v4

    .line 471
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->newBuilder()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;

    move-result-object v5

    .line 472
    invoke-virtual {v5, v3}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->setPredictedHotseatContainer(Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer$Builder;)Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;

    move-result-object v5

    .line 473
    invoke-virtual {v5}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    .line 471
    invoke-interface {v4, v5}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withContainerInfo(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v4

    sget-object v5, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_HOTSEAT_RANKED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 474
    invoke-interface {v4, v5}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    .line 475
    return-void
.end method

.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;

    .line 128
    invoke-direct {p0}, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->onHotseatHierarchyChanged()V

    .line 129
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;

    .line 133
    invoke-direct {p0}, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->onHotseatHierarchyChanged()V

    .line 134
    return-void
.end method

.method public onDeferredDrop(II)V
    .locals 2
    .param p1, "cellX"    # I
    .param p2, "cellY"    # I

    .line 493
    iget-object v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mHotseat:Lcom/android/launcher3/Hotseat;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/Hotseat;->getChildAt(II)Landroid/view/View;

    move-result-object v0

    .line 494
    .local v0, "child":Landroid/view/View;
    instance-of v1, v0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;

    if-eqz v1, :cond_0

    .line 495
    move-object v1, v0

    check-cast v1, Lcom/android/launcher3/uioverrides/PredictedAppIcon;

    invoke-direct {p0, v1}, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->removeIconWithoutNotify(Lcom/android/launcher3/uioverrides/PredictedAppIcon;)V

    .line 497
    :cond_0
    return-void
.end method

.method public onDeviceProfileChanged(Lcom/android/launcher3/DeviceProfile;)V
    .locals 1
    .param p1, "profile"    # Lcom/android/launcher3/DeviceProfile;

    .line 429
    iget v0, p1, Lcom/android/launcher3/DeviceProfile;->numShownHotseatIcons:I

    iput v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mHotSeatItemsCount:I

    .line 430
    return-void
.end method

.method public onDragEnd()V
    .locals 1

    .line 405
    iget v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mPauseFlags:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mPauseFlags:I

    .line 406
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->fillGapsWithPrediction(Z)V

    .line 407
    return-void
.end method

.method public onDragStart(Lcom/android/launcher3/DropTarget$DragObject;Lcom/android/launcher3/dragndrop/DragOptions;)V
    .locals 3
    .param p1, "dragObject"    # Lcom/android/launcher3/DropTarget$DragObject;
    .param p2, "options"    # Lcom/android/launcher3/dragndrop/DragOptions;

    .line 394
    iget-object v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mOutlineDrawings:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->removePredictedApps(Ljava/util/List;Lcom/android/launcher3/DropTarget$DragObject;)V

    .line 395
    iget-object v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mOutlineDrawings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 396
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mOutlineDrawings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/uioverrides/PredictedAppIcon$PredictedIconOutlineDrawing;

    .line 397
    .local v1, "outlineDrawing":Lcom/android/launcher3/uioverrides/PredictedAppIcon$PredictedIconOutlineDrawing;
    iget-object v2, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mHotseat:Lcom/android/launcher3/Hotseat;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/Hotseat;->addDelegatedCellDrawing(Lcom/android/launcher3/CellLayout$DelegatedCellDrawing;)V

    .line 398
    .end local v1    # "outlineDrawing":Lcom/android/launcher3/uioverrides/PredictedAppIcon$PredictedIconOutlineDrawing;
    goto :goto_0

    .line 399
    :cond_1
    iget v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mPauseFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mPauseFlags:I

    .line 400
    iget-object v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mHotseat:Lcom/android/launcher3/Hotseat;

    invoke-virtual {v0}, Lcom/android/launcher3/Hotseat;->invalidate()V

    .line 401
    return-void
.end method

.method public onDropCompleted(Landroid/view/View;Lcom/android/launcher3/DropTarget$DragObject;Z)V
    .locals 0
    .param p1, "target"    # Landroid/view/View;
    .param p2, "d"    # Lcom/android/launcher3/DropTarget$DragObject;
    .param p3, "success"    # Z

    .line 435
    return-void
.end method

.method public onModelItemsRemoved(Ljava/util/function/Predicate;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .line 484
    .local p1, "matcher":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/launcher3/model/data/ItemInfo;>;"
    iget-object v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mPredictedItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 485
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->fillGapsWithPrediction(Z)V

    .line 487
    :cond_0
    return-void
.end method

.method public pinPrediction(Lcom/android/launcher3/model/data/ItemInfo;)V
    .locals 9
    .param p1, "info"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 319
    iget-object v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mHotseat:Lcom/android/launcher3/Hotseat;

    iget v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->rank:I

    .line 320
    invoke-virtual {v0, v1}, Lcom/android/launcher3/Hotseat;->getCellXFromOrder(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mHotseat:Lcom/android/launcher3/Hotseat;

    iget v3, p1, Lcom/android/launcher3/model/data/ItemInfo;->rank:I

    .line 321
    invoke-virtual {v2, v3}, Lcom/android/launcher3/Hotseat;->getCellYFromOrder(I)I

    move-result v2

    .line 319
    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/Hotseat;->getChildAt(II)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;

    .line 322
    .local v0, "icon":Lcom/android/launcher3/uioverrides/PredictedAppIcon;
    if-nez v0, :cond_0

    .line 323
    return-void

    .line 325
    :cond_0
    new-instance v1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-object v2, p1

    check-cast v2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-direct {v1, v2}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;-><init>(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    .line 326
    .local v1, "workspaceItemInfo":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    iget-object v2, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-virtual {v2}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v3

    const/16 v5, -0x65

    iget v6, v1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->screenId:I

    iget v7, v1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->cellX:I

    iget v8, v1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->cellY:I

    move-object v4, v1

    invoke-virtual/range {v3 .. v8}, Lcom/android/launcher3/model/ModelWriter;->addItemToDatabase(Lcom/android/launcher3/model/data/ItemInfo;IIII)V

    .line 329
    sget-object v2, Lcom/android/launcher3/LauncherAnimUtils;->SCALE_PROPERTY:Landroid/util/FloatProperty;

    const/4 v3, 0x3

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    .line 330
    invoke-virtual {v0, v1}, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->pin(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    .line 331
    iget-object v2, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-virtual {v2}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v2

    .line 332
    invoke-interface {v2, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v2

    sget-object v3, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_HOTSEAT_PREDICTION_PINNED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 333
    invoke-interface {v2, v3}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    .line 334
    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public setPauseUIUpdate(Z)V
    .locals 1
    .param p1, "paused"    # Z

    .line 270
    if-eqz p1, :cond_0

    .line 271
    iget v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mPauseFlags:I

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 272
    :cond_0
    iget v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mPauseFlags:I

    and-int/lit8 v0, v0, -0x2

    :goto_0
    iput v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mPauseFlags:I

    .line 273
    if-nez p1, :cond_1

    .line 274
    invoke-direct {p0}, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->fillGapsWithPrediction()V

    .line 276
    :cond_1
    return-void
.end method

.method public setPredictedItems(Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;)V
    .locals 3
    .param p1, "items"    # Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;

    .line 282
    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_APP_PREDICTIONS_WHILE_VISIBLE:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    .line 283
    invoke-virtual {v0}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->isWorkspaceLoading()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mPredictedItems:Ljava/util/List;

    iget-object v1, p1, Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;->items:Ljava/util/List;

    .line 284
    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mHotseat:Lcom/android/launcher3/Hotseat;

    .line 285
    invoke-virtual {v0}, Lcom/android/launcher3/Hotseat;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mHotSeatItemsCount:I

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 286
    .local v0, "shouldIgnoreVisibility":Z
    :goto_1
    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mHotseat:Lcom/android/launcher3/Hotseat;

    .line 287
    invoke-virtual {v1}, Lcom/android/launcher3/Hotseat;->isShown()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mHotseat:Lcom/android/launcher3/Hotseat;

    .line 288
    invoke-virtual {v1}, Lcom/android/launcher3/Hotseat;->getWindowVisibility()I

    move-result v1

    if-nez v1, :cond_2

    .line 289
    iget-object v1, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mHotseat:Lcom/android/launcher3/Hotseat;

    new-instance v2, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, p1}, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController$$ExternalSyntheticLambda4;-><init>(Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/Hotseat;->setOnVisibilityAggregatedCallback(Ljava/util/function/Consumer;)V

    goto :goto_2

    .line 298
    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mHotseat:Lcom/android/launcher3/Hotseat;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/launcher3/Hotseat;->setOnVisibilityAggregatedCallback(Ljava/util/function/Consumer;)V

    .line 300
    invoke-direct {p0, p1}, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->applyPredictedItems(Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;)V

    .line 302
    :goto_2
    return-void
.end method

.method public showEdu()V
    .locals 4

    .line 154
    iget-object v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    new-instance v2, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController$$ExternalSyntheticLambda3;-><init>(Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;)V

    invoke-static {v2}, Lcom/android/launcher3/anim/AnimatorListeners;->forSuccessCallback(Ljava/lang/Runnable;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;ZLandroid/animation/Animator$AnimatorListener;)V

    .line 161
    return-void
.end method
