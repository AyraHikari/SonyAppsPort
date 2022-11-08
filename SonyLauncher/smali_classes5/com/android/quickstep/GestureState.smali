.class public Lcom/android/quickstep/GestureState;
.super Ljava/lang/Object;
.source "GestureState.java"

# interfaces
.implements Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/GestureState$GestureEndTarget;
    }
.end annotation


# static fields
.field public static final DEFAULT_STATE:Lcom/android/quickstep/GestureState;

.field private static FLAG_COUNT:I = 0x0

.field public static final STATE_END_TARGET_ANIMATION_FINISHED:I

.field public static final STATE_END_TARGET_SET:I

.field private static final STATE_NAMES:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final STATE_RECENTS_ANIMATION_CANCELED:I

.field public static final STATE_RECENTS_ANIMATION_ENDED:I

.field public static final STATE_RECENTS_ANIMATION_FINISHED:I

.field public static final STATE_RECENTS_ANIMATION_INITIALIZED:I

.field public static final STATE_RECENTS_ANIMATION_STARTED:I

.field public static final STATE_RECENTS_SCROLLING_FINISHED:I

.field private static final TAG:Ljava/lang/String; = "GestureState"


# instance fields
.field private final mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

.field private mEndTarget:Lcom/android/quickstep/GestureState$GestureEndTarget;

.field private final mGestureId:I

.field private mHandlingAtomicEvent:Z

.field private final mHomeIntent:Landroid/content/Intent;

.field private mLastAppearedTaskTarget:Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

.field private mLastStartedTaskId:I

.field private final mOverviewIntent:Landroid/content/Intent;

.field private mPreviouslyAppearedTaskIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mRecentsAnimationCanceledSnapshots:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/systemui/shared/recents/model/ThumbnailData;",
            ">;"
        }
    .end annotation
.end field

.field private mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

.field private mRunningTask:Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

.field private final mStateCallback:Lcom/android/quickstep/MultiStateCallback;

