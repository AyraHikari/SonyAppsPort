.class public Lcom/android/quickstep/util/GroupTask;
.super Ljava/lang/Object;
.source "GroupTask.java"


# instance fields
.field public mStagedSplitBounds:Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;

.field public task1:Lcom/android/systemui/shared/recents/model/Task;

.field public task2:Lcom/android/systemui/shared/recents/model/Task;


# direct methods
.method public constructor <init>(Lcom/android/quickstep/util/GroupTask;)V
    .locals 2
    .param p1, "group"    # Lcom/android/quickstep/util/GroupTask;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Lcom/android/systemui/shared/recents/model/Task;

    iget-object v1, p1, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    invoke-direct {v0, v1}, Lcom/android/systemui/shared/recents/model/Task;-><init>(Lcom/android/systemui/shared/recents/model/Task;)V

    iput-object v0, p0, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    .line 43
    iget-object v0, p1, Lcom/android/quickstep/util/GroupTask;->task2:Lcom/android/systemui/shared/recents/model/Task;

    if-eqz v0, :cond_0

    .line 44
    new-instance v1, Lcom/android/systemui/shared/recents/model/Task;

    invoke-direct {v1, v0}, Lcom/android/systemui/shared/recents/model/Task;-><init>(Lcom/android/systemui/shared/recents/model/Task;)V

    goto :goto_0

    .line 45
    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Lcom/android/quickstep/util/GroupTask;->task2:Lcom/android/systemui/shared/recents/model/Task;

    .line 46
    iget-object v0, p1, Lcom/android/quickstep/util/GroupTask;->mStagedSplitBounds:Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;

    iput-object v0, p0, Lcom/android/quickstep/util/GroupTask;->mStagedSplitBounds:Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;

    .line 47
    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/Task;Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;)V
    .locals 0
    .param p1, "t1"    # Lcom/android/systemui/shared/recents/model/Task;
    .param p2, "t2"    # Lcom/android/systemui/shared/recents/model/Task;
    .param p3, "stagedSplitBounds"    # Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    .line 37
    iput-object p2, p0, Lcom/android/quickstep/util/GroupTask;->task2:Lcom/android/systemui/shared/recents/model/Task;

    .line 38
    iput-object p3, p0, Lcom/android/quickstep/util/GroupTask;->mStagedSplitBounds:Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;

    .line 39
    return-void
.end method


# virtual methods
.method public containsTask(I)Z
    .locals 1
    .param p1, "taskId"    # I

    .line 50
    iget-object v0, p0, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v0, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Lcom/android/quickstep/util/GroupTask;->task2:Lcom/android/systemui/shared/recents/model/Task;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v0, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public hasMultipleTasks()Z
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/android/quickstep/util/GroupTask;->task2:Lcom/android/systemui/shared/recents/model/Task;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
