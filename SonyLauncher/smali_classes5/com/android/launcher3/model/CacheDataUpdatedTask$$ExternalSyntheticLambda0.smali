.class public final synthetic Lcom/android/launcher3/model/CacheDataUpdatedTask$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/model/CacheDataUpdatedTask;

.field public final synthetic f$1:Lcom/android/launcher3/icons/IconCache;

.field public final synthetic f$2:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/model/CacheDataUpdatedTask;Lcom/android/launcher3/icons/IconCache;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/CacheDataUpdatedTask$$ExternalSyntheticLambda0;->f$0:Lcom/android/launcher3/model/CacheDataUpdatedTask;

    iput-object p2, p0, Lcom/android/launcher3/model/CacheDataUpdatedTask$$ExternalSyntheticLambda0;->f$1:Lcom/android/launcher3/icons/IconCache;

    iput-object p3, p0, Lcom/android/launcher3/model/CacheDataUpdatedTask$$ExternalSyntheticLambda0;->f$2:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/model/CacheDataUpdatedTask$$ExternalSyntheticLambda0;->f$0:Lcom/android/launcher3/model/CacheDataUpdatedTask;

    iget-object v1, p0, Lcom/android/launcher3/model/CacheDataUpdatedTask$$ExternalSyntheticLambda0;->f$1:Lcom/android/launcher3/icons/IconCache;

    iget-object v2, p0, Lcom/android/launcher3/model/CacheDataUpdatedTask$$ExternalSyntheticLambda0;->f$2:Ljava/util/ArrayList;

    check-cast p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/launcher3/model/CacheDataUpdatedTask;->lambda$execute$0$com-android-launcher3-model-CacheDataUpdatedTask(Lcom/android/launcher3/icons/IconCache;Ljava/util/ArrayList;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    return-void
.end method
