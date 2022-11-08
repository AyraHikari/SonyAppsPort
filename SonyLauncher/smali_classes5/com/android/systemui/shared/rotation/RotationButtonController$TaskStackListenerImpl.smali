.class Lcom/android/systemui/shared/rotation/RotationButtonController$TaskStackListenerImpl;
.super Ljava/lang/Object;
.source "RotationButtonController.java"

# interfaces
.implements Lcom/android/systemui/shared/system/TaskStackChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/shared/rotation/RotationButtonController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TaskStackListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/shared/rotation/RotationButtonController;


# direct methods
.method private constructor <init>(Lcom/android/systemui/shared/rotation/RotationButtonController;)V
    .locals 0

    .line 571
    iput-object p1, p0, Lcom/android/systemui/shared/rotation/RotationButtonController$TaskStackListenerImpl;->this$0:Lcom/android/systemui/shared/rotation/RotationButtonController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/shared/rotation/RotationButtonController;Lcom/android/systemui/shared/rotation/RotationButtonController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/shared/rotation/RotationButtonController;
    .param p2, "x1"    # Lcom/android/systemui/shared/rotation/RotationButtonController$1;

    .line 571
    invoke-direct {p0, p1}, Lcom/android/systemui/shared/rotation/RotationButtonController$TaskStackListenerImpl;-><init>(Lcom/android/systemui/shared/rotation/RotationButtonController;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$onActivityRequestedOrientationChanged$0$com-android-systemui-shared-rotation-RotationButtonController$TaskStackListenerImpl(ILandroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 2
    .param p1, "taskId"    # I
    .param p2, "a"    # Landroid/app/ActivityManager$RunningTaskInfo;

    .line 597
    iget v0, p2, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/shared/rotation/RotationButtonController$TaskStackListenerImpl;->this$0:Lcom/android/systemui/shared/rotation/RotationButtonController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/rotation/RotationButtonController;->setRotateSuggestionButtonState(Z)V

    .line 598
    :cond_0
    return-void
.end method

.method public onActivityRequestedOrientationChanged(II)V
    .locals 2
    .param p1, "taskId"    # I
    .param p2, "requestedOrientation"    # I

    .line 594
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/shared/rotation/RotationButtonController$TaskStackListenerImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/systemui/shared/rotation/RotationButtonController$TaskStackListenerImpl$$ExternalSyntheticLambda0;-><init>()V

    .line 595
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/shared/rotation/RotationButtonController$TaskStackListenerImpl$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/shared/rotation/RotationButtonController$TaskStackListenerImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/shared/rotation/RotationButtonController$TaskStackListenerImpl;I)V

    .line 596
    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 599
    return-void
.end method

.method public onTaskMovedToFront(I)V
    .locals 2
    .param p1, "taskId"    # I

    .line 587
    iget-object v0, p0, Lcom/android/systemui/shared/rotation/RotationButtonController$TaskStackListenerImpl;->this$0:Lcom/android/systemui/shared/rotation/RotationButtonController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/rotation/RotationButtonController;->setRotateSuggestionButtonState(Z)V

    .line 588
    return-void
.end method

.method public onTaskRemoved(I)V
    .locals 2
    .param p1, "taskId"    # I

    .line 582
    iget-object v0, p0, Lcom/android/systemui/shared/rotation/RotationButtonController$TaskStackListenerImpl;->this$0:Lcom/android/systemui/shared/rotation/RotationButtonController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/rotation/RotationButtonController;->setRotateSuggestionButtonState(Z)V

    .line 583
    return-void
.end method

.method public onTaskStackChanged()V
    .locals 2

    .line 577
    iget-object v0, p0, Lcom/android/systemui/shared/rotation/RotationButtonController$TaskStackListenerImpl;->this$0:Lcom/android/systemui/shared/rotation/RotationButtonController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/rotation/RotationButtonController;->setRotateSuggestionButtonState(Z)V

    .line 578
    return-void
.end method
