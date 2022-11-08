.class public final synthetic Lcom/android/quickstep/TaskAnimationManager$2$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/animation/ValueAnimator;

    invoke-static {p1}, Lcom/android/quickstep/TaskAnimationManager$2;->lambda$onTasksAppeared$2(Landroid/animation/ValueAnimator;)V

    return-void
.end method
