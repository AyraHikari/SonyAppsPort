.class Lcom/android/systemui/shared/recents/view/RecentsTransition$1;
.super Ljava/lang/Object;
.source "RecentsTransition.java"

# interfaces
.implements Landroid/app/ActivityOptions$OnAnimationStartedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/shared/recents/view/RecentsTransition;->createAspectScaleAnimation(Landroid/content/Context;Landroid/os/Handler;ZLcom/android/systemui/shared/recents/view/AppTransitionAnimationSpecsFuture;Ljava/lang/Runnable;)Landroid/app/ActivityOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mHandled:Z

.field final synthetic val$animationStartCallback:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/android/systemui/shared/recents/view/RecentsTransition$1;->val$animationStartCallback:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStarted(J)V
    .locals 1
    .param p1, "elapsedRealTime"    # J

    .line 51
    iget-boolean v0, p0, Lcom/android/systemui/shared/recents/view/RecentsTransition$1;->mHandled:Z

    if-eqz v0, :cond_0

    .line 52
    return-void

    .line 54
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/shared/recents/view/RecentsTransition$1;->mHandled:Z

    .line 56
    iget-object v0, p0, Lcom/android/systemui/shared/recents/view/RecentsTransition$1;->val$animationStartCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 57
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 59
    :cond_1
    return-void
.end method