.field private mSwipeUpStartTimeMs:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/quickstep/GestureState;->STATE_NAMES:Ljava/util/ArrayList;

    .line 86
    new-instance v0, Lcom/android/quickstep/GestureState;

    invoke-direct {v0}, Lcom/android/quickstep/GestureState;-><init>()V

    sput-object v0, Lcom/android/quickstep/GestureState;->DEFAULT_STATE:Lcom/android/quickstep/GestureState;

    .line 88
    const/4 v0, 0x0

    sput v0, Lcom/android/quickstep/GestureState;->FLAG_COUNT:I

    .line 99
    nop

    .line 100
    const-string v0, "STATE_END_TARGET_SET"

    invoke-static {v0}, Lcom/android/quickstep/GestureState;->getFlagForIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/quickstep/GestureState;->STATE_END_TARGET_SET:I

    .line 103
    nop

    .line 104
    const-string v0, "STATE_END_TARGET_ANIMATION_FINISHED"

    invoke-static {v0}, Lcom/android/quickstep/GestureState;->getFlagForIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/quickstep/GestureState;->STATE_END_TARGET_ANIMATION_FINISHED:I

    .line 107
    nop

    .line 108
    const-string v0, "STATE_RECENTS_ANIMATION_INITIALIZED"

    invoke-static {v0}, Lcom/android/quickstep/GestureState;->getFlagForIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/quickstep/GestureState;->STATE_RECENTS_ANIMATION_INITIALIZED:I

    .line 112
    nop

    .line 113
    const-string v0, "STATE_RECENTS_ANIMATION_STARTED"

    invoke-static {v0}, Lcom/android/quickstep/GestureState;->getFlagForIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/quickstep/GestureState;->STATE_RECENTS_ANIMATION_STARTED:I

    .line 116
    nop

    .line 117
    const-string v0, "STATE_RECENTS_ANIMATION_CANCELED"

    invoke-static {v0}, Lcom/android/quickstep/GestureState;->getFlagForIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/quickstep/GestureState;->STATE_RECENTS_ANIMATION_CANCELED:I

    .line 120
    nop

    .line 121
    const-string v0, "STATE_RECENTS_ANIMATION_FINISHED"

    invoke-static {v0}, Lcom/android/quickstep/GestureState;->getFlagForIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/quickstep/GestureState;->STATE_RECENTS_ANIMATION_FINISHED:I

    .line 124
    nop

    .line 125
    const-string v0, "STATE_RECENTS_ANIMATION_ENDED"

    invoke-static {v0}, Lcom/android/quickstep/GestureState;->getFlagForIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/quickstep/GestureState;->STATE_RECENTS_ANIMATION_ENDED:I

    .line 128
    nop

    .line 129
    const-string v0, "STATE_RECENTS_SCROLLING_FINISHED"

    invoke-static {v0}, Lcom/android/quickstep/GestureState;->getFlagForIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/quickstep/GestureState;->STATE_RECENTS_SCROLLING_FINISHED:I

    .line 128
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/GestureState;->mPreviouslyAppearedTaskIds:Ljava/util/Set;

    .line 142
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/quickstep/GestureState;->mLastStartedTaskId:I

    .line 174
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iput-object v1, p0, Lcom/android/quickstep/GestureState;->mHomeIntent:Landroid/content/Intent;

    .line 175
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iput-object v1, p0, Lcom/android/quickstep/GestureState;->mOverviewIntent:Landroid/content/Intent;

    .line 176
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/quickstep/GestureState;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    .line 177
    new-instance v1, Lcom/android/quickstep/MultiStateCallback;

    sget-object v2, Lcom/android/quickstep/GestureState;->STATE_NAMES:Ljava/util/ArrayList;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/android/quickstep/MultiStateCallback;-><init>([Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/quickstep/GestureState;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    .line 178
    iput v0, p0, Lcom/android/quickstep/GestureState;->mGestureId:I

    .line 179
    return-void
.end method

.method public constructor <init>(Lcom/android/quickstep/GestureState;)V
    .locals 1
    .param p1, "other"    # Lcom/android/quickstep/GestureState;

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/GestureState;->mPreviouslyAppearedTaskIds:Ljava/util/Set;

    .line 142
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/quickstep/GestureState;->mLastStartedTaskId:I

    .line 160
    iget-object v0, p1, Lcom/android/quickstep/GestureState;->mHomeIntent:Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/quickstep/GestureState;->mHomeIntent:Landroid/content/Intent;

    .line 161
    iget-object v0, p1, Lcom/android/quickstep/GestureState;->mOverviewIntent:Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/quickstep/GestureState;->mOverviewIntent:Landroid/content/Intent;

    .line 162
    iget-object v0, p1, Lcom/android/quickstep/GestureState;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    iput-object v0, p0, Lcom/android/quickstep/GestureState;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    .line 163
    iget-object v0, p1, Lcom/android/quickstep/GestureState;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    iput-object v0, p0, Lcom/android/quickstep/GestureState;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    .line 164
    iget v0, p1, Lcom/android/quickstep/GestureState;->mGestureId:I

    iput v0, p0, Lcom/android/quickstep/GestureState;->mGestureId:I

    .line 165
    iget-object v0, p1, Lcom/android/quickstep/GestureState;->mRunningTask:Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    iput-object v0, p0, Lcom/android/quickstep/GestureState;->mRunningTask:Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    .line 166
    iget-object v0, p1, Lcom/android/quickstep/GestureState;->mEndTarget:Lcom/android/quickstep/GestureState$GestureEndTarget;

    iput-object v0, p0, Lcom/android/quickstep/GestureState;->mEndTarget:Lcom/android/quickstep/GestureState$GestureEndTarget;

    .line 167
    iget-object v0, p1, Lcom/android/quickstep/GestureState;->mLastAppearedTaskTarget:Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    iput-object v0, p0, Lcom/android/quickstep/GestureState;->mLastAppearedTaskTarget:Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    .line 168
    iget-object v0, p1, Lcom/android/quickstep/GestureState;->mPreviouslyAppearedTaskIds:Ljava/util/Set;

    iput-object v0, p0, Lcom/android/quickstep/GestureState;->mPreviouslyAppearedTaskIds:Ljava/util/Set;

    .line 169
    iget v0, p1, Lcom/android/quickstep/GestureState;->mLastStartedTaskId:I

    iput v0, p0, Lcom/android/quickstep/GestureState;->mLastStartedTaskId:I

    .line 170
    return-void
.end method

.method public constructor <init>(Lcom/android/quickstep/OverviewComponentObserver;I)V
    .locals 3
    .param p1, "componentObserver"    # Lcom/android/quickstep/OverviewComponentObserver;
    .param p2, "gestureId"    # I

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/GestureState;->mPreviouslyAppearedTaskIds:Ljava/util/Set;

    .line 142
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/quickstep/GestureState;->mLastStartedTaskId:I

    .line 152
    invoke-virtual {p1}, Lcom/android/quickstep/OverviewComponentObserver;->getHomeIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/GestureState;->mHomeIntent:Landroid/content/Intent;

    .line 153
    invoke-virtual {p1}, Lcom/android/quickstep/OverviewComponentObserver;->getOverviewIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/GestureState;->mOverviewIntent:Landroid/content/Intent;

    .line 154
    invoke-virtual {p1}, Lcom/android/quickstep/OverviewComponentObserver;->getActivityInterface()Lcom/android/quickstep/BaseActivityInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/GestureState;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    .line 155
    new-instance v0, Lcom/android/quickstep/MultiStateCallback;

    sget-object v1, Lcom/android/quickstep/GestureState;->STATE_NAMES:Ljava/util/ArrayList;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/android/quickstep/MultiStateCallback;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/quickstep/GestureState;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    .line 156
    iput p2, p0, Lcom/android/quickstep/GestureState;->mGestureId:I

    .line 157
    return-void
.end method

.method private static getFlagForIndex(Ljava/lang/String;)I
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .line 93
    sget v0, Lcom/android/quickstep/GestureState;->FLAG_COUNT:I

    const/4 v1, 0x1

    shl-int v2, v1, v0

    .line 94
    .local v2, "index":I
    add-int/2addr v0, v1

    sput v0, Lcom/android/quickstep/GestureState;->FLAG_COUNT:I

    .line 95
    return v2
.end method


# virtual methods
.method consumeRecentsAnimationCanceledSnapshot()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/systemui/shared/recents/model/ThumbnailData;",
            ">;"
        }
    .end annotation

    .line 385
    iget-object v0, p0, Lcom/android/quickstep/GestureState;->mRecentsAnimationCanceledSnapshots:Ljava/util/HashMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 386
    new-instance v0, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/quickstep/GestureState;->mRecentsAnimationCanceledSnapshots:Ljava/util/HashMap;

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 388
    .local v0, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/systemui/shared/recents/model/ThumbnailData;>;"
    iput-object v1, p0, Lcom/android/quickstep/GestureState;->mRecentsAnimationCanceledSnapshots:Ljava/util/HashMap;

    .line 389
    return-object v0

    .line 391
    .end local v0    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/systemui/shared/recents/model/ThumbnailData;>;"
    :cond_0
    return-object v1
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 403
    const-string v0, "GestureState:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 404
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  gestureID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/quickstep/GestureState;->mGestureId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 405
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  runningTask="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/GestureState;->mRunningTask:Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 406
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  endTarget="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/GestureState;->mEndTarget:Lcom/android/quickstep/GestureState$GestureEndTarget;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 407
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  lastAppearedTaskTargetId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/quickstep/GestureState;->getLastAppearedTaskId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 408
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  lastStartedTaskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/quickstep/GestureState;->mLastStartedTaskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 409
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  isRecentsAnimationRunning="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/quickstep/GestureState;->isRecentsAnimationRunning()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 410
    return-void
.end method

.method public getActivityInterface()Lcom/android/quickstep/BaseActivityInterface;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S::",
            "Lcom/android/launcher3/statemanager/BaseState<",
            "TS;>;T:",
            "Lcom/android/launcher3/statemanager/StatefulActivity<",
            "TS;>;>()",
            "Lcom/android/quickstep/BaseActivityInterface<",
            "TS;TT;>;"
        }
    .end annotation

    .line 221
    iget-object v0, p0, Lcom/android/quickstep/GestureState;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    return-object v0
