.class public Lcom/android/launcher3/model/ModelWriter;
.super Ljava/lang/Object;
.source "ModelWriter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/model/ModelWriter$ModelVerifier;,
        Lcom/android/launcher3/model/ModelWriter$UpdateItemBaseRunnable;,
        Lcom/android/launcher3/model/ModelWriter$UpdateItemsRunnable;,
        Lcom/android/launcher3/model/ModelWriter$UpdateItemRunnable;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ModelWriter"


# instance fields
.field private final mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

.field private final mContext:Landroid/content/Context;

.field private final mDeleteRunnables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final mHasVerticalHotseat:Z

.field private final mModel:Lcom/android/launcher3/LauncherModel;

.field private final mOwner:Lcom/android/launcher3/model/BgDataModel$Callbacks;

.field private mPreparingToUndo:Z

.field private final mUiExecutor:Lcom/android/launcher3/util/LooperExecutor;

.field private final mVerifyChanges:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmBgDataModel(Lcom/android/launcher3/model/ModelWriter;)Lcom/android/launcher3/model/BgDataModel;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/model/ModelWriter;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/launcher3/model/ModelWriter;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/model/ModelWriter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmModel(Lcom/android/launcher3/model/ModelWriter;)Lcom/android/launcher3/LauncherModel;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/model/ModelWriter;->mModel:Lcom/android/launcher3/LauncherModel;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUiExecutor(Lcom/android/launcher3/model/ModelWriter;)Lcom/android/launcher3/util/LooperExecutor;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/model/ModelWriter;->mUiExecutor:Lcom/android/launcher3/util/LooperExecutor;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVerifyChanges(Lcom/android/launcher3/model/ModelWriter;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/launcher3/model/ModelWriter;->mVerifyChanges:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$mcheckItemInfoLocked(Lcom/android/launcher3/model/ModelWriter;ILcom/android/launcher3/model/data/ItemInfo;[Ljava/lang/StackTraceElement;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/model/ModelWriter;->checkItemInfoLocked(ILcom/android/launcher3/model/data/ItemInfo;[Ljava/lang/StackTraceElement;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/LauncherModel;Lcom/android/launcher3/model/BgDataModel;ZZLcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "model"    # Lcom/android/launcher3/LauncherModel;
    .param p3, "dataModel"    # Lcom/android/launcher3/model/BgDataModel;
    .param p4, "hasVerticalHotseat"    # Z
    .param p5, "verifyChanges"    # Z
    .param p6, "owner"    # Lcom/android/launcher3/model/BgDataModel$Callbacks;

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/model/ModelWriter;->mDeleteRunnables:Ljava/util/List;

    .line 90
    iput-object p1, p0, Lcom/android/launcher3/model/ModelWriter;->mContext:Landroid/content/Context;

    .line 91
    iput-object p2, p0, Lcom/android/launcher3/model/ModelWriter;->mModel:Lcom/android/launcher3/LauncherModel;

    .line 92
    iput-object p3, p0, Lcom/android/launcher3/model/ModelWriter;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    .line 93
    iput-boolean p4, p0, Lcom/android/launcher3/model/ModelWriter;->mHasVerticalHotseat:Z

    .line 94
    iput-boolean p5, p0, Lcom/android/launcher3/model/ModelWriter;->mVerifyChanges:Z

    .line 95
    iput-object p6, p0, Lcom/android/launcher3/model/ModelWriter;->mOwner:Lcom/android/launcher3/model/BgDataModel$Callbacks;

    .line 96
    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    iput-object v0, p0, Lcom/android/launcher3/model/ModelWriter;->mUiExecutor:Lcom/android/launcher3/util/LooperExecutor;

    .line 97
    return-void
.end method

.method private checkItemInfoLocked(ILcom/android/launcher3/model/data/ItemInfo;[Ljava/lang/StackTraceElement;)V
    .locals 5
    .param p1, "itemId"    # I
    .param p2, "item"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p3, "stackTrace"    # [Ljava/lang/StackTraceElement;

    .line 130
    iget-object v0, p0, Lcom/android/launcher3/model/ModelWriter;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v0, v0, Lcom/android/launcher3/model/BgDataModel;->itemsIdMap:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/IntSparseArrayMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfo;

    .line 131
    .local v0, "modelItem":Lcom/android/launcher3/model/data/ItemInfo;
    if-eqz v0, :cond_7

    if-eq p2, v0, :cond_7

    .line 133
    sget-boolean v1, Lcom/android/launcher3/Utilities;->IS_DEBUG_DEVICE:Z

    if-nez v1, :cond_0

    instance-of v1, v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v1, :cond_0

    instance-of v1, p2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v1, :cond_0

    .line 136
    iget-object v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p2, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 137
    invoke-virtual {v0}, Lcom/android/launcher3/model/data/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/launcher3/model/data/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    iget v2, p2, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    if-ne v1, v2, :cond_3

    iget v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    iget v2, p2, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-ne v1, v2, :cond_3

    iget v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    iget v2, p2, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    if-ne v1, v2, :cond_3

    iget v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    iget v2, p2, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    if-ne v1, v2, :cond_3

    iget v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v2, p2, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    if-ne v1, v2, :cond_3

    iget v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iget v2, p2, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    if-ne v1, v2, :cond_3

    iget v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v2, p2, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    if-ne v1, v2, :cond_3

    iget v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iget v2, p2, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    if-ne v1, v2, :cond_3

    .line 147
    return-void

    .line 149
    :cond_0
    instance-of v1, v0, Lcom/android/launcher3/model/data/AppInfo;

    if-eqz v1, :cond_1

    instance-of v1, p2, Lcom/android/launcher3/model/data/AppInfo;

    if-eqz v1, :cond_1

    .line 150
    move-object v1, v0

    check-cast v1, Lcom/android/launcher3/model/data/AppInfo;

    .line 151
    .local v1, "modelApp":Lcom/android/launcher3/model/data/AppInfo;
    move-object v2, p2

    check-cast v2, Lcom/android/launcher3/model/data/AppInfo;

    .line 152
    .local v2, "app":Lcom/android/launcher3/model/data/AppInfo;
    iget-object v3, v1, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    iget-object v4, v2, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v1, Lcom/android/launcher3/model/data/AppInfo;->intent:Landroid/content/Intent;

    iget-object v4, v2, Lcom/android/launcher3/model/data/AppInfo;->intent:Landroid/content/Intent;

    .line 153
    invoke-virtual {v3, v4}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, v1, Lcom/android/launcher3/model/data/AppInfo;->id:I

    iget v4, v2, Lcom/android/launcher3/model/data/AppInfo;->id:I

    if-ne v3, v4, :cond_2

    iget v3, v1, Lcom/android/launcher3/model/data/AppInfo;->itemType:I

    iget v4, v2, Lcom/android/launcher3/model/data/AppInfo;->itemType:I

    if-ne v3, v4, :cond_2

    iget v3, v1, Lcom/android/launcher3/model/data/AppInfo;->container:I

    iget v4, v2, Lcom/android/launcher3/model/data/AppInfo;->container:I

    if-ne v3, v4, :cond_2

    iget v3, v1, Lcom/android/launcher3/model/data/AppInfo;->screenId:I

    iget v4, v2, Lcom/android/launcher3/model/data/AppInfo;->screenId:I

    if-ne v3, v4, :cond_2

    iget v3, v1, Lcom/android/launcher3/model/data/AppInfo;->cellX:I

    iget v4, v2, Lcom/android/launcher3/model/data/AppInfo;->cellX:I

    if-ne v3, v4, :cond_2

    iget v3, v1, Lcom/android/launcher3/model/data/AppInfo;->cellY:I

    iget v4, v2, Lcom/android/launcher3/model/data/AppInfo;->cellY:I

    if-ne v3, v4, :cond_2

    iget v3, v1, Lcom/android/launcher3/model/data/AppInfo;->spanX:I

    iget v4, v2, Lcom/android/launcher3/model/data/AppInfo;->spanX:I

    if-ne v3, v4, :cond_2

    iget v3, v1, Lcom/android/launcher3/model/data/AppInfo;->spanY:I

    iget v4, v2, Lcom/android/launcher3/model/data/AppInfo;->spanY:I

    if-ne v3, v4, :cond_2

    .line 163
    return-void

    .line 165
    .end local v1    # "modelApp":Lcom/android/launcher3/model/data/AppInfo;
    .end local v2    # "app":Lcom/android/launcher3/model/data/AppInfo;
    :cond_1
    instance-of v1, v0, Lcom/android/launcher3/model/data/FolderInfo;

    if-eqz v1, :cond_2

    instance-of v1, p2, Lcom/android/launcher3/model/data/FolderInfo;

    if-eqz v1, :cond_2

    .line 166
    move-object v1, v0

    check-cast v1, Lcom/android/launcher3/model/data/FolderInfo;

    .line 167
    .local v1, "modelFolder":Lcom/android/launcher3/model/data/FolderInfo;
    move-object v2, p2

    check-cast v2, Lcom/android/launcher3/model/data/FolderInfo;

    .line 168
    .local v2, "folder":Lcom/android/launcher3/model/data/FolderInfo;
    iget-object v3, v1, Lcom/android/launcher3/model/data/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Lcom/android/launcher3/model/data/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, v1, Lcom/android/launcher3/model/data/FolderInfo;->id:I

    iget v4, v2, Lcom/android/launcher3/model/data/FolderInfo;->id:I

    if-ne v3, v4, :cond_3

    iget v3, v1, Lcom/android/launcher3/model/data/FolderInfo;->itemType:I

    iget v4, v2, Lcom/android/launcher3/model/data/FolderInfo;->itemType:I

    if-ne v3, v4, :cond_3

    iget v3, v1, Lcom/android/launcher3/model/data/FolderInfo;->container:I

    iget v4, v2, Lcom/android/launcher3/model/data/FolderInfo;->container:I

    if-ne v3, v4, :cond_3

    iget v3, v1, Lcom/android/launcher3/model/data/FolderInfo;->screenId:I

    iget v4, v2, Lcom/android/launcher3/model/data/FolderInfo;->screenId:I

    if-ne v3, v4, :cond_3

    iget v3, v1, Lcom/android/launcher3/model/data/FolderInfo;->cellX:I

    iget v4, v2, Lcom/android/launcher3/model/data/FolderInfo;->cellX:I

    if-ne v3, v4, :cond_3

    iget v3, v1, Lcom/android/launcher3/model/data/FolderInfo;->cellY:I

    iget v4, v2, Lcom/android/launcher3/model/data/FolderInfo;->cellY:I

    if-ne v3, v4, :cond_3

    iget v3, v1, Lcom/android/launcher3/model/data/FolderInfo;->spanX:I

    iget v4, v2, Lcom/android/launcher3/model/data/FolderInfo;->spanX:I

    if-ne v3, v4, :cond_3

    iget v3, v1, Lcom/android/launcher3/model/data/FolderInfo;->spanY:I

    iget v4, v2, Lcom/android/launcher3/model/data/FolderInfo;->spanY:I

    if-ne v3, v4, :cond_3

    .line 178
    return-void

    .line 165
    .end local v1    # "modelFolder":Lcom/android/launcher3/model/data/FolderInfo;
    .end local v2    # "folder":Lcom/android/launcher3/model/data/FolderInfo;
    :cond_2
    nop

    .line 185
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "item: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "null"

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lcom/android/launcher3/model/data/ItemInfo;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_4
    move-object v3, v2

    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "modelItem: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 187
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/android/launcher3/model/data/ItemInfo;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Error: ItemInfo passed to checkItemInfo doesn\'t match original"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 189
    .local v1, "msg":Ljava/lang/String;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 190
    .local v2, "e":Ljava/lang/RuntimeException;
    if-eqz p3, :cond_6

    .line 191
    invoke-virtual {v2, p3}, Ljava/lang/RuntimeException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 193
    :cond_6
    throw v2

    .line 195
    .end local v1    # "msg":Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :cond_7
    return-void
.end method

.method private enqueueDeleteRunnable(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .line 445
    iget-boolean v0, p0, Lcom/android/launcher3/model/ModelWriter;->mPreparingToUndo:Z

    if-eqz v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/android/launcher3/model/ModelWriter;->mDeleteRunnables:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 448
    :cond_0
    sget-object v0, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    .line 450
    :goto_0
    return-void
.end method

.method static synthetic lambda$addItemToDatabase$5(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .locals 2
    .param p0, "item"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p1, "c"    # Lcom/android/launcher3/model/BgDataModel$Callbacks;

    .line 302
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->bindItems(Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic lambda$deleteItemsFromDatabase$7(Lcom/android/launcher3/model/data/ItemInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "item"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 369
    invoke-virtual {p0}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    .line 370
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 369
    :goto_0
    return-object v0
.end method

.method static synthetic lambda$deleteWidgetInfo$10(Lcom/android/launcher3/widget/LauncherAppWidgetHost;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)V
    .locals 1
    .param p0, "host"    # Lcom/android/launcher3/widget/LauncherAppWidgetHost;
    .param p1, "info"    # Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    .line 414
    iget v0, p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    return-void
.end method

.method static synthetic lambda$moveItemsInDatabase$1(Ljava/util/ArrayList;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .locals 0
    .param p0, "items"    # Ljava/util/ArrayList;
    .param p1, "c"    # Lcom/android/launcher3/model/BgDataModel$Callbacks;

    .line 221
    invoke-interface {p1, p0}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->bindItemsModified(Ljava/util/List;)V

    return-void
.end method

.method static synthetic lambda$notifyDelete$11(Ljava/util/Collection;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .locals 1
    .param p0, "items"    # Ljava/util/Collection;
    .param p1, "c"    # Lcom/android/launcher3/model/BgDataModel$Callbacks;

    .line 420
    invoke-static {p0}, Lcom/android/launcher3/util/ItemInfoMatcher;->ofItems(Ljava/util/Collection;)Ljava/util/function/Predicate;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->bindWorkspaceComponentsRemoved(Ljava/util/function/Predicate;)V

    return-void
.end method

.method static synthetic lambda$notifyItemModified$4(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .locals 1
    .param p0, "item"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p1, "c"    # Lcom/android/launcher3/model/BgDataModel$Callbacks;

    .line 289
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->bindItemsModified(Ljava/util/List;)V

    return-void
.end method

.method private notifyDelete(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .line 420
    .local p1, "items":Ljava/util/Collection;, "Ljava/util/Collection<+Lcom/android/launcher3/model/data/ItemInfo;>;"
    new-instance v0, Lcom/android/launcher3/model/ModelWriter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/launcher3/model/ModelWriter$$ExternalSyntheticLambda0;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v0}, Lcom/android/launcher3/model/ModelWriter;->notifyOtherCallbacks(Lcom/android/launcher3/LauncherModel$CallbackTask;)V

    .line 421
    return-void
.end method

.method private notifyItemModified(Lcom/android/launcher3/model/data/ItemInfo;)V
    .locals 1
    .param p1, "item"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 289
    new-instance v0, Lcom/android/launcher3/model/ModelWriter$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Lcom/android/launcher3/model/ModelWriter$$ExternalSyntheticLambda2;-><init>(Lcom/android/launcher3/model/data/ItemInfo;)V

    invoke-direct {p0, v0}, Lcom/android/launcher3/model/ModelWriter;->notifyOtherCallbacks(Lcom/android/launcher3/LauncherModel$CallbackTask;)V

    .line 290
    return-void
.end method

.method private notifyOtherCallbacks(Lcom/android/launcher3/LauncherModel$CallbackTask;)V
    .locals 2
    .param p1, "task"    # Lcom/android/launcher3/LauncherModel$CallbackTask;

    .line 472
    iget-object v0, p0, Lcom/android/launcher3/model/ModelWriter;->mOwner:Lcom/android/launcher3/model/BgDataModel$Callbacks;

    if-nez v0, :cond_0

    .line 474
    return-void

    .line 476
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/model/ModelWriter;->mUiExecutor:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/launcher3/model/ModelWriter$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/model/ModelWriter$$ExternalSyntheticLambda5;-><init>(Lcom/android/launcher3/model/ModelWriter;Lcom/android/launcher3/LauncherModel$CallbackTask;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    .line 483
    return-void
.end method

.method private updateItemInfoProps(Lcom/android/launcher3/model/data/ItemInfo;IIII)V
    .locals 1
    .param p1, "item"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p2, "container"    # I
    .param p3, "screenId"    # I
    .param p4, "cellX"    # I
    .param p5, "cellY"    # I

    .line 101
    iput p2, p1, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    .line 102
    iput p4, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    .line 103
    iput p5, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    .line 106
    const/16 v0, -0x65

    if-ne p2, v0, :cond_1

    .line 107
    iget-boolean v0, p0, Lcom/android/launcher3/model/ModelWriter;->mHasVerticalHotseat:Z

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/android/launcher3/model/ModelWriter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numDatabaseHotseatIcons:I

    sub-int/2addr v0, p5

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    move v0, p4

    :goto_0
    iput v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    goto :goto_1

    .line 110
    :cond_1
    iput p3, p1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    .line 112
    :goto_1
    return-void
.end method


# virtual methods
.method public abortDelete()V
    .locals 1

    .line 464
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/model/ModelWriter;->mPreparingToUndo:Z

    .line 465
    iget-object v0, p0, Lcom/android/launcher3/model/ModelWriter;->mDeleteRunnables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 468
    iget-object v0, p0, Lcom/android/launcher3/model/ModelWriter;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->forceReload()V

    .line 469
    return-void
.end method

.method public addItemToDatabase(Lcom/android/launcher3/model/data/ItemInfo;IIII)V
    .locals 10
    .param p1, "item"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p2, "container"    # I
    .param p3, "screenId"    # I
    .param p4, "cellX"    # I
    .param p5, "cellY"    # I

    .line 298
    invoke-direct/range {p0 .. p5}, Lcom/android/launcher3/model/ModelWriter;->updateItemInfoProps(Lcom/android/launcher3/model/data/ItemInfo;IIII)V

    .line 300
    iget-object v0, p0, Lcom/android/launcher3/model/ModelWriter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 301
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v1, "generate_new_item_id"

    invoke-static {v0, v1}, Lcom/android/launcher3/LauncherSettings$Settings;->call(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "value"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    .line 302
    new-instance v1, Lcom/android/launcher3/model/ModelWriter$$ExternalSyntheticLambda6;

    invoke-direct {v1, p1}, Lcom/android/launcher3/model/ModelWriter$$ExternalSyntheticLambda6;-><init>(Lcom/android/launcher3/model/data/ItemInfo;)V

    invoke-direct {p0, v1}, Lcom/android/launcher3/model/ModelWriter;->notifyOtherCallbacks(Lcom/android/launcher3/LauncherModel$CallbackTask;)V

    .line 304
    new-instance v6, Lcom/android/launcher3/model/ModelWriter$ModelVerifier;

    invoke-direct {v6, p0}, Lcom/android/launcher3/model/ModelWriter$ModelVerifier;-><init>(Lcom/android/launcher3/model/ModelWriter;)V

    .line 305
    .local v6, "verifier":Lcom/android/launcher3/model/ModelWriter$ModelVerifier;
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v7

    .line 306
    .local v7, "stackTrace":[Ljava/lang/StackTraceElement;
    sget-object v8, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v9, Lcom/android/launcher3/model/ModelWriter$$ExternalSyntheticLambda7;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p1

    move-object v4, v0

    move-object v5, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/launcher3/model/ModelWriter$$ExternalSyntheticLambda7;-><init>(Lcom/android/launcher3/model/ModelWriter;Lcom/android/launcher3/model/data/ItemInfo;Landroid/content/ContentResolver;[Ljava/lang/StackTraceElement;Lcom/android/launcher3/model/ModelWriter$ModelVerifier;)V

    invoke-virtual {v8, v9}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    .line 321
    return-void
.end method

.method public addItemToDatabaseSync(Lcom/android/launcher3/model/data/ItemInfo;IIII)V
    .locals 8
    .param p1, "item"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p2, "container"    # I
    .param p3, "screenId"    # I
    .param p4, "cellX"    # I
    .param p5, "cellY"    # I

    .line 325
    invoke-direct/range {p0 .. p5}, Lcom/android/launcher3/model/ModelWriter;->updateItemInfoProps(Lcom/android/launcher3/model/data/ItemInfo;IIII)V

    .line 327
    iget-object v0, p0, Lcom/android/launcher3/model/ModelWriter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 328
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v1, "generate_new_item_id"

    invoke-static {v0, v1}, Lcom/android/launcher3/LauncherSettings$Settings;->call(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "value"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    .line 330
    new-instance v1, Lcom/android/launcher3/model/ModelWriter$ModelVerifier;

    invoke-direct {v1, p0}, Lcom/android/launcher3/model/ModelWriter$ModelVerifier;-><init>(Lcom/android/launcher3/model/ModelWriter;)V

    .line 331
    .local v1, "verifier":Lcom/android/launcher3/model/ModelWriter$ModelVerifier;
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 333
    .local v2, "stackTrace":[Ljava/lang/StackTraceElement;
    new-instance v3, Lcom/android/launcher3/util/ContentWriter;

    iget-object v4, p0, Lcom/android/launcher3/model/ModelWriter;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/launcher3/util/ContentWriter;-><init>(Landroid/content/Context;)V

    .line 334
    .local v3, "writer":Lcom/android/launcher3/util/ContentWriter;
    invoke-virtual {p1, v3}, Lcom/android/launcher3/model/data/ItemInfo;->onAddToDatabase(Lcom/android/launcher3/util/ContentWriter;)V

    .line 335
    const-string v4, "_id"

    iget v5, p1, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    .line 337
    sget-object v4, Lcom/android/launcher3/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    iget-object v5, p0, Lcom/android/launcher3/model/ModelWriter;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v5}, Lcom/android/launcher3/util/ContentWriter;->getValues(Landroid/content/Context;)Landroid/content/ContentValues;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 339
    iget-object v4, p0, Lcom/android/launcher3/model/ModelWriter;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    monitor-enter v4

    .line 340
    :try_start_0
    iget v5, p1, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-direct {p0, v5, p1, v2}, Lcom/android/launcher3/model/ModelWriter;->checkItemInfoLocked(ILcom/android/launcher3/model/data/ItemInfo;[Ljava/lang/StackTraceElement;)V

    .line 341
    iget-object v5, p0, Lcom/android/launcher3/model/ModelWriter;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v6, p0, Lcom/android/launcher3/model/ModelWriter;->mContext:Landroid/content/Context;

    const/4 v7, 0x1

    invoke-virtual {v5, v6, p1, v7}, Lcom/android/launcher3/model/BgDataModel;->addItem(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Z)V

    .line 342
    invoke-virtual {v1}, Lcom/android/launcher3/model/ModelWriter$ModelVerifier;->verifyModel()V

    .line 343
    monitor-exit v4

    .line 344
    return-void

    .line 343
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public addOrMoveItemInDatabase(Lcom/android/launcher3/model/data/ItemInfo;IIII)V
    .locals 2
    .param p1, "item"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p2, "container"    # I
    .param p3, "screenId"    # I
    .param p4, "cellX"    # I
    .param p5, "cellY"    # I

    .line 120
    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v1, -0x66

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 125
    :cond_0
    invoke-virtual/range {p0 .. p5}, Lcom/android/launcher3/model/ModelWriter;->moveItemInDatabase(Lcom/android/launcher3/model/data/ItemInfo;IIII)V

    goto :goto_1

    .line 122
    :cond_1
    :goto_0
    invoke-virtual/range {p0 .. p5}, Lcom/android/launcher3/model/ModelWriter;->addItemToDatabase(Lcom/android/launcher3/model/data/ItemInfo;IIII)V

    .line 127
    :goto_1
    return-void
.end method

.method public commitDelete()V
    .locals 3

    .line 453
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/model/ModelWriter;->mPreparingToUndo:Z

    .line 454
    iget-object v0, p0, Lcom/android/launcher3/model/ModelWriter;->mDeleteRunnables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 455
    .local v1, "runnable":Ljava/lang/Runnable;
    sget-object v2, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    .line 456
    .end local v1    # "runnable":Ljava/lang/Runnable;
    goto :goto_0

    .line 457
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/model/ModelWriter;->mDeleteRunnables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 458
    return-void
.end method

.method public deleteFolderAndContentsFromDatabase(Lcom/android/launcher3/model/data/FolderInfo;)V
    .locals 2
    .param p1, "info"    # Lcom/android/launcher3/model/data/FolderInfo;

    .line 389
    new-instance v0, Lcom/android/launcher3/model/ModelWriter$ModelVerifier;

    invoke-direct {v0, p0}, Lcom/android/launcher3/model/ModelWriter$ModelVerifier;-><init>(Lcom/android/launcher3/model/ModelWriter;)V

    .line 390
    .local v0, "verifier":Lcom/android/launcher3/model/ModelWriter$ModelVerifier;
    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/launcher3/model/ModelWriter;->notifyDelete(Ljava/util/Collection;)V

    .line 392
    new-instance v1, Lcom/android/launcher3/model/ModelWriter$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/launcher3/model/ModelWriter$$ExternalSyntheticLambda8;-><init>(Lcom/android/launcher3/model/ModelWriter;Lcom/android/launcher3/model/data/FolderInfo;Lcom/android/launcher3/model/ModelWriter$ModelVerifier;)V

    invoke-direct {p0, v1}, Lcom/android/launcher3/model/ModelWriter;->enqueueDeleteRunnable(Ljava/lang/Runnable;)V

    .line 403
    return-void
.end method

.method public deleteItemFromDatabase(Lcom/android/launcher3/model/data/ItemInfo;Ljava/lang/String;)V
    .locals 2
    .param p1, "item"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p2, "reason"    # Ljava/lang/String;

    .line 350
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/launcher3/model/data/ItemInfo;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/android/launcher3/model/ModelWriter;->deleteItemsFromDatabase(Ljava/util/Collection;Ljava/lang/String;)V

    .line 351
    return-void
.end method

.method public deleteItemsFromDatabase(Ljava/util/Collection;Ljava/lang/String;)V
    .locals 4
    .param p2, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 367
    .local p1, "items":Ljava/util/Collection;, "Ljava/util/Collection<+Lcom/android/launcher3/model/data/ItemInfo;>;"
    new-instance v0, Lcom/android/launcher3/model/ModelWriter$ModelVerifier;

    invoke-direct {v0, p0}, Lcom/android/launcher3/model/ModelWriter$ModelVerifier;-><init>(Lcom/android/launcher3/model/ModelWriter;)V

    .line 368
    .local v0, "verifier":Lcom/android/launcher3/model/ModelWriter$ModelVerifier;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removing items from db "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/launcher3/model/ModelWriter$$ExternalSyntheticLambda9;

    invoke-direct {v3}, Lcom/android/launcher3/model/ModelWriter$$ExternalSyntheticLambda9;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    .line 371
    const-string v3, ","

    invoke-static {v3}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v3

    .line 370
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Reason: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 372
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "unknown"

    goto :goto_0

    :cond_0
    move-object v2, p2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 368
    const-string v2, "ModelWriter"

    invoke-static {v2, v1}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    invoke-direct {p0, p1}, Lcom/android/launcher3/model/ModelWriter;->notifyDelete(Ljava/util/Collection;)V

    .line 374
    new-instance v1, Lcom/android/launcher3/model/ModelWriter$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/launcher3/model/ModelWriter$$ExternalSyntheticLambda10;-><init>(Lcom/android/launcher3/model/ModelWriter;Ljava/util/Collection;Lcom/android/launcher3/model/ModelWriter$ModelVerifier;)V

    invoke-direct {p0, v1}, Lcom/android/launcher3/model/ModelWriter;->enqueueDeleteRunnable(Ljava/lang/Runnable;)V

    .line 383
    return-void
.end method

.method public deleteItemsFromDatabase(Ljava/util/function/Predicate;Ljava/lang/String;)V
    .locals 2
    .param p2, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 358
    .local p1, "matcher":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/launcher3/model/data/ItemInfo;>;"
    iget-object v0, p0, Lcom/android/launcher3/model/ModelWriter;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v0, v0, Lcom/android/launcher3/model/BgDataModel;->itemsIdMap:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v0}, Lcom/android/launcher3/util/IntSparseArrayMap;->spliterator()Ljava/util/Spliterator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object v0

    .line 359
    invoke-interface {v0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 358
    invoke-virtual {p0, v0, p2}, Lcom/android/launcher3/model/ModelWriter;->deleteItemsFromDatabase(Ljava/util/Collection;Ljava/lang/String;)V

    .line 360
    return-void
.end method

.method public deleteWidgetInfo(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;Lcom/android/launcher3/widget/LauncherAppWidgetHost;Ljava/lang/String;)V
    .locals 1
    .param p1, "info"    # Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;
    .param p2, "host"    # Lcom/android/launcher3/widget/LauncherAppWidgetHost;
    .param p3, "reason"    # Ljava/lang/String;

    .line 410
    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/model/ModelWriter;->notifyDelete(Ljava/util/Collection;)V

    .line 411
    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->isCustomWidget()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->isWidgetIdAllocated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 414
    new-instance v0, Lcom/android/launcher3/model/ModelWriter$$ExternalSyntheticLambda11;

    invoke-direct {v0, p2, p1}, Lcom/android/launcher3/model/ModelWriter$$ExternalSyntheticLambda11;-><init>(Lcom/android/launcher3/widget/LauncherAppWidgetHost;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)V

    invoke-direct {p0, v0}, Lcom/android/launcher3/model/ModelWriter;->enqueueDeleteRunnable(Ljava/lang/Runnable;)V

    .line 416
    :cond_0
    invoke-virtual {p0, p1, p3}, Lcom/android/launcher3/model/ModelWriter;->deleteItemFromDatabase(Lcom/android/launcher3/model/data/ItemInfo;Ljava/lang/String;)V

    .line 417
    return-void
.end method

.method synthetic lambda$addItemToDatabase$6$com-android-launcher3-model-ModelWriter(Lcom/android/launcher3/model/data/ItemInfo;Landroid/content/ContentResolver;[Ljava/lang/StackTraceElement;Lcom/android/launcher3/model/ModelWriter$ModelVerifier;)V
    .locals 5
    .param p1, "item"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p2, "cr"    # Landroid/content/ContentResolver;
    .param p3, "stackTrace"    # [Ljava/lang/StackTraceElement;
    .param p4, "verifier"    # Lcom/android/launcher3/model/ModelWriter$ModelVerifier;

    .line 309
    new-instance v0, Lcom/android/launcher3/util/ContentWriter;

    iget-object v1, p0, Lcom/android/launcher3/model/ModelWriter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/ContentWriter;-><init>(Landroid/content/Context;)V

    .line 310
    .local v0, "writer":Lcom/android/launcher3/util/ContentWriter;
    invoke-virtual {p1, v0}, Lcom/android/launcher3/model/data/ItemInfo;->onAddToDatabase(Lcom/android/launcher3/util/ContentWriter;)V

    .line 311
    const-string v1, "_id"

    iget v2, p1, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    .line 313
    sget-object v1, Lcom/android/launcher3/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/launcher3/model/ModelWriter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/util/ContentWriter;->getValues(Landroid/content/Context;)Landroid/content/ContentValues;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 315
    iget-object v1, p0, Lcom/android/launcher3/model/ModelWriter;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    monitor-enter v1

    .line 316
    :try_start_0
    iget v2, p1, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-direct {p0, v2, p1, p3}, Lcom/android/launcher3/model/ModelWriter;->checkItemInfoLocked(ILcom/android/launcher3/model/data/ItemInfo;[Ljava/lang/StackTraceElement;)V

    .line 317
    iget-object v2, p0, Lcom/android/launcher3/model/ModelWriter;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v3, p0, Lcom/android/launcher3/model/ModelWriter;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, p1, v4}, Lcom/android/launcher3/model/BgDataModel;->addItem(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Z)V

    .line 318
    invoke-virtual {p4}, Lcom/android/launcher3/model/ModelWriter$ModelVerifier;->verifyModel()V

    .line 319
    monitor-exit v1

    .line 320
    return-void

    .line 319
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method synthetic lambda$deleteFolderAndContentsFromDatabase$9$com-android-launcher3-model-ModelWriter(Lcom/android/launcher3/model/data/FolderInfo;Lcom/android/launcher3/model/ModelWriter$ModelVerifier;)V
    .locals 5
    .param p1, "info"    # Lcom/android/launcher3/model/data/FolderInfo;
    .param p2, "verifier"    # Lcom/android/launcher3/model/ModelWriter$ModelVerifier;

    .line 393
    iget-object v0, p0, Lcom/android/launcher3/model/ModelWriter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 394
    .local v0, "cr":Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/launcher3/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "container="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/android/launcher3/model/data/FolderInfo;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 396
    iget-object v1, p0, Lcom/android/launcher3/model/ModelWriter;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v2, p0, Lcom/android/launcher3/model/ModelWriter;->mContext:Landroid/content/Context;

    iget-object v4, p1, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v4}, Lcom/android/launcher3/model/BgDataModel;->removeItem(Landroid/content/Context;Ljava/lang/Iterable;)V

    .line 397
    iget-object v1, p1, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 399
    iget v1, p1, Lcom/android/launcher3/model/data/FolderInfo;->id:I

    invoke-static {v1}, Lcom/android/launcher3/LauncherSettings$Favorites;->getContentUri(I)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 400
    iget-object v1, p0, Lcom/android/launcher3/model/ModelWriter;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v2, p0, Lcom/android/launcher3/model/ModelWriter;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/android/launcher3/model/data/ItemInfo;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/model/BgDataModel;->removeItem(Landroid/content/Context;[Lcom/android/launcher3/model/data/ItemInfo;)V

    .line 401
    invoke-virtual {p2}, Lcom/android/launcher3/model/ModelWriter$ModelVerifier;->verifyModel()V

    .line 402
    return-void
.end method

.method synthetic lambda$deleteItemsFromDatabase$8$com-android-launcher3-model-ModelWriter(Ljava/util/Collection;Lcom/android/launcher3/model/ModelWriter$ModelVerifier;)V
    .locals 7
    .param p1, "items"    # Ljava/util/Collection;
    .param p2, "verifier"    # Lcom/android/launcher3/model/ModelWriter$ModelVerifier;

    .line 375
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/ItemInfo;

    .line 376
    .local v1, "item":Lcom/android/launcher3/model/data/ItemInfo;
    iget v2, v1, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-static {v2}, Lcom/android/launcher3/LauncherSettings$Favorites;->getContentUri(I)Landroid/net/Uri;

    move-result-object v2

    .line 377
    .local v2, "uri":Landroid/net/Uri;
    iget-object v3, p0, Lcom/android/launcher3/model/ModelWriter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 379
    iget-object v3, p0, Lcom/android/launcher3/model/ModelWriter;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v4, p0, Lcom/android/launcher3/model/ModelWriter;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/android/launcher3/model/data/ItemInfo;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher3/model/BgDataModel;->removeItem(Landroid/content/Context;[Lcom/android/launcher3/model/data/ItemInfo;)V

    .line 380
    invoke-virtual {p2}, Lcom/android/launcher3/model/ModelWriter$ModelVerifier;->verifyModel()V

    .line 381
    .end local v1    # "item":Lcom/android/launcher3/model/data/ItemInfo;
    .end local v2    # "uri":Landroid/net/Uri;
    goto :goto_0

    .line 382
    :cond_0
    return-void
.end method

.method synthetic lambda$modifyItemInDatabase$2$com-android-launcher3-model-ModelWriter(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/util/ContentWriter;
    .locals 3
    .param p1, "item"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 266
    new-instance v0, Lcom/android/launcher3/util/ContentWriter;

    iget-object v1, p0, Lcom/android/launcher3/model/ModelWriter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/ContentWriter;-><init>(Landroid/content/Context;)V

    iget v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    .line 267
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "container"

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object v0

    iget v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    .line 268
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "cellX"

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object v0

    iget v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    .line 269
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "cellY"

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object v0

    iget v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->rank:I

    .line 270
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "rank"

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object v0

    iget v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    .line 271
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "spanX"

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object v0

    iget v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    .line 272
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "spanY"

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object v0

    iget v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    .line 273
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "screen"

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object v0

    .line 266
    return-object v0
.end method

.method synthetic lambda$moveItemInDatabase$0$com-android-launcher3-model-ModelWriter(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/util/ContentWriter;
    .locals 3
    .param p1, "item"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 206
    new-instance v0, Lcom/android/launcher3/util/ContentWriter;

    iget-object v1, p0, Lcom/android/launcher3/model/ModelWriter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/ContentWriter;-><init>(Landroid/content/Context;)V

    iget v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    .line 207
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "container"

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object v0

    iget v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    .line 208
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "cellX"

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object v0

    iget v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    .line 209
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "cellY"

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object v0

    iget v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->rank:I

    .line 210
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "rank"

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object v0

    iget v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    .line 211
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "screen"

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object v0

    .line 206
    return-object v0
.end method

.method synthetic lambda$notifyOtherCallbacks$12$com-android-launcher3-model-ModelWriter(Lcom/android/launcher3/LauncherModel$CallbackTask;)V
    .locals 5
    .param p1, "task"    # Lcom/android/launcher3/LauncherModel$CallbackTask;

    .line 477
    iget-object v0, p0, Lcom/android/launcher3/model/ModelWriter;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->getCallbacks()[Lcom/android/launcher3/model/BgDataModel$Callbacks;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 478
    .local v3, "c":Lcom/android/launcher3/model/BgDataModel$Callbacks;
    iget-object v4, p0, Lcom/android/launcher3/model/ModelWriter;->mOwner:Lcom/android/launcher3/model/BgDataModel$Callbacks;

    if-eq v3, v4, :cond_0

    .line 479
    invoke-interface {p1, v3}, Lcom/android/launcher3/LauncherModel$CallbackTask;->execute(Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    .line 477
    .end local v3    # "c":Lcom/android/launcher3/model/BgDataModel$Callbacks;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 482
    :cond_1
    return-void
.end method

.method synthetic lambda$updateItemInDatabase$3$com-android-launcher3-model-ModelWriter(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/util/ContentWriter;
    .locals 2
    .param p1, "item"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 282
    new-instance v0, Lcom/android/launcher3/util/ContentWriter;

    iget-object v1, p0, Lcom/android/launcher3/model/ModelWriter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/ContentWriter;-><init>(Landroid/content/Context;)V

    .line 283
    .local v0, "writer":Lcom/android/launcher3/util/ContentWriter;
    invoke-virtual {p1, v0}, Lcom/android/launcher3/model/data/ItemInfo;->onAddToDatabase(Lcom/android/launcher3/util/ContentWriter;)V

    .line 284
    return-object v0
.end method

.method public modifyItemInDatabase(Lcom/android/launcher3/model/data/ItemInfo;IIIIII)V
    .locals 3
    .param p1, "item"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p2, "container"    # I
    .param p3, "screenId"    # I
    .param p4, "cellX"    # I
    .param p5, "cellY"    # I
    .param p6, "spanX"    # I
    .param p7, "spanY"    # I

    .line 260
    invoke-direct/range {p0 .. p5}, Lcom/android/launcher3/model/ModelWriter;->updateItemInfoProps(Lcom/android/launcher3/model/data/ItemInfo;IIII)V

    .line 261
    iput p6, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    .line 262
    iput p7, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    .line 263
    invoke-direct {p0, p1}, Lcom/android/launcher3/model/ModelWriter;->notifyItemModified(Lcom/android/launcher3/model/data/ItemInfo;)V

    .line 265
    sget-object v0, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/launcher3/model/ModelWriter$UpdateItemRunnable;

    new-instance v2, Lcom/android/launcher3/model/ModelWriter$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1}, Lcom/android/launcher3/model/ModelWriter$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/model/ModelWriter;Lcom/android/launcher3/model/data/ItemInfo;)V

    invoke-direct {v1, p0, p1, v2}, Lcom/android/launcher3/model/ModelWriter$UpdateItemRunnable;-><init>(Lcom/android/launcher3/model/ModelWriter;Lcom/android/launcher3/model/data/ItemInfo;Ljava/util/function/Supplier;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    .line 274
    return-void
.end method

.method public moveAllAppsItemsInDatabase(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .line 240
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/ItemInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 242
    .local v0, "contentValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "count":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 243
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/data/ItemInfo;

    .line 245
    .local v3, "item":Lcom/android/launcher3/model/data/ItemInfo;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 246
    .local v4, "values":Landroid/content/ContentValues;
    iget v5, v3, Lcom/android/launcher3/model/data/ItemInfo;->rank:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "rank"

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 247
    iget v5, v3, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "screen"

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 249
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    .end local v3    # "item":Lcom/android/launcher3/model/data/ItemInfo;
    .end local v4    # "values":Landroid/content/ContentValues;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 251
    .end local v1    # "i":I
    .end local v2    # "count":I
    :cond_0
    sget-object v1, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v2, Lcom/android/launcher3/model/ModelWriter$UpdateItemsRunnable;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v2, p0, v3, v0}, Lcom/android/launcher3/model/ModelWriter$UpdateItemsRunnable;-><init>(Lcom/android/launcher3/model/ModelWriter;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 253
    return-void
.end method

.method public moveItemInDatabase(Lcom/android/launcher3/model/data/ItemInfo;IIII)V
    .locals 2
    .param p1, "item"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p2, "container"    # I
    .param p3, "screenId"    # I
    .param p4, "cellX"    # I
    .param p5, "cellY"    # I

    .line 202
    invoke-direct/range {p0 .. p5}, Lcom/android/launcher3/model/ModelWriter;->updateItemInfoProps(Lcom/android/launcher3/model/data/ItemInfo;IIII)V

    .line 203
    invoke-direct {p0, p1}, Lcom/android/launcher3/model/ModelWriter;->notifyItemModified(Lcom/android/launcher3/model/data/ItemInfo;)V

    .line 205
    new-instance v0, Lcom/android/launcher3/model/ModelWriter$UpdateItemRunnable;

    new-instance v1, Lcom/android/launcher3/model/ModelWriter$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/model/ModelWriter$$ExternalSyntheticLambda4;-><init>(Lcom/android/launcher3/model/ModelWriter;Lcom/android/launcher3/model/data/ItemInfo;)V

    invoke-direct {v0, p0, p1, v1}, Lcom/android/launcher3/model/ModelWriter$UpdateItemRunnable;-><init>(Lcom/android/launcher3/model/ModelWriter;Lcom/android/launcher3/model/data/ItemInfo;Ljava/util/function/Supplier;)V

    invoke-direct {p0, v0}, Lcom/android/launcher3/model/ModelWriter;->enqueueDeleteRunnable(Ljava/lang/Runnable;)V

    .line 212
    return-void
.end method

.method public moveItemsInDatabase(Ljava/util/ArrayList;II)V
    .locals 10
    .param p2, "container"    # I
    .param p3, "screen"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;II)V"
        }
    .end annotation

    .line 219
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/ItemInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 220
    .local v0, "contentValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 221
    .local v1, "count":I
    new-instance v2, Lcom/android/launcher3/model/ModelWriter$$ExternalSyntheticLambda12;

    invoke-direct {v2, p1}, Lcom/android/launcher3/model/ModelWriter$$ExternalSyntheticLambda12;-><init>(Ljava/util/ArrayList;)V

    invoke-direct {p0, v2}, Lcom/android/launcher3/model/ModelWriter;->notifyOtherCallbacks(Lcom/android/launcher3/LauncherModel$CallbackTask;)V

    .line 223
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 224
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/data/ItemInfo;

    .line 225
    .local v3, "item":Lcom/android/launcher3/model/data/ItemInfo;
    iget v8, v3, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v9, v3, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    move-object v4, p0

    move-object v5, v3

    move v6, p2

    move v7, p3

    invoke-direct/range {v4 .. v9}, Lcom/android/launcher3/model/ModelWriter;->updateItemInfoProps(Lcom/android/launcher3/model/data/ItemInfo;IIII)V

    .line 227
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 228
    .local v4, "values":Landroid/content/ContentValues;
    iget v5, v3, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "container"

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 229
    iget v5, v3, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "cellX"

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 230
    iget v5, v3, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "cellY"

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 231
    iget v5, v3, Lcom/android/launcher3/model/data/ItemInfo;->rank:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "rank"

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 232
    iget v5, v3, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "screen"

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 234
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 223
    .end local v3    # "item":Lcom/android/launcher3/model/data/ItemInfo;
    .end local v4    # "values":Landroid/content/ContentValues;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 236
    .end local v2    # "i":I
    :cond_0
    new-instance v2, Lcom/android/launcher3/model/ModelWriter$UpdateItemsRunnable;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/launcher3/model/ModelWriter$UpdateItemsRunnable;-><init>(Lcom/android/launcher3/model/ModelWriter;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-direct {p0, v2}, Lcom/android/launcher3/model/ModelWriter;->enqueueDeleteRunnable(Ljava/lang/Runnable;)V

    .line 237
    return-void
.end method

.method public prepareToUndoDelete()V
    .locals 1

    .line 430
    iget-boolean v0, p0, Lcom/android/launcher3/model/ModelWriter;->mPreparingToUndo:Z

    if-nez v0, :cond_0

    .line 431
    iget-object v0, p0, Lcom/android/launcher3/model/ModelWriter;->mDeleteRunnables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 434
    iget-object v0, p0, Lcom/android/launcher3/model/ModelWriter;->mDeleteRunnables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 435
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/model/ModelWriter;->mPreparingToUndo:Z

    .line 437
    :cond_0
    return-void
.end method

.method public updateItemInDatabase(Lcom/android/launcher3/model/data/ItemInfo;)V
    .locals 3
    .param p1, "item"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 280
    invoke-direct {p0, p1}, Lcom/android/launcher3/model/ModelWriter;->notifyItemModified(Lcom/android/launcher3/model/data/ItemInfo;)V

    .line 281
    sget-object v0, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/launcher3/model/ModelWriter$UpdateItemRunnable;

    new-instance v2, Lcom/android/launcher3/model/ModelWriter$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, p1}, Lcom/android/launcher3/model/ModelWriter$$ExternalSyntheticLambda3;-><init>(Lcom/android/launcher3/model/ModelWriter;Lcom/android/launcher3/model/data/ItemInfo;)V

    invoke-direct {v1, p0, p1, v2}, Lcom/android/launcher3/model/ModelWriter$UpdateItemRunnable;-><init>(Lcom/android/launcher3/model/ModelWriter;Lcom/android/launcher3/model/data/ItemInfo;Ljava/util/function/Supplier;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    .line 286
    return-void
.end method
