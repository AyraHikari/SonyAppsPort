.class Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;
.super Ljava/lang/Object;
.source "OverviewCommandHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/OverviewCommandHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CommandInfo"
.end annotation


# instance fields
.field public final createTime:J

.field mActiveCallbacks:Lcom/android/quickstep/RecentsAnimationCallbacks;

.field public final type:I


# direct methods
.method constructor <init>(I)V
    .locals 2
    .param p1, "type"    # I

    .line 309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 305
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;->createTime:J

    .line 310
    iput p1, p0, Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;->type:I

    .line 311
    return-void
.end method


# virtual methods
.method removeListener(Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;

    .line 314
    iget-object v0, p0, Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;->mActiveCallbacks:Lcom/android/quickstep/RecentsAnimationCallbacks;

    if-eqz v0, :cond_0

    .line 315
    invoke-virtual {v0, p1}, Lcom/android/quickstep/RecentsAnimationCallbacks;->removeListener(Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;)V

    .line 317
    :cond_0
    return-void
.end method
