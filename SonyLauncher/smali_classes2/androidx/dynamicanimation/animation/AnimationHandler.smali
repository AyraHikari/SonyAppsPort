.class public Landroidx/dynamicanimation/animation/AnimationHandler;
.super Ljava/lang/Object;
.source "AnimationHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/dynamicanimation/animation/AnimationHandler$DurationScaleChangeListener;,
        Landroidx/dynamicanimation/animation/AnimationHandler$DurationScaleChangeListener33;,
        Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackScheduler14;,
        Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackScheduler16;,
        Landroidx/dynamicanimation/animation/AnimationHandler$AnimationCallbackDispatcher;,
        Landroidx/dynamicanimation/animation/AnimationHandler$AnimationFrameCallback;
    }
.end annotation


# static fields
.field private static final FRAME_DELAY_MS:J = 0xaL

.field private static final sAnimatorHandler:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroidx/dynamicanimation/animation/AnimationHandler;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mAnimationCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/dynamicanimation/animation/AnimationHandler$AnimationFrameCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallbackDispatcher:Landroidx/dynamicanimation/animation/AnimationHandler$AnimationCallbackDispatcher;

.field mCurrentFrameTime:J

.field private final mDelayedCallbackStartTime:Landroidx/collection/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SimpleArrayMap<",
            "Landroidx/dynamicanimation/animation/AnimationHandler$AnimationFrameCallback;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public mDurationScale:F

.field public mDurationScaleChangeListener:Landroidx/dynamicanimation/animation/AnimationHandler$DurationScaleChangeListener;

.field private mListDirty:Z

.field private final mRunnable:Ljava/lang/Runnable;

.field private mScheduler:Landroidx/dynamicanimation/animation/FrameCallbackScheduler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 79
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroidx/dynamicanimation/animation/AnimationHandler;->sAnimatorHandler:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Landroidx/dynamicanimation/animation/FrameCallbackScheduler;)V
    .locals 2
    .param p1, "scheduler"    # Landroidx/dynamicanimation/animation/FrameCallbackScheduler;

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Landroidx/collection/SimpleArrayMap;

    invoke-direct {v0}, Landroidx/collection/SimpleArrayMap;-><init>()V

    iput-object v0, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mDelayedCallbackStartTime:Landroidx/collection/SimpleArrayMap;

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    .line 89
    new-instance v0, Landroidx/dynamicanimation/animation/AnimationHandler$AnimationCallbackDispatcher;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/dynamicanimation/animation/AnimationHandler$AnimationCallbackDispatcher;-><init>(Landroidx/dynamicanimation/animation/AnimationHandler;Landroidx/dynamicanimation/animation/AnimationHandler$1;)V

    iput-object v0, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mCallbackDispatcher:Landroidx/dynamicanimation/animation/AnimationHandler$AnimationCallbackDispatcher;

    .line 92
    new-instance v0, Landroidx/dynamicanimation/animation/AnimationHandler$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroidx/dynamicanimation/animation/AnimationHandler$$ExternalSyntheticLambda0;-><init>(Landroidx/dynamicanimation/animation/AnimationHandler;)V

    iput-object v0, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mRunnable:Ljava/lang/Runnable;

    .line 96
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mCurrentFrameTime:J

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mListDirty:Z

    .line 99
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mDurationScale:F

    .line 123
    iput-object p1, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mScheduler:Landroidx/dynamicanimation/animation/FrameCallbackScheduler;

    .line 124
    return-void
.end method