.end method

.method public getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;
    .locals 1

    .line 296
    iget-object v0, p0, Lcom/android/quickstep/GestureState;->mEndTarget:Lcom/android/quickstep/GestureState$GestureEndTarget;

    return-object v0
.end method

.method public getGestureId()I
    .locals 1

    .line 228
    iget v0, p0, Lcom/android/quickstep/GestureState;->mGestureId:I

    return v0
.end method

.method public getHomeIntent()Landroid/content/Intent;
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/android/quickstep/GestureState;->mHomeIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getLastAppearedTaskId()I
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/android/quickstep/GestureState;->mLastAppearedTaskTarget:Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskId:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getLastStartedTaskId()I
    .locals 1

    .line 289
    iget v0, p0, Lcom/android/quickstep/GestureState;->mLastStartedTaskId:I

    return v0
.end method

.method public getOverviewIntent()Landroid/content/Intent;
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/android/quickstep/GestureState;->mOverviewIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getPreviouslyAppearedTaskIds()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 274
    iget-object v0, p0, Lcom/android/quickstep/GestureState;->mPreviouslyAppearedTaskIds:Ljava/util/Set;

    return-object v0
.end method

.method public getRunningTask()Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/android/quickstep/GestureState;->mRunningTask:Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    return-object v0
.end method

