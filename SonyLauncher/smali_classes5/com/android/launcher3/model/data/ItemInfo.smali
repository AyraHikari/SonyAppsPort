.class public Lcom/android/launcher3/model/data/ItemInfo;
.super Ljava/lang/Object;
.source "ItemInfo.java"


# static fields
.field public static final DEBUG:Z = false

.field public static final NO_ID:I = -0x1

.field public static final NO_MATCHING_ID:I = -0x80000000


# instance fields
.field public cellX:I

.field public cellY:I

.field public container:I

.field public contentDescription:Ljava/lang/CharSequence;

.field public id:I

.field public itemType:I

.field private mComponentName:Landroid/content/ComponentName;

.field public minSpanX:I

.field public minSpanY:I

.field public rank:I

.field public screenId:I

.field public spanX:I

.field public spanY:I

.field public title:Ljava/lang/CharSequence;

.field public user:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    .line 97
    iput v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    .line 104
    iput v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    .line 109
    iput v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    .line 114
    iput v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    .line 119
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    .line 124
    iput v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    .line 129
    iput v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->minSpanX:I

    .line 134
    iput v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->minSpanY:I

    .line 139
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->rank:I

    .line 160
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    .line 161
    return-void
.end method

.method protected constructor <init>(Lcom/android/launcher3/model/data/ItemInfo;)V
    .locals 1
    .param p1, "info"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    .line 97
    iput v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    .line 104
    iput v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    .line 109
    iput v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    .line 114
    iput v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    .line 119
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    .line 124
    iput v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    .line 129
    iput v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->minSpanX:I

    .line 134
    iput v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->minSpanY:I

    .line 139
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->rank:I

    .line 164
    invoke-virtual {p0, p1}, Lcom/android/launcher3/model/data/ItemInfo;->copyFrom(Lcom/android/launcher3/model/data/ItemInfo;)V

    .line 165
    return-void
.end method

.method static synthetic lambda$buildProto$0(Landroid/content/ComponentName;)Lcom/android/launcher3/logger/LauncherAtom$Application$Builder;
    .locals 2
    .param p0, "component"    # Landroid/content/ComponentName;

    .line 305
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$Application;->newBuilder()Lcom/android/launcher3/logger/LauncherAtom$Application$Builder;

    move-result-object v0

    .line 306
    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/logger/LauncherAtom$Application$Builder;->setComponentName(Ljava/lang/String;)Lcom/android/launcher3/logger/LauncherAtom$Application$Builder;

    move-result-object v0

    .line 307
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/logger/LauncherAtom$Application$Builder;->setPackageName(Ljava/lang/String;)Lcom/android/launcher3/logger/LauncherAtom$Application$Builder;

    move-result-object v0

    .line 305
    return-object v0
.end method

