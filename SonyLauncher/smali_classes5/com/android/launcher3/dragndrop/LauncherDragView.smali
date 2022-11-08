.class public Lcom/android/launcher3/dragndrop/LauncherDragView;
.super Lcom/android/launcher3/dragndrop/DragView;
.source "LauncherDragView.java"

# interfaces
.implements Lcom/android/launcher3/statemanager/StateManager$StateListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/launcher3/dragndrop/DragView<",
        "Lcom/android/launcher3/Launcher;",
        ">;",
        "Lcom/android/launcher3/statemanager/StateManager$StateListener<",
        "Lcom/android/launcher3/LauncherState;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Launcher;Landroid/graphics/drawable/Drawable;IIFFF)V
    .locals 0
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "registrationX"    # I
    .param p4, "registrationY"    # I
    .param p5, "initialScale"    # F
    .param p6, "scaleOnDrop"    # F
    .param p7, "finalScaleDps"    # F

    .line 34
    invoke-direct/range {p0 .. p7}, Lcom/android/launcher3/dragndrop/DragView;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;IIFFF)V

    .line 36
    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/Launcher;Landroid/view/View;IIIIFFF)V
    .locals 0
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;
    .param p2, "content"    # Landroid/view/View;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "registrationX"    # I
    .param p6, "registrationY"    # I
    .param p7, "initialScale"    # F
    .param p8, "scaleOnDrop"    # F
    .param p9, "finalScaleDps"    # F

    .line 41
    invoke-direct/range {p0 .. p9}, Lcom/android/launcher3/dragndrop/DragView;-><init>(Landroid/content/Context;Landroid/view/View;IIIIFFF)V

    .line 43
    return-void
.end method


# virtual methods
.method public animateTo(IILjava/lang/Runnable;I)V
    .locals 10
    .param p1, "toTouchX"    # I
    .param p2, "toTouchY"    # I
    .param p3, "onCompleteRunnable"    # Ljava/lang/Runnable;
    .param p4, "duration"    # I

    .line 65
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/LauncherDragView;->mTempLoc:[I

    iget v1, p0, Lcom/android/launcher3/dragndrop/LauncherDragView;->mRegistrationX:I

    sub-int v1, p1, v1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 66
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/LauncherDragView;->mTempLoc:[I

    iget v1, p0, Lcom/android/launcher3/dragndrop/LauncherDragView;->mRegistrationY:I

    sub-int v1, p2, v1

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 67
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/LauncherDragView;->mActivity:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v1

    iget-object v3, p0, Lcom/android/launcher3/dragndrop/LauncherDragView;->mTempLoc:[I

    iget v5, p0, Lcom/android/launcher3/dragndrop/LauncherDragView;->mScaleOnDrop:F

    iget v6, p0, Lcom/android/launcher3/dragndrop/LauncherDragView;->mScaleOnDrop:F

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    move-object v2, p0

    move-object v8, p3

    move v9, p4

    invoke-virtual/range {v1 .. v9}, Lcom/android/launcher3/dragndrop/DragLayer;->animateViewIntoPosition(Lcom/android/launcher3/dragndrop/DragView;[IFFFILjava/lang/Runnable;I)V

    .line 69
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 47
    invoke-super {p0}, Lcom/android/launcher3/dragndrop/DragView;->onAttachedToWindow()V

    .line 48
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/LauncherDragView;->mActivity:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/statemanager/StateManager;->addStateListener(Lcom/android/launcher3/statemanager/StateManager$StateListener;)V

    .line 49
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 53
    invoke-super {p0}, Lcom/android/launcher3/dragndrop/DragView;->onDetachedFromWindow()V

    .line 54
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/LauncherDragView;->mActivity:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/statemanager/StateManager;->removeStateListener(Lcom/android/launcher3/statemanager/StateManager$StateListener;)V

    .line 55
    return-void
.end method

.method public onStateTransitionComplete(Lcom/android/launcher3/LauncherState;)V
    .locals 1
    .param p1, "finalState"    # Lcom/android/launcher3/LauncherState;

    .line 59
    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/android/launcher3/LauncherState;->SPRING_LOADED:Lcom/android/launcher3/LauncherState;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 60
    :cond_0
    const/4 v0, 0x4

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 59
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/launcher3/dragndrop/LauncherDragView;->setVisibility(I)V

    .line 61
    return-void
.end method

.method public bridge synthetic onStateTransitionComplete(Ljava/lang/Object;)V
    .locals 0

    .line 28
    check-cast p1, Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/dragndrop/LauncherDragView;->onStateTransitionComplete(Lcom/android/launcher3/LauncherState;)V

    return-void
.end method
