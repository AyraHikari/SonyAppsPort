.class Lcom/android/launcher3/folder/FolderNameProvider$FolderNameWorker;
.super Lcom/android/launcher3/model/BaseModelUpdateTask;
.source "FolderNameProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/folder/FolderNameProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FolderNameWorker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/folder/FolderNameProvider;


# direct methods
.method private constructor <init>(Lcom/android/launcher3/folder/FolderNameProvider;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/android/launcher3/folder/FolderNameProvider$FolderNameWorker;->this$0:Lcom/android/launcher3/folder/FolderNameProvider;

    invoke-direct {p0}, Lcom/android/launcher3/model/BaseModelUpdateTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/folder/FolderNameProvider;Lcom/android/launcher3/folder/FolderNameProvider$FolderNameWorker-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/folder/FolderNameProvider$FolderNameWorker;-><init>(Lcom/android/launcher3/folder/FolderNameProvider;)V

    return-void
.end method


# virtual methods
.method public execute(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/AllAppsList;)V
    .locals 2
    .param p1, "app"    # Lcom/android/launcher3/LauncherAppState;
    .param p2, "dataModel"    # Lcom/android/launcher3/model/BgDataModel;
    .param p3, "apps"    # Lcom/android/launcher3/model/AllAppsList;

    .line 201
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderNameProvider$FolderNameWorker;->this$0:Lcom/android/launcher3/folder/FolderNameProvider;

    iget-object v1, p2, Lcom/android/launcher3/model/BgDataModel;->folders:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v1}, Lcom/android/launcher3/util/IntSparseArrayMap;->clone()Lcom/android/launcher3/util/IntSparseArrayMap;

    move-result-object v1

    iput-object v1, v0, Lcom/android/launcher3/folder/FolderNameProvider;->mFolderInfos:Lcom/android/launcher3/util/IntSparseArrayMap;

    .line 202
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderNameProvider$FolderNameWorker;->this$0:Lcom/android/launcher3/folder/FolderNameProvider;

    invoke-virtual {p3}, Lcom/android/launcher3/model/AllAppsList;->copyData()[Lcom/android/launcher3/model/data/AppInfo;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/android/launcher3/folder/FolderNameProvider;->mAppInfos:Ljava/util/List;

    .line 203
    return-void
.end method