.method static synthetic access$000(Landroidx/dynamicanimation/animation/AnimationHandler;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Landroidx/dynamicanimation/animation/AnimationHandler;

    .line 45
    iget-object v0, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$100(Landroidx/dynamicanimation/animation/AnimationHandler;)Landroidx/dynamicanimation/animation/FrameCallbackScheduler;
    .locals 1
    .param p0, "x0"    # Landroidx/dynamicanimation/animation/AnimationHandler;

    .line 45
    iget-object v0, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mScheduler:Landroidx/dynamicanimation/animation/FrameCallbackScheduler;

    return-object v0
.end method

.method private cleanUpList()V
    .locals 2

    .line 205
    iget-boolean v0, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mListDirty:Z

    if-eqz v0, :cond_3

    .line 206
    iget-object v0, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 207
    iget-object v1, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 208
    iget-object v1, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 206
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 212
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 213
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_2

    .line 214
    iget-object v0, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mDurationScaleChangeListener:Landroidx/dynamicanimation/animation/AnimationHandler$DurationScaleChangeListener;

    invoke-interface {v0}, Landroidx/dynamicanimation/animation/AnimationHandler$DurationScaleChangeListener;->unregister()Z

    .line 217
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mListDirty:Z

    .line 219
    :cond_3
    return-void
.end method

.method static getInstance()Landroidx/dynamicanimation/animation/AnimationHandler;
    .locals 4

    .line 106
    sget-object v0, Landroidx/dynamicanimation/animation/AnimationHandler;->sAnimatorHandler:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 107
    new-instance v1, Landroidx/dynamicanimation/animation/AnimationHandler;

    .line 108
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_0

    .line 109
    new-instance v2, Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackScheduler16;

    invoke-direct {v2}, Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackScheduler16;-><init>()V

    goto :goto_0

    .line 110
    :cond_0
    new-instance v2, Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackScheduler14;

    invoke-direct {v2}, Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackScheduler14;-><init>()V

    :goto_0
    invoke-direct {v1, v2}, Landroidx/dynamicanimation/animation/AnimationHandler;-><init>(Landroidx/dynamicanimation/animation/FrameCallbackScheduler;)V

    .line 111
    .local v1, "handler":Landroidx/dynamicanimation/animation/AnimationHandler;
    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 113
    .end local v1    # "handler":Landroidx/dynamicanimation/animation/AnimationHandler;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/dynamicanimation/animation/AnimationHandler;

    return-object v0
.end method

.method private isCallbackDue(Landroidx/dynamicanimation/animation/AnimationHandler$AnimationFrameCallback;J)Z
    .locals 4
    .param p1, "callback"    # Landroidx/dynamicanimation/animation/AnimationHandler$AnimationFrameCallback;
    .param p2, "currentTime"    # J

    .line 193
    iget-object v0, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mDelayedCallbackStartTime:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v0, p1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 194
    .local v0, "startTime":Ljava/lang/Long;
    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 195
    return v1

    .line 197
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, p2

    if-gez v2, :cond_1

    .line 198
    iget-object v2, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mDelayedCallbackStartTime:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v2, p1}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    return v1

    .line 201
    :cond_1
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method addAnimationFrameCallback(Landroidx/dynamicanimation/animation/AnimationHandler$AnimationFrameCallback;J)V
    .locals 3
    .param p1, "callback"    # Landroidx/dynamicanimation/animation/AnimationHandler$AnimationFrameCallback;
    .param p2, "delay"    # J

    .line 130
    iget-object v0, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 131
    iget-object v0, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mScheduler:Landroidx/dynamicanimation/animation/FrameCallbackScheduler;

    iget-object v1, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Landroidx/dynamicanimation/animation/FrameCallbackScheduler;->postFrameCallback(Ljava/lang/Runnable;)V

    .line 132
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_1

    .line 133
    invoke-static {}, Landroid/animation/ValueAnimator;->getDurationScale()F

    move-result v0

    iput v0, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mDurationScale:F

    .line 134
    iget-object v0, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mDurationScaleChangeListener:Landroidx/dynamicanimation/animation/AnimationHandler$DurationScaleChangeListener;

    if-nez v0, :cond_0

    .line 135
    new-instance v0, Landroidx/dynamicanimation/animation/AnimationHandler$DurationScaleChangeListener33;

    invoke-direct {v0, p0}, Landroidx/dynamicanimation/animation/AnimationHandler$DurationScaleChangeListener33;-><init>(Landroidx/dynamicanimation/animation/AnimationHandler;)V

    iput-object v0, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mDurationScaleChangeListener:Landroidx/dynamicanimation/animation/AnimationHandler$DurationScaleChangeListener;

    .line 137
    :cond_0
    iget-object v0, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mDurationScaleChangeListener:Landroidx/dynamicanimation/animation/AnimationHandler$DurationScaleChangeListener;

    invoke-interface {v0}, Landroidx/dynamicanimation/animation/AnimationHandler$DurationScaleChangeListener;->register()Z

    .line 140
    :cond_1
    iget-object v0, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 141
    iget-object v0, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    :cond_2
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_3

    .line 145
    iget-object v0, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mDelayedCallbackStartTime:Landroidx/collection/SimpleArrayMap;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    add-long/2addr v1, p2

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    :cond_3
    return-void
