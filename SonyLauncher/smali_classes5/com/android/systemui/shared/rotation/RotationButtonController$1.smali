.class Lcom/android/systemui/shared/rotation/RotationButtonController$1;
.super Landroid/view/IRotationWatcher$Stub;
.source "RotationButtonController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/shared/rotation/RotationButtonController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/shared/rotation/RotationButtonController;


# direct methods
.method constructor <init>(Lcom/android/systemui/shared/rotation/RotationButtonController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/shared/rotation/RotationButtonController;

    .line 123
    iput-object p1, p0, Lcom/android/systemui/shared/rotation/RotationButtonController$1;->this$0:Lcom/android/systemui/shared/rotation/RotationButtonController;

    invoke-direct {p0}, Landroid/view/IRotationWatcher$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onRotationChanged$0$com-android-systemui-shared-rotation-RotationButtonController$1(I)V
    .locals 3
    .param p1, "rotation"    # I

    .line 131
    iget-object v0, p0, Lcom/android/systemui/shared/rotation/RotationButtonController$1;->this$0:Lcom/android/systemui/shared/rotation/RotationButtonController;

    invoke-virtual {v0}, Lcom/android/systemui/shared/rotation/RotationButtonController;->isRotationLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    iget-object v0, p0, Lcom/android/systemui/shared/rotation/RotationButtonController$1;->this$0:Lcom/android/systemui/shared/rotation/RotationButtonController;

    invoke-static {v0, p1}, Lcom/android/systemui/shared/rotation/RotationButtonController;->access$100(Lcom/android/systemui/shared/rotation/RotationButtonController;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/android/systemui/shared/rotation/RotationButtonController$1;->this$0:Lcom/android/systemui/shared/rotation/RotationButtonController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/shared/rotation/RotationButtonController;->setRotationLockedAtAngle(I)V

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shared/rotation/RotationButtonController$1;->this$0:Lcom/android/systemui/shared/rotation/RotationButtonController;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/shared/rotation/RotationButtonController;->setRotateSuggestionButtonState(ZZ)V

    .line 138
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/shared/rotation/RotationButtonController$1;->this$0:Lcom/android/systemui/shared/rotation/RotationButtonController;

    invoke-static {v0}, Lcom/android/systemui/shared/rotation/RotationButtonController;->access$200(Lcom/android/systemui/shared/rotation/RotationButtonController;)Ljava/util/function/Consumer;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 139
    iget-object v0, p0, Lcom/android/systemui/shared/rotation/RotationButtonController$1;->this$0:Lcom/android/systemui/shared/rotation/RotationButtonController;

    invoke-static {v0}, Lcom/android/systemui/shared/rotation/RotationButtonController;->access$200(Lcom/android/systemui/shared/rotation/RotationButtonController;)Ljava/util/function/Consumer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 141
    :cond_2
    return-void
.end method

.method public onRotationChanged(I)V
    .locals 2
    .param p1, "rotation"    # I

    .line 128
    iget-object v0, p0, Lcom/android/systemui/shared/rotation/RotationButtonController$1;->this$0:Lcom/android/systemui/shared/rotation/RotationButtonController;

    invoke-static {v0}, Lcom/android/systemui/shared/rotation/RotationButtonController;->access$000(Lcom/android/systemui/shared/rotation/RotationButtonController;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/shared/rotation/RotationButtonController$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/shared/rotation/RotationButtonController$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/shared/rotation/RotationButtonController$1;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 142
    return-void
.end method
