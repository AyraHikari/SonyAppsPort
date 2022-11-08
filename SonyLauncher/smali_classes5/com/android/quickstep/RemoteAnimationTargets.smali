.class public Lcom/android/quickstep/RemoteAnimationTargets;
.super Ljava/lang/Object;
.source "RemoteAnimationTargets.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/RemoteAnimationTargets$ReleaseCheck;
    }
.end annotation


# instance fields
.field public final apps:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

.field public final hasRecents:Z

.field private final mReleaseChecks:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/android/quickstep/RemoteAnimationTargets$ReleaseCheck;",
            ">;"
        }
    .end annotation
.end field

.field private mReleased:Z

.field public final nonApps:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

.field public final targetMode:I

.field public final unfilteredApps:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

.field public final wallpapers:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;


# direct methods
.method public constructor <init>([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;I)V
    .locals 8
    .param p1, "apps"    # [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .param p2, "wallpapers"    # [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .param p3, "nonApps"    # [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .param p4, "targetMode"    # I

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/RemoteAnimationTargets;->mReleaseChecks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/quickstep/RemoteAnimationTargets;->mReleased:Z

    .line 46
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .local v1, "filteredApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;>;"
    const/4 v2, 0x0

    .line 48
    .local v2, "hasRecents":Z
    if-eqz p1, :cond_2

    .line 49
    array-length v3, p1

    move v4, v0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, p1, v4

    .line 50
    .local v5, "target":Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    iget v6, v5, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->mode:I

    if-ne v6, p4, :cond_0

    .line 51
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    :cond_0
    iget v6, v5, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->activityType:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    move v6, v0

    :goto_1
    or-int/2addr v2, v6

    .line 49
    .end local v5    # "target":Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 59
    :cond_2
    iput-object p1, p0, Lcom/android/quickstep/RemoteAnimationTargets;->unfilteredApps:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    .line 60
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    iput-object v0, p0, Lcom/android/quickstep/RemoteAnimationTargets;->apps:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    .line 61
    iput-object p2, p0, Lcom/android/quickstep/RemoteAnimationTargets;->wallpapers:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    .line 62
    iput p4, p0, Lcom/android/quickstep/RemoteAnimationTargets;->targetMode:I

    .line 63
    iput-boolean v2, p0, Lcom/android/quickstep/RemoteAnimationTargets;->hasRecents:Z

    .line 64
    iput-object p3, p0, Lcom/android/quickstep/RemoteAnimationTargets;->nonApps:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    .line 65
    return-void
.end method


# virtual methods
.method public addReleaseCheck(Lcom/android/quickstep/RemoteAnimationTargets$ReleaseCheck;)V
    .locals 1
    .param p1, "check"    # Lcom/android/quickstep/RemoteAnimationTargets$ReleaseCheck;

    .line 113
    iget-object v0, p0, Lcom/android/quickstep/RemoteAnimationTargets;->mReleaseChecks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    return-void
.end method

.method public findTask(I)Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .locals 5
    .param p1, "taskId"    # I

    .line 68
    iget-object v0, p0, Lcom/android/quickstep/RemoteAnimationTargets;->apps:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 69
    .local v3, "target":Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    iget v4, v3, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskId:I

    if-ne v4, p1, :cond_0

    .line 70
    return-object v3

    .line 68
    .end local v3    # "target":Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 73
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFirstAppTarget()Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/android/quickstep/RemoteAnimationTargets;->apps:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getFirstAppTargetTaskId()I
    .locals 2

    .line 99
    invoke-virtual {p0}, Lcom/android/quickstep/RemoteAnimationTargets;->getFirstAppTarget()Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    move-result-object v0

    .line 100
    .local v0, "target":Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    iget v1, v0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskId:I

    :goto_0
    return v1
.end method

.method public getNavBarRemoteAnimationTarget()Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .locals 1

    .line 80
    const/16 v0, 0x7e3

    invoke-virtual {p0, v0}, Lcom/android/quickstep/RemoteAnimationTargets;->getNonAppTargetOfType(I)Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    move-result-object v0

    return-object v0
.end method

.method public getNonAppTargetOfType(I)Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .locals 5
    .param p1, "type"    # I

    .line 84
    iget-object v0, p0, Lcom/android/quickstep/RemoteAnimationTargets;->nonApps:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 85
    .local v3, "target":Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    iget v4, v3, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->windowType:I

    if-ne v4, p1, :cond_0

    .line 86
    return-object v3

    .line 84
    .end local v3    # "target":Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 89
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public isAnimatingHome()Z
    .locals 7

    .line 104
    iget-object v0, p0, Lcom/android/quickstep/RemoteAnimationTargets;->unfilteredApps:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 105
    .local v4, "target":Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    iget v5, v4, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->activityType:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 106
    const/4 v0, 0x1

    return v0

    .line 104
    .end local v4    # "target":Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 109
    :cond_1
    return v2
.end method

.method public release()V
    .locals 5

    .line 117
    sget-boolean v0, Lcom/android/quickstep/TaskAnimationManager;->ENABLE_SHELL_TRANSITIONS:Z

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/android/quickstep/RemoteAnimationTargets;->mReleaseChecks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 119
    return-void

    .line 121
    :cond_0
    iget-boolean v0, p0, Lcom/android/quickstep/RemoteAnimationTargets;->mReleased:Z

    if-eqz v0, :cond_1

    .line 122
    return-void

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/android/quickstep/RemoteAnimationTargets;->mReleaseChecks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/quickstep/RemoteAnimationTargets$ReleaseCheck;

    .line 125
    .local v1, "check":Lcom/android/quickstep/RemoteAnimationTargets$ReleaseCheck;
    iget-boolean v2, v1, Lcom/android/quickstep/RemoteAnimationTargets$ReleaseCheck;->mCanRelease:Z

    if-nez v2, :cond_2

    .line 126
    new-instance v0, Lcom/android/quickstep/RemoteAnimationTargets$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/quickstep/RemoteAnimationTargets$$ExternalSyntheticLambda0;-><init>(Lcom/android/quickstep/RemoteAnimationTargets;)V

    invoke-virtual {v1, v0}, Lcom/android/quickstep/RemoteAnimationTargets$ReleaseCheck;->addOnSafeToReleaseCallback(Ljava/lang/Runnable;)V

    .line 127
    return-void

    .line 129
    .end local v1    # "check":Lcom/android/quickstep/RemoteAnimationTargets$ReleaseCheck;
    :cond_2
    goto :goto_0

    .line 130
    :cond_3
    iget-object v0, p0, Lcom/android/quickstep/RemoteAnimationTargets;->mReleaseChecks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 131
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/quickstep/RemoteAnimationTargets;->mReleased:Z

    .line 133
    iget-object v0, p0, Lcom/android/quickstep/RemoteAnimationTargets;->unfilteredApps:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_4

    aget-object v4, v0, v3

    .line 134
    .local v4, "target":Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    invoke-virtual {v4}, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->release()V

    .line 133
    .end local v4    # "target":Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 136
    :cond_4
    iget-object v0, p0, Lcom/android/quickstep/RemoteAnimationTargets;->wallpapers:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    array-length v1, v0

    move v3, v2

    :goto_2
    if-ge v3, v1, :cond_5

    aget-object v4, v0, v3

    .line 137
    .restart local v4    # "target":Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    invoke-virtual {v4}, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->release()V

    .line 136
    .end local v4    # "target":Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 139
    :cond_5
    iget-object v0, p0, Lcom/android/quickstep/RemoteAnimationTargets;->nonApps:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    array-length v1, v0

    :goto_3
    if-ge v2, v1, :cond_6

    aget-object v3, v0, v2

    .line 140
    .local v3, "target":Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    invoke-virtual {v3}, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->release()V

    .line 139
    .end local v3    # "target":Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 142
    :cond_6
    return-void
.end method
