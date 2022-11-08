.class public Lcom/android/launcher3/model/AppEventProducer;
.super Ljava/lang/Object;
.source "AppEventProducer.java"

# interfaces
.implements Lcom/android/quickstep/logging/StatsLogCompatManager$StatsLogConsumer;


# static fields
.field private static final MSG_LAUNCH:I


# instance fields
.field private final mCallback:Ljava/util/function/ObjIntConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/ObjIntConsumer<",
            "Landroid/app/prediction/AppTargetEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mLastDragItem:Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

.field private final mMessageHandler:Landroid/os/Handler;


# direct methods
.method public static synthetic $r8$lambda$IpUampESGToJCKCXDKhp805J6Hc(Lcom/android/launcher3/model/AppEventProducer;Landroid/os/Message;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/model/AppEventProducer;->handleMessage(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/function/ObjIntConsumer;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/function/ObjIntConsumer<",
            "Landroid/app/prediction/AppTargetEvent;",
            ">;)V"
        }
    .end annotation

    .line 95
    .local p2, "callback":Ljava/util/function/ObjIntConsumer;, "Ljava/util/function/ObjIntConsumer<Landroid/app/prediction/AppTargetEvent;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p1, p0, Lcom/android/launcher3/model/AppEventProducer;->mContext:Landroid/content/Context;

    .line 97
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v1}, Lcom/android/launcher3/util/LooperExecutor;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/model/AppEventProducer$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/launcher3/model/AppEventProducer$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/model/AppEventProducer;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/launcher3/model/AppEventProducer;->mMessageHandler:Landroid/os/Handler;

    .line 98
    iput-object p2, p0, Lcom/android/launcher3/model/AppEventProducer;->mCallback:Ljava/util/function/ObjIntConsumer;

    .line 99
    return-void
.end method

