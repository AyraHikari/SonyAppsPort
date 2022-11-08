.class public final Lcom/android/launcher3/model/WellbeingModel;
.super Lcom/android/launcher3/util/BgObjectWithLooper;
.source "WellbeingModel.java"


# static fields
.field private static final DB_NAME_MINIMAL_DEVICE:Ljava/lang/String; = "minimal.db"

.field private static final DEBUG:Z = false

.field private static final EXTRA_ACTION:Ljava/lang/String; = "action"

.field private static final EXTRA_ACTIONS:Ljava/lang/String; = "actions"

.field private static final EXTRA_MAX_NUM_ACTIONS_SHOWN:Ljava/lang/String; = "max_num_actions_shown"

.field private static final EXTRA_MINIMAL_DEVICE_STATE:Ljava/lang/String; = "minimal_device_state"

.field private static final EXTRA_PACKAGES:Ljava/lang/String; = "packages"

.field private static final EXTRA_SUCCESS:Ljava/lang/String; = "success"

.field public static final INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/util/MainThreadInitializedObject<",
            "Lcom/android/launcher3/model/WellbeingModel;",
            ">;"
        }
    .end annotation
.end field

.field private static final IN_MINIMAL_DEVICE:I = 0x2

.field private static final METHOD_GET_ACTIONS:Ljava/lang/String; = "get_actions"

.field private static final METHOD_GET_MINIMAL_DEVICE_CONFIG:Ljava/lang/String; = "get_minimal_device_config"

.field private static final PATH_ACTIONS:Ljava/lang/String; = "actions"

.field private static final PATH_MINIMAL_DEVICE:Ljava/lang/String; = "minimal_device"

.field private static final RETRY_TIMES_MS:[I

.field public static final SHORTCUT_FACTORY:Lcom/android/launcher3/popup/SystemShortcut$Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/popup/SystemShortcut$Factory<",
            "Lcom/android/launcher3/BaseDraggingActivity;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "WellbeingModel"

.field private static final UNKNOWN_MINIMAL_DEVICE_STATE:I


# instance fields
.field private final mActionIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/app/RemoteAction;",
            ">;"
        }
    .end annotation
.end field

.field private mContentObserver:Landroid/database/ContentObserver;

.field private final mContext:Landroid/content/Context;

.field private mIsInTest:Z

.field private final mModelLock:Ljava/lang/Object;

.field private final mPackageToActionId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mWellbeingProviderPkg:Ljava/lang/String;

.field private mWorkerHandler:Landroid/os/Handler;


