.class public Lcom/android/quickstep/TopTaskTracker;
.super Lcom/android/wm/shell/splitscreen/ISplitScreenListener$Stub;
.source "TopTaskTracker.java"

# interfaces
.implements Lcom/android/systemui/shared/system/TaskStackChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;
    }
.end annotation


# static fields
.field private static final HISTORY_SIZE:I = 0x5

.field public static INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/util/MainThreadInitializedObject<",
            "Lcom/android/quickstep/TopTaskTracker;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mMainStagePosition:Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitTaskPosition;

.field private final mOrderedTaskList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPinnedTaskId:I

.field private final mSideStagePosition:Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitTaskPosition;


# direct methods
.method public static synthetic $r8$lambda$k8JRDra3b9FDVjg4CHizpkZXnc8(Landroid/content/Context;)Lcom/android/quickstep/TopTaskTracker;
    .locals 1

    new-instance v0, Lcom/android/quickstep/TopTaskTracker;

    invoke-direct {v0, p0}, Lcom/android/quickstep/TopTaskTracker;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 62
    new-instance v0, Lcom/android/launcher3/util/MainThreadInitializedObject;

    new-instance v1, Lcom/android/quickstep/TopTaskTracker$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/android/quickstep/TopTaskTracker$$ExternalSyntheticLambda2;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;-><init>(Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider;)V

    sput-object v0, Lcom/android/quickstep/TopTaskTracker;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 74
    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/ISplitScreenListener$Stub;-><init>()V

    .line 68
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/TopTaskTracker;->mOrderedTaskList:Ljava/util/LinkedList;

    .line 70
    new-instance v0, Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitTaskPosition;

    invoke-direct {v0}, Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitTaskPosition;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/TopTaskTracker;->mMainStagePosition:Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitTaskPosition;

    .line 71
    new-instance v1, Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitTaskPosition;

    invoke-direct {v1}, Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitTaskPosition;-><init>()V

    iput-object v1, p0, Lcom/android/quickstep/TopTaskTracker;->mSideStagePosition:Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitTaskPosition;

    .line 72
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/quickstep/TopTaskTracker;->mPinnedTaskId:I

    .line 75
    const/4 v2, 0x0

    iput v2, v0, Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitTaskPosition;->stageType:I

    .line 76
    const/4 v0, 0x1

    iput v0, v1, Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitTaskPosition;->stageType:I

    .line 78
    invoke-static {}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->getInstance()Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->registerTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    .line 79
    sget-object v0, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/SystemUiProxy;

    invoke-virtual {v0, p0}, Lcom/android/quickstep/SystemUiProxy;->registerSplitScreenListener(Lcom/android/wm/shell/splitscreen/ISplitScreenListener;)V

    .line 80
    return-void
.end method

