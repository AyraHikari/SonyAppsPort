.class public Lcom/android/quickstep/RemoteTargetGluer;
.super Ljava/lang/Object;
.source "RemoteTargetGluer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;
    }
.end annotation


# instance fields
.field private mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

.field private mStagedSplitBounds:Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/quickstep/BaseActivityInterface;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sizingStrategy"    # Lcom/android/quickstep/BaseActivityInterface;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    sget-object v0, Lcom/android/quickstep/TopTaskTracker;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/TopTaskTracker;

    invoke-virtual {v0}, Lcom/android/quickstep/TopTaskTracker;->getRunningSplitTaskIds()[I

    move-result-object v0

    .line 57
    .local v0, "splitIds":[I
    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    invoke-direct {p0, p1, p2, v2}, Lcom/android/quickstep/RemoteTargetGluer;->createHandles(Landroid/content/Context;Lcom/android/quickstep/BaseActivityInterface;I)[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    move-result-object v1

    iput-object v1, p0, Lcom/android/quickstep/RemoteTargetGluer;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/quickstep/BaseActivityInterface;Lcom/android/quickstep/RemoteAnimationTargets;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sizingStrategy"    # Lcom/android/quickstep/BaseActivityInterface;
    .param p3, "targets"    # Lcom/android/quickstep/RemoteAnimationTargets;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iget-object v0, p3, Lcom/android/quickstep/RemoteAnimationTargets;->apps:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    array-length v0, v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/quickstep/RemoteTargetGluer;->createHandles(Landroid/content/Context;Lcom/android/quickstep/BaseActivityInterface;I)[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/RemoteTargetGluer;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    .line 49
    return-void
.end method

.method private createHandles(Landroid/content/Context;Lcom/android/quickstep/BaseActivityInterface;I)[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sizingStrategy"    # Lcom/android/quickstep/BaseActivityInterface;
    .param p3, "numHandles"    # I

    .line 62
    new-array v0, p3, [Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    .line 63
    .local v0, "handles":[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_0

    .line 64
    new-instance v2, Lcom/android/quickstep/util/TaskViewSimulator;

    invoke-direct {v2, p1, p2}, Lcom/android/quickstep/util/TaskViewSimulator;-><init>(Landroid/content/Context;Lcom/android/quickstep/BaseActivityInterface;)V

    .line 65
    .local v2, "tvs":Lcom/android/quickstep/util/TaskViewSimulator;
    new-instance v3, Lcom/android/quickstep/util/TransformParams;

    invoke-direct {v3}, Lcom/android/quickstep/util/TransformParams;-><init>()V

    .line 66
    .local v3, "transformParams":Lcom/android/quickstep/util/TransformParams;
    new-instance v4, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    invoke-direct {v4, v2, v3}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;-><init>(Lcom/android/quickstep/util/TaskViewSimulator;Lcom/android/quickstep/util/TransformParams;)V

    aput-object v4, v0, v1

    .line 63
    .end local v2    # "tvs":Lcom/android/quickstep/util/TaskViewSimulator;
    .end local v3    # "transformParams":Lcom/android/quickstep/util/TransformParams;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 68
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private createRemoteAnimationTargetsForTarget(Lcom/android/quickstep/RemoteAnimationTargets;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Lcom/android/quickstep/RemoteAnimationTargets;
    .locals 7
    .param p1, "targets"    # Lcom/android/quickstep/RemoteAnimationTargets;
    .param p2, "targetToExclude"    # Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 157
    .local v0, "targetsWithoutExcluded":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;>;"
    iget-object v1, p1, Lcom/android/quickstep/RemoteAnimationTargets;->unfilteredApps:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 158
    .local v4, "targetCompat":Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    if-ne v4, p2, :cond_0

    .line 159
    goto :goto_1

    .line 161
    :cond_0
    if-eqz p2, :cond_1

    iget-object v5, p2, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v5, :cond_1

    iget-object v5, v4, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v5, :cond_1

    iget-object v5, p2, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->parentTaskId:I

    iget-object v6, v4, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v6, v6, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    if-ne v5, v6, :cond_1

    .line 166
    goto :goto_1

    .line 169
    :cond_1
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    .end local v4    # "targetCompat":Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 171
    :cond_2
    nop

    .line 173
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    .line 172
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    .line 174
    .local v1, "filteredApps":[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    new-instance v2, Lcom/android/quickstep/RemoteAnimationTargets;

    iget-object v3, p1, Lcom/android/quickstep/RemoteAnimationTargets;->wallpapers:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    iget-object v4, p1, Lcom/android/quickstep/RemoteAnimationTargets;->nonApps:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    iget v5, p1, Lcom/android/quickstep/RemoteAnimationTargets;->targetMode:I

    invoke-direct {v2, v1, v3, v4, v5}, Lcom/android/quickstep/RemoteAnimationTargets;-><init>([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;I)V

    return-object v2
.end method


# virtual methods
.method public assignTargets(Lcom/android/quickstep/RemoteAnimationTargets;)[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;
    .locals 5
    .param p1, "targets"    # Lcom/android/quickstep/RemoteAnimationTargets;

    .line 81
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/quickstep/RemoteTargetGluer;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 82
    iget-object v1, p1, Lcom/android/quickstep/RemoteAnimationTargets;->apps:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    aget-object v1, v1, v0

    .line 83
    .local v1, "primaryTaskTarget":Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    iget-object v2, p0, Lcom/android/quickstep/RemoteTargetGluer;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    aget-object v2, v2, v0

    invoke-static {v2}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->-$$Nest$fgetmTransformParams(Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)Lcom/android/quickstep/util/TransformParams;

    move-result-object v2

    .line 84
    const/4 v3, 0x0

    invoke-direct {p0, p1, v3}, Lcom/android/quickstep/RemoteTargetGluer;->createRemoteAnimationTargetsForTarget(Lcom/android/quickstep/RemoteAnimationTargets;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Lcom/android/quickstep/RemoteAnimationTargets;

    move-result-object v4

    .line 83
    invoke-virtual {v2, v4}, Lcom/android/quickstep/util/TransformParams;->setTargetSet(Lcom/android/quickstep/RemoteAnimationTargets;)Lcom/android/quickstep/util/TransformParams;

    .line 85
    iget-object v2, p0, Lcom/android/quickstep/RemoteTargetGluer;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    aget-object v2, v2, v0

    invoke-static {v2}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->-$$Nest$fgetmTaskViewSimulator(Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object v2

    invoke-virtual {v2, v1, v3}, Lcom/android/quickstep/util/TaskViewSimulator;->setPreview(Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;)V

    .line 81
    .end local v1    # "primaryTaskTarget":Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 87
    .end local v0    # "i":I
    :cond_0
    return-object v1
.end method

.method public assignTargetsForSplitScreen(Landroid/content/Context;Lcom/android/quickstep/RemoteAnimationTargets;)[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "targets"    # Lcom/android/quickstep/RemoteAnimationTargets;

    .line 97
    sget-object v0, Lcom/android/quickstep/TopTaskTracker;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/TopTaskTracker;

    invoke-virtual {v0}, Lcom/android/quickstep/TopTaskTracker;->getRunningSplitTaskIds()[I

    move-result-object v0

    .line 98
    .local v0, "splitIds":[I
    invoke-virtual {p0, p2, v0}, Lcom/android/quickstep/RemoteTargetGluer;->assignTargetsForSplitScreen(Lcom/android/quickstep/RemoteAnimationTargets;[I)[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    move-result-object v1

    return-object v1
.end method

.method public assignTargetsForSplitScreen(Lcom/android/quickstep/RemoteAnimationTargets;[I)[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;
    .locals 9
    .param p1, "targets"    # Lcom/android/quickstep/RemoteAnimationTargets;
    .param p2, "splitIds"    # [I

    .line 109
    iget-object v0, p0, Lcom/android/quickstep/RemoteTargetGluer;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    array-length v1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    .line 112
    aget-object v0, v0, v3

    invoke-static {v0}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->-$$Nest$fgetmTransformParams(Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)Lcom/android/quickstep/util/TransformParams;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/quickstep/util/TransformParams;->setTargetSet(Lcom/android/quickstep/RemoteAnimationTargets;)Lcom/android/quickstep/util/TransformParams;

    .line 113
    iget-object v0, p1, Lcom/android/quickstep/RemoteAnimationTargets;->apps:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 115
    iget-object v0, p1, Lcom/android/quickstep/RemoteAnimationTargets;->apps:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    aget-object v0, v0, v3

    .line 116
    .local v0, "topLeftTarget":Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    iget-object v1, p0, Lcom/android/quickstep/RemoteTargetGluer;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    aget-object v1, v1, v3

    invoke-static {v1}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->-$$Nest$fgetmTaskViewSimulator(Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/quickstep/util/TaskViewSimulator;->setPreview(Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;)V

    goto :goto_0

    .line 120
    .end local v0    # "topLeftTarget":Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    :cond_0
    aget v0, p2, v3

    invoke-virtual {p1, v0}, Lcom/android/quickstep/RemoteAnimationTargets;->findTask(I)Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    move-result-object v0

    .line 121
    .restart local v0    # "topLeftTarget":Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    aget v1, p2, v2

    invoke-virtual {p1, v1}, Lcom/android/quickstep/RemoteAnimationTargets;->findTask(I)Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    move-result-object v1

    .line 125
    .local v1, "bottomRightTarget":Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 126
    new-instance v4, Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;

    iget-object v5, v0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->startScreenSpaceBounds:Landroid/graphics/Rect;

    iget-object v6, v1, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->startScreenSpaceBounds:Landroid/graphics/Rect;

    aget v7, p2, v3

    aget v8, p2, v2

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V

    iput-object v4, p0, Lcom/android/quickstep/RemoteTargetGluer;->mStagedSplitBounds:Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;

    .line 130
    :cond_1
    iget-object v4, p0, Lcom/android/quickstep/RemoteTargetGluer;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    aget-object v4, v4, v3

    invoke-static {v4}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->-$$Nest$fgetmTransformParams(Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)Lcom/android/quickstep/util/TransformParams;

    move-result-object v4

    .line 131
    invoke-direct {p0, p1, v1}, Lcom/android/quickstep/RemoteTargetGluer;->createRemoteAnimationTargetsForTarget(Lcom/android/quickstep/RemoteAnimationTargets;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Lcom/android/quickstep/RemoteAnimationTargets;

    move-result-object v5

    .line 130
    invoke-virtual {v4, v5}, Lcom/android/quickstep/util/TransformParams;->setTargetSet(Lcom/android/quickstep/RemoteAnimationTargets;)Lcom/android/quickstep/util/TransformParams;

    .line 132
    iget-object v4, p0, Lcom/android/quickstep/RemoteTargetGluer;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    aget-object v3, v4, v3

    invoke-static {v3}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->-$$Nest$fgetmTaskViewSimulator(Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object v3

    iget-object v4, p0, Lcom/android/quickstep/RemoteTargetGluer;->mStagedSplitBounds:Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;

    invoke-virtual {v3, v0, v4}, Lcom/android/quickstep/util/TaskViewSimulator;->setPreview(Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;)V

    .line 135
    iget-object v3, p0, Lcom/android/quickstep/RemoteTargetGluer;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    aget-object v3, v3, v2

    invoke-static {v3}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->-$$Nest$fgetmTransformParams(Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)Lcom/android/quickstep/util/TransformParams;

    move-result-object v3

    .line 136
    invoke-direct {p0, p1, v0}, Lcom/android/quickstep/RemoteTargetGluer;->createRemoteAnimationTargetsForTarget(Lcom/android/quickstep/RemoteAnimationTargets;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Lcom/android/quickstep/RemoteAnimationTargets;

    move-result-object v4

    .line 135
    invoke-virtual {v3, v4}, Lcom/android/quickstep/util/TransformParams;->setTargetSet(Lcom/android/quickstep/RemoteAnimationTargets;)Lcom/android/quickstep/util/TransformParams;

    .line 137
    iget-object v3, p0, Lcom/android/quickstep/RemoteTargetGluer;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    aget-object v2, v3, v2

    invoke-static {v2}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->-$$Nest$fgetmTaskViewSimulator(Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object v2

    iget-object v3, p0, Lcom/android/quickstep/RemoteTargetGluer;->mStagedSplitBounds:Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;

    invoke-virtual {v2, v1, v3}, Lcom/android/quickstep/util/TaskViewSimulator;->setPreview(Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;)V

    .line 140
    .end local v0    # "topLeftTarget":Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .end local v1    # "bottomRightTarget":Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/quickstep/RemoteTargetGluer;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    return-object v0
.end method

.method public getRemoteTargetHandles()[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/android/quickstep/RemoteTargetGluer;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    return-object v0
.end method

.method public getStagedSplitBounds()Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/android/quickstep/RemoteTargetGluer;->mStagedSplitBounds:Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;

    return-object v0
.end method
