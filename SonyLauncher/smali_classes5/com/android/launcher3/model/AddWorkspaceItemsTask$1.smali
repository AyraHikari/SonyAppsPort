.class Lcom/android/launcher3/model/AddWorkspaceItemsTask$1;
.super Ljava/lang/Object;
.source "AddWorkspaceItemsTask.java"

# interfaces
.implements Lcom/android/launcher3/LauncherModel$CallbackTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/model/AddWorkspaceItemsTask;->execute(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/AllAppsList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/model/AddWorkspaceItemsTask;

.field final synthetic val$addedItemsFinal:Ljava/util/ArrayList;

.field final synthetic val$addedWorkspaceScreensFinal:Lcom/android/launcher3/util/IntArray;


# direct methods
.method constructor <init>(Lcom/android/launcher3/model/AddWorkspaceItemsTask;Ljava/util/ArrayList;Lcom/android/launcher3/util/IntArray;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/model/AddWorkspaceItemsTask;

    .line 237
    iput-object p1, p0, Lcom/android/launcher3/model/AddWorkspaceItemsTask$1;->this$0:Lcom/android/launcher3/model/AddWorkspaceItemsTask;

    iput-object p2, p0, Lcom/android/launcher3/model/AddWorkspaceItemsTask$1;->val$addedItemsFinal:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/android/launcher3/model/AddWorkspaceItemsTask$1;->val$addedWorkspaceScreensFinal:Lcom/android/launcher3/util/IntArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .locals 7
    .param p1, "callbacks"    # Lcom/android/launcher3/model/BgDataModel$Callbacks;

    .line 240
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 241
    .local v0, "addAnimated":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/ItemInfo;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 242
    .local v1, "addNotAnimated":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/ItemInfo;>;"
    iget-object v2, p0, Lcom/android/launcher3/model/AddWorkspaceItemsTask$1;->val$addedItemsFinal:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 243
    iget-object v2, p0, Lcom/android/launcher3/model/AddWorkspaceItemsTask$1;->val$addedItemsFinal:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/data/ItemInfo;

    .line 244
    .local v2, "info":Lcom/android/launcher3/model/data/ItemInfo;
    iget v3, v2, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    .line 245
    .local v3, "lastScreenId":I
    iget-object v4, p0, Lcom/android/launcher3/model/AddWorkspaceItemsTask$1;->val$addedItemsFinal:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/model/data/ItemInfo;

    .line 246
    .local v5, "i":Lcom/android/launcher3/model/data/ItemInfo;
    iget v6, v5, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    if-ne v6, v3, :cond_0

    .line 247
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 249
    :cond_0
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    .end local v5    # "i":Lcom/android/launcher3/model/data/ItemInfo;
    :goto_1
    goto :goto_0

    .line 253
    .end local v2    # "info":Lcom/android/launcher3/model/data/ItemInfo;
    .end local v3    # "lastScreenId":I
    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/model/AddWorkspaceItemsTask$1;->val$addedWorkspaceScreensFinal:Lcom/android/launcher3/util/IntArray;

    invoke-interface {p1, v2, v1, v0}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->bindAppsAdded(Lcom/android/launcher3/util/IntArray;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 255
    return-void
.end method
