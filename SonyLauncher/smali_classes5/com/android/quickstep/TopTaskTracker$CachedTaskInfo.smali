.class public Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;
.super Ljava/lang/Object;
.source "TopTaskTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/TopTaskTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CachedTaskInfo"
.end annotation


# instance fields
.field private final mAllCachedTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mTopTask:Landroid/app/ActivityManager$RunningTaskInfo;


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;)V"
        }
    .end annotation

    .line 212
    .local p1, "allCachedTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    iput-object p1, p0, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;->mAllCachedTasks:Ljava/util/List;

    .line 214
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    :goto_0
    iput-object v0, p0, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;->mTopTask:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 215
    return-void
.end method

.method static synthetic lambda$getPlaceholderTasks$0(I[Lcom/android/systemui/shared/recents/model/Task;ILandroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 2
    .param p0, "taskId"    # I
    .param p1, "result"    # [Lcom/android/systemui/shared/recents/model/Task;
    .param p2, "index"    # I
    .param p3, "rti"    # Landroid/app/ActivityManager$RunningTaskInfo;

    .line 267
    iget v0, p3, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    if-ne v0, p0, :cond_0

    .line 268
    new-instance v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-direct {v0, p3}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;-><init>(Landroid/app/TaskInfo;)V

    const/4 v1, 0x0

    invoke-static {v0, p3, v1}, Lcom/android/systemui/shared/recents/model/Task;->from(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/TaskInfo;Z)Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    aput-object v0, p1, p2

    .line 270
    :cond_0
    return-void
.end method


# virtual methods
.method public getPlaceholderTasks()[Lcom/android/systemui/shared/recents/model/Task;
    .locals 4

    .line 250
    iget-object v0, p0, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;->mTopTask:Landroid/app/ActivityManager$RunningTaskInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array v0, v1, [Lcom/android/systemui/shared/recents/model/Task;

    goto :goto_0

    .line 251
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/systemui/shared/recents/model/Task;

    new-instance v2, Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget-object v3, p0, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;->mTopTask:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-direct {v2, v3}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;-><init>(Landroid/app/TaskInfo;)V

    iget-object v3, p0, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;->mTopTask:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-static {v2, v3, v1}, Lcom/android/systemui/shared/recents/model/Task;->from(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/TaskInfo;Z)Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v2

    aput-object v2, v0, v1

    .line 250
    :goto_0
    return-object v0
.end method

.method public getPlaceholderTasks([I)[Lcom/android/systemui/shared/recents/model/Task;
    .locals 7
    .param p1, "taskIds"    # [I

    .line 259
    iget-object v0, p0, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;->mTopTask:Landroid/app/ActivityManager$RunningTaskInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 260
    new-array v0, v1, [Lcom/android/systemui/shared/recents/model/Task;

    return-object v0

    .line 262
    :cond_0
    array-length v0, p1

    new-array v0, v0, [Lcom/android/systemui/shared/recents/model/Task;

    .line 263
    .local v0, "result":[Lcom/android/systemui/shared/recents/model/Task;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_2

    .line 264
    move v3, v2

    .line 265
    .local v3, "index":I
    aget v4, p1, v2

    .line 266
    .local v4, "taskId":I
    iget-object v5, p0, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;->mAllCachedTasks:Ljava/util/List;

    new-instance v6, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo$$ExternalSyntheticLambda0;

    invoke-direct {v6, v4, v0, v3}, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo$$ExternalSyntheticLambda0;-><init>(I[Lcom/android/systemui/shared/recents/model/Task;I)V

    invoke-interface {v5, v6}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 271
    aget-object v5, v0, v3

    if-nez v5, :cond_1

    .line 272
    new-array v1, v1, [Lcom/android/systemui/shared/recents/model/Task;

    return-object v1

    .line 263
    .end local v3    # "index":I
    .end local v4    # "taskId":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 275
    .end local v2    # "i":I
    :cond_2
    return-object v0
.end method

.method public getTaskId()I
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;->mTopTask:Landroid/app/ActivityManager$RunningTaskInfo;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    :goto_0
    return v0
.end method

.method public isExcludedAssistant()Z
    .locals 2

    .line 232
    iget-object v0, p0, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;->mTopTask:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 233
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getActivityType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;->mTopTask:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseIntent:Landroid/content/Intent;

    .line 234
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x800000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 232
    :goto_0
    return v0
.end method

.method public isHomeTask()Z
    .locals 2

    .line 241
    iget-object v0, p0, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;->mTopTask:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 242
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getActivityType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 241
    :goto_0
    return v0
.end method

.method public isRootChooseActivity()Z
    .locals 2

    .line 225
    iget-object v0, p0, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;->mTopTask:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.CHOOSER"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
