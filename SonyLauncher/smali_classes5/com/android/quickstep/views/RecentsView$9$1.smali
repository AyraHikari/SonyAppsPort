.class Lcom/android/quickstep/views/RecentsView$9$1;
.super Ljava/lang/Object;
.source "RecentsView.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/views/RecentsView$9;->setValue(Lcom/android/quickstep/views/RecentsView;F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quickstep/views/RecentsView$9;

.field final synthetic val$scale:F


# direct methods
.method constructor <init>(Lcom/android/quickstep/views/RecentsView$9;F)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/quickstep/views/RecentsView$9;

    .line 356
    iput-object p1, p0, Lcom/android/quickstep/views/RecentsView$9$1;->this$0:Lcom/android/quickstep/views/RecentsView$9;

    iput p2, p0, Lcom/android/quickstep/views/RecentsView$9$1;->val$scale:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)V
    .locals 2
    .param p1, "remoteTargetHandle"    # Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    .line 359
    invoke-virtual {p1}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object v0

    iget-object v0, v0, Lcom/android/quickstep/util/TaskViewSimulator;->recentsViewScale:Lcom/android/quickstep/AnimatedFloat;

    iget v1, p0, Lcom/android/quickstep/views/RecentsView$9$1;->val$scale:F

    iput v1, v0, Lcom/android/quickstep/AnimatedFloat;->value:F

    .line 361
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 356
    check-cast p1, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/RecentsView$9$1;->accept(Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)V

    return-void
.end method
