.class public Lcom/android/launcher3/util/FlingBlockCheck;
.super Ljava/lang/Object;
.source "FlingBlockCheck.java"


# static fields
.field private static final UNBLOCK_FLING_PAUSE_DURATION:J = 0xc8L


# instance fields
.field private mBlockFling:Z

.field private mBlockFlingTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blockFling()V
    .locals 2

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/util/FlingBlockCheck;->mBlockFling:Z

    .line 34
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/launcher3/util/FlingBlockCheck;->mBlockFlingTime:J

    .line 35
    return-void
.end method

.method public isBlocked()Z
    .locals 1

    .line 50
    iget-boolean v0, p0, Lcom/android/launcher3/util/FlingBlockCheck;->mBlockFling:Z

    return v0
.end method

.method public onEvent()V
    .locals 4

    .line 44
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/launcher3/util/FlingBlockCheck;->mBlockFlingTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xc8

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/util/FlingBlockCheck;->mBlockFling:Z

    .line 47
    :cond_0
    return-void
.end method

.method public unblockFling()V
    .locals 2

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/util/FlingBlockCheck;->mBlockFling:Z

    .line 39
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/launcher3/util/FlingBlockCheck;->mBlockFlingTime:J

    .line 40
    return-void
.end method