.method static synthetic lambda$buildProto$1(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1
    .param p0, "i"    # Landroid/content/Intent;

    .line 317
    const-string v0, "shortcut_id"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$buildProto$3(Landroid/content/ComponentName;)Lcom/android/launcher3/logger/LauncherAtom$Shortcut$Builder;
    .locals 2
    .param p0, "component"    # Landroid/content/ComponentName;

    .line 326
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$Shortcut;->newBuilder()Lcom/android/launcher3/logger/LauncherAtom$Shortcut$Builder;

    move-result-object v0

    .line 327
    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/logger/LauncherAtom$Shortcut$Builder;->setShortcutName(Ljava/lang/String;)Lcom/android/launcher3/logger/LauncherAtom$Shortcut$Builder;

    move-result-object v0

    .line 326
    return-object v0
.end method

.method static synthetic lambda$buildProto$4(Landroid/content/ComponentName;)Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;
    .locals 2
    .param p0, "component"    # Landroid/content/ComponentName;

    .line 333
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$Widget;->newBuilder()Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;

    move-result-object v0

    .line 334
    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;->setComponentName(Ljava/lang/String;)Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;

    move-result-object v0

    .line 335
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;->setPackageName(Ljava/lang/String;)Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;

    move-result-object v0

    .line 333
    return-object v0
.end method


# virtual methods
.method public buildProto()Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;
    .locals 1

    .line 292
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/data/ItemInfo;->buildProto(Lcom/android/launcher3/model/data/FolderInfo;)Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    move-result-object v0

    return-object v0
.end method

.method public buildProto(Lcom/android/launcher3/model/data/FolderInfo;)Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;
    .locals 5
    .param p1, "fInfo"    # Lcom/android/launcher3/model/data/FolderInfo;

    .line 299
    invoke-virtual {p0}, Lcom/android/launcher3/model/data/ItemInfo;->getDefaultItemInfoBuilder()Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;

    move-result-object v0

    .line 300
    .local v0, "itemBuilder":Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;
    invoke-virtual {p0}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    .line 301
    .local v1, "nullableComponent":Ljava/util/Optional;, "Ljava/util/Optional<Landroid/content/ComponentName;>;"
    iget v2, p0, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 341
    :pswitch_1
    nop

    .line 342
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$Task;->newBuilder()Lcom/android/launcher3/logger/LauncherAtom$Task$Builder;

    move-result-object v2

    .line 343
    invoke-virtual {p0}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/launcher3/logger/LauncherAtom$Task$Builder;->setComponentName(Ljava/lang/String;)Lcom/android/launcher3/logger/LauncherAtom$Task$Builder;

    move-result-object v2

    iget v3, p0, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    .line 344
    invoke-virtual {v2, v3}, Lcom/android/launcher3/logger/LauncherAtom$Task$Builder;->setIndex(I)Lcom/android/launcher3/logger/LauncherAtom$Task$Builder;

    move-result-object v2

    .line 342
    invoke-virtual {v0, v2}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->setTask(Lcom/android/launcher3/logger/LauncherAtom$Task$Builder;)Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;

    .line 345
    goto :goto_0

    .line 311
    :pswitch_2
    new-instance v2, Lcom/android/launcher3/model/data/ItemInfo$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/launcher3/model/data/ItemInfo$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/model/data/ItemInfo;)V

    .line 313
    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v2

    .line 321
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$Shortcut;->newBuilder()Lcom/android/launcher3/logger/LauncherAtom$Shortcut$Builder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/logger/LauncherAtom$Shortcut$Builder;

    .line 312
    invoke-virtual {v0, v2}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->setShortcut(Lcom/android/launcher3/logger/LauncherAtom$Shortcut$Builder;)Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;

    .line 322
    goto :goto_0

    .line 331
    :pswitch_3
    new-instance v2, Lcom/android/launcher3/model/data/ItemInfo$$ExternalSyntheticLambda3;

    invoke-direct {v2}, Lcom/android/launcher3/model/data/ItemInfo$$ExternalSyntheticLambda3;-><init>()V

    .line 333
    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v2

    .line 336
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$Widget;->newBuilder()Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;

    iget v3, p0, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    .line 337
    invoke-virtual {v2, v3}, Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;->setSpanX(I)Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;

    move-result-object v2

    iget v3, p0, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    .line 338
    invoke-virtual {v2, v3}, Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;->setSpanY(I)Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;

    move-result-object v2

    .line 332
    invoke-virtual {v0, v2}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->setWidget(Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;)Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;

    .line 339
    goto :goto_0

    .line 324
    :pswitch_4
    new-instance v2, Lcom/android/launcher3/model/data/ItemInfo$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lcom/android/launcher3/model/data/ItemInfo$$ExternalSyntheticLambda2;-><init>()V

    .line 326
    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v2

    .line 328
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$Shortcut;->newBuilder()Lcom/android/launcher3/logger/LauncherAtom$Shortcut$Builder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/logger/LauncherAtom$Shortcut$Builder;

    .line 325
    invoke-virtual {v0, v2}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->setShortcut(Lcom/android/launcher3/logger/LauncherAtom$Shortcut$Builder;)Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;

    .line 329
    goto :goto_0

    .line 303
    :pswitch_5
    new-instance v2, Lcom/android/launcher3/model/data/ItemInfo$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/launcher3/model/data/ItemInfo$$ExternalSyntheticLambda0;-><init>()V

    .line 305
    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v2

    .line 308
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$Application;->newBuilder()Lcom/android/launcher3/logger/LauncherAtom$Application$Builder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/logger/LauncherAtom$Application$Builder;

    .line 304
    invoke-virtual {v0, v2}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->setApplication(Lcom/android/launcher3/logger/LauncherAtom$Application$Builder;)Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;

    .line 309
    nop

    .line 349
    :goto_0
    if-eqz p1, :cond_0

    .line 351
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->newBuilder()Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$Builder;

    move-result-object v2

    .line 352
    .local v2, "folderBuilder":Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$Builder;
    iget v3, p0, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    invoke-virtual {v2, v3}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$Builder;->setGridX(I)Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$Builder;

    move-result-object v3

    iget v4, p0, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    invoke-virtual {v3, v4}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$Builder;->setGridY(I)Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$Builder;

    move-result-object v3

    iget v4, p0, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-virtual {v3, v4}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$Builder;->setPageIndex(I)Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$Builder;

    .line 354
    iget v3, p1, Lcom/android/launcher3/model/data/FolderInfo;->container:I

    packed-switch v3, :pswitch_data_1

    :pswitch_6
    goto :goto_1

    .line 361
    :pswitch_7
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;->newBuilder()Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;

    move-result-object v3

    iget v4, p1, Lcom/android/launcher3/model/data/FolderInfo;->screenId:I

    .line 362
    invoke-virtual {v3, v4}, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;->setPageIndex(I)Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;

    move-result-object v3

    iget v4, p1, Lcom/android/launcher3/model/data/FolderInfo;->cellX:I

    .line 363
    invoke-virtual {v3, v4}, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;->setGridX(I)Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;

    move-result-object v3

    iget v4, p1, Lcom/android/launcher3/model/data/FolderInfo;->cellY:I

    invoke-virtual {v3, v4}, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;->setGridY(I)Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;

    move-result-object v3

    .line 361
    invoke-virtual {v2, v3}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$Builder;->setWorkspace(Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;)Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$Builder;

    goto :goto_1

    .line 357
    :pswitch_8
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;->newBuilder()Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer$Builder;

    move-result-object v3

    iget v4, p1, Lcom/android/launcher3/model/data/FolderInfo;->screenId:I

    .line 358
    invoke-virtual {v3, v4}, Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer$Builder;->setIndex(I)Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer$Builder;

    move-result-object v3

    .line 357
    invoke-virtual {v2, v3}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$Builder;->setHotseat(Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer$Builder;)Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$Builder;

    .line 359
    nop

    .line 366
    :goto_1
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->newBuilder()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->setFolder(Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$Builder;)Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->setContainerInfo(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;)Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;

    .line 367
    .end local v2    # "folderBuilder":Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$Builder;
    goto :goto_2

    .line 368
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/model/data/ItemInfo;->getContainerInfo()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    move-result-object v2

    .line 369
    .local v2, "containerInfo":Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;
    invoke-virtual {v2}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->getContainerCase()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    move-result-object v3

    sget-object v4, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;->CONTAINER_NOT_SET:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;

    invoke-virtual {v3, v4}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$ContainerCase;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 370
    invoke-virtual {v0, v2}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->setContainerInfo(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;)Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;

    .line 373
    .end local v2    # "containerInfo":Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;
    :cond_1
    :goto_2
    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x67
        :pswitch_8
        :pswitch_6
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method public copyFrom(Lcom/android/launcher3/model/data/ItemInfo;)V
    .locals 1
    .param p1, "info"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 168
    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    iput v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    .line 169
    iget-object v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    .line 170
    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iput v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    .line 171
    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iput v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    .line 172
    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iput v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    .line 173
    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iput v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    .line 174
    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->minSpanX:I

    iput v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->minSpanX:I

    .line 175
    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->minSpanY:I

    iput v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->minSpanY:I

    .line 176
    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->rank:I

    iput v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->rank:I

    .line 177
    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    iput v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    .line 178
    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    iput v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    .line 179
    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    iput v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    .line 180
    iget-object v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    iput-object v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    .line 181
    iget-object v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->contentDescription:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->contentDescription:Ljava/lang/CharSequence;

    .line 182
    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->mComponentName:Landroid/content/ComponentName;

    .line 183
    return-void
