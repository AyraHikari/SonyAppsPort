.class Lcom/android/quickstep/interaction/EdgeBackGestureHandler$1;
.super Ljava/lang/Object;
.source "EdgeBackGestureHandler.java"

# interfaces
.implements Lcom/android/quickstep/interaction/EdgeBackGesturePanel$BackCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/interaction/EdgeBackGestureHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quickstep/interaction/EdgeBackGestureHandler;


# direct methods
.method constructor <init>(Lcom/android/quickstep/interaction/EdgeBackGestureHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/quickstep/interaction/EdgeBackGestureHandler;

    .line 72
    iput-object p1, p0, Lcom/android/quickstep/interaction/EdgeBackGestureHandler$1;->this$0:Lcom/android/quickstep/interaction/EdgeBackGestureHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelBack()V
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/android/quickstep/interaction/EdgeBackGestureHandler$1;->this$0:Lcom/android/quickstep/interaction/EdgeBackGestureHandler;

    invoke-static {v0}, Lcom/android/quickstep/interaction/EdgeBackGestureHandler;->-$$Nest$fgetmGestureCallback(Lcom/android/quickstep/interaction/EdgeBackGestureHandler;)Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureAttemptCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 85
    iget-object v0, p0, Lcom/android/quickstep/interaction/EdgeBackGestureHandler$1;->this$0:Lcom/android/quickstep/interaction/EdgeBackGestureHandler;

    invoke-static {v0}, Lcom/android/quickstep/interaction/EdgeBackGestureHandler;->-$$Nest$fgetmGestureCallback(Lcom/android/quickstep/interaction/EdgeBackGestureHandler;)Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureAttemptCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/interaction/EdgeBackGestureHandler$1;->this$0:Lcom/android/quickstep/interaction/EdgeBackGestureHandler;

    invoke-static {v1}, Lcom/android/quickstep/interaction/EdgeBackGestureHandler;->-$$Nest$fgetmEdgeBackPanel(Lcom/android/quickstep/interaction/EdgeBackGestureHandler;)Lcom/android/quickstep/interaction/EdgeBackGesturePanel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->getIsLeftPanel()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    sget-object v1, Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;->BACK_CANCELLED_FROM_LEFT:Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;

    goto :goto_0

    .line 87
    :cond_0
    sget-object v1, Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;->BACK_CANCELLED_FROM_RIGHT:Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;

    .line 85
    :goto_0
    invoke-interface {v0, v1}, Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureAttemptCallback;->onBackGestureAttempted(Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;)V

    .line 89
    :cond_1
    return-void
.end method

.method public triggerBack()V
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/android/quickstep/interaction/EdgeBackGestureHandler$1;->this$0:Lcom/android/quickstep/interaction/EdgeBackGestureHandler;

    invoke-static {v0}, Lcom/android/quickstep/interaction/EdgeBackGestureHandler;->-$$Nest$fgetmGestureCallback(Lcom/android/quickstep/interaction/EdgeBackGestureHandler;)Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureAttemptCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/android/quickstep/interaction/EdgeBackGestureHandler$1;->this$0:Lcom/android/quickstep/interaction/EdgeBackGestureHandler;

    invoke-static {v0}, Lcom/android/quickstep/interaction/EdgeBackGestureHandler;->-$$Nest$fgetmGestureCallback(Lcom/android/quickstep/interaction/EdgeBackGestureHandler;)Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureAttemptCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/interaction/EdgeBackGestureHandler$1;->this$0:Lcom/android/quickstep/interaction/EdgeBackGestureHandler;

    invoke-static {v1}, Lcom/android/quickstep/interaction/EdgeBackGestureHandler;->-$$Nest$fgetmEdgeBackPanel(Lcom/android/quickstep/interaction/EdgeBackGestureHandler;)Lcom/android/quickstep/interaction/EdgeBackGesturePanel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->getIsLeftPanel()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    sget-object v1, Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;->BACK_COMPLETED_FROM_LEFT:Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;

    goto :goto_0

    .line 78
    :cond_0
    sget-object v1, Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;->BACK_COMPLETED_FROM_RIGHT:Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;

    .line 76
    :goto_0
    invoke-interface {v0, v1}, Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureAttemptCallback;->onBackGestureAttempted(Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;)V

    .line 80
    :cond_1
    return-void
.end method
