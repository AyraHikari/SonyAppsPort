.class public Lcom/android/quickstep/inputconsumers/ResetGestureInputConsumer;
.super Ljava/lang/Object;
.source "ResetGestureInputConsumer.java"

# interfaces
.implements Lcom/android/quickstep/InputConsumer;


# instance fields
.field private final mTaskAnimationManager:Lcom/android/quickstep/TaskAnimationManager;


# direct methods
.method public constructor <init>(Lcom/android/quickstep/TaskAnimationManager;)V
    .locals 0
    .param p1, "taskAnimationManager"    # Lcom/android/quickstep/TaskAnimationManager;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/android/quickstep/inputconsumers/ResetGestureInputConsumer;->mTaskAnimationManager:Lcom/android/quickstep/TaskAnimationManager;

    .line 32
    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    .line 36
    const/16 v0, 0x100

    return v0
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 41
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/ResetGestureInputConsumer;->mTaskAnimationManager:Lcom/android/quickstep/TaskAnimationManager;

    .line 42
    invoke-virtual {v0}, Lcom/android/quickstep/TaskAnimationManager;->isRecentsAnimationRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/ResetGestureInputConsumer;->mTaskAnimationManager:Lcom/android/quickstep/TaskAnimationManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/quickstep/TaskAnimationManager;->finishRunningRecentsAnimation(Z)V

    .line 45
    :cond_0
    return-void
.end method
