.class Lcom/android/quickstep/util/MotionPauseDetector$SystemVelocityProvider;
.super Ljava/lang/Object;
.source "MotionPauseDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/util/MotionPauseDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SystemVelocityProvider"
.end annotation


# instance fields
.field private final mAxis:I

.field private final mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method constructor <init>(I)V
    .locals 1
    .param p1, "axis"    # I

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/util/MotionPauseDetector$SystemVelocityProvider;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 219
    iput p1, p0, Lcom/android/quickstep/util/MotionPauseDetector$SystemVelocityProvider;->mAxis:I

    .line 220
    return-void
.end method


# virtual methods
.method public addMotionEvent(Landroid/view/MotionEvent;I)F
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "pointer"    # I

    .line 227
    iget-object v0, p0, Lcom/android/quickstep/util/MotionPauseDetector$SystemVelocityProvider;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 228
    iget-object v0, p0, Lcom/android/quickstep/util/MotionPauseDetector$SystemVelocityProvider;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 229
    iget v0, p0, Lcom/android/quickstep/util/MotionPauseDetector$SystemVelocityProvider;->mAxis:I

    if-nez v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/android/quickstep/util/MotionPauseDetector$SystemVelocityProvider;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p2}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    goto :goto_0

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/util/MotionPauseDetector$SystemVelocityProvider;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p2}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v0

    .line 229
    :goto_0
    return v0
.end method

.method public clear()V
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/android/quickstep/util/MotionPauseDetector$SystemVelocityProvider;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 239
    return-void
.end method
