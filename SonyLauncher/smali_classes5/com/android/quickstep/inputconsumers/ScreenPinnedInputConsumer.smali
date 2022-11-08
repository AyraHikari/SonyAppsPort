.class public Lcom/android/quickstep/inputconsumers/ScreenPinnedInputConsumer;
.super Ljava/lang/Object;
.source "ScreenPinnedInputConsumer.java"

# interfaces
.implements Lcom/android/quickstep/InputConsumer;


# static fields
.field private static final TAG:Ljava/lang/String; = "ScreenPinnedConsumer"


# instance fields
.field private final mMotionPauseDetector:Lcom/android/quickstep/util/MotionPauseDetector;

.field private final mMotionPauseMinDisplacement:F

.field private mTouchDownY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/quickstep/GestureState;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "gestureState"    # Lcom/android/quickstep/GestureState;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$dimen;->motion_pause_detector_min_displacement_from_app:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/quickstep/inputconsumers/ScreenPinnedInputConsumer;->mMotionPauseMinDisplacement:F

    .line 44
    new-instance v0, Lcom/android/quickstep/util/MotionPauseDetector;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/android/quickstep/util/MotionPauseDetector;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/android/quickstep/inputconsumers/ScreenPinnedInputConsumer;->mMotionPauseDetector:Lcom/android/quickstep/util/MotionPauseDetector;

    .line 45
    new-instance v1, Lcom/android/quickstep/inputconsumers/ScreenPinnedInputConsumer$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/quickstep/inputconsumers/ScreenPinnedInputConsumer$$ExternalSyntheticLambda0;-><init>(Lcom/android/quickstep/inputconsumers/ScreenPinnedInputConsumer;Landroid/content/Context;Lcom/android/quickstep/GestureState;)V

    invoke-virtual {v0, v1}, Lcom/android/quickstep/util/MotionPauseDetector;->setOnMotionPauseListener(Lcom/android/quickstep/util/MotionPauseDetector$OnMotionPauseListener;)V

    .line 56
    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    .line 60
    const/16 v0, 0x40

    return v0
.end method

.method synthetic lambda$new$0$com-android-quickstep-inputconsumers-ScreenPinnedInputConsumer(Landroid/content/Context;Lcom/android/quickstep/GestureState;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "gestureState"    # Lcom/android/quickstep/GestureState;

    .line 46
    sget-object v0, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/SystemUiProxy;

    invoke-virtual {v0}, Lcom/android/quickstep/SystemUiProxy;->stopScreenPinning()V

    .line 47
    invoke-virtual {p2}, Lcom/android/quickstep/GestureState;->getActivityInterface()Lcom/android/quickstep/BaseActivityInterface;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Lcom/android/quickstep/BaseActivityInterface;->getCreatedActivity()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object v0

    .line 49
    .local v0, "launcherActivity":Lcom/android/launcher3/BaseDraggingActivity;
    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {v0}, Lcom/android/launcher3/BaseDraggingActivity;->getRootView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/view/View;->performHapticFeedback(II)Z

    .line 54
    :cond_0
    iget-object v1, p0, Lcom/android/quickstep/inputconsumers/ScreenPinnedInputConsumer;->mMotionPauseDetector:Lcom/android/quickstep/util/MotionPauseDetector;

    invoke-virtual {v1}, Lcom/android/quickstep/util/MotionPauseDetector;->clear()V

    .line 55
    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 65
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    .line 66
    .local v0, "y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 71
    :pswitch_0
    iget v1, p0, Lcom/android/quickstep/inputconsumers/ScreenPinnedInputConsumer;->mTouchDownY:F

    sub-float/2addr v1, v0

    .line 72
    .local v1, "displacement":F
    iget-object v2, p0, Lcom/android/quickstep/inputconsumers/ScreenPinnedInputConsumer;->mMotionPauseDetector:Lcom/android/quickstep/util/MotionPauseDetector;

    iget v3, p0, Lcom/android/quickstep/inputconsumers/ScreenPinnedInputConsumer;->mMotionPauseMinDisplacement:F

    cmpg-float v3, v1, v3

    if-gez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2, v3}, Lcom/android/quickstep/util/MotionPauseDetector;->setDisallowPause(Z)V

    .line 73
    iget-object v2, p0, Lcom/android/quickstep/inputconsumers/ScreenPinnedInputConsumer;->mMotionPauseDetector:Lcom/android/quickstep/util/MotionPauseDetector;

    invoke-virtual {v2, p1}, Lcom/android/quickstep/util/MotionPauseDetector;->addPosition(Landroid/view/MotionEvent;)V

    .line 74
    goto :goto_1

    .line 77
    .end local v1    # "displacement":F
    :pswitch_1
    iget-object v1, p0, Lcom/android/quickstep/inputconsumers/ScreenPinnedInputConsumer;->mMotionPauseDetector:Lcom/android/quickstep/util/MotionPauseDetector;

    invoke-virtual {v1}, Lcom/android/quickstep/util/MotionPauseDetector;->clear()V

    goto :goto_1

    .line 68
    :pswitch_2
    iput v0, p0, Lcom/android/quickstep/inputconsumers/ScreenPinnedInputConsumer;->mTouchDownY:F

    .line 69
    nop

    .line 80
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
