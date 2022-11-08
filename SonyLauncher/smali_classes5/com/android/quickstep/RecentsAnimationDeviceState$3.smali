.class Lcom/android/quickstep/RecentsAnimationDeviceState$3;
.super Ljava/lang/Object;
.source "RecentsAnimationDeviceState.java"

# interfaces
.implements Lcom/android/systemui/shared/system/TaskStackChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/RecentsAnimationDeviceState;-><init>(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quickstep/RecentsAnimationDeviceState;


# direct methods
.method constructor <init>(Lcom/android/quickstep/RecentsAnimationDeviceState;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/quickstep/RecentsAnimationDeviceState;

    .line 217
    iput-object p1, p0, Lcom/android/quickstep/RecentsAnimationDeviceState$3;->this$0:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityPinned(Ljava/lang/String;III)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "taskId"    # I
    .param p4, "stackId"    # I

    .line 220
    iget-object v0, p0, Lcom/android/quickstep/RecentsAnimationDeviceState$3;->this$0:Lcom/android/quickstep/RecentsAnimationDeviceState;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/quickstep/RecentsAnimationDeviceState;->-$$Nest$fputmPipIsActive(Lcom/android/quickstep/RecentsAnimationDeviceState;Z)V

    .line 221
    return-void
.end method

.method public onActivityUnpinned()V
    .locals 2

    .line 225
    iget-object v0, p0, Lcom/android/quickstep/RecentsAnimationDeviceState$3;->this$0:Lcom/android/quickstep/RecentsAnimationDeviceState;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/quickstep/RecentsAnimationDeviceState;->-$$Nest$fputmPipIsActive(Lcom/android/quickstep/RecentsAnimationDeviceState;Z)V

    .line 226
    return-void
.end method
