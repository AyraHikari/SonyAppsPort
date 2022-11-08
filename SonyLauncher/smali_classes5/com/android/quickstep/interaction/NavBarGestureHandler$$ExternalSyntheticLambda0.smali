.class public final synthetic Lcom/android/quickstep/interaction/NavBarGestureHandler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/android/quickstep/interaction/NavBarGestureHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/interaction/NavBarGestureHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler$$ExternalSyntheticLambda0;->f$0:Lcom/android/quickstep/interaction/NavBarGestureHandler;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler$$ExternalSyntheticLambda0;->f$0:Lcom/android/quickstep/interaction/NavBarGestureHandler;

    invoke-virtual {v0, p1}, Lcom/android/quickstep/interaction/NavBarGestureHandler;->lambda$onTouch$0$com-android-quickstep-interaction-NavBarGestureHandler(Landroid/animation/ValueAnimator;)V

    return-void
.end method
