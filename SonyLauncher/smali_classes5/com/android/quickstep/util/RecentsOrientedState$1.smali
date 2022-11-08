.class Lcom/android/quickstep/util/RecentsOrientedState$1;
.super Landroid/view/OrientationEventListener;
.source "RecentsOrientedState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/util/RecentsOrientedState;-><init>(Landroid/content/Context;Lcom/android/quickstep/BaseActivityInterface;Ljava/util/function/IntConsumer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quickstep/util/RecentsOrientedState;

.field final synthetic val$rotationChangeListener:Ljava/util/function/IntConsumer;


# direct methods
.method constructor <init>(Lcom/android/quickstep/util/RecentsOrientedState;Landroid/content/Context;Ljava/util/function/IntConsumer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/quickstep/util/RecentsOrientedState;
    .param p2, "arg0"    # Landroid/content/Context;

    .line 144
    iput-object p1, p0, Lcom/android/quickstep/util/RecentsOrientedState$1;->this$0:Lcom/android/quickstep/util/RecentsOrientedState;

    iput-object p3, p0, Lcom/android/quickstep/util/RecentsOrientedState$1;->val$rotationChangeListener:Ljava/util/function/IntConsumer;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 2
    .param p1, "degrees"    # I

    .line 147
    int-to-float v0, p1

    iget-object v1, p0, Lcom/android/quickstep/util/RecentsOrientedState$1;->this$0:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-static {v1}, Lcom/android/quickstep/util/RecentsOrientedState;->-$$Nest$fgetmPreviousRotation(Lcom/android/quickstep/util/RecentsOrientedState;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/quickstep/util/RecentsOrientedState;->getRotationForUserDegreesRotated(FI)I

    move-result v0

    .line 148
    .local v0, "newRotation":I
    iget-object v1, p0, Lcom/android/quickstep/util/RecentsOrientedState$1;->this$0:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-static {v1}, Lcom/android/quickstep/util/RecentsOrientedState;->-$$Nest$fgetmPreviousRotation(Lcom/android/quickstep/util/RecentsOrientedState;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 149
    iget-object v1, p0, Lcom/android/quickstep/util/RecentsOrientedState$1;->this$0:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-static {v1, v0}, Lcom/android/quickstep/util/RecentsOrientedState;->-$$Nest$fputmPreviousRotation(Lcom/android/quickstep/util/RecentsOrientedState;I)V

    .line 150
    iget-object v1, p0, Lcom/android/quickstep/util/RecentsOrientedState$1;->val$rotationChangeListener:Ljava/util/function/IntConsumer;

    invoke-interface {v1, v0}, Ljava/util/function/IntConsumer;->accept(I)V

    .line 152
    :cond_0
    return-void
.end method
