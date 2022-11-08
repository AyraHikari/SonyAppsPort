.class Lcom/android/quickstep/TaskIconCache$1;
.super Lcom/android/quickstep/util/CancellableTask;
.source "TaskIconCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/TaskIconCache;->updateIconInBackground(Lcom/android/systemui/shared/recents/model/Task;Ljava/util/function/Consumer;)Lcom/android/quickstep/util/CancellableTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/quickstep/util/CancellableTask<",
        "Lcom/android/quickstep/TaskIconCache$TaskCacheEntry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quickstep/TaskIconCache;

.field final synthetic val$callback:Ljava/util/function/Consumer;

.field final synthetic val$task:Lcom/android/systemui/shared/recents/model/Task;


# direct methods
.method constructor <init>(Lcom/android/quickstep/TaskIconCache;Lcom/android/systemui/shared/recents/model/Task;Ljava/util/function/Consumer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/quickstep/TaskIconCache;

    .line 108
    iput-object p1, p0, Lcom/android/quickstep/TaskIconCache$1;->this$0:Lcom/android/quickstep/TaskIconCache;

    iput-object p2, p0, Lcom/android/quickstep/TaskIconCache$1;->val$task:Lcom/android/systemui/shared/recents/model/Task;

    iput-object p3, p0, Lcom/android/quickstep/TaskIconCache$1;->val$callback:Ljava/util/function/Consumer;

    invoke-direct {p0}, Lcom/android/quickstep/util/CancellableTask;-><init>()V

    return-void
.end method


# virtual methods
.method public getResultOnBg()Lcom/android/quickstep/TaskIconCache$TaskCacheEntry;
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/android/quickstep/TaskIconCache$1;->this$0:Lcom/android/quickstep/TaskIconCache;

    iget-object v1, p0, Lcom/android/quickstep/TaskIconCache$1;->val$task:Lcom/android/systemui/shared/recents/model/Task;

    invoke-static {v0, v1}, Lcom/android/quickstep/TaskIconCache;->-$$Nest$mgetCacheEntry(Lcom/android/quickstep/TaskIconCache;Lcom/android/systemui/shared/recents/model/Task;)Lcom/android/quickstep/TaskIconCache$TaskCacheEntry;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getResultOnBg()Ljava/lang/Object;
    .locals 1

    .line 108
    invoke-virtual {p0}, Lcom/android/quickstep/TaskIconCache$1;->getResultOnBg()Lcom/android/quickstep/TaskIconCache$TaskCacheEntry;

    move-result-object v0

    return-object v0
.end method

.method public handleResult(Lcom/android/quickstep/TaskIconCache$TaskCacheEntry;)V
    .locals 2
    .param p1, "result"    # Lcom/android/quickstep/TaskIconCache$TaskCacheEntry;

    .line 116
    iget-object v0, p0, Lcom/android/quickstep/TaskIconCache$1;->val$task:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v1, p1, Lcom/android/quickstep/TaskIconCache$TaskCacheEntry;->icon:Landroid/graphics/drawable/Drawable;

    iput-object v1, v0, Lcom/android/systemui/shared/recents/model/Task;->icon:Landroid/graphics/drawable/Drawable;

    .line 117
    iget-object v0, p0, Lcom/android/quickstep/TaskIconCache$1;->val$task:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v1, p1, Lcom/android/quickstep/TaskIconCache$TaskCacheEntry;->contentDescription:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/systemui/shared/recents/model/Task;->titleDescription:Ljava/lang/String;

    .line 118
    iget-object v0, p0, Lcom/android/quickstep/TaskIconCache$1;->val$callback:Ljava/util/function/Consumer;

    iget-object v1, p0, Lcom/android/quickstep/TaskIconCache$1;->val$task:Lcom/android/systemui/shared/recents/model/Task;

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 119
    return-void
.end method

.method public bridge synthetic handleResult(Ljava/lang/Object;)V
    .locals 0

    .line 108
    check-cast p1, Lcom/android/quickstep/TaskIconCache$TaskCacheEntry;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/TaskIconCache$1;->handleResult(Lcom/android/quickstep/TaskIconCache$TaskCacheEntry;)V

    return-void
.end method
