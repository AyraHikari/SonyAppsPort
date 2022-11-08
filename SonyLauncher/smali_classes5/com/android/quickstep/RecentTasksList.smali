.class public Lcom/android/quickstep/RecentTasksList;
.super Ljava/lang/Object;
.source "RecentTasksList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/RecentTasksList$TaskLoadResult;
    }
.end annotation


# static fields
.field private static final INVALID_RESULT:Lcom/android/quickstep/RecentTasksList$TaskLoadResult;


# instance fields
.field private mChangeId:I

.field private final mKeyguardManager:Lcom/android/systemui/shared/system/KeyguardManagerCompat;

.field private mLoadingTasksInBackground:Z

.field private final mMainThreadExecutor:Lcom/android/launcher3/util/LooperExecutor;

.field private mResultsBg:Lcom/android/quickstep/RecentTasksList$TaskLoadResult;

.field private mResultsUi:Lcom/android/quickstep/RecentTasksList$TaskLoadResult;

.field private final mSysUiProxy:Lcom/android/quickstep/SystemUiProxy;


# direct methods
.method static bridge synthetic -$$Nest$fgetmKeyguardManager(Lcom/android/quickstep/RecentTasksList;)Lcom/android/systemui/shared/system/KeyguardManagerCompat;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/RecentTasksList;->mKeyguardManager:Lcom/android/systemui/shared/system/KeyguardManagerCompat;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMainThreadExecutor(Lcom/android/quickstep/RecentTasksList;)Lcom/android/launcher3/util/LooperExecutor;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/RecentTasksList;->mMainThreadExecutor:Lcom/android/launcher3/util/LooperExecutor;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 50
    new-instance v0, Lcom/android/quickstep/RecentTasksList$TaskLoadResult;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/quickstep/RecentTasksList$TaskLoadResult;-><init>(IZI)V

    sput-object v0, Lcom/android/quickstep/RecentTasksList;->INVALID_RESULT:Lcom/android/quickstep/RecentTasksList$TaskLoadResult;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/util/LooperExecutor;Lcom/android/systemui/shared/system/KeyguardManagerCompat;Lcom/android/quickstep/SystemUiProxy;)V
    .locals 1
    .param p1, "mainThreadExecutor"    # Lcom/android/launcher3/util/LooperExecutor;
    .param p2, "keyguardManager"    # Lcom/android/systemui/shared/system/KeyguardManagerCompat;
    .param p3, "sysUiProxy"    # Lcom/android/quickstep/SystemUiProxy;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    sget-object v0, Lcom/android/quickstep/RecentTasksList;->INVALID_RESULT:Lcom/android/quickstep/RecentTasksList$TaskLoadResult;

    iput-object v0, p0, Lcom/android/quickstep/RecentTasksList;->mResultsBg:Lcom/android/quickstep/RecentTasksList$TaskLoadResult;

    .line 63
    iput-object v0, p0, Lcom/android/quickstep/RecentTasksList;->mResultsUi:Lcom/android/quickstep/RecentTasksList$TaskLoadResult;

    .line 67
    iput-object p1, p0, Lcom/android/quickstep/RecentTasksList;->mMainThreadExecutor:Lcom/android/launcher3/util/LooperExecutor;

    .line 68
    iput-object p2, p0, Lcom/android/quickstep/RecentTasksList;->mKeyguardManager:Lcom/android/systemui/shared/system/KeyguardManagerCompat;

    .line 69
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/quickstep/RecentTasksList;->mChangeId:I

    .line 70
    iput-object p3, p0, Lcom/android/quickstep/RecentTasksList;->mSysUiProxy:Lcom/android/quickstep/SystemUiProxy;

    .line 71
    new-instance v0, Lcom/android/quickstep/RecentTasksList$1;

    invoke-direct {v0, p0}, Lcom/android/quickstep/RecentTasksList$1;-><init>(Lcom/android/quickstep/RecentTasksList;)V

    invoke-virtual {p3, v0}, Lcom/android/quickstep/SystemUiProxy;->registerRecentTasksListener(Lcom/android/wm/shell/recents/IRecentTasksListener;)V

    .line 77
    return-void
.end method

