.class public Lcom/android/launcher3/model/QuickstepModelDelegate;
.super Lcom/android/launcher3/model/ModelDelegate;
.source "QuickstepModelDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/model/QuickstepModelDelegate$WorkspaceItemFactory;,
        Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;
    }
.end annotation


# static fields
.field private static final BUNDLE_KEY_ADDED_APP_WIDGETS:Ljava/lang/String; = "added_app_widgets"

.field private static final IS_DEBUG:Z = false

.field public static final LAST_PREDICTION_ENABLED_STATE:Ljava/lang/String; = "last_prediction_enabled_state"

.field private static final LAST_SNAPSHOT_TIME_MILLIS:Ljava/lang/String; = "LAST_SNAPSHOT_TIME_MILLIS"

.field private static final NUM_OF_RECOMMENDED_WIDGETS_PREDICATION:I = 0x14

.field private static final TAG:Ljava/lang/String; = "QuickstepModelDelegate"


# instance fields
.field protected mActive:Z

.field private final mAllAppsState:Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;

.field private final mAppEventProducer:Lcom/android/launcher3/model/AppEventProducer;

.field private final mContext:Landroid/content/Context;

.field private final mHotseatState:Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;

.field private final mIDP:Lcom/android/launcher3/InvariantDeviceProfile;

.field private final mStatsManager:Landroid/app/StatsManager;

.field private final mWidgetsRecommendationState:Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;