.end method

.method protected dumpProperties()Ljava/lang/String;
    .locals 3

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    .line 254
    invoke-static {v1}, Lcom/android/launcher3/LauncherSettings$Favorites;->itemTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " container="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 255
    invoke-virtual {p0}, Lcom/android/launcher3/model/data/ItemInfo;->getContainerInfo()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " targetComponent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 256
    invoke-virtual {p0}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " screen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cell("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") span("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") minSpan("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/launcher3/model/data/ItemInfo;->minSpanX:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/model/data/ItemInfo;->minSpanY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") rank="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/model/data/ItemInfo;->rank:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 253
    return-object v0
.end method

.method public getContainerInfo()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;
    .locals 3

    .line 387
    iget v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    sparse-switch v0, :sswitch_data_0

    .line 443
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    move-result-object v0

    return-object v0

    .line 397
    :sswitch_0
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->newBuilder()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;

    move-result-object v0

    .line 399
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;->newBuilder()Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    .line 400
    invoke-virtual {v1, v2}, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;->setGridX(I)Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    .line 401
    invoke-virtual {v1, v2}, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;->setGridY(I)Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    .line 402
    invoke-virtual {v1, v2}, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;->setPageIndex(I)Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;

    move-result-object v1

    .line 398
    invoke-virtual {v0, v1}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->setWorkspace(Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;)Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;

    move-result-object v0

    .line 403
    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    .line 397
    return-object v0

    .line 389
    :sswitch_1
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->newBuilder()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;

    move-result-object v0

    .line 390
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;->newBuilder()Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer$Builder;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-virtual {v1, v2}, Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer$Builder;->setIndex(I)Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer$Builder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->setHotseat(Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer$Builder;)Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;

    move-result-object v0

    .line 391
    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    .line 389
    return-object v0

    .line 405
    :sswitch_2
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->newBuilder()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;

    move-result-object v0

    .line 407
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;->getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;

    move-result-object v1

    .line 406
    invoke-virtual {v0, v1}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->setAllAppsContainer(Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;)Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;

    move-result-object v0

    .line 408
    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    .line 405
    return-object v0

    .line 393
    :sswitch_3
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->newBuilder()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;

    move-result-object v0

    .line 394
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer;->newBuilder()Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer$Builder;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-virtual {v1, v2}, Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer$Builder;->setIndex(I)Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer$Builder;

    move-result-object v1

    .line 393
    invoke-virtual {v0, v1}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->setPredictedHotseatContainer(Lcom/android/launcher3/logger/LauncherAtom$PredictedHotseatContainer$Builder;)Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;

    move-result-object v0

    .line 395
    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    .line 393
    return-object v0

    .line 415
    :sswitch_4
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->newBuilder()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;

    move-result-object v0

    .line 416
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;->getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->setPredictionContainer(Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;)Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;

    move-result-object v0

    .line 417
    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    .line 415
    return-object v0

    .line 410
    :sswitch_5
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->newBuilder()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;

    move-result-object v0

    .line 412
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$WidgetsContainer;->getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtom$WidgetsContainer;

    move-result-object v1

    .line 411
    invoke-virtual {v0, v1}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->setWidgetsContainer(Lcom/android/launcher3/logger/LauncherAtom$WidgetsContainer;)Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;

    move-result-object v0

    .line 413
    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    .line 410
    return-object v0

    .line 419
    :sswitch_6
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->newBuilder()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;

    move-result-object v0

    .line 420
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;->getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->setSearchResultContainer(Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer;)Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;

    move-result-object v0

    .line 421
    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    .line 419
    return-object v0

    .line 423
    :sswitch_7
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->newBuilder()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;

    move-result-object v0

    .line 424
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer;->getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->setShortcutsContainer(Lcom/android/launcher3/logger/LauncherAtom$ShortcutsContainer;)Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;

    move-result-object v0

    .line 425
    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    .line 423
    return-object v0

    .line 427
    :sswitch_8
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->newBuilder()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;

    move-result-object v0

    .line 428
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$SettingsContainer;->getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtom$SettingsContainer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->setSettingsContainer(Lcom/android/launcher3/logger/LauncherAtom$SettingsContainer;)Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;

    move-result-object v0

    .line 429
    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    .line 427
    return-object v0

    .line 431
    :sswitch_9
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->newBuilder()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;

    move-result-object v0

    .line 432
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer;->getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->setTaskSwitcherContainer(Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer;)Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;

    move-result-object v0

    .line 433
    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    .line 431
    return-object v0

    .line 435
    :sswitch_a
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->newBuilder()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;

    move-result-object v0

    .line 436
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;->getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->setWallpapersContainer(Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;)Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;

    move-result-object v0

    .line 437
    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    .line 435
    return-object v0

    .line 439
    :sswitch_b
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->newBuilder()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;

    move-result-object v0

    .line 440
    invoke-virtual {p0}, Lcom/android/launcher3/model/data/ItemInfo;->getExtendedContainer()Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->setExtendedContainers(Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;)Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;

    move-result-object v0

    .line 441
    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    .line 439
    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0xc8 -> :sswitch_b
        -0x72 -> :sswitch_a
        -0x6d -> :sswitch_9
        -0x6c -> :sswitch_8
        -0x6b -> :sswitch_7
        -0x6a -> :sswitch_6
        -0x69 -> :sswitch_5
        -0x68 -> :sswitch_4
        -0x67 -> :sswitch_3
        -0x66 -> :sswitch_2
        -0x65 -> :sswitch_1
        -0x64 -> :sswitch_0
    .end sparse-switch
