.class public Lcom/android/launcher3/model/BgDataModel;
.super Ljava/lang/Object;
.source "BgDataModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/model/BgDataModel$Callbacks;,
        Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BgDataModel"


# instance fields
.field public final allAppsOwnOrderItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final appWidgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final deepShortcutMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/android/launcher3/util/ComponentKey;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final extraItems:Lcom/android/launcher3/util/IntSparseArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/util/IntSparseArrayMap<",
            "Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;",
            ">;"
        }
    .end annotation
.end field

.field public final folders:Lcom/android/launcher3/util/IntSparseArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/util/IntSparseArrayMap<",
            "Lcom/android/launcher3/model/data/FolderInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final itemsIdMap:Lcom/android/launcher3/util/IntSparseArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/util/IntSparseArrayMap<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field public lastBindId:I

.field public final stringCache:Lcom/android/launcher3/model/StringCache;

.field public final widgetsModel:Lcom/android/launcher3/model/WidgetsModel;

.field public final workspaceItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-direct {v0}, Lcom/android/launcher3/util/IntSparseArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/model/BgDataModel;->itemsIdMap:Lcom/android/launcher3/util/IntSparseArrayMap;

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/model/BgDataModel;->appWidgets:Ljava/util/ArrayList;

    .line 104
    new-instance v0, Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-direct {v0}, Lcom/android/launcher3/util/IntSparseArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/model/BgDataModel;->folders:Lcom/android/launcher3/util/IntSparseArrayMap;

    .line 109
    new-instance v0, Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-direct {v0}, Lcom/android/launcher3/util/IntSparseArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/model/BgDataModel;->extraItems:Lcom/android/launcher3/util/IntSparseArrayMap;

    .line 114
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/model/BgDataModel;->deepShortcutMap:Ljava/util/HashMap;

    .line 119
    new-instance v0, Lcom/android/launcher3/model/WidgetsModel;

    invoke-direct {v0}, Lcom/android/launcher3/model/WidgetsModel;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/model/BgDataModel;->widgetsModel:Lcom/android/launcher3/model/WidgetsModel;

    .line 124
    new-instance v0, Lcom/android/launcher3/model/StringCache;

    invoke-direct {v0}, Lcom/android/launcher3/model/StringCache;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/model/BgDataModel;->stringCache:Lcom/android/launcher3/model/StringCache;

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/model/BgDataModel;->allAppsOwnOrderItems:Ljava/util/ArrayList;

    .line 134
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/model/BgDataModel;->lastBindId:I

    return-void
.end method

