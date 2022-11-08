.class Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;
.super Ljava/lang/Object;
.source "StatsLogCompatManager.java"

# interfaces
.implements Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/logging/StatsLogCompatManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StatsCompatLogger"
.end annotation


# static fields
.field private static final DEFAULT_ITEM_INFO:Lcom/android/launcher3/model/data/ItemInfo;


# instance fields
.field private final mActivityContext:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/launcher3/views/ActivityContext;",
            ">;"
        }
    .end annotation
.end field

.field private mContainerInfo:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mDstState:I

.field private mEditText:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFromState:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/launcher3/logger/LauncherAtom$FromState;",
            ">;"
        }
    .end annotation
.end field

.field private mInstanceId:Lcom/android/launcher3/logging/InstanceId;

.field private mItemInfo:Lcom/android/launcher3/model/data/ItemInfo;

.field private mRank:Ljava/util/OptionalInt;

.field private mSlice:Lcom/android/launcher3/logger/LauncherAtom$Slice;

.field private mSliceItem:Landroidx/slice/SliceItem;

.field private mSrcState:I

.field private mToState:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/launcher3/logger/LauncherAtom$ToState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmItemInfo(Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;)Lcom/android/launcher3/model/data/ItemInfo;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;->mItemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mapplyOverwrites(Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;)Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;->applyOverwrites(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;)Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mwrite(Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;Lcom/android/launcher3/logging/StatsLogManager$EventEnum;Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;->write(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 202
    new-instance v0, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-direct {v0}, Lcom/android/launcher3/model/data/ItemInfo;-><init>()V

    sput-object v0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;->DEFAULT_ITEM_INFO:Lcom/android/launcher3/model/data/ItemInfo;

    .line 204
    const/4 v1, -0x1

    iput v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    .line 205
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/launcher3/views/ActivityContext;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activityContext"    # Lcom/android/launcher3/views/ActivityContext;

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    sget-object v0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;->DEFAULT_ITEM_INFO:Lcom/android/launcher3/model/data/ItemInfo;

    iput-object v0, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;->mItemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    .line 209
    invoke-static {}, Lcom/android/quickstep/logging/StatsLogCompatManager;->-$$Nest$sfgetDEFAULT_INSTANCE_ID()Lcom/android/launcher3/logging/InstanceId;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;->mInstanceId:Lcom/android/launcher3/logging/InstanceId;

    .line 210
    invoke-static {}, Ljava/util/OptionalInt;->empty()Ljava/util/OptionalInt;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;->mRank:Ljava/util/OptionalInt;

    .line 211
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;->mContainerInfo:Ljava/util/Optional;

    .line 212
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;->mSrcState:I

    .line 213
    iput v0, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;->mDstState:I

    .line 214
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;->mFromState:Ljava/util/Optional;

    .line 215
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;->mToState:Ljava/util/Optional;

    .line 216
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;->mEditText:Ljava/util/Optional;

    .line 221
    iput-object p1, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;->mContext:Landroid/content/Context;

    .line 222
    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;->mActivityContext:Ljava/util/Optional;

    .line 223
    return-void
.end method

.method private applyOverwrites(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;)Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;
    .locals 4
    .param p1, "atomInfo"    # Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    .line 369
    invoke-virtual {p1}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;

    .line 371
    .local v0, "itemInfoBuilder":Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;
    iget-object v1, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;->mRank:Ljava/util/OptionalInt;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;)V

    invoke-virtual {v1, v2}, Ljava/util/OptionalInt;->ifPresent(Ljava/util/function/IntConsumer;)V

    .line 372
    iget-object v1, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;->mContainerInfo:Ljava/util/Optional;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 374
    iget-object v1, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;->mActivityContext:Ljava/util/Optional;

    new-instance v2, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger$$ExternalSyntheticLambda2;

    invoke-direct {v2, v0}, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger$$ExternalSyntheticLambda2;-><init>(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 377
    iget-object v1, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;->mFromState:Ljava/util/Optional;

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;->mToState:Ljava/util/Optional;

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;->mEditText:Ljava/util/Optional;

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 378
    :cond_0
    nop

    .line 379
    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->getFolderIcon()Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;

    move-result-object v1

    .line 380
    invoke-virtual {v1}, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder;

    .line 381
    .local v1, "folderIconBuilder":Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder;
    iget-object v2, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;->mFromState:Ljava/util/Optional;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger$$ExternalSyntheticLambda3;

    invoke-direct {v3, v1}, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger$$ExternalSyntheticLambda3;-><init>(Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder;)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 382
    iget-object v2, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;->mToState:Ljava/util/Optional;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger$$ExternalSyntheticLambda4;

    invoke-direct {v3, v1}, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger$$ExternalSyntheticLambda4;-><init>(Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder;)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 383
    iget-object v2, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;->mEditText:Ljava/util/Optional;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger$$ExternalSyntheticLambda5;

    invoke-direct {v3, v1}, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger$$ExternalSyntheticLambda5;-><init>(Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder;)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 384
    invoke-virtual {v0, v1}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->setFolderIcon(Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder;)Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;

    .line 386
    .end local v1    # "folderIconBuilder":Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder;
    :cond_1
    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    return-object v1
.end method

.method static synthetic lambda$applyOverwrites$2(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;Lcom/android/launcher3/views/ActivityContext;)V
    .locals 0
    .param p0, "itemInfoBuilder"    # Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;
    .param p1, "activityContext"    # Lcom/android/launcher3/views/ActivityContext;

    .line 375
    invoke-interface {p1, p0}, Lcom/android/launcher3/views/ActivityContext;->applyOverwritesToLogItem(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;)V

    return-void
.end method

.method private write(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;)V
    .locals 34
    .param p1, "event"    # Lcom/android/launcher3/logging/StatsLogManager$EventEnum;
    .param p2, "atomInfo"    # Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    .line 391
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;->mInstanceId:Lcom/android/launcher3/logging/InstanceId;

    .line 392
    .local v3, "instanceId":Lcom/android/launcher3/logging/InstanceId;
    iget v7, v0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;->mSrcState:I

    .line 393
    .local v7, "srcState":I
    iget v6, v0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;->mDstState:I

    .line 394
    .local v6, "dstState":I
    invoke-static {}, Lcom/android/quickstep/logging/StatsLogCompatManager;->-$$Nest$sfgetIS_VERBOSE()Z

    move-result v4

    const/4 v15, 0x1

    const/4 v14, 0x0

    if-eqz v4, :cond_5

    .line 395
    instance-of v4, v1, Ljava/lang/Enum;

    if-eqz v4, :cond_0

    move-object v4, v1

    check-cast v4, Ljava/lang/Enum;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 396
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p1 .. p1}, Lcom/android/launcher3/logging/StatsLogManager$EventEnum;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_0
    nop

    .line 397
    .local v4, "name":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "\n"

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 398
    .local v5, "logStringBuilder":Ljava/lang/StringBuilder;
    invoke-static {}, Lcom/android/quickstep/logging/StatsLogCompatManager;->-$$Nest$sfgetDEFAULT_INSTANCE_ID()Lcom/android/launcher3/logging/InstanceId;

    move-result-object v9

    if-eq v3, v9, :cond_1

    .line 399
    new-array v9, v15, [Ljava/lang/Object;

    aput-object v3, v9, v14

    const-string v10, "InstanceId:%s "

    invoke-static {v10, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    :cond_1
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    if-nez v7, :cond_2

    if-eqz v6, :cond_3

    .line 404
    :cond_2
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    .line 405
    invoke-static {v7}, Lcom/android/quickstep/logging/StatsLogCompatManager;->-$$Nest$smgetStateString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v14

    .line 406
    invoke-static {v6}, Lcom/android/quickstep/logging/StatsLogCompatManager;->-$$Nest$smgetStateString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v15

    .line 405
    const-string v10, "(State:%s->%s)"

    invoke-static {v10, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 404
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    :cond_3
    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->hasContainerInfo()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 409
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 411
    :cond_4
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "StatsLog"

    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "logStringBuilder":Ljava/lang/StringBuilder;
    :cond_5
    sget-object v4, Lcom/android/quickstep/logging/StatsLogCompatManager;->LOGS_CONSUMER:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsLogConsumer;

    .line 415
    .local v5, "consumer":Lcom/android/quickstep/logging/StatsLogCompatManager$StatsLogConsumer;
    invoke-interface {v5, v1, v2}, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsLogConsumer;->consume(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;)V

    .line 416
    .end local v5    # "consumer":Lcom/android/quickstep/logging/StatsLogCompatManager$StatsLogConsumer;
    goto :goto_1

    .line 419
    :cond_6
    sget-boolean v4, Lcom/android/launcher3/Utilities;->IS_RUNNING_IN_TEST_HARNESS:Z

    if-eqz v4, :cond_7

    .line 420
    return-void

    .line 422
    :cond_7
    const/16 v4, 0x13

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 429
    invoke-interface/range {p1 .. p1}, Lcom/android/launcher3/logging/StatsLogManager$EventEnum;->getId()I

    move-result v10

    .line 430
    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->getItemCase()Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;->getNumber()I

    move-result v11

    .line 431
    invoke-virtual {v3}, Lcom/android/launcher3/logging/InstanceId;->getId()I

    move-result v12

    const/4 v13, 0x0

    .line 433
    invoke-static/range {p2 .. p2}, Lcom/android/quickstep/logging/StatsLogCompatManager;->-$$Nest$smgetPackageName(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;)Ljava/lang/String;

    move-result-object v16

    move v4, v14

    move-object/from16 v14, v16

    .line 434
    invoke-static/range {p2 .. p2}, Lcom/android/quickstep/logging/StatsLogCompatManager;->-$$Nest$smgetComponentName(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;)Ljava/lang/String;

    move-result-object v16

    move v5, v15

    move-object/from16 v15, v16

    .line 435
    invoke-static {v2, v4}, Lcom/android/quickstep/logging/StatsLogCompatManager;->-$$Nest$smgetGridX(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;Z)I

    move-result v16

    .line 436
    invoke-static {v2, v4}, Lcom/android/quickstep/logging/StatsLogCompatManager;->-$$Nest$smgetGridY(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;Z)I

    move-result v17

    .line 437
    invoke-static/range {p2 .. p2}, Lcom/android/quickstep/logging/StatsLogCompatManager;->-$$Nest$smgetPageId(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;)I

    move-result v18

    .line 438
    invoke-static {v2, v5}, Lcom/android/quickstep/logging/StatsLogCompatManager;->-$$Nest$smgetGridX(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;Z)I

    move-result v19

    .line 439
    invoke-static {v2, v5}, Lcom/android/quickstep/logging/StatsLogCompatManager;->-$$Nest$smgetGridY(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;Z)I

    move-result v20

    .line 440
    invoke-static/range {p2 .. p2}, Lcom/android/quickstep/logging/StatsLogCompatManager;->-$$Nest$smgetParentPageId(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;)I

    move-result v21

    .line 441
    invoke-static/range {p2 .. p2}, Lcom/android/quickstep/logging/StatsLogCompatManager;->-$$Nest$smgetHierarchy(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;)I

    move-result v22

    .line 442
    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->getIsWork()Z

    move-result v23

    .line 443
    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->getRank()I

    move-result v24

    .line 444
    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->getFolderIcon()Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;->getFromLabelState()Lcom/android/launcher3/logger/LauncherAtom$FromState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/logger/LauncherAtom$FromState;->getNumber()I

    move-result v25

    .line 445
    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->getFolderIcon()Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;->getToLabelState()Lcom/android/launcher3/logger/LauncherAtom$ToState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/logger/LauncherAtom$ToState;->getNumber()I

    move-result v26

    .line 446
    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->getFolderIcon()Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;->getLabelInfo()Ljava/lang/String;

    move-result-object v27

    .line 447
    invoke-static/range {p2 .. p2}, Lcom/android/quickstep/logging/StatsLogCompatManager;->-$$Nest$smgetCardinality(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;)I

    move-result v28

    .line 448
    invoke-static/range {p2 .. p2}, Lcom/android/quickstep/logging/StatsLogCompatManager;->-$$Nest$smgetFeatures(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;)I

    move-result v29

    .line 449
    invoke-static/range {p2 .. p2}, Lcom/android/quickstep/logging/StatsLogCompatManager;->-$$Nest$smgetSearchAttributes(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;)I

    move-result v30

    .line 450
    invoke-static/range {p2 .. p2}, Lcom/android/quickstep/logging/StatsLogCompatManager;->-$$Nest$smgetAttributes(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;)[B

    move-result-object v31

    .line 422
    move/from16 v32, v6

    .end local v6    # "dstState":I
    .local v32, "dstState":I
    move v6, v7

    move/from16 v33, v7

    .end local v7    # "srcState":I
    .local v33, "srcState":I
    move/from16 v7, v32

    const/16 v4, 0x13

    const/4 v5, 0x0

    invoke-static/range {v4 .. v31}, Lcom/android/systemui/shared/system/SysUiStatsLog;->write(IIII[BZIIIILjava/lang/String;Ljava/lang/String;IIIIIIIZIIILjava/lang/String;III[B)V

    .line 452
    return-void
.end method


# virtual methods
.method synthetic lambda$log$0$com-android-quickstep-logging-StatsLogCompatManager$StatsCompatLogger(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V
    .locals 3
    .param p1, "event"    # Lcom/android/launcher3/logging/StatsLogManager$EventEnum;

    .line 321
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->newBuilder()Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;->mSlice:Lcom/android/launcher3/logger/LauncherAtom$Slice;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->setSlice(Lcom/android/launcher3/logger/LauncherAtom$Slice;)Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;

    move-result-object v0

    .line 322
    .local v0, "itemInfoBuilder":Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;
    iget-object v1, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;->mContainerInfo:Ljava/util/Optional;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 323
    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    invoke-direct {p0, v1}, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;->applyOverwrites(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;)Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;->write(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;)V

    .line 324
    return-void
.end method

.method synthetic lambda$log$1$com-android-quickstep-logging-StatsLogCompatManager$StatsCompatLogger(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V
    .locals 1
    .param p1, "event"    # Lcom/android/launcher3/logging/StatsLogManager$EventEnum;

    .line 332
    iget-object v0, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;->mItemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/model/data/ItemInfo;->buildProto()Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;->applyOverwrites(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;)Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;->write(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;)V

    return-void
.end method

.method public log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V
    .locals 3
    .param p1, "event"    # Lcom/android/launcher3/logging/StatsLogManager$EventEnum;

    .line 307
    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_R:Z

    if-nez v0, :cond_0

    .line 308
    return-void

    .line 310
    :cond_0
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    .line 312
    .local v0, "appState":Lcom/android/launcher3/LauncherAppState;
    iget-object v1, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;->mSlice:Lcom/android/launcher3/logger/LauncherAtom$Slice;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;->mSliceItem:Landroidx/slice/SliceItem;

    if-eqz v1, :cond_1

    .line 313
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$Slice;->newBuilder()Lcom/android/launcher3/logger/LauncherAtom$Slice$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;->mSliceItem:Landroidx/slice/SliceItem;

    .line 314
    invoke-virtual {v2}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/slice/Slice;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 313
    invoke-virtual {v1, v2}, Lcom/android/launcher3/logger/LauncherAtom$Slice$Builder;->setUri(Ljava/lang/String;)Lcom/android/launcher3/logger/LauncherAtom$Slice$Builder;

    move-result-object v1

    .line 314
    invoke-virtual {v1}, Lcom/android/launcher3/logger/LauncherAtom$Slice$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/logger/LauncherAtom$Slice;

    iput-object v1, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;->mSlice:Lcom/android/launcher3/logger/LauncherAtom$Slice;

    .line 317
    :cond_1
    iget-object v1, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;->mSlice:Lcom/android/launcher3/logger/LauncherAtom$Slice;

    if-eqz v1, :cond_2

    .line 318
    sget-object v1, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v2, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0, p1}, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger$$ExternalSyntheticLambda6;-><init>(Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    .line 325
    return-void

    .line 328
    :cond_2
    iget-object v1, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;->mItemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iget v1, v1, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    if-ltz v1, :cond_4

    if-nez v0, :cond_3

    goto :goto_0

    .line 336
    :cond_3
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v1

    new-instance v2, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger$1;

    invoke-direct {v2, p0, p1}, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger$1;-><init>(Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$ModelUpdateTask;)V

    goto :goto_1

    .line 331
    :cond_4
    :goto_0
    sget-object v1, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v2, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0, p1}, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger$$ExternalSyntheticLambda7;-><init>(Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    .line 346
    :goto_1
    return-void
.end method

.method public sendToInteractionJankMonitor(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;Landroid/view/View;)V
    .locals 2
    .param p1, "event"    # Lcom/android/launcher3/logging/StatsLogManager$EventEnum;
    .param p2, "view"    # Landroid/view/View;

    .line 350
    instance-of v0, p1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    if-nez v0, :cond_0

    .line 351
    return-void

    .line 353
    :cond_0
    sget-object v0, Lcom/android/quickstep/logging/StatsLogCompatManager$1;->$SwitchMap$com$android$launcher3$logging$StatsLogManager$LauncherEvent:[I

    move-object v1, p1

    check-cast v1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-virtual {v1}, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/16 v1, 0x1a

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 360
    :pswitch_0
    invoke-static {v1}, Lcom/android/systemui/shared/system/InteractionJankMonitorWrapper;->end(I)V

    .line 362
    goto :goto_0

    .line 355
    :pswitch_1
    invoke-static {p2, v1}, Lcom/android/systemui/shared/system/InteractionJankMonitorWrapper;->begin(Landroid/view/View;I)V

    .line 358
    nop

    .line 366
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public withContainerInfo(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;
    .locals 2
    .param p1, "containerInfo"    # Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    .line 261
    iget-object v0, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;->mItemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    sget-object v1, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;->DEFAULT_ITEM_INFO:Lcom/android/launcher3/model/data/ItemInfo;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "ItemInfo and ContainerInfo are mutual exclusive; cannot log both."

    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 263
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;->mContainerInfo:Ljava/util/Optional;

    .line 264
    return-object p0
.end method

.method public withDstState(I)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;
    .locals 0
    .param p1, "dstState"    # I

    .line 255
    iput p1, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;->mDstState:I

    .line 256
    return-object p0
.end method

.method public withEditText(Ljava/lang/String;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;
    .locals 1
    .param p1, "editText"    # Ljava/lang/String;

    .line 281
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;->mEditText:Ljava/util/Optional;

    .line 282
    return-object p0
.end method

.method public withFromState(Lcom/android/launcher3/logger/LauncherAtom$FromState;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;
    .locals 1
    .param p1, "fromState"    # Lcom/android/launcher3/logger/LauncherAtom$FromState;

    .line 269
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;->mFromState:Ljava/util/Optional;

    .line 270
    return-object p0
.end method

.method public withInstanceId(Lcom/android/launcher3/logging/InstanceId;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;
    .locals 0
    .param p1, "instanceId"    # Lcom/android/launcher3/logging/InstanceId;

    .line 237
    iput-object p1, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;->mInstanceId:Lcom/android/launcher3/logging/InstanceId;

    .line 238
    return-object p0
.end method

.method public withItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;
    .locals 2
    .param p1, "itemInfo"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 227
    iget-object v0, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;->mContainerInfo:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 231
    iput-object p1, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;->mItemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    .line 232
    return-object p0

    .line 228
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ItemInfo and ContainerInfo are mutual exclusive; cannot log both."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public withRank(I)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;
    .locals 1
    .param p1, "rank"    # I

    .line 243
    invoke-static {p1}, Ljava/util/OptionalInt;->of(I)Ljava/util/OptionalInt;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;->mRank:Ljava/util/OptionalInt;

    .line 244
    return-object p0
.end method

.method public withSlice(Lcom/android/launcher3/logger/LauncherAtom$Slice;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;
    .locals 2
    .param p1, "slice"    # Lcom/android/launcher3/logger/LauncherAtom$Slice;

    .line 296
    iget-object v0, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;->mItemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    sget-object v1, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;->DEFAULT_ITEM_INFO:Lcom/android/launcher3/model/data/ItemInfo;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;->mSliceItem:Landroidx/slice/SliceItem;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "ItemInfo, Slice and SliceItem are mutual exclusive; cannot set more than one of them."

    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 299
    const-string v0, "expected valid slice but received null"

    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    invoke-virtual {p1}, Lcom/android/launcher3/logger/LauncherAtom$Slice;->getUri()Ljava/lang/String;

    move-result-object v0

    const-string v1, "expected valid slice uri but received null"

    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    iput-object p1, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;->mSlice:Lcom/android/launcher3/logger/LauncherAtom$Slice;

    .line 302
    return-object p0
.end method

.method public withSliceItem(Landroidx/slice/SliceItem;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;
    .locals 2
    .param p1, "sliceItem"    # Landroidx/slice/SliceItem;

    .line 287
    iget-object v0, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;->mItemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    sget-object v1, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;->DEFAULT_ITEM_INFO:Lcom/android/launcher3/model/data/ItemInfo;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;->mSlice:Lcom/android/launcher3/logger/LauncherAtom$Slice;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "ItemInfo, Slice and SliceItem are mutual exclusive; cannot set more than one of them."

    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 290
    const-string v0, "expected valid sliceItem but received null"

    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/slice/SliceItem;

    iput-object v0, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;->mSliceItem:Landroidx/slice/SliceItem;

    .line 291
    return-object p0
.end method

.method public withSrcState(I)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;
    .locals 0
    .param p1, "srcState"    # I

    .line 249
    iput p1, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;->mSrcState:I

    .line 250
    return-object p0
.end method

.method public withToState(Lcom/android/launcher3/logger/LauncherAtom$ToState;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;
    .locals 1
    .param p1, "toState"    # Lcom/android/launcher3/logger/LauncherAtom$ToState;

    .line 275
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;->mToState:Ljava/util/Optional;

    .line 276
    return-object p0
.end method
