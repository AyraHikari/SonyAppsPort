.class public Lcom/android/quickstep/RecentsModel;
.super Ljava/lang/Object;
.source "RecentsModel.java"

# interfaces
.implements Lcom/android/launcher3/icons/IconProvider$IconChangeListener;
.implements Lcom/android/systemui/shared/system/TaskStackChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/RecentsModel$TaskVisualsChangeListener;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/util/MainThreadInitializedObject<",
            "Lcom/android/quickstep/RecentsModel;",
            ">;"
        }
    .end annotation
.end field

.field private static final RECENTS_MODEL_EXECUTOR:Ljava/util/concurrent/Executor;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mIconCache:Lcom/android/quickstep/TaskIconCache;

.field private final mTaskList:Lcom/android/quickstep/RecentTasksList;

.field private final mThumbnailCache:Lcom/android/quickstep/TaskThumbnailCache;

.field private final mThumbnailChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/quickstep/RecentsModel$TaskVisualsChangeListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$P93tHa31NLuzhVvQ3PlsvxKGnOE(Landroid/content/Context;)Lcom/android/quickstep/RecentsModel;
    .locals 1

    new-instance v0, Lcom/android/quickstep/RecentsModel;

    invoke-direct {v0, p0}, Lcom/android/quickstep/RecentsModel;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 60
    new-instance v0, Lcom/android/launcher3/util/MainThreadInitializedObject;

    new-instance v1, Lcom/android/quickstep/RecentsModel$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/quickstep/RecentsModel$$ExternalSyntheticLambda1;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;-><init>(Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider;)V

    sput-object v0, Lcom/android/quickstep/RecentsModel;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    .line 63
    new-instance v0, Lcom/android/launcher3/util/Executors$SimpleThreadFactory;

    const-string v1, "TaskThumbnailIconCache-"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/util/Executors$SimpleThreadFactory;-><init>(Ljava/lang/String;I)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/android/quickstep/RecentsModel;->RECENTS_MODEL_EXECUTOR:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/RecentsModel;->mThumbnailChangeListeners:Ljava/util/List;

    .line 74
    iput-object p1, p0, Lcom/android/quickstep/RecentsModel;->mContext:Landroid/content/Context;

    .line 75
    new-instance v0, Lcom/android/quickstep/RecentTasksList;

    sget-object v1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v2, Lcom/android/systemui/shared/system/KeyguardManagerCompat;

    invoke-direct {v2, p1}, Lcom/android/systemui/shared/system/KeyguardManagerCompat;-><init>(Landroid/content/Context;)V

    sget-object v3, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    .line 76
    invoke-virtual {v3, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/quickstep/SystemUiProxy;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/quickstep/RecentTasksList;-><init>(Lcom/android/launcher3/util/LooperExecutor;Lcom/android/systemui/shared/system/KeyguardManagerCompat;Lcom/android/quickstep/SystemUiProxy;)V

    iput-object v0, p0, Lcom/android/quickstep/RecentsModel;->mTaskList:Lcom/android/quickstep/RecentTasksList;

    .line 78
    new-instance v0, Lcom/android/launcher3/icons/IconProvider;

    invoke-direct {v0, p1}, Lcom/android/launcher3/icons/IconProvider;-><init>(Landroid/content/Context;)V

    .line 79
    .local v0, "iconProvider":Lcom/android/launcher3/icons/IconProvider;
    new-instance v1, Lcom/android/quickstep/TaskIconCache;

    sget-object v2, Lcom/android/quickstep/RecentsModel;->RECENTS_MODEL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-direct {v1, p1, v2, v0}, Lcom/android/quickstep/TaskIconCache;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/android/launcher3/icons/IconProvider;)V

    iput-object v1, p0, Lcom/android/quickstep/RecentsModel;->mIconCache:Lcom/android/quickstep/TaskIconCache;

    .line 80
    new-instance v1, Lcom/android/quickstep/TaskThumbnailCache;

    invoke-direct {v1, p1, v2}, Lcom/android/quickstep/TaskThumbnailCache;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V

    iput-object v1, p0, Lcom/android/quickstep/RecentsModel;->mThumbnailCache:Lcom/android/quickstep/TaskThumbnailCache;

    .line 82
    invoke-static {}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->getInstance()Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->registerTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    .line 83
    sget-object v1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v1}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/launcher3/icons/IconProvider;->registerIconChangeListener(Lcom/android/launcher3/icons/IconProvider$IconChangeListener;Landroid/os/Handler;)Lcom/android/launcher3/util/SafeCloseable;

    .line 84
    return-void
