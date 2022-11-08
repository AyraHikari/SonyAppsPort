.class Lcom/android/quickstep/TaskThumbnailCache$1;
.super Lcom/android/quickstep/util/CancellableTask;
.source "TaskThumbnailCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/TaskThumbnailCache;->updateThumbnailInBackground(Lcom/android/systemui/shared/recents/model/Task$TaskKey;ZLjava/util/function/Consumer;)Lcom/android/quickstep/util/CancellableTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/quickstep/util/CancellableTask<",
        "Lcom/android/systemui/shared/recents/model/ThumbnailData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quickstep/TaskThumbnailCache;

.field final synthetic val$callback:Ljava/util/function/Consumer;

.field final synthetic val$key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

.field final synthetic val$lowResolution:Z


# direct methods
.method constructor <init>(Lcom/android/quickstep/TaskThumbnailCache;Lcom/android/systemui/shared/recents/model/Task$TaskKey;ZLjava/util/function/Consumer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/quickstep/TaskThumbnailCache;

    .line 163
    iput-object p1, p0, Lcom/android/quickstep/TaskThumbnailCache$1;->this$0:Lcom/android/quickstep/TaskThumbnailCache;

    iput-object p2, p0, Lcom/android/quickstep/TaskThumbnailCache$1;->val$key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iput-boolean p3, p0, Lcom/android/quickstep/TaskThumbnailCache$1;->val$lowResolution:Z

    iput-object p4, p0, Lcom/android/quickstep/TaskThumbnailCache$1;->val$callback:Ljava/util/function/Consumer;

    invoke-direct {p0}, Lcom/android/quickstep/util/CancellableTask;-><init>()V

    return-void
.end method


# virtual methods
.method public getResultOnBg()Lcom/android/systemui/shared/recents/model/ThumbnailData;
    .locals 3

    .line 166
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/TaskThumbnailCache$1;->val$key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v1, v1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    iget-boolean v2, p0, Lcom/android/quickstep/TaskThumbnailCache$1;->val$lowResolution:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getTaskThumbnail(IZ)Lcom/android/systemui/shared/recents/model/ThumbnailData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getResultOnBg()Ljava/lang/Object;
    .locals 1

    .line 163
    invoke-virtual {p0}, Lcom/android/quickstep/TaskThumbnailCache$1;->getResultOnBg()Lcom/android/systemui/shared/recents/model/ThumbnailData;

    move-result-object v0

    return-object v0
.end method

.method public handleResult(Lcom/android/systemui/shared/recents/model/ThumbnailData;)V
    .locals 2
    .param p1, "result"    # Lcom/android/systemui/shared/recents/model/ThumbnailData;

    .line 172
    iget-object v0, p0, Lcom/android/quickstep/TaskThumbnailCache$1;->this$0:Lcom/android/quickstep/TaskThumbnailCache;

    invoke-static {v0}, Lcom/android/quickstep/TaskThumbnailCache;->-$$Nest$fgetmCache(Lcom/android/quickstep/TaskThumbnailCache;)Lcom/android/quickstep/util/TaskKeyLruCache;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/TaskThumbnailCache$1;->val$key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v0, v1, p1}, Lcom/android/quickstep/util/TaskKeyLruCache;->put(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Ljava/lang/Object;)V

    .line 173
    iget-object v0, p0, Lcom/android/quickstep/TaskThumbnailCache$1;->val$callback:Ljava/util/function/Consumer;

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 174
    return-void
.end method

.method public bridge synthetic handleResult(Ljava/lang/Object;)V
    .locals 0

    .line 163
    check-cast p1, Lcom/android/systemui/shared/recents/model/ThumbnailData;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/TaskThumbnailCache$1;->handleResult(Lcom/android/systemui/shared/recents/model/ThumbnailData;)V

    return-void
.end method
