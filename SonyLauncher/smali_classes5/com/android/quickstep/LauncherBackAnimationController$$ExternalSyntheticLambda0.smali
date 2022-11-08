.class public final synthetic Lcom/android/quickstep/LauncherBackAnimationController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/android/quickstep/LauncherBackAnimationController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/LauncherBackAnimationController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/LauncherBackAnimationController$$ExternalSyntheticLambda0;->f$0:Lcom/android/quickstep/LauncherBackAnimationController;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/LauncherBackAnimationController$$ExternalSyntheticLambda0;->f$0:Lcom/android/quickstep/LauncherBackAnimationController;

    invoke-virtual {v0, p1}, Lcom/android/quickstep/LauncherBackAnimationController;->lambda$resetPositionAnimated$0$com-android-quickstep-LauncherBackAnimationController(Landroid/animation/ValueAnimator;)V

    return-void
.end method
