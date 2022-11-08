.class Lcom/android/launcher3/model/BaseLoaderResults$WorkspaceBinder;
.super Ljava/lang/Object;
.source "BaseLoaderResults.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/model/BaseLoaderResults;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkspaceBinder"
.end annotation


# instance fields
.field private final mApp:Lcom/android/launcher3/LauncherAppState;

.field private final mAppWidgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

.field private final mCallbacks:Lcom/android/launcher3/model/BgDataModel$Callbacks;

.field private final mExtraItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;",
            ">;"
        }
    .end annotation
.end field

.field private final mMyBindingId:I

.field private final mOrderedScreenIds:Lcom/android/launcher3/util/IntArray;

.field private final mUiExecutor:Ljava/util/concurrent/Executor;

.field private final mWorkspaceItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/launcher3/model/BaseLoaderResults;


# direct methods
.method static bridge synthetic -$$Nest$mbind(Lcom/android/launcher3/model/BaseLoaderResults$WorkspaceBinder;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/model/BaseLoaderResults$WorkspaceBinder;->bind()V

    return-void
.end method

.method constructor <init>(Lcom/android/launcher3/model/BaseLoaderResults;Lcom/android/launcher3/model/BgDataModel$Callbacks;Ljava/util/concurrent/Executor;Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/launcher3/util/IntArray;)V
    .locals 0
    .param p2, "callbacks"    # Lcom/android/launcher3/model/BgDataModel$Callbacks;
    .param p3, "uiExecutor"    # Ljava/util/concurrent/Executor;
    .param p4, "app"    # Lcom/android/launcher3/LauncherAppState;
    .param p5, "bgDataModel"    # Lcom/android/launcher3/model/BgDataModel;
    .param p6, "myBindingId"    # I
    .param p10, "orderedScreenIds"    # Lcom/android/launcher3/util/IntArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/model/BgDataModel$Callbacks;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/android/launcher3/LauncherAppState;",
            "Lcom/android/launcher3/model/BgDataModel;",
            "I",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;",
            ">;",
            "Lcom/android/launcher3/util/IntArray;",
            ")V"
        }
    .end annotation

    .line 223
    .local p7, "workspaceItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/ItemInfo;>;"
    .local p8, "appWidgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;>;"
    .local p9, "extraItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;>;"
    iput-object p1, p0, Lcom/android/launcher3/model/BaseLoaderResults$WorkspaceBinder;->this$0:Lcom/android/launcher3/model/BaseLoaderResults;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    iput-object p2, p0, Lcom/android/launcher3/model/BaseLoaderResults$WorkspaceBinder;->mCallbacks:Lcom/android/launcher3/model/BgDataModel$Callbacks;

    .line 225
    iput-object p3, p0, Lcom/android/launcher3/model/BaseLoaderResults$WorkspaceBinder;->mUiExecutor:Ljava/util/concurrent/Executor;

    .line 226
    iput-object p4, p0, Lcom/android/launcher3/model/BaseLoaderResults$WorkspaceBinder;->mApp:Lcom/android/launcher3/LauncherAppState;

    .line 227
    iput-object p5, p0, Lcom/android/launcher3/model/BaseLoaderResults$WorkspaceBinder;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    .line 228
    iput p6, p0, Lcom/android/launcher3/model/BaseLoaderResults$WorkspaceBinder;->mMyBindingId:I

    .line 229
    iput-object p7, p0, Lcom/android/launcher3/model/BaseLoaderResults$WorkspaceBinder;->mWorkspaceItems:Ljava/util/ArrayList;

    .line 230
    iput-object p8, p0, Lcom/android/launcher3/model/BaseLoaderResults$WorkspaceBinder;->mAppWidgets:Ljava/util/ArrayList;

    .line 231
    iput-object p9, p0, Lcom/android/launcher3/model/BaseLoaderResults$WorkspaceBinder;->mExtraItems:Ljava/util/ArrayList;

    .line 232
    iput-object p10, p0, Lcom/android/launcher3/model/BaseLoaderResults$WorkspaceBinder;->mOrderedScreenIds:Lcom/android/launcher3/util/IntArray;

    .line 233
    return-void
