.class Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$ViewSwipeUpAnimation$1;
.super Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;
.source "SwipeUpGestureTutorialController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$ViewSwipeUpAnimation;->handleSwipeUpToHome(Landroid/graphics/PointF;)Lcom/android/quickstep/util/RectFSpringAnim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$ViewSwipeUpAnimation;

.field final synthetic val$duration:J


# direct methods
.method constructor <init>(Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$ViewSwipeUpAnimation;J)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$ViewSwipeUpAnimation;

    .line 324
    iput-object p1, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$ViewSwipeUpAnimation$1;->this$1:Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$ViewSwipeUpAnimation;

    iput-wide p2, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$ViewSwipeUpAnimation$1;->val$duration:J

    invoke-direct {p0, p1}, Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;-><init>(Lcom/android/quickstep/SwipeUpAnimationLogic;)V

    return-void
.end method


# virtual methods
.method public createActivityAnimationToHome()Lcom/android/launcher3/anim/AnimatorPlaybackController;
    .locals 3

    .line 327
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iget-wide v1, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$ViewSwipeUpAnimation$1;->val$duration:J

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->wrap(Landroid/animation/AnimatorSet;J)Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object v0

    return-object v0
.end method

.method public getWindowTargetRect()Landroid/graphics/RectF;
    .locals 8

    .line 333
    const/high16 v0, 0x42700000    # 60.0f

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->dpToPx(F)I

    move-result v0

    .line 334
    .local v0, "fakeHomeIconSizePx":I
    iget-object v1, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$ViewSwipeUpAnimation$1;->this$1:Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$ViewSwipeUpAnimation;

    iget-object v1, v1, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$ViewSwipeUpAnimation;->this$0:Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;

    invoke-virtual {v1}, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->getHotseatIconLeft()I

    move-result v1

    .line 335
    .local v1, "fakeHomeIconLeft":I
    iget-object v2, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$ViewSwipeUpAnimation$1;->this$1:Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$ViewSwipeUpAnimation;

    iget-object v2, v2, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$ViewSwipeUpAnimation;->this$0:Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;

    invoke-virtual {v2}, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->getHotseatIconTop()I

    move-result v2

    .line 336
    .local v2, "fakeHomeIconTop":I
    new-instance v3, Landroid/graphics/RectF;

    int-to-float v4, v1

    int-to-float v5, v2

    add-int v6, v1, v0

    int-to-float v6, v6

    add-int v7, v2, v0

    int-to-float v7, v7

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v3
.end method

.method public onCancel()V
    .locals 2

    .line 356
    iget-object v0, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$ViewSwipeUpAnimation$1;->this$1:Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$ViewSwipeUpAnimation;

    iget-object v0, v0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$ViewSwipeUpAnimation;->this$0:Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;

    iget-object v0, v0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->mFakeIconView:Lcom/android/launcher3/views/ClipIconView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/launcher3/views/ClipIconView;->setVisibility(I)V

    .line 357
    return-void
.end method

.method public update(Landroid/graphics/RectF;FF)V
    .locals 10
    .param p1, "rect"    # Landroid/graphics/RectF;
    .param p2, "progress"    # F
    .param p3, "radius"    # F

    .line 343
    iget-object v0, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$ViewSwipeUpAnimation$1;->this$1:Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$ViewSwipeUpAnimation;

    iget-object v0, v0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$ViewSwipeUpAnimation;->this$0:Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;

    iget-object v0, v0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->mFakeIconView:Lcom/android/launcher3/views/ClipIconView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/views/ClipIconView;->setVisibility(I)V

    .line 344
    iget-object v0, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$ViewSwipeUpAnimation$1;->this$1:Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$ViewSwipeUpAnimation;

    iget-object v0, v0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$ViewSwipeUpAnimation;->this$0:Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;

    iget-object v1, v0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->mFakeIconView:Lcom/android/launcher3/views/ClipIconView;

    iget-object v0, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$ViewSwipeUpAnimation$1;->this$1:Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$ViewSwipeUpAnimation;

    iget-object v0, v0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$ViewSwipeUpAnimation;->this$0:Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;

    iget-object v8, v0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->mFakeIconView:Lcom/android/launcher3/views/ClipIconView;

    iget-object v0, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$ViewSwipeUpAnimation$1;->this$1:Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$ViewSwipeUpAnimation;

    .line 348
    invoke-static {v0}, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$ViewSwipeUpAnimation;->access$000(Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$ViewSwipeUpAnimation;)Lcom/android/launcher3/DeviceProfile;

    move-result-object v9

    .line 344
    const v4, 0x3f666666    # 0.9f

    const/16 v6, 0xff

    const/4 v7, 0x0

    move-object v2, p1

    move v3, p2

    move v5, p3

    invoke-virtual/range {v1 .. v9}, Lcom/android/launcher3/views/ClipIconView;->update(Landroid/graphics/RectF;FFFIZLandroid/view/View;Lcom/android/launcher3/DeviceProfile;)V

    .line 349
    iget-object v0, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$ViewSwipeUpAnimation$1;->this$1:Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$ViewSwipeUpAnimation;

    iget-object v0, v0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$ViewSwipeUpAnimation;->this$0:Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;

    iget-object v0, v0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->mFakeIconView:Lcom/android/launcher3/views/ClipIconView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/launcher3/views/ClipIconView;->setAlpha(F)V

    .line 350
    iget-object v0, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$ViewSwipeUpAnimation$1;->this$1:Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$ViewSwipeUpAnimation;

    iget-object v0, v0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$ViewSwipeUpAnimation;->this$0:Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;

    iget-object v0, v0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->mFakeTaskView:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p2}, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$ViewSwipeUpAnimation$1;->getWindowAlpha(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 351
    iget-object v0, p0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$ViewSwipeUpAnimation$1;->this$1:Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$ViewSwipeUpAnimation;

    iget-object v0, v0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$ViewSwipeUpAnimation;->this$0:Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;

    iget-object v0, v0, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController;->mFakePreviousTaskView:Lcom/android/quickstep/interaction/AnimatedTaskView;

    invoke-virtual {p0, p2}, Lcom/android/quickstep/interaction/SwipeUpGestureTutorialController$ViewSwipeUpAnimation$1;->getWindowAlpha(F)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/quickstep/interaction/AnimatedTaskView;->setAlpha(F)V

    .line 352
    return-void
.end method