# direct methods
.method public static synthetic $r8$lambda$ET0B-kt_Uavq5KIHr8JWwr8nbcc(Lcom/android/launcher3/model/QuickstepModelDelegate;Landroid/app/prediction/AppTargetEvent;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/model/QuickstepModelDelegate;->onAppTargetEvent(Landroid/app/prediction/AppTargetEvent;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smareAppTargetsSame(Landroid/app/prediction/AppTarget;Landroid/app/prediction/AppTarget;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/launcher3/model/QuickstepModelDelegate;->areAppTargetsSame(Landroid/app/prediction/AppTarget;Landroid/app/prediction/AppTarget;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 109
    invoke-direct {p0}, Lcom/android/launcher3/model/ModelDelegate;-><init>()V

    .line 95
    new-instance v0, Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;

    const/16 v1, -0x68

    const-string v2, "all_apps_predictions"

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/android/launcher3/model/QuickstepModelDelegate;->mAllAppsState:Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;

    .line 97
    new-instance v0, Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;

    const/16 v1, -0x67

    const-string v2, "hotseat_predictions"

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/android/launcher3/model/QuickstepModelDelegate;->mHotseatState:Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;

    .line 99
    new-instance v0, Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;

    const/16 v1, -0x6f

    const-string v2, "widgets_prediction"

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/android/launcher3/model/QuickstepModelDelegate;->mWidgetsRecommendationState:Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;

    .line 107
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/model/QuickstepModelDelegate;->mActive:Z

    .line 110
    iput-object p1, p0, Lcom/android/launcher3/model/QuickstepModelDelegate;->mContext:Landroid/content/Context;

    .line 111
    new-instance v0, Lcom/android/launcher3/model/AppEventProducer;

    new-instance v1, Lcom/android/launcher3/model/QuickstepModelDelegate$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/launcher3/model/QuickstepModelDelegate$$ExternalSyntheticLambda3;-><init>(Lcom/android/launcher3/model/QuickstepModelDelegate;)V

    invoke-direct {v0, p1, v1}, Lcom/android/launcher3/model/AppEventProducer;-><init>(Landroid/content/Context;Ljava/util/function/ObjIntConsumer;)V

    iput-object v0, p0, Lcom/android/launcher3/model/QuickstepModelDelegate;->mAppEventProducer:Lcom/android/launcher3/model/AppEventProducer;

    .line 113
    sget-object v1, Lcom/android/launcher3/InvariantDeviceProfile;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/InvariantDeviceProfile;

    iput-object v1, p0, Lcom/android/launcher3/model/QuickstepModelDelegate;->mIDP:Lcom/android/launcher3/InvariantDeviceProfile;

    .line 114
    sget-object v1, Lcom/android/quickstep/logging/StatsLogCompatManager;->LOGS_CONSUMER:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    const-class v0, Landroid/app/StatsManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatsManager;

    iput-object v0, p0, Lcom/android/launcher3/model/QuickstepModelDelegate;->mStatsManager:Landroid/app/StatsManager;

    .line 116
    return-void
.end method

.method private static areAppTargetsSame(Landroid/app/prediction/AppTarget;Landroid/app/prediction/AppTarget;)Z
    .locals 5
    .param p0, "t1"    # Landroid/app/prediction/AppTarget;
    .param p1, "t2"    # Landroid/app/prediction/AppTarget;

    .line 415
    invoke-virtual {p0}, Landroid/app/prediction/AppTarget;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/prediction/AppTarget;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 416
    invoke-virtual {p0}, Landroid/app/prediction/AppTarget;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/prediction/AppTarget;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 417
    invoke-virtual {p0}, Landroid/app/prediction/AppTarget;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/prediction/AppTarget;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 421
    :cond_0
    invoke-virtual {p0}, Landroid/app/prediction/AppTarget;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v0

    .line 422
    .local v0, "s1":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {p1}, Landroid/app/prediction/AppTarget;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v2

    .line 423
    .local v2, "s2":Landroid/content/pm/ShortcutInfo;
    if-eqz v0, :cond_2

    .line 424
    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 425
    :cond_1
    return v1

    .line 427
    :cond_2
    if-eqz v2, :cond_3

    .line 428
    return v1

    .line 430
    :cond_3
    const/4 v1, 0x1

    return v1

    .line 418
    .end local v0    # "s1":Landroid/content/pm/ShortcutInfo;
    .end local v2    # "s2":Landroid/content/pm/ShortcutInfo;
    :cond_4
    :goto_0
    return v1
.end method

.method private destroyPredictors()V
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/android/launcher3/model/QuickstepModelDelegate;->mAllAppsState:Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;

    invoke-virtual {v0}, Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;->destroyPredictor()V

    .line 272
    iget-object v0, p0, Lcom/android/launcher3/model/QuickstepModelDelegate;->mHotseatState:Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;

    invoke-virtual {v0}, Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;->destroyPredictor()V

    .line 273
    iget-object v0, p0, Lcom/android/launcher3/model/QuickstepModelDelegate;->mWidgetsRecommendationState:Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;

    invoke-virtual {v0}, Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;->destroyPredictor()V

    .line 274
    return-void
.end method

.method private getBundleForWidgetsOnWorkspace(Landroid/content/Context;Lcom/android/launcher3/model/BgDataModel;)Landroid/os/Bundle;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dataModel"    # Lcom/android/launcher3/model/BgDataModel;

    .line 361
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 362
    .local v0, "bundle":Landroid/os/Bundle;
    nop

    .line 363
    invoke-virtual {p2}, Lcom/android/launcher3/model/BgDataModel;->getAllWorkspaceItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/model/QuickstepModelDelegate$$ExternalSyntheticLambda4;

    invoke-direct {v2}, Lcom/android/launcher3/model/QuickstepModelDelegate$$ExternalSyntheticLambda4;-><init>()V

    .line 364
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/model/QuickstepModelDelegate$$ExternalSyntheticLambda5;

    invoke-direct {v2, p1}, Lcom/android/launcher3/model/QuickstepModelDelegate$$ExternalSyntheticLambda5;-><init>(Landroid/content/Context;)V

    .line 365
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/model/QuickstepModelDelegate$$ExternalSyntheticLambda6;

    invoke-direct {v2}, Lcom/android/launcher3/model/QuickstepModelDelegate$$ExternalSyntheticLambda6;-><init>()V

    .line 371
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/allapps/AlphabeticalAppsList$$ExternalSyntheticLambda4;

    invoke-direct {v2}, Lcom/android/launcher3/allapps/AlphabeticalAppsList$$ExternalSyntheticLambda4;-><init>()V

    .line 372
    invoke-static {v2}, Ljava/util/stream/Collectors;->toCollection(Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 373
    .local v1, "widgetEvents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/prediction/AppTargetEvent;>;"
    const-string v2, "added_app_widgets"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 374
    return-object v0
.end method

.method private static getContainer(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/util/IntSparseArrayMap;)Lcom/android/launcher3/model/data/FolderInfo;
    .locals 3
    .param p0, "info"    # Lcom/android/launcher3/model/data/ItemInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            "Lcom/android/launcher3/util/IntSparseArrayMap<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)",
            "Lcom/android/launcher3/model/data/FolderInfo;"
        }
    .end annotation

    .line 233
    .local p1, "itemsIdMap":Lcom/android/launcher3/util/IntSparseArrayMap;, "Lcom/android/launcher3/util/IntSparseArrayMap<Lcom/android/launcher3/model/data/ItemInfo;>;"
    iget v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    if-lez v0, :cond_1

    .line 234
    iget v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    invoke-virtual {p1, v0}, Lcom/android/launcher3/util/IntSparseArrayMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfo;

    .line 236
    .local v0, "containerInfo":Lcom/android/launcher3/model/data/ItemInfo;
    instance-of v1, v0, Lcom/android/launcher3/model/data/FolderInfo;

    if-nez v1, :cond_0

    .line 237
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const-string v2, "Item info: %s found with invalid container: %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "QuickstepModelDelegate"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 242
    :cond_0
    move-object v1, v0

    check-cast v1, Lcom/android/launcher3/model/data/FolderInfo;

    return-object v1

    .line 245
    .end local v0    # "containerInfo":Lcom/android/launcher3/model/data/ItemInfo;
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private handleUpdate(Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;Ljava/util/List;)V
    .locals 2
    .param p1, "state"    # Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;",
            "Ljava/util/List<",
            "Landroid/app/prediction/AppTarget;",
            ">;)V"
        }
    .end annotation

    .line 318
    .local p2, "targets":Ljava/util/List;, "Ljava/util/List<Landroid/app/prediction/AppTarget;>;"
    invoke-virtual {p1, p2}, Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;->setTargets(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 320
    return-void

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/model/QuickstepModelDelegate;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/model/PredictionUpdateTask;

    invoke-direct {v1, p1, p2}, Lcom/android/launcher3/model/PredictionUpdateTask;-><init>(Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$ModelUpdateTask;)V

    .line 323
    return-void
.end method

.method static synthetic lambda$getBundleForWidgetsOnWorkspace$3(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;)Landroid/app/prediction/AppTargetEvent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "item"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 366
    invoke-static {p0, p1}, Lcom/android/launcher3/model/PredictionHelper;->getAppTargetFromItemInfo(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;)Landroid/app/prediction/AppTarget;

    move-result-object v0

    .line 367
    .local v0, "target":Landroid/app/prediction/AppTarget;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 368
    :cond_0
    const/4 v1, 0x3

    invoke-static {v0, v1, p1}, Lcom/android/launcher3/model/PredictionHelper;->wrapAppTargetWithItemLocation(Landroid/app/prediction/AppTarget;ILcom/android/launcher3/model/data/ItemInfo;)Landroid/app/prediction/AppTargetEvent;

    move-result-object v1

    return-object v1
.end method

.method private onAppTargetEvent(Landroid/app/prediction/AppTargetEvent;I)V
    .locals 3
    .param p1, "event"    # Landroid/app/prediction/AppTargetEvent;
    .param p2, "client"    # I

    .line 341
    sparse-switch p2, :sswitch_data_0

    .line 350
    iget-object v0, p0, Lcom/android/launcher3/model/QuickstepModelDelegate;->mHotseatState:Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;

    .local v0, "state":Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;
    goto :goto_0

    .line 343
    .end local v0    # "state":Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;
    :sswitch_0
    iget-object v0, p0, Lcom/android/launcher3/model/QuickstepModelDelegate;->mAllAppsState:Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;

    .line 344
    .restart local v0    # "state":Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;
    goto :goto_0

    .line 346
    .end local v0    # "state":Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;
    :sswitch_1
    iget-object v0, p0, Lcom/android/launcher3/model/QuickstepModelDelegate;->mWidgetsRecommendationState:Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;

    .line 347
    .restart local v0    # "state":Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;
    nop

    .line 353
    :goto_0
    iget-object v1, v0, Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;->predictor:Landroid/app/prediction/AppPredictor;

    if-eqz v1, :cond_0

    .line 354
    iget-object v1, v0, Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;->predictor:Landroid/app/prediction/AppPredictor;

    invoke-virtual {v1, p1}, Landroid/app/prediction/AppPredictor;->notifyAppTargetEvent(Landroid/app/prediction/AppTargetEvent;)V

    .line 355
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyAppTargetEvent action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/app/prediction/AppTargetEvent;->getAction()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " launchLocation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 356
    invoke-virtual {p1}, Landroid/app/prediction/AppTargetEvent;->getLaunchLocation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 355
    const-string v2, "QuickstepModelDelegate"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    :cond_0
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6f -> :sswitch_1
        -0x68 -> :sswitch_0
    .end sparse-switch
.end method

.method private recreatePredictors()V
    .locals 5

    .line 278
    invoke-direct {p0}, Lcom/android/launcher3/model/QuickstepModelDelegate;->destroyPredictors()V

    .line 279
    iget-boolean v0, p0, Lcom/android/launcher3/model/QuickstepModelDelegate;->mActive:Z

    if-nez v0, :cond_0

    .line 280
    return-void

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/model/QuickstepModelDelegate;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 283
    .local v0, "context":Landroid/content/Context;
    const-class v1, Landroid/app/prediction/AppPredictionManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/prediction/AppPredictionManager;

    .line 284
    .local v1, "apm":Landroid/app/prediction/AppPredictionManager;
    if-nez v1, :cond_1

    .line 285
    return-void

    .line 288
    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/model/QuickstepModelDelegate;->mAllAppsState:Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;

    new-instance v3, Landroid/app/prediction/AppPredictionContext$Builder;

    invoke-direct {v3, v0}, Landroid/app/prediction/AppPredictionContext$Builder;-><init>(Landroid/content/Context;)V

    .line 290
    const-string v4, "home"

    invoke-virtual {v3, v4}, Landroid/app/prediction/AppPredictionContext$Builder;->setUiSurface(Ljava/lang/String;)Landroid/app/prediction/AppPredictionContext$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher3/model/QuickstepModelDelegate;->mIDP:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v4, v4, Lcom/android/launcher3/InvariantDeviceProfile;->numDatabaseAllAppsColumns:I

    .line 291
    invoke-virtual {v3, v4}, Landroid/app/prediction/AppPredictionContext$Builder;->setPredictedTargetCount(I)Landroid/app/prediction/AppPredictionContext$Builder;

    move-result-object v3

    .line 292
    invoke-virtual {v3}, Landroid/app/prediction/AppPredictionContext$Builder;->build()Landroid/app/prediction/AppPredictionContext;

    move-result-object v3

    .line 288
    invoke-virtual {v1, v3}, Landroid/app/prediction/AppPredictionManager;->createAppPredictionSession(Landroid/app/prediction/AppPredictionContext;)Landroid/app/prediction/AppPredictor;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/launcher3/model/QuickstepModelDelegate;->registerPredictor(Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;Landroid/app/prediction/AppPredictor;)V

    .line 295
    iget-object v2, p0, Lcom/android/launcher3/model/QuickstepModelDelegate;->mHotseatState:Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;

    new-instance v3, Landroid/app/prediction/AppPredictionContext$Builder;

    invoke-direct {v3, v0}, Landroid/app/prediction/AppPredictionContext$Builder;-><init>(Landroid/content/Context;)V

    .line 297
    const-string v4, "hotseat"

    invoke-virtual {v3, v4}, Landroid/app/prediction/AppPredictionContext$Builder;->setUiSurface(Ljava/lang/String;)Landroid/app/prediction/AppPredictionContext$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher3/model/QuickstepModelDelegate;->mIDP:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v4, v4, Lcom/android/launcher3/InvariantDeviceProfile;->numDatabaseHotseatIcons:I

    .line 298
    invoke-virtual {v3, v4}, Landroid/app/prediction/AppPredictionContext$Builder;->setPredictedTargetCount(I)Landroid/app/prediction/AppPredictionContext$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher3/model/QuickstepModelDelegate;->mDataModel:Lcom/android/launcher3/model/BgDataModel;

    .line 299
    invoke-static {v0, v4}, Lcom/android/launcher3/hybridhotseat/HotseatPredictionModel;->convertDataModelToAppTargetBundle(Landroid/content/Context;Lcom/android/launcher3/model/BgDataModel;)Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/prediction/AppPredictionContext$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/prediction/AppPredictionContext$Builder;

    move-result-object v3

    .line 300
    invoke-virtual {v3}, Landroid/app/prediction/AppPredictionContext$Builder;->build()Landroid/app/prediction/AppPredictionContext;

    move-result-object v3

    .line 295
    invoke-virtual {v1, v3}, Landroid/app/prediction/AppPredictionManager;->createAppPredictionSession(Landroid/app/prediction/AppPredictionContext;)Landroid/app/prediction/AppPredictor;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/launcher3/model/QuickstepModelDelegate;->registerPredictor(Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;Landroid/app/prediction/AppPredictor;)V

    .line 302
    new-instance v2, Landroid/app/prediction/AppPredictionContext$Builder;

    invoke-direct {v2, v0}, Landroid/app/prediction/AppPredictionContext$Builder;-><init>(Landroid/content/Context;)V

    .line 304
    const-string v3, "widgets"

    invoke-virtual {v2, v3}, Landroid/app/prediction/AppPredictionContext$Builder;->setUiSurface(Ljava/lang/String;)Landroid/app/prediction/AppPredictionContext$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/model/QuickstepModelDelegate;->mDataModel:Lcom/android/launcher3/model/BgDataModel;

    .line 305
    invoke-direct {p0, v0, v3}, Lcom/android/launcher3/model/QuickstepModelDelegate;->getBundleForWidgetsOnWorkspace(Landroid/content/Context;Lcom/android/launcher3/model/BgDataModel;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/prediction/AppPredictionContext$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/prediction/AppPredictionContext$Builder;

    move-result-object v2

    const/16 v3, 0x14

    .line 306
    invoke-virtual {v2, v3}, Landroid/app/prediction/AppPredictionContext$Builder;->setPredictedTargetCount(I)Landroid/app/prediction/AppPredictionContext$Builder;

    move-result-object v2

    .line 307
    invoke-virtual {v2}, Landroid/app/prediction/AppPredictionContext$Builder;->build()Landroid/app/prediction/AppPredictionContext;

    move-result-object v2

    .line 302
    invoke-virtual {v1, v2}, Landroid/app/prediction/AppPredictionManager;->createAppPredictionSession(Landroid/app/prediction/AppPredictionContext;)Landroid/app/prediction/AppPredictor;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/launcher3/model/QuickstepModelDelegate;->registerWidgetsPredictor(Landroid/app/prediction/AppPredictor;)V

    .line 308
    return-void
.end method

.method private registerPredictor(Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;Landroid/app/prediction/AppPredictor;)V
    .locals 3
    .param p1, "state"    # Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;
    .param p2, "predictor"    # Landroid/app/prediction/AppPredictor;

    .line 311
    iput-object p2, p1, Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;->predictor:Landroid/app/prediction/AppPredictor;

    .line 312
    iget-object v0, p1, Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;->predictor:Landroid/app/prediction/AppPredictor;

    sget-object v1, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v2, Lcom/android/launcher3/model/QuickstepModelDelegate$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p1}, Lcom/android/launcher3/model/QuickstepModelDelegate$$ExternalSyntheticLambda2;-><init>(Lcom/android/launcher3/model/QuickstepModelDelegate;Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/prediction/AppPredictor;->registerPredictionUpdates(Ljava/util/concurrent/Executor;Landroid/app/prediction/AppPredictor$Callback;)V

    .line 314
    iget-object v0, p1, Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;->predictor:Landroid/app/prediction/AppPredictor;

    invoke-virtual {v0}, Landroid/app/prediction/AppPredictor;->requestPredictionUpdate()V

    .line 315
    return-void
.end method

.method private registerWidgetsPredictor(Landroid/app/prediction/AppPredictor;)V
    .locals 3
    .param p1, "predictor"    # Landroid/app/prediction/AppPredictor;

    .line 326
    iget-object v0, p0, Lcom/android/launcher3/model/QuickstepModelDelegate;->mWidgetsRecommendationState:Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;

    iput-object p1, v0, Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;->predictor:Landroid/app/prediction/AppPredictor;

    .line 327
    iget-object v0, p0, Lcom/android/launcher3/model/QuickstepModelDelegate;->mWidgetsRecommendationState:Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;

    iget-object v0, v0, Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;->predictor:Landroid/app/prediction/AppPredictor;

    sget-object v1, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v2, Lcom/android/launcher3/model/QuickstepModelDelegate$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/launcher3/model/QuickstepModelDelegate$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/model/QuickstepModelDelegate;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/prediction/AppPredictor;->registerPredictionUpdates(Ljava/util/concurrent/Executor;Landroid/app/prediction/AppPredictor$Callback;)V

    .line 336
    iget-object v0, p0, Lcom/android/launcher3/model/QuickstepModelDelegate;->mWidgetsRecommendationState:Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;

    iget-object v0, v0, Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;->predictor:Landroid/app/prediction/AppPredictor;

    invoke-virtual {v0}, Landroid/app/prediction/AppPredictor;->requestPredictionUpdate()V

    .line 337
    return-void
.end method


# virtual methods
.method protected additionalSnapshotEvents(Lcom/android/launcher3/logging/InstanceId;)V
    .locals 0
    .param p1, "snapshotInstanceId"    # Lcom/android/launcher3/logging/InstanceId;

    .line 186
    return-void
.end method

.method public destroy()V
    .locals 2

    .line 261
    invoke-super {p0}, Lcom/android/launcher3/model/ModelDelegate;->destroy()V

    .line 262
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/model/QuickstepModelDelegate;->mActive:Z

    .line 263
    sget-object v0, Lcom/android/quickstep/logging/StatsLogCompatManager;->LOGS_CONSUMER:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v1, p0, Lcom/android/launcher3/model/QuickstepModelDelegate;->mAppEventProducer:Lcom/android/launcher3/model/AppEventProducer;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 264
    iget-boolean v0, p0, Lcom/android/launcher3/model/QuickstepModelDelegate;->mIsPrimaryInstance:Z

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/android/launcher3/model/QuickstepModelDelegate;->mStatsManager:Landroid/app/StatsManager;

    const/16 v1, 0x277c

    invoke-virtual {v0, v1}, Landroid/app/StatsManager;->clearPullAtomCallback(I)V

    .line 267
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/model/QuickstepModelDelegate;->destroyPredictors()V

    .line 268
    return-void
.end method

.method synthetic lambda$registerPredictor$1$com-android-launcher3-model-QuickstepModelDelegate(Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;Ljava/util/List;)V
    .locals 0
    .param p1, "state"    # Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;
    .param p2, "t"    # Ljava/util/List;

    .line 313
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/model/QuickstepModelDelegate;->handleUpdate(Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;Ljava/util/List;)V

    return-void
.end method

.method synthetic lambda$registerSnapshotLoggingCallback$0$com-android-launcher3-model-QuickstepModelDelegate(ILjava/util/List;)I
    .locals 8
    .param p1, "i"    # I
    .param p2, "eventList"    # Ljava/util/List;

    .line 202
    new-instance v0, Lcom/android/launcher3/logging/InstanceIdSequence;

    invoke-direct {v0}, Lcom/android/launcher3/logging/InstanceIdSequence;-><init>()V

    invoke-virtual {v0}, Lcom/android/launcher3/logging/InstanceIdSequence;->newInstanceId()Lcom/android/launcher3/logging/InstanceId;

    move-result-object v0

    .line 204
    .local v0, "instanceId":Lcom/android/launcher3/logging/InstanceId;
    iget-object v1, p0, Lcom/android/launcher3/model/QuickstepModelDelegate;->mDataModel:Lcom/android/launcher3/model/BgDataModel;

    monitor-enter v1

    .line 205
    :try_start_0
    iget-object v2, p0, Lcom/android/launcher3/model/QuickstepModelDelegate;->mDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v2, v2, Lcom/android/launcher3/model/BgDataModel;->itemsIdMap:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v2}, Lcom/android/launcher3/util/IntSparseArrayMap;->clone()Lcom/android/launcher3/util/IntSparseArrayMap;

    move-result-object v2

    .line 206
    .local v2, "itemsIdMap":Lcom/android/launcher3/util/IntSparseArrayMap;, "Lcom/android/launcher3/util/IntSparseArrayMap<Lcom/android/launcher3/model/data/ItemInfo;>;"
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    invoke-virtual {v2}, Lcom/android/launcher3/util/IntSparseArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/data/ItemInfo;

    .line 209
    .local v3, "info":Lcom/android/launcher3/model/data/ItemInfo;
    invoke-static {v3, v2}, Lcom/android/launcher3/model/QuickstepModelDelegate;->getContainer(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/util/IntSparseArrayMap;)Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v4

    .line 210
    .local v4, "parent":Lcom/android/launcher3/model/data/FolderInfo;
    invoke-virtual {v3, v4}, Lcom/android/launcher3/model/data/ItemInfo;->buildProto(Lcom/android/launcher3/model/data/FolderInfo;)Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    move-result-object v5

    .line 211
    .local v5, "itemInfo":Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;
    const-string v6, "QuickstepModelDelegate"

    invoke-virtual {v5}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    invoke-static {v5, v0}, Lcom/android/quickstep/logging/StatsLogCompatManager;->buildStatsEvent(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;Lcom/android/launcher3/logging/InstanceId;)Landroid/util/StatsEvent;

    move-result-object v6

    .line 214
    .local v6, "statsEvent":Landroid/util/StatsEvent;
    invoke-interface {p2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    .end local v3    # "info":Lcom/android/launcher3/model/data/ItemInfo;
    .end local v4    # "parent":Lcom/android/launcher3/model/data/FolderInfo;
    .end local v5    # "itemInfo":Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;
    .end local v6    # "statsEvent":Landroid/util/StatsEvent;
    goto :goto_0

    .line 216
    :cond_0
    const-string v1, "QuickstepModelDelegate"

    const-string v3, "Successfully logged %d workspace items with instanceId=%d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 219
    invoke-virtual {v2}, Lcom/android/launcher3/util/IntSparseArrayMap;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x1

    invoke-virtual {v0}, Lcom/android/launcher3/logging/InstanceId;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v5

    .line 217
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 216
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/QuickstepModelDelegate;->additionalSnapshotEvents(Lcom/android/launcher3/logging/InstanceId;)V

    .line 221
    sget-object v1, Lcom/android/quickstep/logging/SettingsChangeLogger;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v3, p0, Lcom/android/launcher3/model/QuickstepModelDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/quickstep/logging/SettingsChangeLogger;

    invoke-virtual {v1, v0}, Lcom/android/quickstep/logging/SettingsChangeLogger;->logSnapshot(Lcom/android/launcher3/logging/InstanceId;)V

    .line 222
    return v6

    .line 206
    .end local v2    # "itemsIdMap":Lcom/android/launcher3/util/IntSparseArrayMap;, "Lcom/android/launcher3/util/IntSparseArrayMap<Lcom/android/launcher3/model/data/ItemInfo;>;"
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method synthetic lambda$registerWidgetsPredictor$2$com-android-launcher3-model-QuickstepModelDelegate(Ljava/util/List;)V
    .locals 3
    .param p1, "targets"    # Ljava/util/List;

    .line 329
    iget-object v0, p0, Lcom/android/launcher3/model/QuickstepModelDelegate;->mWidgetsRecommendationState:Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;->setTargets(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 331
    return-void

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/model/QuickstepModelDelegate;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/model/WidgetsPredictionUpdateTask;

    iget-object v2, p0, Lcom/android/launcher3/model/QuickstepModelDelegate;->mWidgetsRecommendationState:Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;

    invoke-direct {v1, v2, p1}, Lcom/android/launcher3/model/WidgetsPredictionUpdateTask;-><init>(Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$ModelUpdateTask;)V

    .line 335
    return-void
.end method

.method public loadItems(Lcom/android/launcher3/model/UserManagerState;Ljava/util/Map;)V
    .locals 9
    .param p1, "ums"    # Lcom/android/launcher3/model/UserManagerState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/model/UserManagerState;",
            "Ljava/util/Map<",
            "Lcom/android/launcher3/shortcuts/ShortcutKey;",
            "Landroid/content/pm/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    .line 122
    .local p2, "pinnedShortcuts":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/shortcuts/ShortcutKey;Landroid/content/pm/ShortcutInfo;>;"
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/model/ModelDelegate;->loadItems(Lcom/android/launcher3/model/UserManagerState;Ljava/util/Map;)V

    .line 124
    new-instance v0, Lcom/android/launcher3/model/QuickstepModelDelegate$WorkspaceItemFactory;

    iget-object v1, p0, Lcom/android/launcher3/model/QuickstepModelDelegate;->mApp:Lcom/android/launcher3/LauncherAppState;

    iget-object v2, p0, Lcom/android/launcher3/model/QuickstepModelDelegate;->mIDP:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v2, v2, Lcom/android/launcher3/InvariantDeviceProfile;->numDatabaseAllAppsColumns:I

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/android/launcher3/model/QuickstepModelDelegate$WorkspaceItemFactory;-><init>(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/UserManagerState;Ljava/util/Map;I)V

    .line 126
    .local v0, "allAppsFactory":Lcom/android/launcher3/model/QuickstepModelDelegate$WorkspaceItemFactory;
    new-instance v1, Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;

    iget-object v2, p0, Lcom/android/launcher3/model/QuickstepModelDelegate;->mAllAppsState:Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;

    iget v2, v2, Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;->containerId:I

    iget-object v3, p0, Lcom/android/launcher3/model/QuickstepModelDelegate;->mAllAppsState:Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;

    iget-object v3, v3, Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;->storage:Lcom/android/launcher3/util/PersistedItemArray;

    iget-object v4, p0, Lcom/android/launcher3/model/QuickstepModelDelegate;->mApp:Lcom/android/launcher3/LauncherAppState;

    .line 127
    invoke-virtual {v4}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p1, Lcom/android/launcher3/model/UserManagerState;->allUsers:Landroid/util/LongSparseArray;

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Lcom/android/launcher3/model/QuickstepModelDelegate$$ExternalSyntheticLambda0;

    invoke-direct {v6, v5}, Lcom/android/launcher3/model/QuickstepModelDelegate$$ExternalSyntheticLambda0;-><init>(Landroid/util/LongSparseArray;)V

    invoke-virtual {v3, v4, v0, v6}, Lcom/android/launcher3/util/PersistedItemArray;->read(Landroid/content/Context;Lcom/android/launcher3/util/PersistedItemArray$ItemFactory;Ljava/util/function/LongFunction;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;-><init>(ILjava/util/List;)V

    .line 128
    .local v1, "allAppsItems":Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;
    iget-object v2, p0, Lcom/android/launcher3/model/QuickstepModelDelegate;->mDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v2, v2, Lcom/android/launcher3/model/BgDataModel;->extraItems:Lcom/android/launcher3/util/IntSparseArrayMap;

    iget-object v3, p0, Lcom/android/launcher3/model/QuickstepModelDelegate;->mAllAppsState:Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;

    iget v3, v3, Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;->containerId:I

    invoke-virtual {v2, v3, v1}, Lcom/android/launcher3/util/IntSparseArrayMap;->put(ILjava/lang/Object;)V

    .line 130
    new-instance v2, Lcom/android/launcher3/model/QuickstepModelDelegate$WorkspaceItemFactory;

    iget-object v3, p0, Lcom/android/launcher3/model/QuickstepModelDelegate;->mApp:Lcom/android/launcher3/LauncherAppState;

    iget-object v4, p0, Lcom/android/launcher3/model/QuickstepModelDelegate;->mIDP:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v4, v4, Lcom/android/launcher3/InvariantDeviceProfile;->numDatabaseHotseatIcons:I

    invoke-direct {v2, v3, p1, p2, v4}, Lcom/android/launcher3/model/QuickstepModelDelegate$WorkspaceItemFactory;-><init>(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/UserManagerState;Ljava/util/Map;I)V

    .line 132
    .local v2, "hotseatFactory":Lcom/android/launcher3/model/QuickstepModelDelegate$WorkspaceItemFactory;
    new-instance v3, Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;

    iget-object v4, p0, Lcom/android/launcher3/model/QuickstepModelDelegate;->mHotseatState:Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;

    iget v4, v4, Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;->containerId:I

    iget-object v5, p0, Lcom/android/launcher3/model/QuickstepModelDelegate;->mHotseatState:Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;

    iget-object v5, v5, Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;->storage:Lcom/android/launcher3/util/PersistedItemArray;

    iget-object v6, p0, Lcom/android/launcher3/model/QuickstepModelDelegate;->mApp:Lcom/android/launcher3/LauncherAppState;

    .line 133
    invoke-virtual {v6}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p1, Lcom/android/launcher3/model/UserManagerState;->allUsers:Landroid/util/LongSparseArray;

    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v8, Lcom/android/launcher3/model/QuickstepModelDelegate$$ExternalSyntheticLambda0;

    invoke-direct {v8, v7}, Lcom/android/launcher3/model/QuickstepModelDelegate$$ExternalSyntheticLambda0;-><init>(Landroid/util/LongSparseArray;)V

    invoke-virtual {v5, v6, v2, v8}, Lcom/android/launcher3/util/PersistedItemArray;->read(Landroid/content/Context;Lcom/android/launcher3/util/PersistedItemArray$ItemFactory;Ljava/util/function/LongFunction;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;-><init>(ILjava/util/List;)V

    .line 134
    .local v3, "hotseatItems":Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;
    iget-object v4, p0, Lcom/android/launcher3/model/QuickstepModelDelegate;->mDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v4, v4, Lcom/android/launcher3/model/BgDataModel;->extraItems:Lcom/android/launcher3/util/IntSparseArrayMap;

    iget-object v5, p0, Lcom/android/launcher3/model/QuickstepModelDelegate;->mHotseatState:Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;

    iget v5, v5, Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;->containerId:I

    invoke-virtual {v4, v5, v3}, Lcom/android/launcher3/util/IntSparseArrayMap;->put(ILjava/lang/Object;)V

    .line 137
    iget-object v4, p0, Lcom/android/launcher3/model/QuickstepModelDelegate;->mDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v4, v4, Lcom/android/launcher3/model/BgDataModel;->extraItems:Lcom/android/launcher3/util/IntSparseArrayMap;

    iget-object v5, p0, Lcom/android/launcher3/model/QuickstepModelDelegate;->mWidgetsRecommendationState:Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;

    iget v5, v5, Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;->containerId:I

    new-instance v6, Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;

    iget-object v7, p0, Lcom/android/launcher3/model/QuickstepModelDelegate;->mWidgetsRecommendationState:Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;

    iget v7, v7, Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;->containerId:I

    invoke-direct {v6, v7}, Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;-><init>(I)V

    invoke-virtual {v4, v5, v6}, Lcom/android/launcher3/util/IntSparseArrayMap;->put(ILjava/lang/Object;)V

    .line 139
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/launcher3/model/QuickstepModelDelegate;->mActive:Z

    .line 140
    return-void
.end method

.method public modelLoadComplete()V
    .locals 11

    .line 151
    invoke-super {p0}, Lcom/android/launcher3/model/ModelDelegate;->modelLoadComplete()V

    .line 154
    iget-object v0, p0, Lcom/android/launcher3/model/QuickstepModelDelegate;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->getDevicePrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 155
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "LAST_SNAPSHOT_TIME_MILLIS"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 157
    .local v1, "lastSnapshotTimeMillis":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 158
    .local v3, "now":J
    sub-long v5, v3, v1

    const-wide/32 v7, 0x5265c00

    cmp-long v5, v5, v7

    if-gez v5, :cond_0

    goto :goto_1

    .line 167
    :cond_0
    iget-object v5, p0, Lcom/android/launcher3/model/QuickstepModelDelegate;->mDataModel:Lcom/android/launcher3/model/BgDataModel;

    monitor-enter v5

    .line 168
    :try_start_0
    iget-object v6, p0, Lcom/android/launcher3/model/QuickstepModelDelegate;->mDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v6, v6, Lcom/android/launcher3/model/BgDataModel;->itemsIdMap:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v6}, Lcom/android/launcher3/util/IntSparseArrayMap;->clone()Lcom/android/launcher3/util/IntSparseArrayMap;

    move-result-object v6

    .line 169
    .local v6, "itemsIdMap":Lcom/android/launcher3/util/IntSparseArrayMap;, "Lcom/android/launcher3/util/IntSparseArrayMap<Lcom/android/launcher3/model/data/ItemInfo;>;"
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    new-instance v5, Lcom/android/launcher3/logging/InstanceIdSequence;

    invoke-direct {v5}, Lcom/android/launcher3/logging/InstanceIdSequence;-><init>()V

    invoke-virtual {v5}, Lcom/android/launcher3/logging/InstanceIdSequence;->newInstanceId()Lcom/android/launcher3/logging/InstanceId;

    move-result-object v5

    .line 171
    .local v5, "instanceId":Lcom/android/launcher3/logging/InstanceId;
    invoke-virtual {v6}, Lcom/android/launcher3/util/IntSparseArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher3/model/data/ItemInfo;

    .line 172
    .local v8, "info":Lcom/android/launcher3/model/data/ItemInfo;
    invoke-static {v8, v6}, Lcom/android/launcher3/model/QuickstepModelDelegate;->getContainer(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/util/IntSparseArrayMap;)Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v9

    .line 173
    .local v9, "parent":Lcom/android/launcher3/model/data/FolderInfo;
    invoke-virtual {v8, v9}, Lcom/android/launcher3/model/data/ItemInfo;->buildProto(Lcom/android/launcher3/model/data/FolderInfo;)Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    move-result-object v10

    invoke-static {v10, v5}, Lcom/android/quickstep/logging/StatsLogCompatManager;->writeSnapshot(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;Lcom/android/launcher3/logging/InstanceId;)V

    .line 174
    .end local v8    # "info":Lcom/android/launcher3/model/data/ItemInfo;
    .end local v9    # "parent":Lcom/android/launcher3/model/data/FolderInfo;
    goto :goto_0

    .line 175
    :cond_1
    invoke-virtual {p0, v5}, Lcom/android/launcher3/model/QuickstepModelDelegate;->additionalSnapshotEvents(Lcom/android/launcher3/logging/InstanceId;)V

    .line 176
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v8, "LAST_SNAPSHOT_TIME_MILLIS"

    invoke-interface {v7, v8, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 181
    .end local v5    # "instanceId":Lcom/android/launcher3/logging/InstanceId;
    .end local v6    # "itemsIdMap":Lcom/android/launcher3/util/IntSparseArrayMap;, "Lcom/android/launcher3/util/IntSparseArrayMap<Lcom/android/launcher3/model/data/ItemInfo;>;"
    :goto_1
    iget-boolean v5, p0, Lcom/android/launcher3/model/QuickstepModelDelegate;->mIsPrimaryInstance:Z

    if-eqz v5, :cond_2

    .line 182
    invoke-virtual {p0}, Lcom/android/launcher3/model/QuickstepModelDelegate;->registerSnapshotLoggingCallback()V

    .line 184
    :cond_2
    return-void

    .line 169
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6
.end method

.method protected registerSnapshotLoggingCallback()V
    .locals 6

    .line 192
    iget-object v0, p0, Lcom/android/launcher3/model/QuickstepModelDelegate;->mStatsManager:Landroid/app/StatsManager;

    const-string v1, "QuickstepModelDelegate"

    if-nez v0, :cond_0

    .line 193
    const-string v0, "Failed to get StatsManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/model/QuickstepModelDelegate;->mStatsManager:Landroid/app/StatsManager;

    const/16 v2, 0x277c

    const/4 v3, 0x0

    sget-object v4, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v5, Lcom/android/launcher3/model/QuickstepModelDelegate$$ExternalSyntheticLambda7;

    invoke-direct {v5, p0}, Lcom/android/launcher3/model/QuickstepModelDelegate$$ExternalSyntheticLambda7;-><init>(Lcom/android/launcher3/model/QuickstepModelDelegate;)V

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 225
    const-string v0, "Successfully registered for launcher snapshot logging!"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    goto :goto_0

    .line 226
    :catch_0
    move-exception v0

    .line 227
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v2, "Failed to register launcher snapshot logging callback with StatsManager"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 230
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_0
    return-void
.end method

.method public validateData()V
    .locals 1

    .line 250
    invoke-super {p0}, Lcom/android/launcher3/model/ModelDelegate;->validateData()V

    .line 251
    iget-object v0, p0, Lcom/android/launcher3/model/QuickstepModelDelegate;->mAllAppsState:Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;

    iget-object v0, v0, Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;->predictor:Landroid/app/prediction/AppPredictor;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/android/launcher3/model/QuickstepModelDelegate;->mAllAppsState:Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;

    iget-object v0, v0, Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;->predictor:Landroid/app/prediction/AppPredictor;

    invoke-virtual {v0}, Landroid/app/prediction/AppPredictor;->requestPredictionUpdate()V

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/model/QuickstepModelDelegate;->mWidgetsRecommendationState:Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;

    iget-object v0, v0, Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;->predictor:Landroid/app/prediction/AppPredictor;

    if-eqz v0, :cond_1

    .line 255
    iget-object v0, p0, Lcom/android/launcher3/model/QuickstepModelDelegate;->mWidgetsRecommendationState:Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;

    iget-object v0, v0, Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;->predictor:Landroid/app/prediction/AppPredictor;

    invoke-virtual {v0}, Landroid/app/prediction/AppPredictor;->requestPredictionUpdate()V

    .line 257
    :cond_1
    return-void
.end method

.method public workspaceLoadComplete()V
    .locals 0

    .line 144
    invoke-super {p0}, Lcom/android/launcher3/model/ModelDelegate;->workspaceLoadComplete()V

    .line 145
    invoke-direct {p0}, Lcom/android/launcher3/model/QuickstepModelDelegate;->recreatePredictors()V

    .line 146
    return-void
.end method
