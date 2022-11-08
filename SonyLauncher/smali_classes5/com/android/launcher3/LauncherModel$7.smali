.class Lcom/android/launcher3/LauncherModel$7;
.super Lcom/android/launcher3/model/BaseModelUpdateTask;
.source "LauncherModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/LauncherModel;->updateAndBindWorkspaceItem(Ljava/util/function/Supplier;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/LauncherModel;

.field final synthetic val$itemProvider:Ljava/util/function/Supplier;


# direct methods
.method constructor <init>(Lcom/android/launcher3/LauncherModel;Ljava/util/function/Supplier;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/LauncherModel;

    .line 784
    iput-object p1, p0, Lcom/android/launcher3/LauncherModel$7;->this$0:Lcom/android/launcher3/LauncherModel;

    iput-object p2, p0, Lcom/android/launcher3/LauncherModel$7;->val$itemProvider:Ljava/util/function/Supplier;

    invoke-direct {p0}, Lcom/android/launcher3/model/BaseModelUpdateTask;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/AllAppsList;)V
    .locals 2
    .param p1, "app"    # Lcom/android/launcher3/LauncherAppState;
    .param p2, "dataModel"    # Lcom/android/launcher3/model/BgDataModel;
    .param p3, "apps"    # Lcom/android/launcher3/model/AllAppsList;

    .line 787
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$7;->val$itemProvider:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    .line 788
    .local v0, "info":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherModel$7;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/launcher3/model/ModelWriter;->updateItemInDatabase(Lcom/android/launcher3/model/data/ItemInfo;)V

    .line 789
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 790
    .local v1, "update":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/WorkspaceItemInfo;>;"
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 791
    invoke-virtual {p0, v1}, Lcom/android/launcher3/LauncherModel$7;->bindUpdatedWorkspaceItems(Ljava/util/List;)V

    .line 792
    return-void
.end method