.end method

.method doAnimationFrame(J)V
    .locals 5
    .param p1, "frameTime"    # J

    .line 163
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 164
    .local v0, "currentTime":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 165
    iget-object v3, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/dynamicanimation/animation/AnimationHandler$AnimationFrameCallback;

    .line 166
    .local v3, "callback":Landroidx/dynamicanimation/animation/AnimationHandler$AnimationFrameCallback;
    if-nez v3, :cond_0

    .line 167
    goto :goto_1

    .line 169
    :cond_0
    invoke-direct {p0, v3, v0, v1}, Landroidx/dynamicanimation/animation/AnimationHandler;->isCallbackDue(Landroidx/dynamicanimation/animation/AnimationHandler$AnimationFrameCallback;J)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 170
    invoke-interface {v3, p1, p2}, Landroidx/dynamicanimation/animation/AnimationHandler$AnimationFrameCallback;->doAnimationFrame(J)Z

    .line 164
    .end local v3    # "callback":Landroidx/dynamicanimation/animation/AnimationHandler$AnimationFrameCallback;
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 173
    .end local v2    # "i":I
    :cond_2
    invoke-direct {p0}, Landroidx/dynamicanimation/animation/AnimationHandler;->cleanUpList()V

    .line 174
    return-void
.end method

.method public getDurationScale()F
    .locals 1

    .line 283
    iget v0, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mDurationScale:F

    return v0
.end method

.method getScheduler()Landroidx/dynamicanimation/animation/FrameCallbackScheduler;
    .locals 1

    .line 228
    iget-object v0, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mScheduler:Landroidx/dynamicanimation/animation/FrameCallbackScheduler;

    return-object v0
.end method

.method isCurrentThread()Z
    .locals 1

    .line 183
    iget-object v0, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mScheduler:Landroidx/dynamicanimation/animation/FrameCallbackScheduler;

    invoke-interface {v0}, Landroidx/dynamicanimation/animation/FrameCallbackScheduler;->isCurrentThread()Z

    move-result v0

    return v0
.end method

.method synthetic lambda$new$0$androidx-dynamicanimation-animation-AnimationHandler()V
    .locals 1

    .line 93
    iget-object v0, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mCallbackDispatcher:Landroidx/dynamicanimation/animation/AnimationHandler$AnimationCallbackDispatcher;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/AnimationHandler$AnimationCallbackDispatcher;->dispatchAnimationFrame()V

    return-void
.end method

.method removeCallback(Landroidx/dynamicanimation/animation/AnimationHandler$AnimationFrameCallback;)V
    .locals 3
    .param p1, "callback"    # Landroidx/dynamicanimation/animation/AnimationHandler$AnimationFrameCallback;

    .line 153
    iget-object v0, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mDelayedCallbackStartTime:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v0, p1}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    iget-object v0, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 155
    .local v0, "id":I
    if-ltz v0, :cond_0

    .line 156
    iget-object v1, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 157
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mListDirty:Z

    .line 159
    :cond_0
    return-void
.end method