.method static synthetic lambda$getCachedTopTask$2()[Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 2

    .line 185
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getRunningTasks(Z)[Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$getCachedTopTask$3()[Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 2

    .line 191
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getRunningTasks(Z)[Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$onTaskMovedToFront$1(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .locals 2
    .param p0, "taskInfo"    # Landroid/app/ActivityManager$RunningTaskInfo;
    .param p1, "rto"    # Landroid/app/ActivityManager$RunningTaskInfo;

    .line 89
    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget v1, p0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$onTaskRemoved$0(ILandroid/app/ActivityManager$RunningTaskInfo;)Z
    .locals 1
    .param p0, "taskId"    # I
    .param p1, "rto"    # Landroid/app/ActivityManager$RunningTaskInfo;

    .line 84
    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private resetTaskId(Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitTaskPosition;)V
    .locals 1
    .param p1, "taskPosition"    # Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitTaskPosition;

    .line 152
    const/4 v0, -0x1

    iput v0, p1, Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitTaskPosition;->taskId:I

    .line 153
    return-void
.end method


# virtual methods
.method public getCachedTopTask(Z)Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;
    .locals 3
    .param p1, "filterOnlyVisibleRecents"    # Z

    .line 181
    if-eqz p1, :cond_0

    .line 184
    new-instance v0, Lcom/android/quickstep/TopTaskTracker$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/quickstep/TopTaskTracker$$ExternalSyntheticLambda3;-><init>()V

    const-string v1, "getCachedTopTask.true"

    invoke-static {v1, v0}, Lcom/android/launcher3/util/TraceHelper;->allowIpcs(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/app/ActivityManager$RunningTaskInfo;

    .line 186
    .local v0, "tasks":[Landroid/app/ActivityManager$RunningTaskInfo;
    new-instance v1, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;-><init>(Ljava/util/List;)V

    return-object v1

    .line 189
    .end local v0    # "tasks":[Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/TopTaskTracker;->mOrderedTaskList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 190
    new-instance v0, Lcom/android/quickstep/TopTaskTracker$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/quickstep/TopTaskTracker$$ExternalSyntheticLambda4;-><init>()V

    const-string v1, "getCachedTopTask.false"

    invoke-static {v1, v0}, Lcom/android/launcher3/util/TraceHelper;->allowIpcs(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/app/ActivityManager$RunningTaskInfo;

    .line 193
    .restart local v0    # "tasks":[Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v1, p0, Lcom/android/quickstep/TopTaskTracker;->mOrderedTaskList:Ljava/util/LinkedList;

    invoke-static {v1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 197
    .end local v0    # "tasks":[Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/quickstep/TopTaskTracker;->mOrderedTaskList:Ljava/util/LinkedList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 198
    .local v0, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    new-instance v1, Lcom/android/quickstep/TopTaskTracker$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/android/quickstep/TopTaskTracker$$ExternalSyntheticLambda5;-><init>(Lcom/android/quickstep/TopTaskTracker;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 199
    new-instance v1, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    invoke-direct {v1, v0}, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method public getRunningSplitTaskIds()[I
    .locals 4

    .line 160
    iget-object v0, p0, Lcom/android/quickstep/TopTaskTracker;->mMainStagePosition:Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitTaskPosition;

    iget v0, v0, Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitTaskPosition;->taskId:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/quickstep/TopTaskTracker;->mSideStagePosition:Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitTaskPosition;

    iget v0, v0, Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitTaskPosition;->taskId:I

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 164
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 165
    .local v0, "out":[I
    iget-object v1, p0, Lcom/android/quickstep/TopTaskTracker;->mMainStagePosition:Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitTaskPosition;

    iget v1, v1, Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitTaskPosition;->stagePosition:I

    const/4 v3, 0x1

    if-nez v1, :cond_1

    .line 166
    iget-object v1, p0, Lcom/android/quickstep/TopTaskTracker;->mMainStagePosition:Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitTaskPosition;

    iget v1, v1, Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitTaskPosition;->taskId:I

    aput v1, v0, v2

    .line 167
    iget-object v1, p0, Lcom/android/quickstep/TopTaskTracker;->mSideStagePosition:Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitTaskPosition;

    iget v1, v1, Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitTaskPosition;->taskId:I

    aput v1, v0, v3

    goto :goto_0

    .line 169
    :cond_1
    iget-object v1, p0, Lcom/android/quickstep/TopTaskTracker;->mMainStagePosition:Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitTaskPosition;

    iget v1, v1, Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitTaskPosition;->taskId:I

    aput v1, v0, v3

    .line 170
    iget-object v1, p0, Lcom/android/quickstep/TopTaskTracker;->mSideStagePosition:Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitTaskPosition;

    iget v1, v1, Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitTaskPosition;->taskId:I

    aput v1, v0, v2

    .line 172
    :goto_0
    return-object v0

    .line 162
    .end local v0    # "out":[I
    :cond_2
    :goto_1
    new-array v0, v2, [I

    return-object v0
.end method

.method synthetic lambda$getCachedTopTask$4$com-android-quickstep-TopTaskTracker(Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .locals 2
    .param p1, "t"    # Landroid/app/ActivityManager$RunningTaskInfo;

    .line 198
    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget v1, p0, Lcom/android/quickstep/TopTaskTracker;->mPinnedTaskId:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onActivityPinned(Ljava/lang/String;III)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "taskId"    # I
    .param p4, "stackId"    # I

    .line 143
    iput p3, p0, Lcom/android/quickstep/TopTaskTracker;->mPinnedTaskId:I

    .line 144
    return-void
.end method

.method public onActivityUnpinned()V
    .locals 1

    .line 148
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/quickstep/TopTaskTracker;->mPinnedTaskId:I

    .line 149
    return-void
.end method

.method public onStagePositionChanged(II)V
    .locals 1
    .param p1, "stage"    # I
    .param p2, "position"    # I

    .line 108
    if-nez p1, :cond_0

    .line 109
    iget-object v0, p0, Lcom/android/quickstep/TopTaskTracker;->mMainStagePosition:Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitTaskPosition;

    iput p2, v0, Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitTaskPosition;->stagePosition:I

    goto :goto_0

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/TopTaskTracker;->mSideStagePosition:Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitTaskPosition;

    iput p2, v0, Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitTaskPosition;->stagePosition:I

    .line 113
    :goto_0
    return-void
.end method

.method public onTaskMovedToFront(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 4
    .param p1, "taskInfo"    # Landroid/app/ActivityManager$RunningTaskInfo;

    .line 89
    iget-object v0, p0, Lcom/android/quickstep/TopTaskTracker;->mOrderedTaskList:Ljava/util/LinkedList;

    new-instance v1, Lcom/android/quickstep/TopTaskTracker$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lcom/android/quickstep/TopTaskTracker$$ExternalSyntheticLambda1;-><init>(Landroid/app/ActivityManager$RunningTaskInfo;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 90
    iget-object v0, p0, Lcom/android/quickstep/TopTaskTracker;->mOrderedTaskList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 91
    iget-object v0, p0, Lcom/android/quickstep/TopTaskTracker;->mOrderedTaskList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_1

    .line 93
    iget-object v0, p0, Lcom/android/quickstep/TopTaskTracker;->mOrderedTaskList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 94
    .local v0, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 95
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 96
    .local v1, "info":Landroid/app/ActivityManager$RunningTaskInfo;
    iget v2, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget v3, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    if-eq v2, v3, :cond_0

    iget v2, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget-object v3, p0, Lcom/android/quickstep/TopTaskTracker;->mMainStagePosition:Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitTaskPosition;

    iget v3, v3, Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitTaskPosition;->taskId:I

    if-eq v2, v3, :cond_0

    iget v2, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget-object v3, p0, Lcom/android/quickstep/TopTaskTracker;->mSideStagePosition:Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitTaskPosition;

    iget v3, v3, Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitTaskPosition;->taskId:I

    if-eq v2, v3, :cond_0

    .line 99
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 100
    return-void

    .line 102
    .end local v1    # "info":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_0
    goto :goto_0

    .line 104
    .end local v0    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :cond_1
    return-void
.end method

.method public onTaskRemoved(I)V
    .locals 2
    .param p1, "taskId"    # I

    .line 84
    iget-object v0, p0, Lcom/android/quickstep/TopTaskTracker;->mOrderedTaskList:Ljava/util/LinkedList;

    new-instance v1, Lcom/android/quickstep/TopTaskTracker$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/android/quickstep/TopTaskTracker$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 85
    return-void
.end method

.method public onTaskStageChanged(IIZ)V
    .locals 1
    .param p1, "taskId"    # I
    .param p2, "stage"    # I
    .param p3, "visible"    # Z

    .line 118
    if-nez p3, :cond_2

    .line 119
    iget-object v0, p0, Lcom/android/quickstep/TopTaskTracker;->mMainStagePosition:Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitTaskPosition;

    iget v0, v0, Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitTaskPosition;->taskId:I

    if-ne v0, p1, :cond_0

    .line 120
    iget-object v0, p0, Lcom/android/quickstep/TopTaskTracker;->mMainStagePosition:Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitTaskPosition;

    invoke-direct {p0, v0}, Lcom/android/quickstep/TopTaskTracker;->resetTaskId(Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitTaskPosition;)V

    goto :goto_0

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/TopTaskTracker;->mSideStagePosition:Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitTaskPosition;

    iget v0, v0, Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitTaskPosition;->taskId:I

    if-ne v0, p1, :cond_1

    .line 122
    iget-object v0, p0, Lcom/android/quickstep/TopTaskTracker;->mSideStagePosition:Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitTaskPosition;

    invoke-direct {p0, v0}, Lcom/android/quickstep/TopTaskTracker;->resetTaskId(Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitTaskPosition;)V

    .line 124
    :cond_1
    :goto_0
    return-void

    .line 128
    :cond_2
    const/4 v0, -0x1

    if-ne p2, v0, :cond_4

    .line 129
    iget-object v0, p0, Lcom/android/quickstep/TopTaskTracker;->mMainStagePosition:Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitTaskPosition;

    iget v0, v0, Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitTaskPosition;->taskId:I

    if-ne p1, v0, :cond_3

    .line 130
    iget-object v0, p0, Lcom/android/quickstep/TopTaskTracker;->mMainStagePosition:Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitTaskPosition;

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/quickstep/TopTaskTracker;->mSideStagePosition:Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitTaskPosition;

    .line 129
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/quickstep/TopTaskTracker;->resetTaskId(Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitTaskPosition;)V

    .line 131
    return-void

    .line 134
    :cond_4
    if-nez p2, :cond_5

    .line 135
    iget-object v0, p0, Lcom/android/quickstep/TopTaskTracker;->mMainStagePosition:Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitTaskPosition;

    iput p1, v0, Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitTaskPosition;->taskId:I

    goto :goto_2

    .line 137
    :cond_5
    iget-object v0, p0, Lcom/android/quickstep/TopTaskTracker;->mSideStagePosition:Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitTaskPosition;

    iput p1, v0, Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitTaskPosition;->taskId:I

    .line 139
    :goto_2
    return-void
.end method