.method private createTempFolderTarget()Landroid/app/prediction/AppTarget;
    .locals 5

    .line 258
    new-instance v0, Landroid/app/prediction/AppTarget$Builder;

    new-instance v1, Landroid/app/prediction/AppTargetId;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "folder:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/prediction/AppTargetId;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/launcher3/model/AppEventProducer;->mContext:Landroid/content/Context;

    .line 259
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/app/prediction/AppTarget$Builder;-><init>(Landroid/app/prediction/AppTargetId;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 260
    invoke-virtual {v0}, Landroid/app/prediction/AppTarget$Builder;->build()Landroid/app/prediction/AppTarget;

    move-result-object v0

    .line 258
    return-object v0
.end method

.method private getContainer(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;)Ljava/lang/String;
    .locals 5
    .param p1, "info"    # Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    .line 264
    invoke-virtual {p1}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->getContainerInfo()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    move-result-object v0

    .line 265
    .local v0, "ci":Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;
    sget-object v1, Lcom/android/launcher3/model/AppEventProducer$1;->$SwitchMap$com$android$launcher3$logger$LauncherAtom$ContainerInfo$ContainerCase:[I

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->getContainerCase()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const-string v2, "search-results"

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    .line 303
    :pswitch_0
    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->getExtendedContainers()Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;->getContainerCase()Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers$ContainerCase;

    move-result-object v1

    sget-object v3, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers$ContainerCase;->DEVICE_SEARCH_RESULT_CONTAINER:Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers$ContainerCase;

    if-ne v1, v3, :cond_0

    .line 305
    return-object v2

    .line 301
    :pswitch_1
    return-object v2

    .line 291
    :pswitch_2
    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->getFolder()Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;

    move-result-object v1

    .line 292
    .local v1, "fc":Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;
    sget-object v2, Lcom/android/launcher3/model/AppEventProducer$1;->$SwitchMap$com$android$launcher3$logger$LauncherAtom$FolderContainer$ParentContainerCase:[I

    invoke-virtual {v1}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->getParentContainerCase()Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const-string v3, "folder/"

    packed-switch v2, :pswitch_data_1

    .line 298
    const-string v2, "folder"

    return-object v2

    .line 296
    :pswitch_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->getHotseat()Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;

    move-result-object v3

    invoke-static {v3}, Lcom/android/launcher3/model/AppEventProducer;->getHotseatContainerString(Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 294
    :pswitch_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->getWorkspace()Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v4, v4}, Lcom/android/launcher3/model/AppEventProducer;->getWorkspaceContainerString(Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 288
    .end local v1    # "fc":Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;
    :pswitch_5
    const-string v1, "deep-shortcuts"

    return-object v1

    .line 285
    :pswitch_6
    const-string v1, "predictions"

    return-object v1

    .line 282
    :pswitch_7
    const-string v1, "predictions/hotseat"

    return-object v1

    .line 279
    :pswitch_8
    const-string v1, "all-apps"

    return-object v1

    .line 276
    :pswitch_9
    const-string v1, "task-switcher"

    return-object v1

    .line 273
    :pswitch_a
    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->getHotseat()Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/model/AppEventProducer;->getHotseatContainerString(Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 268
    :pswitch_b
    invoke-virtual {p1}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->getWidget()Lcom/android/launcher3/logger/LauncherAtom$Widget;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/logger/LauncherAtom$Widget;->getSpanX()I

    move-result v1

    .line 269
    .local v1, "spanX":I
    invoke-virtual {p1}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->getWidget()Lcom/android/launcher3/logger/LauncherAtom$Widget;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/logger/LauncherAtom$Widget;->getSpanY()I

    move-result v2

    .line 270
    .local v2, "spanY":I
    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->getWorkspace()Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;

    move-result-object v3

    invoke-static {v3, v1, v2}, Lcom/android/launcher3/model/AppEventProducer;->getWorkspaceContainerString(Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;II)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 310
    .end local v1    # "spanX":I
    .end local v2    # "spanY":I
    :cond_0
    :goto_0
    const-string v1, ""

    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private static getHotseatContainerString(Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;)Ljava/lang/String;
    .locals 4
    .param p0, "hc"    # Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;

    .line 319
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;->getIndex()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "hotseat/%1$d/[%1$d,0]/[1,1]"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getWorkspaceContainerString(Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;II)Ljava/lang/String;
    .locals 4
    .param p0, "wc"    # Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;
    .param p1, "spanX"    # I
    .param p2, "spanY"    # I

    .line 314
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    .line 315
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;->getPageIndex()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;->getGridX()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;->getGridY()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    .line 314
    const-string v2, "workspace/%d/[%d,%d]/[%d,%d]"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 103
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 109
    const/4 v0, 0x0

    return v0

    .line 105
    :pswitch_0
    iget-object v0, p0, Lcom/android/launcher3/model/AppEventProducer;->mCallback:Ljava/util/function/ObjIntConsumer;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/app/prediction/AppTargetEvent;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1, v2}, Ljava/util/function/ObjIntConsumer;->accept(Ljava/lang/Object;I)V

    .line 106
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private static parseNullable(Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 1
    .param p0, "componentNameString"    # Ljava/lang/String;

    .line 323
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 323
    :goto_0
    return-object v0
.end method

.method private sendEvent(Landroid/app/prediction/AppTarget;Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;II)V
    .locals 3
    .param p1, "target"    # Landroid/app/prediction/AppTarget;
    .param p2, "locationInfo"    # Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;
    .param p3, "eventId"    # I
    .param p4, "targetPredictor"    # I

    .line 121
    if-eqz p1, :cond_0

    sget-boolean v0, Lcom/android/launcher3/Utilities;->IS_RUNNING_IN_TEST_HARNESS:Z

    if-nez v0, :cond_0

    .line 122
    new-instance v0, Landroid/app/prediction/AppTargetEvent$Builder;

    invoke-direct {v0, p1, p3}, Landroid/app/prediction/AppTargetEvent$Builder;-><init>(Landroid/app/prediction/AppTarget;I)V

    .line 123
    invoke-direct {p0, p2}, Lcom/android/launcher3/model/AppEventProducer;->getContainer(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/prediction/AppTargetEvent$Builder;->setLaunchLocation(Ljava/lang/String;)Landroid/app/prediction/AppTargetEvent$Builder;

    move-result-object v0

    .line 124
    invoke-virtual {v0}, Landroid/app/prediction/AppTargetEvent$Builder;->build()Landroid/app/prediction/AppTargetEvent;

    move-result-object v0

    .line 125
    .local v0, "event":Landroid/app/prediction/AppTargetEvent;
    iget-object v1, p0, Lcom/android/launcher3/model/AppEventProducer;->mMessageHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p4, v2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 127
    .end local v0    # "event":Landroid/app/prediction/AppTargetEvent;
    :cond_0
    return-void
.end method

.method private sendEvent(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;II)V
    .locals 1
    .param p1, "atomInfo"    # Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;
    .param p2, "eventId"    # I
    .param p3, "targetPredictor"    # I

    .line 114
    invoke-direct {p0, p1}, Lcom/android/launcher3/model/AppEventProducer;->toAppTarget(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;)Landroid/app/prediction/AppTarget;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/launcher3/model/AppEventProducer;->sendEvent(Landroid/app/prediction/AppTarget;Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;II)V

    .line 115
    return-void
.end method

.method private toAppTarget(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;)Landroid/app/prediction/AppTarget;
    .locals 11
    .param p1, "info"    # Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    .line 190
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    .line 191
    .local v0, "userHandle":Landroid/os/UserHandle;
    invoke-virtual {p1}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->getIsWork()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 192
    sget-object v1, Lcom/android/launcher3/pm/UserCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v3, p0, Lcom/android/launcher3/model/AppEventProducer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/pm/UserCache;

    invoke-virtual {v1}, Lcom/android/launcher3/pm/UserCache;->getUserProfiles()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    .line 193
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/launcher3/model/AppEventProducer$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0}, Lcom/android/launcher3/model/AppEventProducer$$ExternalSyntheticLambda0;-><init>(Landroid/os/UserHandle;)V

    invoke-interface {v3}, Ljava/util/function/Predicate;->negate()Ljava/util/function/Predicate;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 194
    invoke-interface {v1}, Ljava/util/stream/Stream;->findAny()Ljava/util/Optional;

    move-result-object v1

    .line 195
    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/os/UserHandle;

    .line 197
    :cond_0
    if-nez v0, :cond_1

    .line 198
    return-object v2

    .line 200
    :cond_1
    const/4 v1, 0x0

    .line 201
    .local v1, "cn":Landroid/content/ComponentName;
    const/4 v3, 0x0

    .line 202
    .local v3, "shortcutInfo":Landroid/content/pm/ShortcutInfo;
    const/4 v4, 0x0

    .line 204
    .local v4, "id":Ljava/lang/String;
    sget-object v5, Lcom/android/launcher3/model/AppEventProducer$1;->$SwitchMap$com$android$launcher3$logger$LauncherAtom$ItemInfo$ItemCase:[I

    invoke-virtual {p1}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->getItemCase()Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;->ordinal()I

    move-result v6

    aget v5, v5, v6

    const-string v6, "app:"

    packed-switch v5, :pswitch_data_0

    goto/16 :goto_0

    .line 243
    :pswitch_0
    invoke-direct {p0}, Lcom/android/launcher3/model/AppEventProducer;->createTempFolderTarget()Landroid/app/prediction/AppTarget;

    move-result-object v2

    return-object v2

    .line 236
    :pswitch_1
    invoke-virtual {p1}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->getTask()Lcom/android/launcher3/logger/LauncherAtom$Task;

    move-result-object v5

    .line 237
    .local v5, "task":Lcom/android/launcher3/logger/LauncherAtom$Task;
    invoke-virtual {v5}, Lcom/android/launcher3/logger/LauncherAtom$Task;->getComponentName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/launcher3/model/AppEventProducer;->parseNullable(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v7

    move-object v1, v7

    if-eqz v7, :cond_3

    .line 238
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 229
    .end local v5    # "task":Lcom/android/launcher3/logger/LauncherAtom$Task;
    :pswitch_2
    invoke-virtual {p1}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->getWidget()Lcom/android/launcher3/logger/LauncherAtom$Widget;

    move-result-object v5

    .line 230
    .local v5, "widget":Lcom/android/launcher3/logger/LauncherAtom$Widget;
    invoke-virtual {v5}, Lcom/android/launcher3/logger/LauncherAtom$Widget;->getComponentName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/launcher3/model/AppEventProducer;->parseNullable(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v6

    move-object v1, v6

    if-eqz v6, :cond_3

    .line 231
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "widget:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 213
    .end local v5    # "widget":Lcom/android/launcher3/logger/LauncherAtom$Widget;
    :pswitch_3
    invoke-virtual {p1}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->getShortcut()Lcom/android/launcher3/logger/LauncherAtom$Shortcut;

    move-result-object v5

    .line 214
    .local v5, "si":Lcom/android/launcher3/logger/LauncherAtom$Shortcut;
    invoke-virtual {v5}, Lcom/android/launcher3/logger/LauncherAtom$Shortcut;->getShortcutId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 215
    invoke-virtual {v5}, Lcom/android/launcher3/logger/LauncherAtom$Shortcut;->getShortcutName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/launcher3/model/AppEventProducer;->parseNullable(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v6

    move-object v1, v6

    if-eqz v6, :cond_3

    .line 216
    new-instance v6, Lcom/android/launcher3/shortcuts/ShortcutRequest;

    iget-object v7, p0, Lcom/android/launcher3/model/AppEventProducer;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7, v0}, Lcom/android/launcher3/shortcuts/ShortcutRequest;-><init>(Landroid/content/Context;Landroid/os/UserHandle;)V

    .line 217
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v5}, Lcom/android/launcher3/logger/LauncherAtom$Shortcut;->getShortcutId()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Lcom/android/launcher3/shortcuts/ShortcutRequest;->forPackage(Ljava/lang/String;[Ljava/lang/String;)Lcom/android/launcher3/shortcuts/ShortcutRequest;

    move-result-object v6

    const/16 v7, 0xb

    invoke-virtual {v6, v7}, Lcom/android/launcher3/shortcuts/ShortcutRequest;->query(I)Lcom/android/launcher3/shortcuts/ShortcutRequest$QueryResult;

    move-result-object v6

    .line 218
    invoke-virtual {v6}, Lcom/android/launcher3/shortcuts/ShortcutRequest$QueryResult;->stream()Ljava/util/stream/Stream;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v6

    .line 219
    .local v6, "opt":Ljava/util/Optional;, "Ljava/util/Optional<Landroid/content/pm/ShortcutInfo;>;"
    invoke-virtual {v6}, Ljava/util/Optional;->isPresent()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 220
    invoke-virtual {v6}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v7

    move-object v3, v7

    check-cast v3, Landroid/content/pm/ShortcutInfo;

    .line 224
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "shortcut:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Lcom/android/launcher3/logger/LauncherAtom$Shortcut;->getShortcutId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 225
    .end local v6    # "opt":Ljava/util/Optional;, "Ljava/util/Optional<Landroid/content/pm/ShortcutInfo;>;"
    goto :goto_0

    .line 222
    .restart local v6    # "opt":Ljava/util/Optional;, "Ljava/util/Optional<Landroid/content/pm/ShortcutInfo;>;"
    :cond_2
    return-object v2

    .line 206
    .end local v5    # "si":Lcom/android/launcher3/logger/LauncherAtom$Shortcut;
    .end local v6    # "opt":Ljava/util/Optional;, "Ljava/util/Optional<Landroid/content/pm/ShortcutInfo;>;"
    :pswitch_4
    invoke-virtual {p1}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->getApplication()Lcom/android/launcher3/logger/LauncherAtom$Application;

    move-result-object v5

    .line 207
    .local v5, "app":Lcom/android/launcher3/logger/LauncherAtom$Application;
    invoke-virtual {v5}, Lcom/android/launcher3/logger/LauncherAtom$Application;->getComponentName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/launcher3/model/AppEventProducer;->parseNullable(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v7

    move-object v1, v7

    if-eqz v7, :cond_3

    .line 208
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 245
    .end local v5    # "app":Lcom/android/launcher3/logger/LauncherAtom$Application;
    :cond_3
    :goto_0
    if-eqz v4, :cond_5

    if-eqz v1, :cond_5

    .line 246
    if-eqz v3, :cond_4

    .line 247
    new-instance v2, Landroid/app/prediction/AppTarget$Builder;

    new-instance v5, Landroid/app/prediction/AppTargetId;

    invoke-direct {v5, v4}, Landroid/app/prediction/AppTargetId;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v5, v3}, Landroid/app/prediction/AppTarget$Builder;-><init>(Landroid/app/prediction/AppTargetId;Landroid/content/pm/ShortcutInfo;)V

    invoke-virtual {v2}, Landroid/app/prediction/AppTarget$Builder;->build()Landroid/app/prediction/AppTarget;

    move-result-object v2

    return-object v2

    .line 249
    :cond_4
    new-instance v2, Landroid/app/prediction/AppTarget$Builder;

    new-instance v5, Landroid/app/prediction/AppTargetId;

    invoke-direct {v5, v4}, Landroid/app/prediction/AppTargetId;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v5, v6, v0}, Landroid/app/prediction/AppTarget$Builder;-><init>(Landroid/app/prediction/AppTargetId;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 250
    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/app/prediction/AppTarget$Builder;->setClassName(Ljava/lang/String;)Landroid/app/prediction/AppTarget$Builder;

    move-result-object v2

    .line 251
    invoke-virtual {v2}, Landroid/app/prediction/AppTarget$Builder;->build()Landroid/app/prediction/AppTarget;

    move-result-object v2

    .line 249
    return-object v2

    .line 253
    :cond_5
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public consume(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;)V
    .locals 7
    .param p1, "event"    # Lcom/android/launcher3/logging/StatsLogManager$EventEnum;
    .param p2, "atomInfo"    # Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    .line 131
    sget-object v0, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_APP_LAUNCH_TAP:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const/4 v1, 0x1

    const/16 v2, -0x68

    if-eq p1, v0, :cond_f

    sget-object v0, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_TASK_LAUNCH_SWIPE_DOWN:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    if-eq p1, v0, :cond_f

    sget-object v0, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_TASK_LAUNCH_TAP:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    if-eq p1, v0, :cond_f

    sget-object v0, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_QUICKSWITCH_RIGHT:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    if-eq p1, v0, :cond_f

    sget-object v0, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_QUICKSWITCH_LEFT:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    if-ne p1, v0, :cond_0

    goto/16 :goto_1

    .line 137
    :cond_0
    sget-object v0, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ITEM_DROPPED_ON_DONT_SUGGEST:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    if-ne p1, v0, :cond_1

    .line 138
    const/4 v0, 0x2

    invoke-direct {p0, p2, v0, v2}, Lcom/android/launcher3/model/AppEventProducer;->sendEvent(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;II)V

    goto/16 :goto_2

    .line 139
    :cond_1
    sget-object v0, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ITEM_DRAG_STARTED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    if-ne p1, v0, :cond_2

    .line 140
    iput-object p2, p0, Lcom/android/launcher3/model/AppEventProducer;->mLastDragItem:Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    goto/16 :goto_2

    .line 141
    :cond_2
    sget-object v0, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ITEM_DROP_COMPLETED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const/16 v3, -0x6f

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/16 v6, -0x67

    if-ne p1, v0, :cond_7

    .line 142
    iget-object v0, p0, Lcom/android/launcher3/model/AppEventProducer;->mLastDragItem:Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    if-nez v0, :cond_3

    .line 143
    return-void

    .line 145
    :cond_3
    invoke-static {v0}, Lcom/android/launcher3/model/PredictionHelper;->isTrackedForHotseatPrediction(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 146
    iget-object v0, p0, Lcom/android/launcher3/model/AppEventProducer;->mLastDragItem:Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    invoke-direct {p0, v0, v4, v6}, Lcom/android/launcher3/model/AppEventProducer;->sendEvent(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;II)V

    .line 148
    :cond_4
    invoke-static {p2}, Lcom/android/launcher3/model/PredictionHelper;->isTrackedForHotseatPrediction(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 149
    invoke-direct {p0, p2, v5, v6}, Lcom/android/launcher3/model/AppEventProducer;->sendEvent(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;II)V

    .line 151
    :cond_5
    invoke-static {p2}, Lcom/android/launcher3/model/PredictionHelper;->isTrackedForWidgetPrediction(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 152
    invoke-direct {p0, p2, v5, v3}, Lcom/android/launcher3/model/AppEventProducer;->sendEvent(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;II)V

    .line 154
    :cond_6
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/model/AppEventProducer;->mLastDragItem:Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    goto/16 :goto_2

    .line 155
    :cond_7
    sget-object v0, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ITEM_DROP_FOLDER_CREATED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    if-ne p1, v0, :cond_8

    .line 156
    invoke-static {p2}, Lcom/android/launcher3/model/PredictionHelper;->isTrackedForHotseatPrediction(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 157
    invoke-direct {p0}, Lcom/android/launcher3/model/AppEventProducer;->createTempFolderTarget()Landroid/app/prediction/AppTarget;

    move-result-object v0

    invoke-direct {p0, v0, p2, v5, v6}, Lcom/android/launcher3/model/AppEventProducer;->sendEvent(Landroid/app/prediction/AppTarget;Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;II)V

    .line 159
    invoke-direct {p0, p2, v4, v6}, Lcom/android/launcher3/model/AppEventProducer;->sendEvent(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;II)V

    goto/16 :goto_2

    .line 161
    :cond_8
    sget-object v0, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_FOLDER_CONVERTED_TO_ICON:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    if-ne p1, v0, :cond_9

    .line 162
    invoke-static {p2}, Lcom/android/launcher3/model/PredictionHelper;->isTrackedForHotseatPrediction(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 163
    invoke-direct {p0}, Lcom/android/launcher3/model/AppEventProducer;->createTempFolderTarget()Landroid/app/prediction/AppTarget;

    move-result-object v0

    invoke-direct {p0, v0, p2, v4, v6}, Lcom/android/launcher3/model/AppEventProducer;->sendEvent(Landroid/app/prediction/AppTarget;Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;II)V

    .line 165
    invoke-direct {p0, p2, v5, v6}, Lcom/android/launcher3/model/AppEventProducer;->sendEvent(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;II)V

    goto :goto_2

    .line 167
    :cond_9
    sget-object v0, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ITEM_DROPPED_ON_REMOVE:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    if-ne p1, v0, :cond_b

    .line 168
    iget-object v0, p0, Lcom/android/launcher3/model/AppEventProducer;->mLastDragItem:Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    if-eqz v0, :cond_a

    invoke-static {v0}, Lcom/android/launcher3/model/PredictionHelper;->isTrackedForHotseatPrediction(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 169
    iget-object v0, p0, Lcom/android/launcher3/model/AppEventProducer;->mLastDragItem:Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    invoke-direct {p0, v0, v4, v6}, Lcom/android/launcher3/model/AppEventProducer;->sendEvent(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;II)V

    .line 171
    :cond_a
    iget-object v0, p0, Lcom/android/launcher3/model/AppEventProducer;->mLastDragItem:Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    if-eqz v0, :cond_10

    invoke-static {v0}, Lcom/android/launcher3/model/PredictionHelper;->isTrackedForWidgetPrediction(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 172
    iget-object v0, p0, Lcom/android/launcher3/model/AppEventProducer;->mLastDragItem:Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    invoke-direct {p0, v0, v4, v3}, Lcom/android/launcher3/model/AppEventProducer;->sendEvent(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;II)V

    goto :goto_2

    .line 174
    :cond_b
    sget-object v0, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_HOTSEAT_PREDICTION_PINNED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    if-ne p1, v0, :cond_c

    .line 175
    invoke-static {p2}, Lcom/android/launcher3/model/PredictionHelper;->isTrackedForHotseatPrediction(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 176
    invoke-direct {p0, p2, v5, v6}, Lcom/android/launcher3/model/AppEventProducer;->sendEvent(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;II)V

    goto :goto_2

    .line 178
    :cond_c
    sget-object v0, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ONRESUME:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    if-ne p1, v0, :cond_d

    .line 179
    new-instance v0, Landroid/app/prediction/AppTarget$Builder;

    new-instance v3, Landroid/app/prediction/AppTargetId;

    const-string v4, "launcher:launcher"

    invoke-direct {v3, v4}, Landroid/app/prediction/AppTargetId;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/launcher3/model/AppEventProducer;->mContext:Landroid/content/Context;

    .line 180
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    invoke-direct {v0, v3, v4, v5}, Landroid/app/prediction/AppTarget$Builder;-><init>(Landroid/app/prediction/AppTargetId;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 181
    invoke-virtual {v0}, Landroid/app/prediction/AppTarget$Builder;->build()Landroid/app/prediction/AppTarget;

    move-result-object v0

    .line 182
    .local v0, "target":Landroid/app/prediction/AppTarget;
    invoke-direct {p0, v0, p2, v1, v2}, Lcom/android/launcher3/model/AppEventProducer;->sendEvent(Landroid/app/prediction/AppTarget;Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;II)V

    .end local v0    # "target":Landroid/app/prediction/AppTarget;
    goto :goto_0

    .line 183
    :cond_d
    sget-object v0, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_DISMISS_PREDICTION_UNDO:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    if-ne p1, v0, :cond_e

    .line 184
    const/4 v0, 0x5

    invoke-direct {p0, p2, v0, v6}, Lcom/android/launcher3/model/AppEventProducer;->sendEvent(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;II)V

    goto :goto_2

    .line 183
    :cond_e
    :goto_0
    goto :goto_2

    .line 136
    :cond_f
    :goto_1
    invoke-direct {p0, p2, v1, v2}, Lcom/android/launcher3/model/AppEventProducer;->sendEvent(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;II)V

    .line 186
    :cond_10
    :goto_2
    return-void
.end method
