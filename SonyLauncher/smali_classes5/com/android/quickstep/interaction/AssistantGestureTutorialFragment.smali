.class public Lcom/android/quickstep/interaction/AssistantGestureTutorialFragment;
.super Lcom/android/quickstep/interaction/TutorialFragment;
.source "AssistantGestureTutorialFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/android/quickstep/interaction/TutorialFragment;-><init>()V

    return-void
.end method


# virtual methods
.method createController(Lcom/android/quickstep/interaction/TutorialController$TutorialType;)Lcom/android/quickstep/interaction/TutorialController;
    .locals 1
    .param p1, "type"    # Lcom/android/quickstep/interaction/TutorialController$TutorialType;

    .line 33
    new-instance v0, Lcom/android/quickstep/interaction/AssistantGestureTutorialController;

    invoke-direct {v0, p0, p1}, Lcom/android/quickstep/interaction/AssistantGestureTutorialController;-><init>(Lcom/android/quickstep/interaction/AssistantGestureTutorialFragment;Lcom/android/quickstep/interaction/TutorialController$TutorialType;)V

    return-object v0
.end method

.method getControllerClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/quickstep/interaction/TutorialController;",
            ">;"
        }
    .end annotation

    .line 38
    const-class v0, Lcom/android/quickstep/interaction/AssistantGestureTutorialController;

    return-object v0
.end method

.method public bridge synthetic isFoldable()Z
    .locals 1

    .line 27
    invoke-super {p0}, Lcom/android/quickstep/interaction/TutorialFragment;->isFoldable()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isLargeScreen()Z
    .locals 1

    .line 27
    invoke-super {p0}, Lcom/android/quickstep/interaction/TutorialFragment;->isLargeScreen()Z

    move-result v0

    return v0
.end method

.method logTutorialStepCompleted(Lcom/android/launcher3/logging/StatsLogManager;)V
    .locals 0
    .param p1, "statsLogManager"    # Lcom/android/launcher3/logging/StatsLogManager;

    .line 57
    return-void
.end method

.method logTutorialStepShown(Lcom/android/launcher3/logging/StatsLogManager;)V
    .locals 0
    .param p1, "statsLogManager"    # Lcom/android/launcher3/logging/StatsLogManager;

    .line 52
    return-void
.end method

.method public bridge synthetic onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 27
    invoke-super {p0, p1}, Lcom/android/quickstep/interaction/TutorialFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public bridge synthetic onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 27
    invoke-super {p0, p1, p2, p3}, Lcom/android/quickstep/interaction/TutorialFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onDestroy()V
    .locals 0

    .line 27
    invoke-super {p0}, Lcom/android/quickstep/interaction/TutorialFragment;->onDestroy()V

    return-void
.end method

.method public bridge synthetic onResume()V
    .locals 0

    .line 27
    invoke-super {p0}, Lcom/android/quickstep/interaction/TutorialFragment;->onResume()V

    return-void
.end method

.method public bridge synthetic onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 27
    invoke-super {p0, p1}, Lcom/android/quickstep/interaction/TutorialFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public bridge synthetic onStop()V
    .locals 0

    .line 27
    invoke-super {p0}, Lcom/android/quickstep/interaction/TutorialFragment;->onStop()V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;

    .line 43
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/quickstep/interaction/AssistantGestureTutorialFragment;->mTutorialController:Lcom/android/quickstep/interaction/TutorialController;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/android/quickstep/interaction/AssistantGestureTutorialFragment;->mTutorialController:Lcom/android/quickstep/interaction/TutorialController;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/quickstep/interaction/TutorialController;->setRippleHotspot(FF)V

    .line 46
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/quickstep/interaction/TutorialFragment;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