.end method

.method static synthetic lambda$isTaskRemoved$0(ILjava/util/function/Consumer;Ljava/util/ArrayList;)V
    .locals 3
    .param p0, "taskId"    # I
    .param p1, "callback"    # Ljava/util/function/Consumer;
    .param p2, "taskGroups"    # Ljava/util/ArrayList;

    .line 127
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/quickstep/util/GroupTask;

    .line 128
    .local v1, "group":Lcom/android/quickstep/util/GroupTask;
    invoke-virtual {v1, p0}, Lcom/android/quickstep/util/GroupTask;->containsTask(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 129
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 130
    return-void

    .line 132
    .end local v1    # "group":Lcom/android/quickstep/util/GroupTask;
    :cond_0
    goto :goto_0

    .line 133
    :cond_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 134
    return-void
.end method


# virtual methods
.method public addThumbnailChangeListener(Lcom/android/quickstep/RecentsModel$TaskVisualsChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/quickstep/RecentsModel$TaskVisualsChangeListener;

    .line 215
    iget-object v0, p0, Lcom/android/quickstep/RecentsModel;->mThumbnailChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "writer"    # Ljava/io/PrintWriter;

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "RecentsModel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/android/quickstep/RecentsModel;->mTaskList:Lcom/android/quickstep/RecentTasksList;

    const-string v1, "  "

    invoke-virtual {v0, v1, p2}, Lcom/android/quickstep/RecentTasksList;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 228
    return-void
.end method

.method public getIconCache()Lcom/android/quickstep/TaskIconCache;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/android/quickstep/RecentsModel;->mIconCache:Lcom/android/quickstep/TaskIconCache;

    return-object v0
.end method

.method public getTasks(Ljava/util/function/Consumer;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/util/ArrayList<",
            "Lcom/android/quickstep/util/GroupTask;",
            ">;>;)I"
        }
    .end annotation

    .line 102
    .local p1, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/util/ArrayList<Lcom/android/quickstep/util/GroupTask;>;>;"
    iget-object v0, p0, Lcom/android/quickstep/RecentsModel;->mTaskList:Lcom/android/quickstep/RecentTasksList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/quickstep/RecentTasksList;->getTasks(ZLjava/util/function/Consumer;)I

    move-result v0

    return v0
.end method

.method public getThumbnailCache()Lcom/android/quickstep/TaskThumbnailCache;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/android/quickstep/RecentsModel;->mThumbnailCache:Lcom/android/quickstep/TaskThumbnailCache;

    return-object v0
.end method

.method public isLoadingTasksInBackground()Z
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/android/quickstep/RecentsModel;->mTaskList:Lcom/android/quickstep/RecentTasksList;

    invoke-virtual {v0}, Lcom/android/quickstep/RecentTasksList;->isLoadingTasksInBackground()Z

    move-result v0

    return v0
.end method

.method public isTaskListValid(I)Z
    .locals 1
    .param p1, "changeId"    # I

    .line 109
    iget-object v0, p0, Lcom/android/quickstep/RecentsModel;->mTaskList:Lcom/android/quickstep/RecentTasksList;

    invoke-virtual {v0, p1}, Lcom/android/quickstep/RecentTasksList;->isTaskListValid(I)Z

    move-result v0

    return v0
.end method

.method public isTaskRemoved(ILjava/util/function/Consumer;)V
    .locals 3
    .param p1, "taskId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 126
    .local p2, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    iget-object v0, p0, Lcom/android/quickstep/RecentsModel;->mTaskList:Lcom/android/quickstep/RecentTasksList;

    new-instance v1, Lcom/android/quickstep/RecentsModel$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p2}, Lcom/android/quickstep/RecentsModel$$ExternalSyntheticLambda0;-><init>(ILjava/util/function/Consumer;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/android/quickstep/RecentTasksList;->getTasks(ZLjava/util/function/Consumer;)I

    .line 135
    return-void
.end method

.method synthetic lambda$onTaskStackChangedBackground$1$com-android-quickstep-RecentsModel(ILjava/util/ArrayList;)V
    .locals 4
    .param p1, "runningTaskId"    # I
    .param p2, "taskGroups"    # Ljava/util/ArrayList;

    .line 155
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/quickstep/util/GroupTask;

    .line 156
    .local v1, "group":Lcom/android/quickstep/util/GroupTask;
    invoke-virtual {v1, p1}, Lcom/android/quickstep/util/GroupTask;->containsTask(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 159
    goto :goto_0

    .line 161
    :cond_0
    iget-object v2, p0, Lcom/android/quickstep/RecentsModel;->mThumbnailCache:Lcom/android/quickstep/TaskThumbnailCache;

    iget-object v3, v1, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v2, v3}, Lcom/android/quickstep/TaskThumbnailCache;->updateThumbnailInCache(Lcom/android/systemui/shared/recents/model/Task;)V

    .line 162
    iget-object v2, p0, Lcom/android/quickstep/RecentsModel;->mThumbnailCache:Lcom/android/quickstep/TaskThumbnailCache;

    iget-object v3, v1, Lcom/android/quickstep/util/GroupTask;->task2:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v2, v3}, Lcom/android/quickstep/TaskThumbnailCache;->updateThumbnailInCache(Lcom/android/systemui/shared/recents/model/Task;)V

    .line 163
    .end local v1    # "group":Lcom/android/quickstep/util/GroupTask;
    goto :goto_0

    .line 164
    :cond_1
    return-void
.end method

.method public onAppIconChanged(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 200
    iget-object v0, p0, Lcom/android/quickstep/RecentsModel;->mIconCache:Lcom/android/quickstep/TaskIconCache;

    invoke-virtual {v0, p1, p2}, Lcom/android/quickstep/TaskIconCache;->invalidateCacheEntries(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 201
    iget-object v0, p0, Lcom/android/quickstep/RecentsModel;->mThumbnailChangeListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 202
    iget-object v1, p0, Lcom/android/quickstep/RecentsModel;->mThumbnailChangeListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/quickstep/RecentsModel$TaskVisualsChangeListener;

    invoke-interface {v1, p1, p2}, Lcom/android/quickstep/RecentsModel$TaskVisualsChangeListener;->onTaskIconChanged(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 201
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 204
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public onSystemIconStateChanged(Ljava/lang/String;)V
    .locals 1
    .param p1, "iconState"    # Ljava/lang/String;

    .line 208
    iget-object v0, p0, Lcom/android/quickstep/RecentsModel;->mIconCache:Lcom/android/quickstep/TaskIconCache;

    invoke-virtual {v0}, Lcom/android/quickstep/TaskIconCache;->clearCache()V

    .line 209
    return-void
.end method

.method public onTaskRemoved(I)V
    .locals 9
    .param p1, "taskId"    # I

    .line 182
    new-instance v8, Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v0, v8

    move v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;-><init>(IILandroid/content/Intent;Landroid/content/ComponentName;IJ)V

    .line 183
    .local v0, "stubKey":Lcom/android/systemui/shared/recents/model/Task$TaskKey;
    iget-object v1, p0, Lcom/android/quickstep/RecentsModel;->mThumbnailCache:Lcom/android/quickstep/TaskThumbnailCache;

    invoke-virtual {v1, v0}, Lcom/android/quickstep/TaskThumbnailCache;->remove(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)V

    .line 184
    iget-object v1, p0, Lcom/android/quickstep/RecentsModel;->mIconCache:Lcom/android/quickstep/TaskIconCache;

    invoke-virtual {v1, v0}, Lcom/android/quickstep/TaskIconCache;->onTaskRemoved(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)V

    .line 185
    return-void
.end method

.method public onTaskSnapshotChanged(ILcom/android/systemui/shared/recents/model/ThumbnailData;)Z
    .locals 3
    .param p1, "taskId"    # I
    .param p2, "snapshot"    # Lcom/android/systemui/shared/recents/model/ThumbnailData;

    .line 169
    iget-object v0, p0, Lcom/android/quickstep/RecentsModel;->mThumbnailCache:Lcom/android/quickstep/TaskThumbnailCache;

    invoke-virtual {v0, p1, p2}, Lcom/android/quickstep/TaskThumbnailCache;->updateTaskSnapShot(ILcom/android/systemui/shared/recents/model/ThumbnailData;)V

    .line 171
    iget-object v0, p0, Lcom/android/quickstep/RecentsModel;->mThumbnailChangeListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 172
    iget-object v2, p0, Lcom/android/quickstep/RecentsModel;->mThumbnailChangeListeners:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/quickstep/RecentsModel$TaskVisualsChangeListener;

    invoke-interface {v2, p1, p2}, Lcom/android/quickstep/RecentsModel$TaskVisualsChangeListener;->onTaskThumbnailChanged(ILcom/android/systemui/shared/recents/model/ThumbnailData;)Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v2

    .line 173
    .local v2, "task":Lcom/android/systemui/shared/recents/model/Task;
    if-eqz v2, :cond_0

    .line 174
    iput-object p2, v2, Lcom/android/systemui/shared/recents/model/Task;->thumbnail:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    .line 171
    .end local v2    # "task":Lcom/android/systemui/shared/recents/model/Task;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 177
    .end local v0    # "i":I
    :cond_1
    return v1
.end method

.method public onTaskStackChangedBackground()V
    .locals 6

    .line 139
    iget-object v0, p0, Lcom/android/quickstep/RecentsModel;->mThumbnailCache:Lcom/android/quickstep/TaskThumbnailCache;

    invoke-virtual {v0}, Lcom/android/quickstep/TaskThumbnailCache;->isPreloadingEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 141
    return-void

    .line 144
    :cond_0
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 145
    .local v0, "currentUserId":I
    iget-object v1, p0, Lcom/android/quickstep/RecentsModel;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/android/quickstep/TaskUtils;->checkCurrentOrManagedUserId(ILandroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 147
    return-void

    .line 152
    :cond_1
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    .line 153
    .local v1, "runningTask":Landroid/app/ActivityManager$RunningTaskInfo;
    if-eqz v1, :cond_2

    iget v2, v1, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    goto :goto_0

    :cond_2
    const/4 v2, -0x1

    .line 154
    .local v2, "runningTaskId":I
    :goto_0
    iget-object v3, p0, Lcom/android/quickstep/RecentsModel;->mTaskList:Lcom/android/quickstep/RecentTasksList;

    iget-object v4, p0, Lcom/android/quickstep/RecentsModel;->mThumbnailCache:Lcom/android/quickstep/TaskThumbnailCache;

    invoke-virtual {v4}, Lcom/android/quickstep/TaskThumbnailCache;->getCacheSize()I

    move-result v4

    new-instance v5, Lcom/android/quickstep/RecentsModel$$ExternalSyntheticLambda2;

    invoke-direct {v5, p0, v2}, Lcom/android/quickstep/RecentsModel$$ExternalSyntheticLambda2;-><init>(Lcom/android/quickstep/RecentsModel;I)V

    invoke-virtual {v3, v4, v5}, Lcom/android/quickstep/RecentTasksList;->getTaskKeys(ILjava/util/function/Consumer;)V

    .line 165
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 2
    .param p1, "level"    # I

    .line 188
    const/16 v0, 0x14

    if-ne p1, v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/android/quickstep/RecentsModel;->mThumbnailCache:Lcom/android/quickstep/TaskThumbnailCache;

    invoke-virtual {v0}, Lcom/android/quickstep/TaskThumbnailCache;->getHighResLoadingState()Lcom/android/quickstep/TaskThumbnailCache$HighResLoadingState;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/quickstep/TaskThumbnailCache$HighResLoadingState;->setVisible(Z)V

    .line 191
    :cond_0
    const/16 v0, 0xf

    if-ne p1, v0, :cond_1

    .line 193
    iget-object v0, p0, Lcom/android/quickstep/RecentsModel;->mThumbnailCache:Lcom/android/quickstep/TaskThumbnailCache;

    invoke-virtual {v0}, Lcom/android/quickstep/TaskThumbnailCache;->clear()V

    .line 194
    iget-object v0, p0, Lcom/android/quickstep/RecentsModel;->mIconCache:Lcom/android/quickstep/TaskIconCache;

    invoke-virtual {v0}, Lcom/android/quickstep/TaskIconCache;->clearCache()V

    .line 196
    :cond_1
    return-void
.end method

.method public removeThumbnailChangeListener(Lcom/android/quickstep/RecentsModel$TaskVisualsChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/quickstep/RecentsModel$TaskVisualsChangeListener;

    .line 222
    iget-object v0, p0, Lcom/android/quickstep/RecentsModel;->mThumbnailChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 223
    return-void
.end method
