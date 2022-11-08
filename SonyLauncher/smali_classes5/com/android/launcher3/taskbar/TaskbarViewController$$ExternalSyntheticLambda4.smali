.class public final synthetic Lcom/android/launcher3/taskbar/TaskbarViewController$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/taskbar/TaskbarViewController;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/taskbar/TaskbarViewController;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarViewController$$ExternalSyntheticLambda4;->f$0:Lcom/android/launcher3/taskbar/TaskbarViewController;

    iput p2, p0, Lcom/android/launcher3/taskbar/TaskbarViewController$$ExternalSyntheticLambda4;->f$1:I

    iput p3, p0, Lcom/android/launcher3/taskbar/TaskbarViewController$$ExternalSyntheticLambda4;->f$2:I

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController$$ExternalSyntheticLambda4;->f$0:Lcom/android/launcher3/taskbar/TaskbarViewController;

    iget v1, p0, Lcom/android/launcher3/taskbar/TaskbarViewController$$ExternalSyntheticLambda4;->f$1:I

    iget v2, p0, Lcom/android/launcher3/taskbar/TaskbarViewController$$ExternalSyntheticLambda4;->f$2:I

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/launcher3/taskbar/TaskbarViewController;->lambda$createIconAlignmentController$1$com-android-launcher3-taskbar-TaskbarViewController(IILandroid/animation/ValueAnimator;)V

    return-void
.end method