# direct methods
.method public static synthetic $r8$lambda$9sZDwhMf137exIkHpizvZ5p76ec(Lcom/android/launcher3/model/WellbeingModel;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/model/WellbeingModel;->onWellbeingUriChanged(Landroid/net/Uri;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BmqsdCTQ8xqvNH4paAebTdVMW2I(Lcom/android/launcher3/model/WellbeingModel;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/model/WellbeingModel;->onAppPackageChanged(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NamGAZkV_nPfIPATzPfJ7OZ7BRk(Landroid/content/Context;)Lcom/android/launcher3/model/WellbeingModel;
    .locals 1

    new-instance v0, Lcom/android/launcher3/model/WellbeingModel;

    invoke-direct {v0, p0}, Lcom/android/launcher3/model/WellbeingModel;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 74
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/launcher3/model/WellbeingModel;->RETRY_TIMES_MS:[I

    .line 93
    new-instance v0, Lcom/android/launcher3/util/MainThreadInitializedObject;

    new-instance v1, Lcom/android/launcher3/model/WellbeingModel$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/android/launcher3/model/WellbeingModel$$ExternalSyntheticLambda3;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;-><init>(Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider;)V

    sput-object v0, Lcom/android/launcher3/model/WellbeingModel;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    .line 381
    new-instance v0, Lcom/android/launcher3/model/WellbeingModel$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/launcher3/model/WellbeingModel$$ExternalSyntheticLambda4;-><init>()V

    sput-object v0, Lcom/android/launcher3/model/WellbeingModel;->SHORTCUT_FACTORY:Lcom/android/launcher3/popup/SystemShortcut$Factory;

    return-void

    :array_0
    .array-data 4
        0x1388
        0x3a98
        0x7530
    .end array-data
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 109
    invoke-direct {p0}, Lcom/android/launcher3/util/BgObjectWithLooper;-><init>()V

    .line 102
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/model/WellbeingModel;->mModelLock:Ljava/lang/Object;

    .line 104
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/model/WellbeingModel;->mActionIdMap:Ljava/util/Map;

    .line 105
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/model/WellbeingModel;->mPackageToActionId:Ljava/util/Map;

    .line 110
    iput-object p1, p0, Lcom/android/launcher3/model/WellbeingModel;->mContext:Landroid/content/Context;

    .line 111
    sget v0, Lcom/android/launcher3/R$string;->wellbeing_provider_pkg:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/model/WellbeingModel;->mWellbeingProviderPkg:Ljava/lang/String;

    .line 112
    const-string v0, "WellbeingHandler"

    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/WellbeingModel;->initializeInBackground(Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method private apiBuilder()Landroid/net/Uri$Builder;
    .locals 3

    .line 226
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 227
    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/launcher3/model/WellbeingModel;->mWellbeingProviderPkg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".api"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 228
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 226
    return-object v0
.end method

.method private getShortcutForApp(Ljava/lang/String;ILcom/android/launcher3/BaseDraggingActivity;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Lcom/android/launcher3/popup/SystemShortcut;
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "activity"    # Lcom/android/launcher3/BaseDraggingActivity;
    .param p4, "info"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p5, "originalView"    # Landroid/view/View;

    .line 198
    invoke-static {}, Lcom/android/launcher3/util/Preconditions;->assertUIThread()V

    .line 200
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const/4 v1, 0x0

    if-eq p2, v0, :cond_1

    .line 201
    iget-boolean v0, p0, Lcom/android/launcher3/model/WellbeingModel;->mIsInTest:Z

    if-eqz v0, :cond_0

    .line 202
    const-string v0, "WellbeingModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getShortcutForApp ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]: not current user"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :cond_0
    return-object v1

    .line 207
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/model/WellbeingModel;->mModelLock:Ljava/lang/Object;

    monitor-enter v0

    .line 208
    :try_start_0
    iget-object v2, p0, Lcom/android/launcher3/model/WellbeingModel;->mPackageToActionId:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 209
    .local v2, "actionId":Ljava/lang/String;
    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/android/launcher3/model/WellbeingModel;->mActionIdMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/RemoteAction;

    goto :goto_0

    :cond_2
    move-object v3, v1

    .line 210
    .local v3, "action":Landroid/app/RemoteAction;
    :goto_0
    if-nez v3, :cond_4

    .line 211
    iget-boolean v4, p0, Lcom/android/launcher3/model/WellbeingModel;->mIsInTest:Z

    if-eqz v4, :cond_3

    .line 212
    const-string v4, "WellbeingModel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getShortcutForApp ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]: no action"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :cond_3
    monitor-exit v0

    return-object v1

    .line 216
    :cond_4
    iget-boolean v1, p0, Lcom/android/launcher3/model/WellbeingModel;->mIsInTest:Z

    if-eqz v1, :cond_5

    .line 217
    const-string v1, "WellbeingModel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getShortcutForApp ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]: action: \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 218
    invoke-virtual {v3}, Landroid/app/RemoteAction;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 217
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :cond_5
    new-instance v1, Lcom/android/launcher3/popup/RemoteActionShortcut;

    invoke-direct {v1, v3, p3, p4, p5}, Lcom/android/launcher3/popup/RemoteActionShortcut;-><init>(Landroid/app/RemoteAction;Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)V

    monitor-exit v0

    return-object v1

    .line 222
    .end local v2    # "actionId":Ljava/lang/String;
    .end local v3    # "action":Landroid/app/RemoteAction;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private isInMinimalDeviceMode()Z
    .locals 7

    .line 233
    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_MINIMAL_DEVICE:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 234
    return v1

    .line 236
    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher3/model/WellbeingModel;->mIsInTest:Z

    const-string v2, "WellbeingModel"

    if-eqz v0, :cond_1

    .line 237
    const-string v0, "isInMinimalDeviceMode() called"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :cond_1
    invoke-static {}, Lcom/android/launcher3/util/Preconditions;->assertNonUiThread()V

    .line 241
    invoke-direct {p0}, Lcom/android/launcher3/model/WellbeingModel;->apiBuilder()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 242
    .local v0, "contentUri":Landroid/net/Uri;
    :try_start_0
    iget-object v3, p0, Lcom/android/launcher3/model/WellbeingModel;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 243
    invoke-virtual {v3, v0}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    .local v3, "client":Landroid/content/ContentProviderClient;
    const/4 v4, 0x0

    if-nez v3, :cond_2

    :goto_0
    goto :goto_1

    :cond_2
    :try_start_1
    const-string v5, "get_minimal_device_config"

    invoke-virtual {v3, v5, v4, v4}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    goto :goto_0

    .line 246
    .local v4, "remoteBundle":Landroid/os/Bundle;
    :goto_1
    if-eqz v4, :cond_3

    const-string v5, "minimal_device_state"

    .line 247
    invoke-virtual {v4, v5, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    const/4 v5, 0x1

    goto :goto_2

    :cond_3
    move v5, v1

    .line 249
    :goto_2
    if-eqz v3, :cond_4

    :try_start_2
    invoke-virtual {v3}, Landroid/content/ContentProviderClient;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 246
    :cond_4
    return v5

    .line 242
    .end local v4    # "remoteBundle":Landroid/os/Bundle;
    :catchall_0
    move-exception v4

    if-eqz v3, :cond_5

    :try_start_3
    invoke-virtual {v3}, Landroid/content/ContentProviderClient;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v5

    :try_start_4
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "contentUri":Landroid/net/Uri;
    .end local p0    # "this":Lcom/android/launcher3/model/WellbeingModel;
    :cond_5
    :goto_3
    throw v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 249
    .end local v3    # "client":Landroid/content/ContentProviderClient;
    .restart local v0    # "contentUri":Landroid/net/Uri;
    .restart local p0    # "this":Lcom/android/launcher3/model/WellbeingModel;
    :catch_0
    move-exception v3

    .line 250
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to retrieve data from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget-boolean v4, p0, Lcom/android/launcher3/model/WellbeingModel;->mIsInTest:Z

    if-nez v4, :cond_7

    .line 253
    .end local v3    # "e":Ljava/lang/Exception;
    if-eqz v4, :cond_6

    const-string v3, "isInMinimalDeviceMode(): finished"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :cond_6
    return v1

    .line 251
    .restart local v3    # "e":Ljava/lang/Exception;
    :cond_7
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static synthetic lambda$static$4(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Lcom/android/launcher3/popup/SystemShortcut;
    .locals 7
    .param p0, "activity"    # Lcom/android/launcher3/BaseDraggingActivity;
    .param p1, "info"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p2, "originalView"    # Landroid/view/View;

    .line 382
    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 383
    :cond_0
    sget-object v0, Lcom/android/launcher3/model/WellbeingModel;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/launcher3/model/WellbeingModel;

    .line 384
    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    .line 383
    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/launcher3/model/WellbeingModel;->getShortcutForApp(Ljava/lang/String;ILcom/android/launcher3/BaseDraggingActivity;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Lcom/android/launcher3/popup/SystemShortcut;

    move-result-object v0

    .line 382
    :goto_0
    return-object v0
.end method

.method static synthetic lambda$updateActionsWithRetry$1(Landroid/content/pm/LauncherActivityInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "li"    # Landroid/content/pm/LauncherActivityInfo;

    .line 331
    invoke-virtual {p0}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic lambda$updateActionsWithRetry$2(I)[Ljava/lang/String;
    .locals 1
    .param p0, "x$0"    # I

    .line 332
    new-array v0, p0, [Ljava/lang/String;

    return-object v0
.end method

.method private onAppPackageChanged(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 359
    iget-boolean v0, p0, Lcom/android/launcher3/model/WellbeingModel;->mIsInTest:Z

    if-eqz v0, :cond_0

    const-string v0, "WellbeingModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Changes in apps: intent = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    :cond_0
    invoke-static {}, Lcom/android/launcher3/util/Preconditions;->assertNonUiThread()V

    .line 362
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 363
    .local v0, "packageName":Ljava/lang/String;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 367
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 368
    .local v1, "action":Ljava/lang/String;
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 369
    iget-object v2, p0, Lcom/android/launcher3/model/WellbeingModel;->mWorkerHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 370
    iget-object v2, p0, Lcom/android/launcher3/model/WellbeingModel;->mModelLock:Ljava/lang/Object;

    monitor-enter v2

    .line 371
    :try_start_0
    iget-object v3, p0, Lcom/android/launcher3/model/WellbeingModel;->mPackageToActionId:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 373
    :cond_2
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 374
    const/4 v2, 0x0

    invoke-direct {p0, v2, v0}, Lcom/android/launcher3/model/WellbeingModel;->updateActionsWithRetry(ILjava/lang/String;)V

    .line 376
    :cond_3
    :goto_0
    return-void

    .line 365
    .end local v1    # "action":Ljava/lang/String;
    :cond_4
    :goto_1
    return-void
.end method

.method private onWellbeingUriChanged(Landroid/net/Uri;)V
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;

    .line 140
    invoke-static {}, Lcom/android/launcher3/util/Preconditions;->assertNonUiThread()V

    .line 141
    iget-boolean v0, p0, Lcom/android/launcher3/model/WellbeingModel;->mIsInTest:Z

    if-eqz v0, :cond_0

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ContentObserver.onChange() called with: uri = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WellbeingModel"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "actions"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 146
    invoke-direct {p0}, Lcom/android/launcher3/model/WellbeingModel;->updateAllPackages()V

    goto :goto_1

    .line 147
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "minimal_device"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 149
    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_MINIMAL_DEVICE:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-nez v0, :cond_2

    .line 150
    return-void

    .line 156
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/model/WellbeingModel;->mContext:Landroid/content/Context;

    const-string v1, "minimal.db"

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 158
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 160
    .local v0, "extras":Landroid/os/Bundle;
    invoke-direct {p0}, Lcom/android/launcher3/model/WellbeingModel;->isInMinimalDeviceMode()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 161
    const-string v1, "minimal.db"

    .line 162
    .local v1, "dbFile":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/launcher3/model/WellbeingModel;->mWellbeingProviderPkg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".api"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "KEY_LAYOUT_PROVIDER_AUTHORITY"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 165
    .end local v1    # "dbFile":Ljava/lang/String;
    :cond_3
    sget-object v1, Lcom/android/launcher3/InvariantDeviceProfile;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v2, p0, Lcom/android/launcher3/model/WellbeingModel;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/InvariantDeviceProfile;

    iget-object v1, v1, Lcom/android/launcher3/InvariantDeviceProfile;->dbFile:Ljava/lang/String;

    .line 167
    .restart local v1    # "dbFile":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/android/launcher3/model/WellbeingModel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "switch_database"

    invoke-static {v2, v3, v1, v0}, Lcom/android/launcher3/LauncherSettings$Settings;->call(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 171
    .end local v0    # "extras":Landroid/os/Bundle;
    .end local v1    # "dbFile":Ljava/lang/String;
    :cond_4
    :goto_1
    return-void
.end method

.method private restartObserver()V
    .locals 6

    .line 179
    iget-object v0, p0, Lcom/android/launcher3/model/WellbeingModel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 180
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/launcher3/model/WellbeingModel;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 181
    invoke-direct {p0}, Lcom/android/launcher3/model/WellbeingModel;->apiBuilder()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "actions"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 182
    .local v1, "actionsUri":Landroid/net/Uri;
    invoke-direct {p0}, Lcom/android/launcher3/model/WellbeingModel;->apiBuilder()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "minimal_device"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 184
    .local v2, "minimalDeviceUri":Landroid/net/Uri;
    :try_start_0
    iget-object v3, p0, Lcom/android/launcher3/model/WellbeingModel;->mContentObserver:Landroid/database/ContentObserver;

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 186
    iget-object v3, p0, Lcom/android/launcher3/model/WellbeingModel;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    goto :goto_0

    .line 188
    :catch_0
    move-exception v3

    .line 189
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to register content observer for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "WellbeingModel"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-boolean v4, p0, Lcom/android/launcher3/model/WellbeingModel;->mIsInTest:Z

    if-nez v4, :cond_0

    .line 192
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-direct {p0}, Lcom/android/launcher3/model/WellbeingModel;->updateAllPackages()V

    .line 193
    return-void

    .line 190
    .restart local v3    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method private updateActions([Ljava/lang/String;)Z
    .locals 17
    .param p1, "packageNames"    # [Ljava/lang/String;

    .line 259
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    array-length v0, v2

    const/4 v3, 0x1

    if-nez v0, :cond_0

    .line 260
    return v3

    .line 262
    :cond_0
    iget-boolean v0, v1, Lcom/android/launcher3/model/WellbeingModel;->mIsInTest:Z

    if-eqz v0, :cond_1

    .line 263
    const-string v0, "WellbeingModel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "retrieveActions() called with: packageNames = ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-static {v5, v2}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :cond_1
    invoke-static {}, Lcom/android/launcher3/util/Preconditions;->assertNonUiThread()V

    .line 268
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/model/WellbeingModel;->apiBuilder()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    .line 270
    .local v4, "contentUri":Landroid/net/Uri;
    const/4 v5, 0x0

    :try_start_0
    iget-object v0, v1, Lcom/android/launcher3/model/WellbeingModel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 271
    invoke-virtual {v0, v4}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v0

    .line 272
    .local v6, "client":Landroid/content/ContentProviderClient;
    if-nez v6, :cond_4

    .line 273
    :try_start_1
    iget-boolean v0, v1, Lcom/android/launcher3/model/WellbeingModel;->mIsInTest:Z

    if-eqz v0, :cond_2

    const-string v0, "WellbeingModel"

    const-string v7, "retrieveActions(): null provider"

    invoke-static {v0, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 274
    :cond_2
    nop

    .line 309
    if-eqz v6, :cond_3

    :try_start_2
    invoke-virtual {v6}, Landroid/content/ContentProviderClient;->close()V
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 274
    :cond_3
    return v5

    .line 278
    :cond_4
    :try_start_3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v7, v0

    .line 279
    .local v7, "params":Landroid/os/Bundle;
    const-string v0, "packages"

    invoke-virtual {v7, v0, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 280
    const-string v0, "max_num_actions_shown"

    invoke-virtual {v7, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 282
    const-string v0, "get_actions"

    const/4 v8, 0x0

    invoke-virtual {v6, v0, v8, v7}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    move-object v8, v0

    .line 283
    .local v8, "remoteActionBundle":Landroid/os/Bundle;
    const-string v0, "success"

    invoke-virtual {v8, v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez v0, :cond_6

    .line 309
    if-eqz v6, :cond_5

    :try_start_4
    invoke-virtual {v6}, Landroid/content/ContentProviderClient;->close()V
    :try_end_4
    .catch Landroid/os/DeadObjectException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 283
    :cond_5
    return v5

    .line 285
    :cond_6
    :try_start_5
    iget-object v9, v1, Lcom/android/launcher3/model/WellbeingModel;->mModelLock:Ljava/lang/Object;

    monitor-enter v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 288
    :try_start_6
    invoke-static/range {p1 .. p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    iget-object v10, v1, Lcom/android/launcher3/model/WellbeingModel;->mPackageToActionId:Ljava/util/Map;

    invoke-static {v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v11, Lcom/android/launcher3/model/WellbeingModel$$ExternalSyntheticLambda5;

    invoke-direct {v11, v10}, Lcom/android/launcher3/model/WellbeingModel$$ExternalSyntheticLambda5;-><init>(Ljava/util/Map;)V

    invoke-interface {v0, v11}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 293
    const-string v0, "actions"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v10, v0

    move v11, v5

    :goto_0
    if-ge v11, v10, :cond_9

    aget-object v12, v0, v11

    .line 294
    .local v12, "actionId":Ljava/lang/String;
    invoke-virtual {v8, v12}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v13

    .line 295
    .local v13, "actionBundle":Landroid/os/Bundle;
    iget-object v14, v1, Lcom/android/launcher3/model/WellbeingModel;->mActionIdMap:Ljava/util/Map;

    const-string v15, "action"

    .line 296
    invoke-virtual {v13, v15}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v15

    check-cast v15, Landroid/app/RemoteAction;

    .line 295
    invoke-interface {v14, v12, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    const-string v14, "packages"

    .line 299
    invoke-virtual {v13, v14}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 300
    .local v14, "packagesForAction":[Ljava/lang/String;
    iget-boolean v15, v1, Lcom/android/launcher3/model/WellbeingModel;->mIsInTest:Z

    if-eqz v15, :cond_7

    .line 301
    const-string v15, "WellbeingModel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "....actionId: "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", packages: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", "

    invoke-static {v5, v14}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    :cond_7
    array-length v3, v14

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v3, :cond_8

    aget-object v15, v14, v5

    .line 305
    .local v15, "packageName":Ljava/lang/String;
    move-object/from16 v16, v0

    iget-object v0, v1, Lcom/android/launcher3/model/WellbeingModel;->mPackageToActionId:Ljava/util/Map;

    invoke-interface {v0, v15, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    nop

    .end local v15    # "packageName":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, v16

    goto :goto_1

    :cond_8
    move-object/from16 v16, v0

    .line 293
    .end local v12    # "actionId":Ljava/lang/String;
    .end local v13    # "actionBundle":Landroid/os/Bundle;
    .end local v14    # "packagesForAction":[Ljava/lang/String;
    add-int/lit8 v11, v11, 0x1

    const/4 v3, 0x1

    const/4 v5, 0x0

    goto :goto_0

    .line 308
    :cond_9
    monitor-exit v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 309
    .end local v7    # "params":Landroid/os/Bundle;
    if-eqz v6, :cond_a

    :try_start_7
    invoke-virtual {v6}, Landroid/content/ContentProviderClient;->close()V
    :try_end_7
    .catch Landroid/os/DeadObjectException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 316
    .end local v6    # "client":Landroid/content/ContentProviderClient;
    :cond_a
    nop

    .line 317
    iget-boolean v0, v1, Lcom/android/launcher3/model/WellbeingModel;->mIsInTest:Z

    if-eqz v0, :cond_b

    const-string v0, "WellbeingModel"

    const-string v3, "retrieveActions(): finished"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    :cond_b
    const/4 v3, 0x1

    return v3

    .line 308
    .restart local v6    # "client":Landroid/content/ContentProviderClient;
    .restart local v7    # "params":Landroid/os/Bundle;
    :catchall_0
    move-exception v0

    :try_start_8
    monitor-exit v9
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .end local v4    # "contentUri":Landroid/net/Uri;
    .end local v6    # "client":Landroid/content/ContentProviderClient;
    .end local p0    # "this":Lcom/android/launcher3/model/WellbeingModel;
    .end local p1    # "packageNames":[Ljava/lang/String;
    :try_start_9
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 270
    .end local v7    # "params":Landroid/os/Bundle;
    .end local v8    # "remoteActionBundle":Landroid/os/Bundle;
    .restart local v4    # "contentUri":Landroid/net/Uri;
    .restart local v6    # "client":Landroid/content/ContentProviderClient;
    .restart local p0    # "this":Lcom/android/launcher3/model/WellbeingModel;
    .restart local p1    # "packageNames":[Ljava/lang/String;
    :catchall_1
    move-exception v0

    move-object v3, v0

    if-eqz v6, :cond_c

    :try_start_a
    invoke-virtual {v6}, Landroid/content/ContentProviderClient;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object v5, v0

    :try_start_b
    invoke-virtual {v3, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v4    # "contentUri":Landroid/net/Uri;
    .end local p0    # "this":Lcom/android/launcher3/model/WellbeingModel;
    .end local p1    # "packageNames":[Ljava/lang/String;
    :cond_c
    :goto_2
    throw v3
    :try_end_b
    .catch Landroid/os/DeadObjectException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    .line 312
    .end local v6    # "client":Landroid/content/ContentProviderClient;
    .restart local v4    # "contentUri":Landroid/net/Uri;
    .restart local p0    # "this":Lcom/android/launcher3/model/WellbeingModel;
    .restart local p1    # "packageNames":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 313
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "WellbeingModel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to retrieve data from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    iget-boolean v3, v1, Lcom/android/launcher3/model/WellbeingModel;->mIsInTest:Z

    if-nez v3, :cond_d

    .line 315
    const/4 v3, 0x1

    return v3

    .line 314
    :cond_d
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 309
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 310
    .local v0, "e":Landroid/os/DeadObjectException;
    const-string v3, "WellbeingModel"

    const-string v5, "retrieveActions(): DeadObjectException"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    const/4 v3, 0x0

    return v3
.end method

.method private updateActionsWithRetry(ILjava/lang/String;)V
    .locals 6
    .param p1, "retryCount"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 323
    iget-boolean v0, p0, Lcom/android/launcher3/model/WellbeingModel;->mIsInTest:Z

    if-eqz v0, :cond_0

    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateActionsWithRetry(); retryCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", package: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WellbeingModel"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 332
    iget-object v0, p0, Lcom/android/launcher3/model/WellbeingModel;->mContext:Landroid/content/Context;

    const-class v1, Landroid/content/pm/LauncherApps;

    .line 329
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherApps;

    const/4 v1, 0x0

    .line 330
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/model/WellbeingModel$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lcom/android/launcher3/model/WellbeingModel$$ExternalSyntheticLambda6;-><init>()V

    .line 331
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->distinct()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/model/WellbeingModel$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Lcom/android/launcher3/model/WellbeingModel$$ExternalSyntheticLambda7;-><init>()V

    .line 332
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_0

    .line 333
    :cond_1
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    :goto_0
    nop

    .line 335
    .local v0, "packageNames":[Ljava/lang/String;
    iget-object v1, p0, Lcom/android/launcher3/model/WellbeingModel;->mWorkerHandler:Landroid/os/Handler;

    invoke-virtual {v1, p2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 336
    invoke-direct {p0, v0}, Lcom/android/launcher3/model/WellbeingModel;->updateActions([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 337
    return-void

    .line 339
    :cond_2
    sget-object v1, Lcom/android/launcher3/model/WellbeingModel;->RETRY_TIMES_MS:[I

    array-length v2, v1

    if-lt p1, v2, :cond_3

    .line 341
    return-void

    .line 343
    :cond_3
    iget-object v2, p0, Lcom/android/launcher3/model/WellbeingModel;->mWorkerHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/launcher3/model/WellbeingModel$$ExternalSyntheticLambda8;

    invoke-direct {v3, p0, p1, p2}, Lcom/android/launcher3/model/WellbeingModel$$ExternalSyntheticLambda8;-><init>(Lcom/android/launcher3/model/WellbeingModel;ILjava/lang/String;)V

    aget v1, v1, p1

    int-to-long v4, v1

    invoke-virtual {v2, v3, p2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 349
    return-void
.end method

.method private updateAllPackages()V
    .locals 2

    .line 353
    iget-boolean v0, p0, Lcom/android/launcher3/model/WellbeingModel;->mIsInTest:Z

    if-eqz v0, :cond_0

    const-string v0, "WellbeingModel"

    const-string v1, "updateAllPackages"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/model/WellbeingModel;->updateActionsWithRetry(ILjava/lang/String;)V

    .line 355
    return-void
.end method


# virtual methods
.method synthetic lambda$onInitialized$0$com-android-launcher3-model-WellbeingModel(Landroid/content/Intent;)V
    .locals 0
    .param p1, "t"    # Landroid/content/Intent;

    .line 121
    invoke-direct {p0}, Lcom/android/launcher3/model/WellbeingModel;->restartObserver()V

    return-void
.end method

.method synthetic lambda$updateActionsWithRetry$3$com-android-launcher3-model-WellbeingModel(ILjava/lang/String;)V
    .locals 2
    .param p1, "retryCount"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 345
    iget-boolean v0, p0, Lcom/android/launcher3/model/WellbeingModel;->mIsInTest:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Retrying; attempt "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WellbeingModel"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    :cond_0
    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0, p2}, Lcom/android/launcher3/model/WellbeingModel;->updateActionsWithRetry(ILjava/lang/String;)V

    .line 347
    return-void
.end method

.method protected onInitialized(Landroid/os/Looper;)V
    .locals 8
    .param p1, "looper"    # Landroid/os/Looper;

    .line 117
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/launcher3/model/WellbeingModel;->mWorkerHandler:Landroid/os/Handler;

    .line 118
    new-instance v1, Lcom/android/launcher3/model/WellbeingModel$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/launcher3/model/WellbeingModel$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/model/WellbeingModel;)V

    invoke-static {v0, v1}, Lcom/android/launcher3/Utilities;->newContentObserver(Landroid/os/Handler;Ljava/util/function/Consumer;)Landroid/database/ContentObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/model/WellbeingModel;->mContentObserver:Landroid/database/ContentObserver;

    .line 119
    iget-object v0, p0, Lcom/android/launcher3/model/WellbeingModel;->mWellbeingProviderPkg:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/android/launcher3/model/WellbeingModel;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/launcher3/util/SimpleBroadcastReceiver;

    new-instance v2, Lcom/android/launcher3/model/WellbeingModel$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/launcher3/model/WellbeingModel$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/model/WellbeingModel;)V

    invoke-direct {v1, v2}, Lcom/android/launcher3/util/SimpleBroadcastReceiver;-><init>(Ljava/util/function/Consumer;)V

    iget-object v2, p0, Lcom/android/launcher3/model/WellbeingModel;->mWellbeingProviderPkg:Ljava/lang/String;

    const-string v3, "android.intent.action.PACKAGE_ADDED"

    const-string v4, "android.intent.action.PACKAGE_CHANGED"

    const-string v5, "android.intent.action.PACKAGE_REMOVED"

    const-string v6, "android.intent.action.PACKAGE_DATA_CLEARED"

    const-string v7, "android.intent.action.PACKAGE_RESTARTED"

    filled-new-array {v3, v4, v5, v6, v7}, [Ljava/lang/String;

    move-result-object v4

    .line 122
    invoke-static {v2, v4}, Lcom/android/launcher3/util/PackageManagerHelper;->getPackageFilter(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v2

    iget-object v4, p0, Lcom/android/launcher3/model/WellbeingModel;->mWorkerHandler:Landroid/os/Handler;

    .line 120
    const/4 v6, 0x0

    invoke-virtual {v0, v1, v2, v6, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 128
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 129
    .local v0, "filter":Landroid/content/IntentFilter;
    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 130
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 131
    iget-object v1, p0, Lcom/android/launcher3/model/WellbeingModel;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/launcher3/util/SimpleBroadcastReceiver;

    new-instance v3, Lcom/android/launcher3/model/WellbeingModel$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lcom/android/launcher3/model/WellbeingModel$$ExternalSyntheticLambda2;-><init>(Lcom/android/launcher3/model/WellbeingModel;)V

    invoke-direct {v2, v3}, Lcom/android/launcher3/util/SimpleBroadcastReceiver;-><init>(Ljava/util/function/Consumer;)V

    iget-object v3, p0, Lcom/android/launcher3/model/WellbeingModel;->mWorkerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0, v6, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 134
    invoke-direct {p0}, Lcom/android/launcher3/model/WellbeingModel;->restartObserver()V

    .line 136
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method public setInTest(Z)V
    .locals 0
    .param p1, "inTest"    # Z

    .line 174
    iput-boolean p1, p0, Lcom/android/launcher3/model/WellbeingModel;->mIsInTest:Z

    .line 175
    return-void
.end method