.end method

.method private bind()V
    .locals 10

    .line 236
    iget-object v0, p0, Lcom/android/launcher3/model/BaseLoaderResults$WorkspaceBinder;->mCallbacks:Lcom/android/launcher3/model/BgDataModel$Callbacks;

    iget-object v1, p0, Lcom/android/launcher3/model/BaseLoaderResults$WorkspaceBinder;->mOrderedScreenIds:Lcom/android/launcher3/util/IntArray;

    .line 237
    invoke-interface {v0, v1}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->getPagesToBindSynchronously(Lcom/android/launcher3/util/IntArray;)Lcom/android/launcher3/util/IntSet;

    move-result-object v0

    .line 238
    .local v0, "currentScreenIds":Lcom/android/launcher3/util/IntSet;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Null screen ids provided by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/model/BaseLoaderResults$WorkspaceBinder;->mCallbacks:Lcom/android/launcher3/model/BgDataModel$Callbacks;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 241
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 242
    .local v1, "currentWorkspaceItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/ItemInfo;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 243
    .local v2, "otherWorkspaceItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/ItemInfo;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 244
    .local v3, "currentAppWidgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 246
    .local v4, "otherAppWidgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;>;"
    sget-boolean v5, Lcom/android/launcher3/testing/TestProtocol;->sDebugTracing:Z

    const-string v6, "b/200572078"

    if-eqz v5, :cond_0

    .line 247
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bind (1) currentScreenIds: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", pointer: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/android/launcher3/model/BaseLoaderResults$WorkspaceBinder;->mCallbacks:Lcom/android/launcher3/model/BgDataModel$Callbacks;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", name: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/android/launcher3/model/BaseLoaderResults$WorkspaceBinder;->mCallbacks:Lcom/android/launcher3/model/BgDataModel$Callbacks;

    .line 252
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 247
    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :cond_0
    iget-object v5, p0, Lcom/android/launcher3/model/BaseLoaderResults$WorkspaceBinder;->mWorkspaceItems:Ljava/util/ArrayList;

    invoke-static {v0, v5, v1, v2}, Lcom/android/launcher3/model/ModelUtils;->filterCurrentWorkspaceItems(Lcom/android/launcher3/util/IntSet;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 256
    sget-boolean v5, Lcom/android/launcher3/testing/TestProtocol;->sDebugTracing:Z

    if-eqz v5, :cond_1

    .line 257
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bind (2) currentScreenIds: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :cond_1
    iget-object v5, p0, Lcom/android/launcher3/model/BaseLoaderResults$WorkspaceBinder;->mAppWidgets:Ljava/util/ArrayList;

    invoke-static {v0, v5, v3, v4}, Lcom/android/launcher3/model/ModelUtils;->filterCurrentWorkspaceItems(Lcom/android/launcher3/util/IntSet;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 262
    iget-object v5, p0, Lcom/android/launcher3/model/BaseLoaderResults$WorkspaceBinder;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v5}, Lcom/android/launcher3/LauncherAppState;->getInvariantDeviceProfile()Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v5

    .line 263
    .local v5, "idp":Lcom/android/launcher3/InvariantDeviceProfile;
    iget-object v6, p0, Lcom/android/launcher3/model/BaseLoaderResults$WorkspaceBinder;->this$0:Lcom/android/launcher3/model/BaseLoaderResults;

    invoke-virtual {v6, v5, v1}, Lcom/android/launcher3/model/BaseLoaderResults;->sortWorkspaceItemsSpatially(Lcom/android/launcher3/InvariantDeviceProfile;Ljava/util/ArrayList;)V

    .line 264
    iget-object v6, p0, Lcom/android/launcher3/model/BaseLoaderResults$WorkspaceBinder;->this$0:Lcom/android/launcher3/model/BaseLoaderResults;

    invoke-virtual {v6, v5, v2}, Lcom/android/launcher3/model/BaseLoaderResults;->sortWorkspaceItemsSpatially(Lcom/android/launcher3/InvariantDeviceProfile;Ljava/util/ArrayList;)V

    .line 267
    new-instance v6, Lcom/android/launcher3/model/BaseLoaderResults$WorkspaceBinder$$ExternalSyntheticLambda2;

    invoke-direct {v6}, Lcom/android/launcher3/model/BaseLoaderResults$WorkspaceBinder$$ExternalSyntheticLambda2;-><init>()V

    iget-object v7, p0, Lcom/android/launcher3/model/BaseLoaderResults$WorkspaceBinder;->mUiExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v6, v7}, Lcom/android/launcher3/model/BaseLoaderResults$WorkspaceBinder;->executeCallbacksTask(Lcom/android/launcher3/LauncherModel$CallbackTask;Ljava/util/concurrent/Executor;)V

    .line 273
    new-instance v6, Lcom/android/launcher3/model/BaseLoaderResults$WorkspaceBinder$$ExternalSyntheticLambda3;

    invoke-direct {v6, p0}, Lcom/android/launcher3/model/BaseLoaderResults$WorkspaceBinder$$ExternalSyntheticLambda3;-><init>(Lcom/android/launcher3/model/BaseLoaderResults$WorkspaceBinder;)V

    iget-object v7, p0, Lcom/android/launcher3/model/BaseLoaderResults$WorkspaceBinder;->mUiExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v6, v7}, Lcom/android/launcher3/model/BaseLoaderResults$WorkspaceBinder;->executeCallbacksTask(Lcom/android/launcher3/LauncherModel$CallbackTask;Ljava/util/concurrent/Executor;)V

    .line 276
    iget-object v6, p0, Lcom/android/launcher3/model/BaseLoaderResults$WorkspaceBinder;->mUiExecutor:Ljava/util/concurrent/Executor;

    invoke-direct {p0, v1, v6}, Lcom/android/launcher3/model/BaseLoaderResults$WorkspaceBinder;->bindWorkspaceItems(Ljava/util/ArrayList;Ljava/util/concurrent/Executor;)V

    .line 277
    iget-object v6, p0, Lcom/android/launcher3/model/BaseLoaderResults$WorkspaceBinder;->mUiExecutor:Ljava/util/concurrent/Executor;

    invoke-direct {p0, v3, v6}, Lcom/android/launcher3/model/BaseLoaderResults$WorkspaceBinder;->bindAppWidgets(Ljava/util/List;Ljava/util/concurrent/Executor;)V

    .line 278
    iget-object v6, p0, Lcom/android/launcher3/model/BaseLoaderResults$WorkspaceBinder;->mExtraItems:Ljava/util/ArrayList;

    new-instance v7, Lcom/android/launcher3/model/BaseLoaderResults$WorkspaceBinder$$ExternalSyntheticLambda4;

    invoke-direct {v7, p0}, Lcom/android/launcher3/model/BaseLoaderResults$WorkspaceBinder$$ExternalSyntheticLambda4;-><init>(Lcom/android/launcher3/model/BaseLoaderResults$WorkspaceBinder;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 281
    new-instance v6, Lcom/android/launcher3/util/RunnableList;

    invoke-direct {v6}, Lcom/android/launcher3/util/RunnableList;-><init>()V

    .line 282
    .local v6, "pendingTasks":Lcom/android/launcher3/util/RunnableList;
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Lcom/android/launcher3/model/BaseLoaderResults$WorkspaceBinder$$ExternalSyntheticLambda5;

    invoke-direct {v7, v6}, Lcom/android/launcher3/model/BaseLoaderResults$WorkspaceBinder$$ExternalSyntheticLambda5;-><init>(Lcom/android/launcher3/util/RunnableList;)V

    .line 283
    .local v7, "pendingExecutor":Ljava/util/concurrent/Executor;
    invoke-direct {p0, v2, v7}, Lcom/android/launcher3/model/BaseLoaderResults$WorkspaceBinder;->bindWorkspaceItems(Ljava/util/ArrayList;Ljava/util/concurrent/Executor;)V

    .line 284
    invoke-direct {p0, v4, v7}, Lcom/android/launcher3/model/BaseLoaderResults$WorkspaceBinder;->bindAppWidgets(Ljava/util/List;Ljava/util/concurrent/Executor;)V

    .line 285
    new-instance v8, Lcom/android/launcher3/model/BaseLoaderResults$WorkspaceBinder$$ExternalSyntheticLambda6;

    invoke-direct {v8, v0}, Lcom/android/launcher3/model/BaseLoaderResults$WorkspaceBinder$$ExternalSyntheticLambda6;-><init>(Lcom/android/launcher3/util/IntSet;)V

    invoke-virtual {p0, v8, v7}, Lcom/android/launcher3/model/BaseLoaderResults$WorkspaceBinder;->executeCallbacksTask(Lcom/android/launcher3/LauncherModel$CallbackTask;Ljava/util/concurrent/Executor;)V

    .line 286
    new-instance v8, Lcom/android/launcher3/model/BaseLoaderResults$WorkspaceBinder$$ExternalSyntheticLambda7;

    invoke-direct {v8, p0}, Lcom/android/launcher3/model/BaseLoaderResults$WorkspaceBinder$$ExternalSyntheticLambda7;-><init>(Lcom/android/launcher3/model/BaseLoaderResults$WorkspaceBinder;)V

    invoke-interface {v7, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 293
    new-instance v8, Lcom/android/launcher3/model/BaseLoaderResults$WorkspaceBinder$$ExternalSyntheticLambda8;

    invoke-direct {v8, v0, v6}, Lcom/android/launcher3/model/BaseLoaderResults$WorkspaceBinder$$ExternalSyntheticLambda8;-><init>(Lcom/android/launcher3/util/IntSet;Lcom/android/launcher3/util/RunnableList;)V

    iget-object v9, p0, Lcom/android/launcher3/model/BaseLoaderResults$WorkspaceBinder;->mUiExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v8, v9}, Lcom/android/launcher3/model/BaseLoaderResults$WorkspaceBinder;->executeCallbacksTask(Lcom/android/launcher3/LauncherModel$CallbackTask;Ljava/util/concurrent/Executor;)V

    .line 299
    iget-object v8, p0, Lcom/android/launcher3/model/BaseLoaderResults$WorkspaceBinder;->mCallbacks:Lcom/android/launcher3/model/BgDataModel$Callbacks;

    iget-object v9, p0, Lcom/android/launcher3/model/BaseLoaderResults$WorkspaceBinder;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v9, v9, Lcom/android/launcher3/model/BgDataModel;->stringCache:Lcom/android/launcher3/model/StringCache;

    invoke-virtual {v9}, Lcom/android/launcher3/model/StringCache;->clone()Lcom/android/launcher3/model/StringCache;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->bindStringCache(Lcom/android/launcher3/model/StringCache;)V

    .line 300
    return-void
.end method

.method private bindAppWidgets(Ljava/util/List;Ljava/util/concurrent/Executor;)V
    .locals 4
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 317
    .local p1, "appWidgets":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 318
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 319
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/data/ItemInfo;

    .line 320
    .local v2, "widget":Lcom/android/launcher3/model/data/ItemInfo;
    new-instance v3, Lcom/android/launcher3/model/BaseLoaderResults$WorkspaceBinder$$ExternalSyntheticLambda9;

    invoke-direct {v3, v2}, Lcom/android/launcher3/model/BaseLoaderResults$WorkspaceBinder$$ExternalSyntheticLambda9;-><init>(Lcom/android/launcher3/model/data/ItemInfo;)V

    invoke-virtual {p0, v3, p2}, Lcom/android/launcher3/model/BaseLoaderResults$WorkspaceBinder;->executeCallbacksTask(Lcom/android/launcher3/LauncherModel$CallbackTask;Ljava/util/concurrent/Executor;)V

    .line 318
    .end local v2    # "widget":Lcom/android/launcher3/model/data/ItemInfo;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 323
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private bindWorkspaceItems(Ljava/util/ArrayList;Ljava/util/concurrent/Executor;)V
    .locals 5
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 305
    .local p1, "workspaceItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/ItemInfo;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 306
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 307
    move v2, v1

    .line 308
    .local v2, "start":I
    add-int/lit8 v3, v1, 0x6

    if-gt v3, v0, :cond_0

    const/4 v3, 0x6

    goto :goto_1

    :cond_0
    sub-int v3, v0, v1

    .line 309
    .local v3, "chunkSize":I
    :goto_1
    new-instance v4, Lcom/android/launcher3/model/BaseLoaderResults$WorkspaceBinder$$ExternalSyntheticLambda10;

    invoke-direct {v4, p1, v2, v3}, Lcom/android/launcher3/model/BaseLoaderResults$WorkspaceBinder$$ExternalSyntheticLambda10;-><init>(Ljava/util/ArrayList;II)V

    invoke-virtual {p0, v4, p2}, Lcom/android/launcher3/model/BaseLoaderResults$WorkspaceBinder;->executeCallbacksTask(Lcom/android/launcher3/LauncherModel$CallbackTask;Ljava/util/concurrent/Executor;)V

    .line 306
    .end local v2    # "start":I
    .end local v3    # "chunkSize":I
    add-int/lit8 v1, v1, 0x6

    goto :goto_0

    .line 313
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method static synthetic lambda$bind$0(Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .locals 0
    .param p0, "c"    # Lcom/android/launcher3/model/BgDataModel$Callbacks;

    .line 268
    invoke-interface {p0}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->clearPendingBinds()V

    .line 269
    invoke-interface {p0}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->startBinding()V

    .line 270
    return-void
.end method

.method static synthetic lambda$bind$2(Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .locals 0
    .param p0, "item"    # Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;
    .param p1, "c"    # Lcom/android/launcher3/model/BgDataModel$Callbacks;

    .line 279
    invoke-interface {p1, p0}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->bindExtraContainerItems(Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;)V

    return-void
.end method

.method static synthetic lambda$bind$4(Lcom/android/launcher3/util/IntSet;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .locals 0
    .param p0, "currentScreenIds"    # Lcom/android/launcher3/util/IntSet;
    .param p1, "c"    # Lcom/android/launcher3/model/BgDataModel$Callbacks;

    .line 285
    invoke-interface {p1, p0}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->finishBindingItems(Lcom/android/launcher3/util/IntSet;)V

    return-void
.end method

.method static synthetic lambda$bind$6(Lcom/android/launcher3/util/IntSet;Lcom/android/launcher3/util/RunnableList;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .locals 2
    .param p0, "currentScreenIds"    # Lcom/android/launcher3/util/IntSet;
    .param p1, "pendingTasks"    # Lcom/android/launcher3/util/RunnableList;
    .param p2, "c"    # Lcom/android/launcher3/model/BgDataModel$Callbacks;

    .line 295
    sget-object v0, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->setThreadPriority(I)V

    .line 296
    invoke-interface {p2, p0, p1}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->onInitialBindComplete(Lcom/android/launcher3/util/IntSet;Lcom/android/launcher3/util/RunnableList;)V

    .line 297
    return-void
.end method

.method static synthetic lambda$bindAppWidgets$8(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .locals 2
    .param p0, "widget"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p1, "c"    # Lcom/android/launcher3/model/BgDataModel$Callbacks;

    .line 321
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->bindItems(Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic lambda$bindWorkspaceItems$7(Ljava/util/ArrayList;IILcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .locals 2
    .param p0, "workspaceItems"    # Ljava/util/ArrayList;
    .param p1, "start"    # I
    .param p2, "chunkSize"    # I
    .param p3, "c"    # Lcom/android/launcher3/model/BgDataModel$Callbacks;

    .line 310
    add-int v0, p1, p2

    invoke-virtual {p0, p1, v0}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p3, v0, v1}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->bindItems(Ljava/util/List;Z)V

    return-void
.end method


# virtual methods
.method protected executeCallbacksTask(Lcom/android/launcher3/LauncherModel$CallbackTask;Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1, "task"    # Lcom/android/launcher3/LauncherModel$CallbackTask;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 326
    new-instance v0, Lcom/android/launcher3/model/BaseLoaderResults$WorkspaceBinder$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/model/BaseLoaderResults$WorkspaceBinder$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/model/BaseLoaderResults$WorkspaceBinder;Lcom/android/launcher3/LauncherModel$CallbackTask;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 333
    return-void
.end method

.method synthetic lambda$bind$1$com-android-launcher3-model-BaseLoaderResults$WorkspaceBinder(Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .locals 1
    .param p1, "c"    # Lcom/android/launcher3/model/BgDataModel$Callbacks;

    .line 273
    iget-object v0, p0, Lcom/android/launcher3/model/BaseLoaderResults$WorkspaceBinder;->mOrderedScreenIds:Lcom/android/launcher3/util/IntArray;

    invoke-interface {p1, v0}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->bindScreens(Lcom/android/launcher3/util/IntArray;)V

    return-void
.end method

.method synthetic lambda$bind$3$com-android-launcher3-model-BaseLoaderResults$WorkspaceBinder(Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;)V
    .locals 2
    .param p1, "item"    # Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;

    .line 279
    new-instance v0, Lcom/android/launcher3/model/BaseLoaderResults$WorkspaceBinder$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/android/launcher3/model/BaseLoaderResults$WorkspaceBinder$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;)V

    iget-object v1, p0, Lcom/android/launcher3/model/BaseLoaderResults$WorkspaceBinder;->mUiExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/model/BaseLoaderResults$WorkspaceBinder;->executeCallbacksTask(Lcom/android/launcher3/LauncherModel$CallbackTask;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method synthetic lambda$bind$5$com-android-launcher3-model-BaseLoaderResults$WorkspaceBinder()V
    .locals 2

    .line 288
    sget-object v0, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->setThreadPriority(I)V

    .line 289
    sget-object v0, Lcom/android/launcher3/model/ItemInstallQueue;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v1, p0, Lcom/android/launcher3/model/BaseLoaderResults$WorkspaceBinder;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/ItemInstallQueue;

    .line 290
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/launcher3/model/ItemInstallQueue;->resumeModelPush(I)V

    .line 291
    return-void
.end method

.method synthetic lambda$executeCallbacksTask$9$com-android-launcher3-model-BaseLoaderResults$WorkspaceBinder(Lcom/android/launcher3/LauncherModel$CallbackTask;)V
    .locals 2
    .param p1, "task"    # Lcom/android/launcher3/LauncherModel$CallbackTask;

    .line 327
    iget v0, p0, Lcom/android/launcher3/model/BaseLoaderResults$WorkspaceBinder;->mMyBindingId:I

    iget-object v1, p0, Lcom/android/launcher3/model/BaseLoaderResults$WorkspaceBinder;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget v1, v1, Lcom/android/launcher3/model/BgDataModel;->lastBindId:I

    if-eq v0, v1, :cond_0

    .line 328
    const-string v0, "BaseLoaderResults"

    const-string v1, "Too many consecutive reloads, skipping obsolete data-bind"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    return-void

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/model/BaseLoaderResults$WorkspaceBinder;->mCallbacks:Lcom/android/launcher3/model/BgDataModel$Callbacks;

    invoke-interface {p1, v0}, Lcom/android/launcher3/LauncherModel$CallbackTask;->execute(Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    .line 332
    return-void
.end method