.method private convertSplitBounds(Lcom/android/wm/shell/util/StagedSplitBounds;)Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;
    .locals 5
    .param p1, "shellSplitBounds"    # Lcom/android/wm/shell/util/StagedSplitBounds;

    .line 208
    if-nez p1, :cond_0

    .line 209
    const/4 v0, 0x0

    goto :goto_0

    .line 210
    :cond_0
    new-instance v0, Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;

    iget-object v1, p1, Lcom/android/wm/shell/util/StagedSplitBounds;->leftTopBounds:Landroid/graphics/Rect;

    iget-object v2, p1, Lcom/android/wm/shell/util/StagedSplitBounds;->rightBottomBounds:Landroid/graphics/Rect;

    iget v3, p1, Lcom/android/wm/shell/util/StagedSplitBounds;->leftTopTaskId:I

    iget v4, p1, Lcom/android/wm/shell/util/StagedSplitBounds;->rightBottomTaskId:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V

    .line 208
    :goto_0
    return-object v0
.end method

.method private copyOf(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/quickstep/util/GroupTask;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/android/quickstep/util/GroupTask;",
            ">;"
        }
    .end annotation

    .line 216
    .local p1, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/quickstep/util/GroupTask;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 217
    .local v0, "newTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/quickstep/util/GroupTask;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 218
    new-instance v2, Lcom/android/quickstep/util/GroupTask;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/quickstep/util/GroupTask;

    invoke-direct {v2, v3}, Lcom/android/quickstep/util/GroupTask;-><init>(Lcom/android/quickstep/util/GroupTask;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 220
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private declared-synchronized invalidateLoadedTasks()V
    .locals 2

    monitor-enter p0

    .line 152
    :try_start_0
    sget-object v0, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/quickstep/RecentTasksList$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/quickstep/RecentTasksList$$ExternalSyntheticLambda1;-><init>(Lcom/android/quickstep/RecentTasksList;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    .line 153
    sget-object v0, Lcom/android/quickstep/RecentTasksList;->INVALID_RESULT:Lcom/android/quickstep/RecentTasksList$TaskLoadResult;

    iput-object v0, p0, Lcom/android/quickstep/RecentTasksList;->mResultsUi:Lcom/android/quickstep/RecentTasksList$TaskLoadResult;

    .line 154
    iget v0, p0, Lcom/android/quickstep/RecentTasksList;->mChangeId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/quickstep/RecentTasksList;->mChangeId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    monitor-exit p0

    return-void

    .line 151
    .end local p0    # "this":Lcom/android/quickstep/RecentTasksList;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic lambda$getTaskKeys$0(Ljava/util/function/Consumer;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "callback"    # Ljava/util/function/Consumer;
    .param p1, "tasks"    # Ljava/util/ArrayList;

    .line 92
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$getTasks$2(Ljava/util/function/Consumer;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "callback"    # Ljava/util/function/Consumer;
    .param p1, "result"    # Ljava/util/ArrayList;

    .line 113
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 114
    return-void
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 10
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "writer"    # Ljava/io/PrintWriter;

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "RecentTasksList:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  mChangeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/quickstep/RecentTasksList;->mChangeId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  mResultsUi=[id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/RecentTasksList;->mResultsUi:Lcom/android/quickstep/RecentTasksList$TaskLoadResult;

    iget v1, v1, Lcom/android/quickstep/RecentTasksList$TaskLoadResult;->mRequestId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tasks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/android/quickstep/RecentTasksList;->mResultsUi:Lcom/android/quickstep/RecentTasksList$TaskLoadResult;

    invoke-virtual {v0}, Lcom/android/quickstep/RecentTasksList$TaskLoadResult;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "-1"

    const-string v3, " t2="

    const-string v4, "    t1="

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/quickstep/util/GroupTask;

    .line 228
    .local v1, "task":Lcom/android/quickstep/util/GroupTask;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v5, v5, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v5, v5, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 229
    invoke-virtual {v1}, Lcom/android/quickstep/util/GroupTask;->hasMultipleTasks()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v2, v1, Lcom/android/quickstep/util/GroupTask;->task2:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v2, v2, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v2, v2, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 228
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 230
    .end local v1    # "task":Lcom/android/quickstep/util/GroupTask;
    goto :goto_0

    .line 231
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 232
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 233
    .local v0, "currentUserId":I
    iget-object v5, p0, Lcom/android/quickstep/RecentTasksList;->mSysUiProxy:Lcom/android/quickstep/SystemUiProxy;

    const v6, 0x7fffffff

    .line 234
    invoke-virtual {v5, v6, v0}, Lcom/android/quickstep/SystemUiProxy;->getRecentTasks(II)Ljava/util/ArrayList;

    move-result-object v5

    .line 235
    .local v5, "rawTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/wm/shell/util/GroupedRecentTaskInfo;>;"
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  rawTasks=["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 236
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;

    .line 237
    .local v7, "task":Lcom/android/wm/shell/util/GroupedRecentTaskInfo;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v7, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;->mTaskInfo1:Landroid/app/ActivityManager$RecentTaskInfo;

    iget v9, v9, Landroid/app/ActivityManager$RecentTaskInfo;->taskId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 238
    iget-object v9, v7, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;->mTaskInfo2:Landroid/app/ActivityManager$RecentTaskInfo;

    if-eqz v9, :cond_2

    iget-object v9, v7, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;->mTaskInfo2:Landroid/app/ActivityManager$RecentTaskInfo;

    iget v9, v9, Landroid/app/ActivityManager$RecentTaskInfo;->taskId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    goto :goto_2

    :cond_2
    move-object v9, v2

    :goto_2
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 237
    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 239
    .end local v7    # "task":Lcom/android/wm/shell/util/GroupedRecentTaskInfo;
    goto :goto_1

    .line 240
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 241
    return-void
.end method

.method public getTaskKeys(ILjava/util/function/Consumer;)V
    .locals 2
    .param p1, "numTasks"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/function/Consumer<",
            "Ljava/util/ArrayList<",
            "Lcom/android/quickstep/util/GroupTask;",
            ">;>;)V"
        }
    .end annotation

    .line 89
    .local p2, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/util/ArrayList<Lcom/android/quickstep/util/GroupTask;>;>;"
    sget-object v0, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/quickstep/RecentTasksList$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/quickstep/RecentTasksList$$ExternalSyntheticLambda0;-><init>(Lcom/android/quickstep/RecentTasksList;ILjava/util/function/Consumer;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    .line 94
    return-void
.end method

.method public declared-synchronized getTasks(ZLjava/util/function/Consumer;)I
    .locals 4
    .param p1, "loadKeysOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/function/Consumer<",
            "Ljava/util/ArrayList<",
            "Lcom/android/quickstep/util/GroupTask;",
            ">;>;)I"
        }
    .end annotation

    .local p2, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/util/ArrayList<Lcom/android/quickstep/util/GroupTask;>;>;"
    monitor-enter p0

    .line 105
    :try_start_0
    iget v0, p0, Lcom/android/quickstep/RecentTasksList;->mChangeId:I

    .line 106
    .local v0, "requestLoadId":I
    iget-object v1, p0, Lcom/android/quickstep/RecentTasksList;->mResultsUi:Lcom/android/quickstep/RecentTasksList$TaskLoadResult;

    invoke-virtual {v1, v0, p1}, Lcom/android/quickstep/RecentTasksList$TaskLoadResult;->isValidForRequest(IZ)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 109
    if-eqz p2, :cond_0

    .line 111
    iget-object v1, p0, Lcom/android/quickstep/RecentTasksList;->mResultsUi:Lcom/android/quickstep/RecentTasksList$TaskLoadResult;

    invoke-direct {p0, v1}, Lcom/android/quickstep/RecentTasksList;->copyOf(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    .line 112
    .local v1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/quickstep/util/GroupTask;>;"
    iget-object v2, p0, Lcom/android/quickstep/RecentTasksList;->mMainThreadExecutor:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v3, Lcom/android/quickstep/RecentTasksList$$ExternalSyntheticLambda2;

    invoke-direct {v3, p2, v1}, Lcom/android/quickstep/RecentTasksList$$ExternalSyntheticLambda2;-><init>(Ljava/util/function/Consumer;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v3}, Lcom/android/launcher3/util/LooperExecutor;->post(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    .end local v1    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/quickstep/util/GroupTask;>;"
    .end local p0    # "this":Lcom/android/quickstep/RecentTasksList;
    :cond_0
    monitor-exit p0

    return v0

    .line 121
    .restart local p0    # "this":Lcom/android/quickstep/RecentTasksList;
    :cond_1
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lcom/android/quickstep/RecentTasksList;->mLoadingTasksInBackground:Z

    .line 122
    sget-object v1, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v2, Lcom/android/quickstep/RecentTasksList$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/android/quickstep/RecentTasksList$$ExternalSyntheticLambda3;-><init>(Lcom/android/quickstep/RecentTasksList;IZLjava/util/function/Consumer;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 137
    monitor-exit p0

    return v0

    .line 104
    .end local v0    # "requestLoadId":I
    .end local p0    # "this":Lcom/android/quickstep/RecentTasksList;
    .end local p1    # "loadKeysOnly":Z
    .end local p2    # "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/util/ArrayList<Lcom/android/quickstep/util/GroupTask;>;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public isLoadingTasksInBackground()Z
    .locals 1

    .line 81
    iget-boolean v0, p0, Lcom/android/quickstep/RecentTasksList;->mLoadingTasksInBackground:Z

    return v0
.end method

.method public declared-synchronized isTaskListValid(I)Z
    .locals 1
    .param p1, "changeId"    # I

    monitor-enter p0

    .line 144
    :try_start_0
    iget v0, p0, Lcom/android/quickstep/RecentTasksList;->mChangeId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    .line 144
    .end local p0    # "this":Lcom/android/quickstep/RecentTasksList;
    .end local p1    # "changeId":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method synthetic lambda$getTaskKeys$1$com-android-quickstep-RecentTasksList(ILjava/util/function/Consumer;)V
    .locals 3
    .param p1, "numTasks"    # I
    .param p2, "callback"    # Ljava/util/function/Consumer;

    .line 90
    const/4 v0, -0x1

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/quickstep/RecentTasksList;->loadTasksInBackground(IIZ)Lcom/android/quickstep/RecentTasksList$TaskLoadResult;

    move-result-object v0

    .line 92
    .local v0, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/quickstep/util/GroupTask;>;"
    iget-object v1, p0, Lcom/android/quickstep/RecentTasksList;->mMainThreadExecutor:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v2, Lcom/android/quickstep/RecentTasksList$$ExternalSyntheticLambda5;

    invoke-direct {v2, p2, v0}, Lcom/android/quickstep/RecentTasksList$$ExternalSyntheticLambda5;-><init>(Ljava/util/function/Consumer;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    .line 93
    return-void
.end method

.method synthetic lambda$getTasks$3$com-android-quickstep-RecentTasksList(Lcom/android/quickstep/RecentTasksList$TaskLoadResult;Ljava/util/function/Consumer;)V
    .locals 1
    .param p1, "loadResult"    # Lcom/android/quickstep/RecentTasksList$TaskLoadResult;
    .param p2, "callback"    # Ljava/util/function/Consumer;

    .line 128
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/quickstep/RecentTasksList;->mLoadingTasksInBackground:Z

    .line 129
    iput-object p1, p0, Lcom/android/quickstep/RecentTasksList;->mResultsUi:Lcom/android/quickstep/RecentTasksList$TaskLoadResult;

    .line 130
    if-eqz p2, :cond_0

    .line 131
    invoke-direct {p0, p1}, Lcom/android/quickstep/RecentTasksList;->copyOf(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 132
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/quickstep/util/GroupTask;>;"
    invoke-interface {p2, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 134
    .end local v0    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/quickstep/util/GroupTask;>;"
    :cond_0
    return-void
.end method

.method synthetic lambda$getTasks$4$com-android-quickstep-RecentTasksList(IZLjava/util/function/Consumer;)V
    .locals 3
    .param p1, "requestLoadId"    # I
    .param p2, "loadKeysOnly"    # Z
    .param p3, "callback"    # Ljava/util/function/Consumer;

    .line 123
    iget-object v0, p0, Lcom/android/quickstep/RecentTasksList;->mResultsBg:Lcom/android/quickstep/RecentTasksList$TaskLoadResult;

    invoke-virtual {v0, p1, p2}, Lcom/android/quickstep/RecentTasksList$TaskLoadResult;->isValidForRequest(IZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 124
    const v0, 0x7fffffff

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/quickstep/RecentTasksList;->loadTasksInBackground(IIZ)Lcom/android/quickstep/RecentTasksList$TaskLoadResult;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/RecentTasksList;->mResultsBg:Lcom/android/quickstep/RecentTasksList$TaskLoadResult;

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/RecentTasksList;->mResultsBg:Lcom/android/quickstep/RecentTasksList$TaskLoadResult;

    .line 127
    .local v0, "loadResult":Lcom/android/quickstep/RecentTasksList$TaskLoadResult;
    iget-object v1, p0, Lcom/android/quickstep/RecentTasksList;->mMainThreadExecutor:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v2, Lcom/android/quickstep/RecentTasksList$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, v0, p3}, Lcom/android/quickstep/RecentTasksList$$ExternalSyntheticLambda4;-><init>(Lcom/android/quickstep/RecentTasksList;Lcom/android/quickstep/RecentTasksList$TaskLoadResult;Ljava/util/function/Consumer;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    .line 135
    return-void
.end method

.method synthetic lambda$invalidateLoadedTasks$5$com-android-quickstep-RecentTasksList()V
    .locals 1

    .line 152
    sget-object v0, Lcom/android/quickstep/RecentTasksList;->INVALID_RESULT:Lcom/android/quickstep/RecentTasksList$TaskLoadResult;

    iput-object v0, p0, Lcom/android/quickstep/RecentTasksList;->mResultsBg:Lcom/android/quickstep/RecentTasksList$TaskLoadResult;

    return-void
.end method

.method loadTasksInBackground(IIZ)Lcom/android/quickstep/RecentTasksList$TaskLoadResult;
    .locals 16
    .param p1, "numTasks"    # I
    .param p2, "requestId"    # I
    .param p3, "loadKeysOnly"    # Z

    .line 162
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 163
    .local v2, "currentUserId":I
    iget-object v3, v0, Lcom/android/quickstep/RecentTasksList;->mSysUiProxy:Lcom/android/quickstep/SystemUiProxy;

    .line 164
    move/from16 v4, p1

    invoke-virtual {v3, v4, v2}, Lcom/android/quickstep/SystemUiProxy;->getRecentTasks(II)Ljava/util/ArrayList;

    move-result-object v3

    .line 166
    .local v3, "rawTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/wm/shell/util/GroupedRecentTaskInfo;>;"
    invoke-static {v3}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 168
    new-instance v5, Lcom/android/quickstep/RecentTasksList$2;

    invoke-direct {v5, v0}, Lcom/android/quickstep/RecentTasksList$2;-><init>(Lcom/android/quickstep/RecentTasksList;)V

    .line 179
    .local v5, "tmpLockedUsers":Landroid/util/SparseBooleanArray;
    new-instance v6, Lcom/android/quickstep/RecentTasksList$TaskLoadResult;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    move/from16 v8, p2

    invoke-direct {v6, v8, v1, v7}, Lcom/android/quickstep/RecentTasksList$TaskLoadResult;-><init>(IZI)V

    .line 180
    .local v6, "allTasks":Lcom/android/quickstep/RecentTasksList$TaskLoadResult;
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;

    .line 181
    .local v9, "rawTask":Lcom/android/wm/shell/util/GroupedRecentTaskInfo;
    iget-object v10, v9, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;->mTaskInfo1:Landroid/app/ActivityManager$RecentTaskInfo;

    .line 182
    .local v10, "taskInfo1":Landroid/app/ActivityManager$RecentTaskInfo;
    iget-object v11, v9, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;->mTaskInfo2:Landroid/app/ActivityManager$RecentTaskInfo;

    .line 183
    .local v11, "taskInfo2":Landroid/app/ActivityManager$RecentTaskInfo;
    new-instance v12, Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-direct {v12, v10}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;-><init>(Landroid/app/TaskInfo;)V

    .line 184
    .local v12, "task1Key":Lcom/android/systemui/shared/recents/model/Task$TaskKey;
    if-eqz v1, :cond_0

    .line 185
    new-instance v13, Lcom/android/systemui/shared/recents/model/Task;

    invoke-direct {v13, v12}, Lcom/android/systemui/shared/recents/model/Task;-><init>(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)V

    goto :goto_1

    .line 186
    :cond_0
    iget v13, v12, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    .line 187
    invoke-virtual {v5, v13}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v13

    .line 186
    invoke-static {v12, v10, v13}, Lcom/android/systemui/shared/recents/model/Task;->from(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/TaskInfo;Z)Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v13

    :goto_1
    nop

    .line 188
    .local v13, "task1":Lcom/android/systemui/shared/recents/model/Task;
    invoke-virtual {v13, v10}, Lcom/android/systemui/shared/recents/model/Task;->setLastSnapshotData(Landroid/app/ActivityManager$RecentTaskInfo;)V

    .line 189
    const/4 v14, 0x0

    .line 190
    .local v14, "task2":Lcom/android/systemui/shared/recents/model/Task;
    if-eqz v11, :cond_2

    .line 191
    new-instance v15, Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-direct {v15, v11}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;-><init>(Landroid/app/TaskInfo;)V

    .line 192
    .local v15, "task2Key":Lcom/android/systemui/shared/recents/model/Task$TaskKey;
    if-eqz v1, :cond_1

    .line 193
    new-instance v1, Lcom/android/systemui/shared/recents/model/Task;

    invoke-direct {v1, v15}, Lcom/android/systemui/shared/recents/model/Task;-><init>(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)V

    goto :goto_2

    .line 194
    :cond_1
    iget v1, v15, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    .line 195
    invoke-virtual {v5, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    .line 194
    invoke-static {v15, v11, v1}, Lcom/android/systemui/shared/recents/model/Task;->from(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/TaskInfo;Z)Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v1

    :goto_2
    move-object v14, v1

    .line 196
    invoke-virtual {v14, v11}, Lcom/android/systemui/shared/recents/model/Task;->setLastSnapshotData(Landroid/app/ActivityManager$RecentTaskInfo;)V

    .line 198
    .end local v15    # "task2Key":Lcom/android/systemui/shared/recents/model/Task$TaskKey;
    :cond_2
    iget-object v1, v9, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;->mStagedSplitBounds:Lcom/android/wm/shell/util/StagedSplitBounds;

    .line 199
    invoke-direct {v0, v1}, Lcom/android/quickstep/RecentTasksList;->convertSplitBounds(Lcom/android/wm/shell/util/StagedSplitBounds;)Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;

    move-result-object v1

    .line 200
    .local v1, "launcherSplitBounds":Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;
    new-instance v15, Lcom/android/quickstep/util/GroupTask;

    invoke-direct {v15, v13, v14, v1}, Lcom/android/quickstep/util/GroupTask;-><init>(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/Task;Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;)V

    invoke-virtual {v6, v15}, Lcom/android/quickstep/RecentTasksList$TaskLoadResult;->add(Ljava/lang/Object;)Z

    .line 201
    .end local v1    # "launcherSplitBounds":Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;
    .end local v9    # "rawTask":Lcom/android/wm/shell/util/GroupedRecentTaskInfo;
    .end local v10    # "taskInfo1":Landroid/app/ActivityManager$RecentTaskInfo;
    .end local v11    # "taskInfo2":Landroid/app/ActivityManager$RecentTaskInfo;
    .end local v12    # "task1Key":Lcom/android/systemui/shared/recents/model/Task$TaskKey;
    .end local v13    # "task1":Lcom/android/systemui/shared/recents/model/Task;
    .end local v14    # "task2":Lcom/android/systemui/shared/recents/model/Task;
    move/from16 v1, p3

    goto :goto_0

    .line 203
    :cond_3
    return-object v6
.end method

.method public onRecentTasksChanged()V
    .locals 0

    .line 148
    invoke-direct {p0}, Lcom/android/quickstep/RecentTasksList;->invalidateLoadedTasks()V

    .line 149
    return-void
.end method
