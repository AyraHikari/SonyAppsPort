.class Lcom/android/launcher3/taskbar/TaskbarDragController$3;
.super Ljava/lang/Object;
.source "TaskbarDragController.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/taskbar/TaskbarDragController;->animateGlobalDragViewToOriginalPosition(Lcom/android/launcher3/BubbleTextView;Landroid/view/DragEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/taskbar/TaskbarDragController;

.field final synthetic val$dragSurface:Landroid/view/SurfaceControl;

.field final synthetic val$fromX:F

.field final synthetic val$fromY:F

.field final synthetic val$toAlpha:F

.field final synthetic val$toPosition:[I

.field final synthetic val$toScale:F

.field final synthetic val$tx:Landroid/view/SurfaceControl$Transaction;


# direct methods
.method constructor <init>(Lcom/android/launcher3/taskbar/TaskbarDragController;FFLandroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;F[IF)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/taskbar/TaskbarDragController;

    .line 469
    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarDragController$3;->this$0:Lcom/android/launcher3/taskbar/TaskbarDragController;

    iput p2, p0, Lcom/android/launcher3/taskbar/TaskbarDragController$3;->val$toScale:F

    iput p3, p0, Lcom/android/launcher3/taskbar/TaskbarDragController$3;->val$toAlpha:F

    iput-object p4, p0, Lcom/android/launcher3/taskbar/TaskbarDragController$3;->val$tx:Landroid/view/SurfaceControl$Transaction;

    iput-object p5, p0, Lcom/android/launcher3/taskbar/TaskbarDragController$3;->val$dragSurface:Landroid/view/SurfaceControl;

    iput p6, p0, Lcom/android/launcher3/taskbar/TaskbarDragController$3;->val$fromX:F

    iput-object p7, p0, Lcom/android/launcher3/taskbar/TaskbarDragController$3;->val$toPosition:[I

    iput p8, p0, Lcom/android/launcher3/taskbar/TaskbarDragController$3;->val$fromY:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 10
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 472
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    .line 473
    .local v0, "t":F
    sget-object v1, Lcom/android/launcher3/anim/Interpolators;->ACCEL_2:Landroid/view/animation/Interpolator;

    invoke-interface {v1, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    .line 474
    .local v1, "accelT":F
    iget v2, p0, Lcom/android/launcher3/taskbar/TaskbarDragController$3;->val$toScale:F

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v2, v3, v2

    mul-float/2addr v2, v0

    sub-float v2, v3, v2

    .line 475
    .local v2, "scale":F
    iget v4, p0, Lcom/android/launcher3/taskbar/TaskbarDragController$3;->val$toAlpha:F

    sub-float v4, v3, v4

    mul-float/2addr v4, v1

    sub-float/2addr v3, v4

    .line 476
    .local v3, "alpha":F
    iget-object v4, p0, Lcom/android/launcher3/taskbar/TaskbarDragController$3;->val$tx:Landroid/view/SurfaceControl$Transaction;

    iget-object v5, p0, Lcom/android/launcher3/taskbar/TaskbarDragController$3;->val$dragSurface:Landroid/view/SurfaceControl;

    iget v6, p0, Lcom/android/launcher3/taskbar/TaskbarDragController$3;->val$fromX:F

    iget-object v7, p0, Lcom/android/launcher3/taskbar/TaskbarDragController$3;->val$toPosition:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    int-to-float v7, v7

    invoke-static {v0, v6, v7}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v6

    iget v7, p0, Lcom/android/launcher3/taskbar/TaskbarDragController$3;->val$fromY:F

    iget-object v8, p0, Lcom/android/launcher3/taskbar/TaskbarDragController$3;->val$toPosition:[I

    const/4 v9, 0x1

    aget v8, v8, v9

    int-to-float v8, v8

    .line 477
    invoke-static {v0, v7, v8}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v7

    .line 476
    invoke-virtual {v4, v5, v6, v7}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 478
    iget-object v4, p0, Lcom/android/launcher3/taskbar/TaskbarDragController$3;->val$tx:Landroid/view/SurfaceControl$Transaction;

    iget-object v5, p0, Lcom/android/launcher3/taskbar/TaskbarDragController$3;->val$dragSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v4, v5, v2, v2}, Landroid/view/SurfaceControl$Transaction;->setScale(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 479
    iget-object v4, p0, Lcom/android/launcher3/taskbar/TaskbarDragController$3;->val$tx:Landroid/view/SurfaceControl$Transaction;

    iget-object v5, p0, Lcom/android/launcher3/taskbar/TaskbarDragController$3;->val$dragSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v4, v5, v3}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 480
    iget-object v4, p0, Lcom/android/launcher3/taskbar/TaskbarDragController$3;->val$tx:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v4}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 481
    return-void
.end method