.end method

.method protected getDefaultItemInfoBuilder()Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;
    .locals 3

    .line 377
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->newBuilder()Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;

    move-result-object v0

    .line 378
    .local v0, "itemBuilder":Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v1, v2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->setIsWork(Z)Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;

    .line 379
    iget v1, p0, Lcom/android/launcher3/model/data/ItemInfo;->rank:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->setRank(I)Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;

    .line 380
    return-object v0
.end method

.method protected getExtendedContainer()Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;
    .locals 1

    .line 451
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;->getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;

    move-result-object v0

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .line 186
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTargetComponent()Landroid/content/ComponentName;
    .locals 2

    .line 191
    invoke-virtual {p0}, Lcom/android/launcher3/model/data/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/model/data/ItemInfo$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lcom/android/launcher3/model/data/ItemInfo$$ExternalSyntheticLambda6;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/model/data/ItemInfo;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    return-object v0
.end method

.method public getTargetPackage()Ljava/lang/String;
    .locals 3

    .line 202
    invoke-virtual {p0}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 203
    .local v0, "component":Landroid/content/ComponentName;
    invoke-virtual {p0}, Lcom/android/launcher3/model/data/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 205
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 206
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 207
    :cond_0
    if-eqz v1, :cond_1

    .line 208
    invoke-virtual {v1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 209
    :cond_1
    const/4 v2, 0x0

    .line 205
    :goto_0
    return-object v2
.end method

.method public getViewId()I
    .locals 1

    .line 278
    iget v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    return v0
.end method

.method public isDisabled()Z
    .locals 1

    .line 270
    const/4 v0, 0x0

    return v0
.end method

.method public isPredictedItem()Z
    .locals 2

    .line 285
    iget v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v1, -0x67

    if-eq v0, v1, :cond_1

    const/16 v1, -0x68

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method synthetic lambda$buildProto$2$com-android-launcher3-model-data-ItemInfo(Landroid/content/ComponentName;)Lcom/android/launcher3/logger/LauncherAtom$Shortcut$Builder;
    .locals 3
    .param p1, "component"    # Landroid/content/ComponentName;

    .line 314
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$Shortcut;->newBuilder()Lcom/android/launcher3/logger/LauncherAtom$Shortcut$Builder;

    move-result-object v0

    .line 315
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/logger/LauncherAtom$Shortcut$Builder;->setShortcutName(Ljava/lang/String;)Lcom/android/launcher3/logger/LauncherAtom$Shortcut$Builder;

    move-result-object v0

    .line 316
    .local v0, "lsb":Lcom/android/launcher3/logger/LauncherAtom$Shortcut$Builder;
    invoke-virtual {p0}, Lcom/android/launcher3/model/data/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/model/data/ItemInfo$$ExternalSyntheticLambda4;

    invoke-direct {v2}, Lcom/android/launcher3/model/data/ItemInfo$$ExternalSyntheticLambda4;-><init>()V

    .line 317
    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    .line 318
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/launcher3/model/data/ItemInfo$$ExternalSyntheticLambda5;

    invoke-direct {v2, v0}, Lcom/android/launcher3/model/data/ItemInfo$$ExternalSyntheticLambda5;-><init>(Lcom/android/launcher3/logger/LauncherAtom$Shortcut$Builder;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 319
    return-object v0
.end method

.method public makeShallowCopy()Lcom/android/launcher3/model/data/ItemInfo;
    .locals 1

    .line 458
    new-instance v0, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-direct {v0}, Lcom/android/launcher3/model/data/ItemInfo;-><init>()V

    .line 459
    .local v0, "itemInfo":Lcom/android/launcher3/model/data/ItemInfo;
    invoke-virtual {v0, p0}, Lcom/android/launcher3/model/data/ItemInfo;->copyFrom(Lcom/android/launcher3/model/data/ItemInfo;)V

    .line 460
    return-object v0
.end method

.method public onAddToDatabase(Lcom/android/launcher3/util/ContentWriter;)V
    .locals 3
    .param p1, "writer"    # Lcom/android/launcher3/util/ContentWriter;

    .line 238
    sget-object v0, Lcom/android/launcher3/Workspace;->EXTRA_EMPTY_SCREEN_IDS:Lcom/android/launcher3/util/IntSet;

    iget v1, p0, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/IntSet;->contains(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 243
    invoke-virtual {p0, p1}, Lcom/android/launcher3/model/data/ItemInfo;->writeToValues(Lcom/android/launcher3/util/ContentWriter;)V

    .line 244
    iget-object v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    const-string v1, "profileId"

    invoke-virtual {p1, v1, v0}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Landroid/os/UserHandle;)Lcom/android/launcher3/util/ContentWriter;

    .line 245
    return-void

    .line 240
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Screen id should not be extra empty screen: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readFromValues(Landroid/content/ContentValues;)V
    .locals 1
    .param p1, "values"    # Landroid/content/ContentValues;

    .line 224
    const-string v0, "itemType"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    .line 225
    const-string v0, "container"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    .line 226
    const-string v0, "screen"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    .line 227
    const-string v0, "cellX"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    .line 228
    const-string v0, "cellY"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    .line 229
    const-string v0, "spanX"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    .line 230
    const-string v0, "spanY"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    .line 231
    const-string v0, "rank"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->rank:I

    .line 232
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;Lcom/android/launcher3/model/ModelWriter;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "modelWriter"    # Lcom/android/launcher3/model/ModelWriter;

    .line 467
    iput-object p1, p0, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    .line 468
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/model/data/ItemInfo;->dumpProperties()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToValues(Lcom/android/launcher3/util/ContentWriter;)V
    .locals 3
    .param p1, "writer"    # Lcom/android/launcher3/util/ContentWriter;

    .line 213
    iget v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "itemType"

    invoke-virtual {p1, v1, v0}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    .line 214
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "container"

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    .line 215
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "screen"

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    .line 216
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "cellX"

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    .line 217
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "cellY"

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    .line 218
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "spanX"

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    .line 219
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "spanY"

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/model/data/ItemInfo;->rank:I

    .line 220
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "rank"

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    .line 221
    return-void
.end method