.method static synthetic lambda$updateShortcutPinnedState$1(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Z
    .locals 2
    .param p0, "wi"    # Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    .line 336
    iget v0, p0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->itemType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$updateShortcutPinnedState$2(Landroid/content/Context;Landroid/os/UserHandle;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 368
    :try_start_0
    const-class v0, Landroid/content/pm/LauncherApps;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherApps;

    .line 369
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 368
    invoke-virtual {v0, p2, v1, p1}, Landroid/content/pm/LauncherApps;->pinShortcuts(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 372
    goto :goto_0

    .line 370
    :catch_0
    move-exception v0

    .line 371
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "BgDataModel"

    const-string v2, "Failed to unpin shortcut"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 373
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_0
    return-void
.end method


# virtual methods
.method public declared-synchronized addItem(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "item"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p3, "newItem"    # Z

    monitor-enter p0

    .line 244
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/launcher3/model/BgDataModel;->addItem(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;ZLcom/android/launcher3/model/LoaderMemoryLogger;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    monitor-exit p0

    return-void

    .line 243
    .end local p0    # "this":Lcom/android/launcher3/model/BgDataModel;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "item":Lcom/android/launcher3/model/data/ItemInfo;
    .end local p3    # "newItem":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addItem(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;ZLcom/android/launcher3/model/LoaderMemoryLogger;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "item"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p3, "newItem"    # Z
    .param p4, "logger"    # Lcom/android/launcher3/model/LoaderMemoryLogger;

    monitor-enter p0

    .line 249
    const/4 v0, 0x0

    if-eqz p4, :cond_0

    .line 250
    const/4 v1, 0x3

    :try_start_0
    const-string v2, "BgDataModel"

    const-string v3, "Adding item to ID map: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 253
    invoke-virtual {p2}, Lcom/android/launcher3/model/data/ItemInfo;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 250
    invoke-virtual {p4, v1, v2, v3, v4}, Lcom/android/launcher3/model/LoaderMemoryLogger;->addLog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 256
    .end local p0    # "this":Lcom/android/launcher3/model/BgDataModel;
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/model/BgDataModel;->itemsIdMap:Lcom/android/launcher3/util/IntSparseArrayMap;

    iget v2, p2, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-virtual {v1, v2, p2}, Lcom/android/launcher3/util/IntSparseArrayMap;->put(ILjava/lang/Object;)V

    .line 257
    iget v1, p2, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/16 v2, -0x66

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_1

    .line 291
    :pswitch_1
    iget-object v0, p0, Lcom/android/launcher3/model/BgDataModel;->appWidgets:Ljava/util/ArrayList;

    move-object v1, p2

    check-cast v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 259
    :pswitch_2
    iget-object v0, p0, Lcom/android/launcher3/model/BgDataModel;->folders:Lcom/android/launcher3/util/IntSparseArrayMap;

    iget v1, p2, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    move-object v3, p2

    check-cast v3, Lcom/android/launcher3/model/data/FolderInfo;

    invoke-virtual {v0, v1, v3}, Lcom/android/launcher3/util/IntSparseArrayMap;->put(ILjava/lang/Object;)V

    .line 260
    iget v0, p2, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    if-eq v0, v2, :cond_1

    .line 261
    iget-object v0, p0, Lcom/android/launcher3/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 263
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/model/BgDataModel;->allAppsOwnOrderItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    goto :goto_1

    .line 269
    :pswitch_3
    iget v1, p2, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v3, -0x64

    if-eq v1, v3, :cond_5

    iget v1, p2, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v3, -0x65

    if-ne v1, v3, :cond_2

    goto :goto_0

    .line 272
    :cond_2
    iget v1, p2, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    if-ne v1, v2, :cond_3

    instance-of v1, p2, Lcom/android/launcher3/model/data/AppInfo;

    if-eqz v1, :cond_3

    .line 274
    iget-object v0, p0, Lcom/android/launcher3/model/BgDataModel;->allAppsOwnOrderItems:Ljava/util/ArrayList;

    move-object v1, p2

    check-cast v1, Lcom/android/launcher3/model/data/AppInfo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 276
    :cond_3
    if-eqz p3, :cond_4

    .line 277
    iget-object v0, p0, Lcom/android/launcher3/model/BgDataModel;->folders:Lcom/android/launcher3/util/IntSparseArrayMap;

    iget v1, p2, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/IntSparseArrayMap;->containsKey(I)Z

    move-result v0

    if-nez v0, :cond_6

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "adding item: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to a folder that  doesn\'t exist"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 281
    .local v0, "msg":Ljava/lang/String;
    const-string v1, "BgDataModel"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    nop

    .end local v0    # "msg":Ljava/lang/String;
    goto :goto_1

    .line 284
    :cond_4
    iget v1, p2, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    invoke-virtual {p0, v1}, Lcom/android/launcher3/model/BgDataModel;->findOrMakeFolder(I)Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v1

    move-object v2, p2

    check-cast v2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {v1, v2, v0}, Lcom/android/launcher3/model/data/FolderInfo;->add(Lcom/android/launcher3/model/data/ItemInfo;Z)V

    .line 288
    goto :goto_1

    .line 271
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 294
    :cond_6
    :goto_1
    if-eqz p3, :cond_7

    iget v0, p2, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_7

    .line 295
    iget-object v0, p2, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/model/BgDataModel;->updateShortcutPinnedState(Landroid/content/Context;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 297
    :cond_7
    monitor-exit p0

    return-void

    .line 248
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "item":Lcom/android/launcher3/model/data/ItemInfo;
    .end local p3    # "newItem":Z
    .end local p4    # "logger":Lcom/android/launcher3/model/LoaderMemoryLogger;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public declared-synchronized clear()V
    .locals 1

    monitor-enter p0

    .line 140
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 141
    iget-object v0, p0, Lcom/android/launcher3/model/BgDataModel;->appWidgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 142
    iget-object v0, p0, Lcom/android/launcher3/model/BgDataModel;->folders:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v0}, Lcom/android/launcher3/util/IntSparseArrayMap;->clear()V

    .line 143
    iget-object v0, p0, Lcom/android/launcher3/model/BgDataModel;->itemsIdMap:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v0}, Lcom/android/launcher3/util/IntSparseArrayMap;->clear()V

    .line 144
    iget-object v0, p0, Lcom/android/launcher3/model/BgDataModel;->deepShortcutMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 145
    iget-object v0, p0, Lcom/android/launcher3/model/BgDataModel;->extraItems:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v0}, Lcom/android/launcher3/util/IntSparseArrayMap;->clear()V

    .line 146
    iget-object v0, p0, Lcom/android/launcher3/model/BgDataModel;->allAppsOwnOrderItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    monitor-exit p0

    return-void

    .line 139
    .end local p0    # "this":Lcom/android/launcher3/model/BgDataModel;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized collectWorkspaceScreens()Lcom/android/launcher3/util/IntArray;
    .locals 5

    monitor-enter p0

    .line 153
    :try_start_0
    new-instance v0, Lcom/android/launcher3/util/IntSet;

    invoke-direct {v0}, Lcom/android/launcher3/util/IntSet;-><init>()V

    .line 154
    .local v0, "screenSet":Lcom/android/launcher3/util/IntSet;
    iget-object v1, p0, Lcom/android/launcher3/model/BgDataModel;->itemsIdMap:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v1}, Lcom/android/launcher3/util/IntSparseArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/data/ItemInfo;

    .line 155
    .local v2, "item":Lcom/android/launcher3/model/data/ItemInfo;
    iget v3, v2, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v4, -0x64

    if-ne v3, v4, :cond_0

    .line 156
    iget v3, v2, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-virtual {v0, v3}, Lcom/android/launcher3/util/IntSet;->add(I)V

    .line 158
    .end local v2    # "item":Lcom/android/launcher3/model/data/ItemInfo;
    .end local p0    # "this":Lcom/android/launcher3/model/BgDataModel;
    :cond_0
    goto :goto_0

    .line 159
    :cond_1
    invoke-virtual {v0}, Lcom/android/launcher3/util/IntSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 160
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/IntSet;->add(I)V

    .line 162
    :cond_2
    invoke-virtual {v0}, Lcom/android/launcher3/util/IntSet;->getArray()Lcom/android/launcher3/util/IntArray;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 152
    .end local v0    # "screenSet":Lcom/android/launcher3/util/IntSet;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    monitor-enter p0

    .line 167
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Data Model:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ---- workspace items "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 169
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0x9

    if-ge v0, v1, :cond_0

    .line 170
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/model/data/ItemInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 169
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 172
    .end local v0    # "i":I
    .end local p0    # "this":Lcom/android/launcher3/model/BgDataModel;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ---- appwidget items "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 173
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/launcher3/model/BgDataModel;->appWidgets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 174
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/launcher3/model/BgDataModel;->appWidgets:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    invoke-virtual {v3}, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 173
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 176
    .end local v0    # "i":I
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ---- folder items "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 177
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    iget-object v1, p0, Lcom/android/launcher3/model/BgDataModel;->folders:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v1}, Lcom/android/launcher3/util/IntSparseArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 178
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/launcher3/model/BgDataModel;->folders:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v3, v0}, Lcom/android/launcher3/util/IntSparseArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/data/FolderInfo;

    invoke-virtual {v3}, Lcom/android/launcher3/model/data/FolderInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 177
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 180
    .end local v0    # "i":I
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ---- items id map "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 181
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    iget-object v1, p0, Lcom/android/launcher3/model/BgDataModel;->itemsIdMap:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v1}, Lcom/android/launcher3/util/IntSparseArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 182
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/launcher3/model/BgDataModel;->itemsIdMap:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v3, v0}, Lcom/android/launcher3/util/IntSparseArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {v3}, Lcom/android/launcher3/model/data/ItemInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 181
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 185
    .end local v0    # "i":I
    :cond_3
    array-length v0, p4

    if-lez v0, :cond_5

    const/4 v0, 0x0

    aget-object v0, p4, v0

    const-string v1, "--all"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "shortcut counts "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/android/launcher3/model/BgDataModel;->deepShortcutMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 188
    .local v1, "count":Ljava/lang/Integer;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 189
    .end local v1    # "count":Ljava/lang/Integer;
    goto :goto_4

    .line 190
    :cond_4
    invoke-virtual {p3}, Ljava/io/PrintWriter;->println()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    :cond_5
    monitor-exit p0

    return-void

    .line 166
    .end local p1    # "prefix":Ljava/lang/String;
    .end local p2    # "fd":Ljava/io/FileDescriptor;
    .end local p3    # "writer":Ljava/io/PrintWriter;
    .end local p4    # "args":[Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized findOrMakeFolder(I)Lcom/android/launcher3/model/data/FolderInfo;
    .locals 2
    .param p1, "id"    # I

    monitor-enter p0

    .line 382
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/model/BgDataModel;->folders:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/IntSparseArrayMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/FolderInfo;

    .line 383
    .local v0, "folderInfo":Lcom/android/launcher3/model/data/FolderInfo;
    if-nez v0, :cond_0

    .line 385
    new-instance v1, Lcom/android/launcher3/model/data/FolderInfo;

    invoke-direct {v1}, Lcom/android/launcher3/model/data/FolderInfo;-><init>()V

    move-object v0, v1

    .line 386
    iget-object v1, p0, Lcom/android/launcher3/model/BgDataModel;->folders:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v1, p1, v0}, Lcom/android/launcher3/util/IntSparseArrayMap;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 388
    .end local p0    # "this":Lcom/android/launcher3/model/BgDataModel;
    :cond_0
    monitor-exit p0

    return-object v0

    .line 381
    .end local v0    # "folderInfo":Lcom/android/launcher3/model/data/FolderInfo;
    .end local p1    # "id":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public forAllWorkspaceItemInfos(Landroid/os/UserHandle;Ljava/util/function/Consumer;)V
    .locals 4
    .param p1, "userHandle"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/UserHandle;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            ">;)V"
        }
    .end annotation

    .line 438
    .local p2, "op":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;"
    iget-object v0, p0, Lcom/android/launcher3/model/BgDataModel;->itemsIdMap:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v0}, Lcom/android/launcher3/util/IntSparseArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/ItemInfo;

    .line 439
    .local v1, "info":Lcom/android/launcher3/model/data/ItemInfo;
    instance-of v2, v1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p1, v2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 440
    move-object v2, v1

    check-cast v2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-interface {p2, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 442
    .end local v1    # "info":Lcom/android/launcher3/model/data/ItemInfo;
    :cond_0
    goto :goto_0

    .line 444
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/model/BgDataModel;->extraItems:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v0}, Lcom/android/launcher3/util/IntSparseArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_4

    .line 445
    iget-object v1, p0, Lcom/android/launcher3/model/BgDataModel;->extraItems:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/util/IntSparseArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;

    iget-object v1, v1, Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/data/ItemInfo;

    .line 446
    .local v2, "info":Lcom/android/launcher3/model/data/ItemInfo;
    instance-of v3, v2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v3, :cond_2

    iget-object v3, v2, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p1, v3}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 447
    move-object v3, v2

    check-cast v3, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-interface {p2, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 449
    .end local v2    # "info":Lcom/android/launcher3/model/data/ItemInfo;
    :cond_2
    goto :goto_2

    .line 444
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 451
    .end local v0    # "i":I
    :cond_4
    return-void
.end method

.method public declared-synchronized getAllWorkspaceItems()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 426
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/launcher3/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/model/BgDataModel;->appWidgets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 427
    .local v0, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/ItemInfo;>;"
    iget-object v1, p0, Lcom/android/launcher3/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 428
    iget-object v1, p0, Lcom/android/launcher3/model/BgDataModel;->appWidgets:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 429
    monitor-exit p0

    return-object v0

    .line 425
    .end local v0    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/ItemInfo;>;"
    .end local p0    # "this":Lcom/android/launcher3/model/BgDataModel;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method synthetic lambda$removeItem$0$com-android-launcher3-model-BgDataModel(Landroid/content/Context;Landroid/os/UserHandle;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 240
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/model/BgDataModel;->updateShortcutPinnedState(Landroid/content/Context;Landroid/os/UserHandle;)V

    return-void
.end method

.method public declared-synchronized removeItem(Landroid/content/Context;Ljava/lang/Iterable;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .local p2, "items":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/android/launcher3/model/data/ItemInfo;>;"
    monitor-enter p0

    .line 199
    :try_start_0
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 200
    .local v0, "updatedDeepShortcuts":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/os/UserHandle;>;"
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/data/ItemInfo;

    .line 201
    .local v2, "item":Lcom/android/launcher3/model/data/ItemInfo;
    iget v3, v2, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/16 v4, -0x66

    packed-switch v3, :pswitch_data_0

    .end local p0    # "this":Lcom/android/launcher3/model/BgDataModel;
    :pswitch_0
    goto :goto_2

    .line 222
    .restart local p0    # "this":Lcom/android/launcher3/model/BgDataModel;
    :pswitch_1
    iget-object v3, v2, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 235
    .end local p0    # "this":Lcom/android/launcher3/model/BgDataModel;
    :pswitch_2
    iget-object v3, p0, Lcom/android/launcher3/model/BgDataModel;->appWidgets:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 203
    :pswitch_3
    iget-object v3, p0, Lcom/android/launcher3/model/BgDataModel;->folders:Lcom/android/launcher3/util/IntSparseArrayMap;

    iget v5, v2, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-virtual {v3, v5}, Lcom/android/launcher3/util/IntSparseArrayMap;->remove(I)V

    .line 215
    iget v3, v2, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    if-ne v3, v4, :cond_0

    .line 216
    iget-object v3, p0, Lcom/android/launcher3/model/BgDataModel;->allAppsOwnOrderItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 218
    :cond_0
    iget-object v3, p0, Lcom/android/launcher3/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 220
    goto :goto_2

    .line 227
    :goto_1
    :pswitch_4
    iget v3, v2, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    if-ne v3, v4, :cond_1

    .line 228
    iget-object v3, p0, Lcom/android/launcher3/model/BgDataModel;->allAppsOwnOrderItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 230
    :cond_1
    iget-object v3, p0, Lcom/android/launcher3/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 232
    nop

    .line 238
    :goto_2
    iget-object v3, p0, Lcom/android/launcher3/model/BgDataModel;->itemsIdMap:Lcom/android/launcher3/util/IntSparseArrayMap;

    iget v4, v2, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-virtual {v3, v4}, Lcom/android/launcher3/util/IntSparseArrayMap;->remove(I)V

    .line 239
    .end local v2    # "item":Lcom/android/launcher3/model/data/ItemInfo;
    goto :goto_0

    .line 240
    :cond_2
    new-instance v1, Lcom/android/launcher3/model/BgDataModel$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/model/BgDataModel$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/model/BgDataModel;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->forEach(Ljava/util/function/Consumer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    monitor-exit p0

    return-void

    .line 198
    .end local v0    # "updatedDeepShortcuts":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/os/UserHandle;>;"
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "items":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/android/launcher3/model/data/ItemInfo;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public varargs declared-synchronized removeItem(Landroid/content/Context;[Lcom/android/launcher3/model/data/ItemInfo;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "items"    # [Lcom/android/launcher3/model/data/ItemInfo;

    monitor-enter p0

    .line 195
    :try_start_0
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/model/BgDataModel;->removeItem(Landroid/content/Context;Ljava/lang/Iterable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    monitor-exit p0

    return-void

    .line 194
    .end local p0    # "this":Lcom/android/launcher3/model/BgDataModel;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "items":[Lcom/android/launcher3/model/data/ItemInfo;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized updateDeepShortcutCounts(Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/List;)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/UserHandle;",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    .local p3, "shortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    monitor-enter p0

    .line 396
    if-eqz p1, :cond_1

    .line 397
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/model/BgDataModel;->deepShortcutMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 398
    .local v0, "keysIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/launcher3/util/ComponentKey;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 399
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/util/ComponentKey;

    .line 400
    .local v1, "next":Lcom/android/launcher3/util/ComponentKey;
    iget-object v2, v1, Lcom/android/launcher3/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/launcher3/util/ComponentKey;->user:Landroid/os/UserHandle;

    .line 401
    invoke-virtual {v2, p2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 402
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 404
    .end local v1    # "next":Lcom/android/launcher3/util/ComponentKey;
    .end local p0    # "this":Lcom/android/launcher3/model/BgDataModel;
    :cond_0
    goto :goto_0

    .line 408
    .end local v0    # "keysIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/launcher3/util/ComponentKey;>;"
    :cond_1
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ShortcutInfo;

    .line 409
    .local v1, "shortcut":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    .line 410
    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->isDeclaredInManifest()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 411
    :cond_2
    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_3

    move v2, v3

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    .line 412
    .local v2, "shouldShowInContainer":Z
    :goto_2
    if-eqz v2, :cond_5

    .line 413
    new-instance v4, Lcom/android/launcher3/util/ComponentKey;

    .line 414
    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    .line 416
    .local v4, "targetComponent":Lcom/android/launcher3/util/ComponentKey;
    iget-object v5, p0, Lcom/android/launcher3/model/BgDataModel;->deepShortcutMap:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 417
    .local v5, "previousCount":Ljava/lang/Integer;
    iget-object v6, p0, Lcom/android/launcher3/model/BgDataModel;->deepShortcutMap:Ljava/util/HashMap;

    if-nez v5, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/2addr v3, v7

    :goto_3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v6, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 419
    .end local v1    # "shortcut":Landroid/content/pm/ShortcutInfo;
    .end local v2    # "shouldShowInContainer":Z
    .end local v4    # "targetComponent":Lcom/android/launcher3/util/ComponentKey;
    .end local v5    # "previousCount":Ljava/lang/Integer;
    :cond_5
    goto :goto_1

    .line 420
    :cond_6
    monitor-exit p0

    return-void

    .line 395
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "user":Landroid/os/UserHandle;
    .end local p3    # "shortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public updateShortcutPinnedState(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 304
    sget-object v0, Lcom/android/launcher3/pm/UserCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/pm/UserCache;

    invoke-virtual {v0}, Lcom/android/launcher3/pm/UserCache;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    .line 305
    .local v1, "user":Landroid/os/UserHandle;
    invoke-virtual {p0, p1, v1}, Lcom/android/launcher3/model/BgDataModel;->updateShortcutPinnedState(Landroid/content/Context;Landroid/os/UserHandle;)V

    .line 306
    .end local v1    # "user":Landroid/os/UserHandle;
    goto :goto_0

    .line 307
    :cond_0
    return-void
.end method

.method public declared-synchronized updateShortcutPinnedState(Landroid/content/Context;Landroid/os/UserHandle;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "user"    # Landroid/os/UserHandle;

    monitor-enter p0

    .line 319
    :try_start_0
    new-instance v0, Lcom/android/launcher3/shortcuts/ShortcutRequest;

    invoke-direct {v0, p1, p2}, Lcom/android/launcher3/shortcuts/ShortcutRequest;-><init>(Landroid/content/Context;Landroid/os/UserHandle;)V

    const/4 v1, 0x6

    .line 320
    invoke-virtual {v0, v1}, Lcom/android/launcher3/shortcuts/ShortcutRequest;->query(I)Lcom/android/launcher3/shortcuts/ShortcutRequest$QueryResult;

    move-result-object v0

    .line 321
    .local v0, "result":Lcom/android/launcher3/shortcuts/ShortcutRequest$QueryResult;
    invoke-virtual {v0}, Lcom/android/launcher3/shortcuts/ShortcutRequest$QueryResult;->wasSuccess()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 322
    monitor-exit p0

    return-void

    .line 325
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/android/launcher3/shortcuts/ShortcutRequest$QueryResult;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/model/BgDataModel$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/android/launcher3/model/BgDataModel$$ExternalSyntheticLambda1;-><init>()V

    new-instance v3, Lcom/android/launcher3/model/BgDataModel$$ExternalSyntheticLambda2;

    invoke-direct {v3}, Lcom/android/launcher3/model/BgDataModel$$ExternalSyntheticLambda2;-><init>()V

    .line 327
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/stream/Collectors;->mapping(Ljava/util/function/Function;Ljava/util/stream/Collector;)Ljava/util/stream/Collector;

    move-result-object v3

    .line 326
    invoke-static {v2, v3}, Ljava/util/stream/Collectors;->groupingBy(Ljava/util/function/Function;Ljava/util/stream/Collector;)Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 330
    .local v1, "systemMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-static {}, Ljava/util/stream/Stream;->builder()Ljava/util/stream/Stream$Builder;

    move-result-object v2

    .line 331
    .local v2, "itemStream":Ljava/util/stream/Stream$Builder;, "Ljava/util/stream/Stream$Builder<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;"
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/launcher3/model/BgDataModel$$ExternalSyntheticLambda3;

    invoke-direct {v3, v2}, Lcom/android/launcher3/model/BgDataModel$$ExternalSyntheticLambda3;-><init>(Ljava/util/stream/Stream$Builder;)V

    invoke-virtual {p0, p2, v3}, Lcom/android/launcher3/model/BgDataModel;->forAllWorkspaceItemInfos(Landroid/os/UserHandle;Ljava/util/function/Consumer;)V

    .line 333
    nop

    .line 335
    invoke-interface {v2}, Ljava/util/stream/Stream$Builder;->build()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/android/launcher3/model/BgDataModel$$ExternalSyntheticLambda4;

    invoke-direct {v4}, Lcom/android/launcher3/model/BgDataModel$$ExternalSyntheticLambda4;-><init>()V

    .line 336
    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/android/launcher3/model/BgDataModel$$ExternalSyntheticLambda5;

    invoke-direct {v4}, Lcom/android/launcher3/model/BgDataModel$$ExternalSyntheticLambda5;-><init>()V

    .line 337
    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v3

    sget-object v4, Lcom/android/launcher3/model/ItemInstallQueue;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    .line 339
    invoke-virtual {v4, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/model/ItemInstallQueue;

    invoke-virtual {v4, p2}, Lcom/android/launcher3/model/ItemInstallQueue;->getPendingShortcuts(Landroid/os/UserHandle;)Ljava/util/stream/Stream;

    move-result-object v4

    .line 333
    invoke-static {v3, v4}, Ljava/util/stream/Stream;->concat(Ljava/util/stream/Stream;Ljava/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/android/launcher3/model/BgDataModel$$ExternalSyntheticLambda6;

    invoke-direct {v4}, Lcom/android/launcher3/model/BgDataModel$$ExternalSyntheticLambda6;-><init>()V

    new-instance v5, Lcom/android/launcher3/model/BgDataModel$$ExternalSyntheticLambda7;

    invoke-direct {v5}, Lcom/android/launcher3/model/BgDataModel$$ExternalSyntheticLambda7;-><init>()V

    .line 341
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v6

    invoke-static {v5, v6}, Ljava/util/stream/Collectors;->mapping(Ljava/util/function/Function;Ljava/util/stream/Collector;)Ljava/util/stream/Collector;

    move-result-object v5

    .line 340
    invoke-static {v4, v5}, Ljava/util/stream/Collectors;->groupingBy(Ljava/util/function/Function;Ljava/util/stream/Collector;)Ljava/util/stream/Collector;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 344
    .local v3, "modelMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 345
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    .line 346
    .local v6, "modelShortcuts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Set;

    .line 347
    .local v7, "systemShortcuts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v7, :cond_1

    .line 348
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v8

    move-object v7, v8

    .line 352
    .end local p0    # "this":Lcom/android/launcher3/model/BgDataModel;
    :cond_1
    invoke-interface {v7}, Ljava/util/Set;->size()I

    move-result v8

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v9

    if-ne v8, v9, :cond_2

    .line 353
    invoke-interface {v7, v6}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v8, :cond_3

    .line 356
    :cond_2
    :try_start_2
    const-class v8, Landroid/content/pm/LauncherApps;

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/LauncherApps;

    .line 357
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 356
    invoke-virtual {v8, v9, v10, p2}, Landroid/content/pm/LauncherApps;->pinShortcuts(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 360
    goto :goto_1

    .line 358
    :catch_0
    move-exception v8

    .line 359
    .local v8, "e":Ljava/lang/RuntimeException;
    :try_start_3
    const-string v9, "BgDataModel"

    const-string v10, "Failed to pin shortcut"

    invoke-static {v9, v10, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 362
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v6    # "modelShortcuts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v7    # "systemShortcuts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v8    # "e":Ljava/lang/RuntimeException;
    :cond_3
    :goto_1
    goto :goto_0

    .line 365
    :cond_4
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    new-instance v5, Lcom/android/launcher3/model/BgDataModel$$ExternalSyntheticLambda8;

    invoke-direct {v5, p1, p2}, Lcom/android/launcher3/model/BgDataModel$$ExternalSyntheticLambda8;-><init>(Landroid/content/Context;Landroid/os/UserHandle;)V

    invoke-interface {v4, v5}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 374
    monitor-exit p0

    return-void

    .line 318
    .end local v0    # "result":Lcom/android/launcher3/shortcuts/ShortcutRequest$QueryResult;
    .end local v1    # "systemMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v2    # "itemStream":Ljava/util/stream/Stream$Builder;, "Ljava/util/stream/Stream$Builder<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;"
    .end local v3    # "modelMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "user":Landroid/os/UserHandle;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
