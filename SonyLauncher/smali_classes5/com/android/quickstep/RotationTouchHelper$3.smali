.class Lcom/android/quickstep/RotationTouchHelper$3;
.super Landroid/view/OrientationEventListener;
.source "RotationTouchHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/RotationTouchHelper;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quickstep/RotationTouchHelper;


# direct methods
.method constructor <init>(Lcom/android/quickstep/RotationTouchHelper;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/quickstep/RotationTouchHelper;
    .param p2, "arg0"    # Landroid/content/Context;

    .line 160
    iput-object p1, p0, Lcom/android/quickstep/RotationTouchHelper$3;->this$0:Lcom/android/quickstep/RotationTouchHelper;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 3
    .param p1, "degrees"    # I

    .line 163
    int-to-float v0, p1

    iget-object v1, p0, Lcom/android/quickstep/RotationTouchHelper$3;->this$0:Lcom/android/quickstep/RotationTouchHelper;

    invoke-static {v1}, Lcom/android/quickstep/RotationTouchHelper;->-$$Nest$fgetmSensorRotation(Lcom/android/quickstep/RotationTouchHelper;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/quickstep/util/RecentsOrientedState;->getRotationForUserDegreesRotated(FI)I

    move-result v0

    .line 165
    .local v0, "newRotation":I
    iget-object v1, p0, Lcom/android/quickstep/RotationTouchHelper$3;->this$0:Lcom/android/quickstep/RotationTouchHelper;

    invoke-static {v1}, Lcom/android/quickstep/RotationTouchHelper;->-$$Nest$fgetmSensorRotation(Lcom/android/quickstep/RotationTouchHelper;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 166
    return-void

    .line 169
    :cond_0
    iget-object v1, p0, Lcom/android/quickstep/RotationTouchHelper$3;->this$0:Lcom/android/quickstep/RotationTouchHelper;

    invoke-static {v1, v0}, Lcom/android/quickstep/RotationTouchHelper;->-$$Nest$fputmSensorRotation(Lcom/android/quickstep/RotationTouchHelper;I)V

    .line 170
    iget-object v1, p0, Lcom/android/quickstep/RotationTouchHelper$3;->this$0:Lcom/android/quickstep/RotationTouchHelper;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/quickstep/RotationTouchHelper;->-$$Nest$fputmPrioritizeDeviceRotation(Lcom/android/quickstep/RotationTouchHelper;Z)V

    .line 172
    iget-object v1, p0, Lcom/android/quickstep/RotationTouchHelper$3;->this$0:Lcom/android/quickstep/RotationTouchHelper;

    invoke-static {v1}, Lcom/android/quickstep/RotationTouchHelper;->-$$Nest$fgetmCurrentAppRotation(Lcom/android/quickstep/RotationTouchHelper;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 175
    iget-object v1, p0, Lcom/android/quickstep/RotationTouchHelper$3;->this$0:Lcom/android/quickstep/RotationTouchHelper;

    invoke-static {v1}, Lcom/android/quickstep/RotationTouchHelper;->-$$Nest$mtoggleSecondaryNavBarsForRotation(Lcom/android/quickstep/RotationTouchHelper;)V

    .line 177
    :cond_1
    return-void
.end method