.method public getRunningTaskId()I
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/android/quickstep/GestureState;->mRunningTask:Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;->getTaskId()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method getSwipeUpStartTimeMs()J
    .locals 2

    .line 399
    iget-wide v0, p0, Lcom/android/quickstep/GestureState;->mSwipeUpStartTimeMs:J

    return-wide v0
.end method

.method public hasState(I)Z
    .locals 1
    .param p1, "stateMask"    # I

    .line 185
    iget-object v0, p0, Lcom/android/quickstep/GestureState;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    invoke-virtual {v0, p1}, Lcom/android/quickstep/MultiStateCallback;->hasStates(I)Z

    move-result v0

    return v0
.end method

.method public isHandlingAtomicEvent()Z
    .locals 1

    .line 332
    iget-boolean v0, p0, Lcom/android/quickstep/GestureState;->mHandlingAtomicEvent:Z

    return v0
.end method

.method public isRecentsAnimationRunning()Z
    .locals 2

    .line 347
    iget-object v0, p0, Lcom/android/quickstep/GestureState;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v1, Lcom/android/quickstep/GestureState;->STATE_RECENTS_ANIMATION_STARTED:I

    invoke-virtual {v0, v1}, Lcom/android/quickstep/MultiStateCallback;->hasStates(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/quickstep/GestureState;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v1, Lcom/android/quickstep/GestureState;->STATE_RECENTS_ANIMATION_ENDED:I

    .line 348
    invoke-virtual {v0, v1}, Lcom/android/quickstep/MultiStateCallback;->hasStates(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 347
    :goto_0
    return v0
.end method

.method public isRunningAnimationToLauncher()Z
    .locals 1

    .line 340
    invoke-virtual {p0}, Lcom/android/quickstep/GestureState;->isRecentsAnimationRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/quickstep/GestureState;->mEndTarget:Lcom/android/quickstep/GestureState$GestureEndTarget;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/android/quickstep/GestureState$GestureEndTarget;->isLauncher:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onRecentsAnimationCanceled(Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/systemui/shared/recents/model/ThumbnailData;",
            ">;)V"
        }
    .end annotation

    .line 360
    .local p1, "thumbnailDatas":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/systemui/shared/recents/model/ThumbnailData;>;"
    iput-object p1, p0, Lcom/android/quickstep/GestureState;->mRecentsAnimationCanceledSnapshots:Ljava/util/HashMap;

    .line 361
    iget-object v0, p0, Lcom/android/quickstep/GestureState;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v1, Lcom/android/quickstep/GestureState;->STATE_RECENTS_ANIMATION_CANCELED:I

    invoke-virtual {v0, v1}, Lcom/android/quickstep/MultiStateCallback;->setState(I)V

    .line 362
    iget-object v0, p0, Lcom/android/quickstep/GestureState;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v1, Lcom/android/quickstep/GestureState;->STATE_RECENTS_ANIMATION_ENDED:I

    invoke-virtual {v0, v1}, Lcom/android/quickstep/MultiStateCallback;->setState(I)V

    .line 363
    iget-object v0, p0, Lcom/android/quickstep/GestureState;->mRecentsAnimationCanceledSnapshots:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 365
    iget-object v0, p0, Lcom/android/quickstep/GestureState;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    if-eqz v0, :cond_0

    .line 366
    invoke-virtual {v0}, Lcom/android/quickstep/RecentsAnimationController;->cleanupScreenshot()V

    .line 368
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/quickstep/GestureState;->mRecentsAnimationCanceledSnapshots:Ljava/util/HashMap;

    .line 370
    :cond_1
    return-void
.end method

.method public onRecentsAnimationFinished(Lcom/android/quickstep/RecentsAnimationController;)V
    .locals 2
    .param p1, "controller"    # Lcom/android/quickstep/RecentsAnimationController;

    .line 374
    iget-object v0, p0, Lcom/android/quickstep/GestureState;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v1, Lcom/android/quickstep/GestureState;->STATE_RECENTS_ANIMATION_FINISHED:I

    invoke-virtual {v0, v1}, Lcom/android/quickstep/MultiStateCallback;->setState(I)V

    .line 375
    iget-object v0, p0, Lcom/android/quickstep/GestureState;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v1, Lcom/android/quickstep/GestureState;->STATE_RECENTS_ANIMATION_ENDED:I

    invoke-virtual {v0, v1}, Lcom/android/quickstep/MultiStateCallback;->setState(I)V

    .line 376
    return-void
.end method

.method public onRecentsAnimationStart(Lcom/android/quickstep/RecentsAnimationController;Lcom/android/quickstep/RecentsAnimationTargets;)V
    .locals 2
    .param p1, "controller"    # Lcom/android/quickstep/RecentsAnimationController;
    .param p2, "targets"    # Lcom/android/quickstep/RecentsAnimationTargets;

    .line 354
    iput-object p1, p0, Lcom/android/quickstep/GestureState;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    .line 355
    iget-object v0, p0, Lcom/android/quickstep/GestureState;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v1, Lcom/android/quickstep/GestureState;->STATE_RECENTS_ANIMATION_STARTED:I

    invoke-virtual {v0, v1}, Lcom/android/quickstep/MultiStateCallback;->setState(I)V

    .line 356
    return-void
.end method

.method public runOnceAtState(ILjava/lang/Runnable;)V
    .locals 1
    .param p1, "stateMask"    # I
    .param p2, "callback"    # Ljava/lang/Runnable;

    .line 199
    iget-object v0, p0, Lcom/android/quickstep/GestureState;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    invoke-virtual {v0, p1, p2}, Lcom/android/quickstep/MultiStateCallback;->runOnceAtState(ILjava/lang/Runnable;)V

    .line 200
    return-void
.end method

.method public setEndTarget(Lcom/android/quickstep/GestureState$GestureEndTarget;)V
    .locals 1
    .param p1, "target"    # Lcom/android/quickstep/GestureState$GestureEndTarget;

    .line 303
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/quickstep/GestureState;->setEndTarget(Lcom/android/quickstep/GestureState$GestureEndTarget;Z)V

    .line 304
    return-void
.end method

.method public setEndTarget(Lcom/android/quickstep/GestureState$GestureEndTarget;Z)V
    .locals 3
    .param p1, "target"    # Lcom/android/quickstep/GestureState$GestureEndTarget;
    .param p2, "isAtomic"    # Z

    .line 311
    iput-object p1, p0, Lcom/android/quickstep/GestureState;->mEndTarget:Lcom/android/quickstep/GestureState$GestureEndTarget;

    .line 312
    iget-object v0, p0, Lcom/android/quickstep/GestureState;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v1, Lcom/android/quickstep/GestureState;->STATE_END_TARGET_SET:I

    invoke-virtual {v0, v1}, Lcom/android/quickstep/MultiStateCallback;->setState(I)V

    .line 313
    sget-object v0, Lcom/android/quickstep/util/ActiveGestureLog;->INSTANCE:Lcom/android/quickstep/util/ActiveGestureLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEndTarget "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/quickstep/GestureState;->mEndTarget:Lcom/android/quickstep/GestureState$GestureEndTarget;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/quickstep/util/ActiveGestureLog;->addLog(Ljava/lang/String;)V

    .line 314
    if-eqz p2, :cond_0

    .line 315
    iget-object v0, p0, Lcom/android/quickstep/GestureState;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v1, Lcom/android/quickstep/GestureState;->STATE_END_TARGET_ANIMATION_FINISHED:I

    invoke-virtual {v0, v1}, Lcom/android/quickstep/MultiStateCallback;->setState(I)V

    .line 317
    :cond_0
    return-void
.end method

.method public setHandlingAtomicEvent(Z)V
    .locals 0
    .param p1, "handlingAtomicEvent"    # Z

    .line 324
    iput-boolean p1, p0, Lcom/android/quickstep/GestureState;->mHandlingAtomicEvent:Z

    .line 325
    return-void
.end method

.method public setState(I)V
    .locals 1
    .param p1, "stateFlag"    # I

    .line 192
    iget-object v0, p0, Lcom/android/quickstep/GestureState;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    invoke-virtual {v0, p1}, Lcom/android/quickstep/MultiStateCallback;->setState(I)V

    .line 193
    return-void
.end method

.method setSwipeUpStartTimeMs(J)V
    .locals 0
    .param p1, "uptimeMs"    # J

    .line 395
    iput-wide p1, p0, Lcom/android/quickstep/GestureState;->mSwipeUpStartTimeMs:J

    .line 396
    return-void
.end method

.method public updateLastAppearedTaskTarget(Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)V
    .locals 2
    .param p1, "lastAppearedTaskTarget"    # Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    .line 256
    iput-object p1, p0, Lcom/android/quickstep/GestureState;->mLastAppearedTaskTarget:Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    .line 257
    if-eqz p1, :cond_0

    .line 258
    iget-object v0, p0, Lcom/android/quickstep/GestureState;->mPreviouslyAppearedTaskIds:Ljava/util/Set;

    iget v1, p1, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 260
    :cond_0
    return-void
.end method

.method public updateLastStartedTaskId(I)V
    .locals 0
    .param p1, "lastStartedTaskId"    # I

    .line 281
    iput p1, p0, Lcom/android/quickstep/GestureState;->mLastStartedTaskId:I

    .line 282
    return-void
.end method

.method public updatePreviouslyAppearedTaskIds(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 270
    .local p1, "previouslyAppearedTaskIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/android/quickstep/GestureState;->mPreviouslyAppearedTaskIds:Ljava/util/Set;

    .line 271
    return-void
.end method

.method public updateRunningTask(Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;)V
    .locals 0
    .param p1, "runningTask"    # Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    .line 249
    iput-object p1, p0, Lcom/android/quickstep/GestureState;->mRunningTask:Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    .line 250
    return-void
.end method

.method public writeToProto(Lcom/android/launcher3/tracing/SwipeHandlerProto$Builder;)V
    .locals 2
    .param p1, "swipeHandlerProto"    # Lcom/android/launcher3/tracing/SwipeHandlerProto$Builder;

    .line 418
    invoke-static {}, Lcom/android/launcher3/tracing/GestureStateProto;->newBuilder()Lcom/android/launcher3/tracing/GestureStateProto$Builder;

    move-result-object v0

    .line 419
    .local v0, "gestureStateProto":Lcom/android/launcher3/tracing/GestureStateProto$Builder;
    iget-object v1, p0, Lcom/android/quickstep/GestureState;->mEndTarget:Lcom/android/quickstep/GestureState$GestureEndTarget;

    if-nez v1, :cond_0

    .line 420
    sget-object v1, Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;->UNSET:Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;

    goto :goto_0

    .line 421
    :cond_0
    iget-object v1, v1, Lcom/android/quickstep/GestureState$GestureEndTarget;->protoEndTarget:Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;

    .line 419
    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/launcher3/tracing/GestureStateProto$Builder;->setEndTarget(Lcom/android/launcher3/tracing/GestureStateProto$GestureEndTarget;)Lcom/android/launcher3/tracing/GestureStateProto$Builder;

    .line 422
    invoke-virtual {p1, v0}, Lcom/android/launcher3/tracing/SwipeHandlerProto$Builder;->setGestureState(Lcom/android/launcher3/tracing/GestureStateProto$Builder;)Lcom/android/launcher3/tracing/SwipeHandlerProto$Builder;

    .line 423
    return-void
.end method
