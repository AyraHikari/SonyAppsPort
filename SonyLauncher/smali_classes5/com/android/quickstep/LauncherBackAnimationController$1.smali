.class Lcom/android/quickstep/LauncherBackAnimationController$1;
.super Landroid/window/IOnBackInvokedCallback$Stub;
.source "LauncherBackAnimationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/LauncherBackAnimationController;->registerBackCallbacks(Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quickstep/LauncherBackAnimationController;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/android/quickstep/LauncherBackAnimationController;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/quickstep/LauncherBackAnimationController;

    .line 119
    iput-object p1, p0, Lcom/android/quickstep/LauncherBackAnimationController$1;->this$0:Lcom/android/quickstep/LauncherBackAnimationController;

    iput-object p2, p0, Lcom/android/quickstep/LauncherBackAnimationController$1;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Landroid/window/IOnBackInvokedCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onBackCancelled$0$com-android-quickstep-LauncherBackAnimationController$1()V
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/android/quickstep/LauncherBackAnimationController$1;->this$0:Lcom/android/quickstep/LauncherBackAnimationController;

    invoke-static {v0}, Lcom/android/quickstep/LauncherBackAnimationController;->-$$Nest$mresetPositionAnimated(Lcom/android/quickstep/LauncherBackAnimationController;)V

    return-void
.end method

.method synthetic lambda$onBackInvoked$1$com-android-quickstep-LauncherBackAnimationController$1()V
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/android/quickstep/LauncherBackAnimationController$1;->this$0:Lcom/android/quickstep/LauncherBackAnimationController;

    invoke-static {v0}, Lcom/android/quickstep/LauncherBackAnimationController;->-$$Nest$mstartTransition(Lcom/android/quickstep/LauncherBackAnimationController;)V

    return-void
.end method

.method public onBackCancelled()V
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/android/quickstep/LauncherBackAnimationController$1;->val$handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/quickstep/LauncherBackAnimationController$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/quickstep/LauncherBackAnimationController$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/quickstep/LauncherBackAnimationController$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 123
    return-void
.end method

.method public onBackInvoked()V
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/android/quickstep/LauncherBackAnimationController$1;->val$handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/quickstep/LauncherBackAnimationController$1$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/quickstep/LauncherBackAnimationController$1$$ExternalSyntheticLambda1;-><init>(Lcom/android/quickstep/LauncherBackAnimationController$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 128
    return-void
.end method

.method public onBackProgressed(Landroid/window/BackEvent;)V
    .locals 4
    .param p1, "backEvent"    # Landroid/window/BackEvent;

    .line 132
    iget-object v0, p0, Lcom/android/quickstep/LauncherBackAnimationController$1;->this$0:Lcom/android/quickstep/LauncherBackAnimationController;

    invoke-virtual {p1}, Landroid/window/BackEvent;->getProgress()F

    move-result v1

    invoke-static {v0, v1}, Lcom/android/quickstep/LauncherBackAnimationController;->-$$Nest$fputmBackProgress(Lcom/android/quickstep/LauncherBackAnimationController;F)V

    .line 134
    iget-object v0, p0, Lcom/android/quickstep/LauncherBackAnimationController$1;->this$0:Lcom/android/quickstep/LauncherBackAnimationController;

    invoke-static {v0}, Lcom/android/quickstep/LauncherBackAnimationController;->-$$Nest$fgetmBackProgress(Lcom/android/quickstep/LauncherBackAnimationController;)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v1, v2, v1

    iget-object v3, p0, Lcom/android/quickstep/LauncherBackAnimationController$1;->this$0:Lcom/android/quickstep/LauncherBackAnimationController;

    invoke-static {v3}, Lcom/android/quickstep/LauncherBackAnimationController;->-$$Nest$fgetmBackProgress(Lcom/android/quickstep/LauncherBackAnimationController;)F

    move-result v3

    sub-float v3, v2, v3

    mul-float/2addr v1, v3

    iget-object v3, p0, Lcom/android/quickstep/LauncherBackAnimationController$1;->this$0:Lcom/android/quickstep/LauncherBackAnimationController;

    invoke-static {v3}, Lcom/android/quickstep/LauncherBackAnimationController;->-$$Nest$fgetmBackProgress(Lcom/android/quickstep/LauncherBackAnimationController;)F

    move-result v3

    sub-float v3, v2, v3

    mul-float/2addr v1, v3

    sub-float/2addr v2, v1

    invoke-static {v0, v2}, Lcom/android/quickstep/LauncherBackAnimationController;->-$$Nest$fputmBackProgress(Lcom/android/quickstep/LauncherBackAnimationController;F)V

    .line 137
    iget-object v0, p0, Lcom/android/quickstep/LauncherBackAnimationController$1;->this$0:Lcom/android/quickstep/LauncherBackAnimationController;

    invoke-static {v0}, Lcom/android/quickstep/LauncherBackAnimationController;->-$$Nest$fgetmBackInProgress(Lcom/android/quickstep/LauncherBackAnimationController;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/android/quickstep/LauncherBackAnimationController$1;->this$0:Lcom/android/quickstep/LauncherBackAnimationController;

    invoke-static {v0, p1}, Lcom/android/quickstep/LauncherBackAnimationController;->-$$Nest$mstartBack(Lcom/android/quickstep/LauncherBackAnimationController;Landroid/window/BackEvent;)V

    goto :goto_0

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/LauncherBackAnimationController$1;->this$0:Lcom/android/quickstep/LauncherBackAnimationController;

    invoke-static {v0}, Lcom/android/quickstep/LauncherBackAnimationController;->-$$Nest$fgetmBackProgress(Lcom/android/quickstep/LauncherBackAnimationController;)F

    move-result v1

    invoke-static {v0, v1, p1}, Lcom/android/quickstep/LauncherBackAnimationController;->-$$Nest$mupdateBackProgress(Lcom/android/quickstep/LauncherBackAnimationController;FLandroid/window/BackEvent;)V

    .line 142
    :goto_0
    return-void
.end method

.method public onBackStarted()V
    .locals 0

    .line 145
    return-void
.end method
